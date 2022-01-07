; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_socket.c_socket_connect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_socket.c_socket_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32 }
%struct.timeval = type { i32, i64 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDTIMEO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_connect(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.timeval, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.addrinfo*
  store %struct.addrinfo* %10, %struct.addrinfo** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 4, i32* %14, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SOL_SOCKET, align 4
  %18 = load i32, i32* @SO_SNDTIMEO, align 4
  %19 = bitcast %struct.timeval* %8 to i8*
  %20 = call i32 @setsockopt(i32 %16, i32 %17, i32 %18, i8* %19, i32 16)
  br label %21

21:                                               ; preds = %13, %3
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @connect(i32 %22, i32 %25, i32 %28)
  ret i32 %29
}

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @connect(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
