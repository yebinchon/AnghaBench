; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_socket.c_socket_set_target.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_socket.c_socket_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sockaddr_in = type { i32, i32, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @socket_set_target(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %7, %struct.sockaddr_in** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @inet_htons(i32 %10)
  %12 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @domain_get(i32 %16)
  %18 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @AF_INET, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 1
  %26 = call i32 @inet_ptrton(i32 %20, i32 %23, i32* %25)
  ret void
}

declare dso_local i32 @inet_htons(i32) #1

declare dso_local i32 @domain_get(i32) #1

declare dso_local i32 @inet_ptrton(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
