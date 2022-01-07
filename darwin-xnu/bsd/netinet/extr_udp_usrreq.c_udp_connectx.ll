; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_udp_usrreq.c_udp_connectx.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_udp_usrreq.c_udp_connectx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.proc = type { i32 }
%struct.uio = type { i32 }

@AF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_connectx(%struct.socket* %0, %struct.sockaddr* %1, %struct.sockaddr* %2, %struct.proc* %3, i32 %4, i32 %5, i32* %6, i32 %7, i8* %8, i32 %9, %struct.uio* %10, i32* %11) #0 {
  %13 = alloca %struct.socket*, align 8
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca %struct.sockaddr*, align 8
  %16 = alloca %struct.proc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.uio*, align 8
  %24 = alloca i32*, align 8
  store %struct.socket* %0, %struct.socket** %13, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %14, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %15, align 8
  store %struct.proc* %3, %struct.proc** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i8* %8, i8** %21, align 8
  store i32 %9, i32* %22, align 4
  store %struct.uio* %10, %struct.uio** %23, align 8
  store i32* %11, i32** %24, align 8
  %25 = load %struct.socket*, %struct.socket** %13, align 8
  %26 = load i32, i32* @AF_INET, align 4
  %27 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %28 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %29 = load %struct.proc*, %struct.proc** %16, align 8
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* %18, align 4
  %32 = load i32*, i32** %19, align 8
  %33 = load i32, i32* %20, align 4
  %34 = load i8*, i8** %21, align 8
  %35 = load i32, i32* %22, align 4
  %36 = load %struct.uio*, %struct.uio** %23, align 8
  %37 = load i32*, i32** %24, align 8
  %38 = call i32 @udp_connectx_common(%struct.socket* %25, i32 %26, %struct.sockaddr* %27, %struct.sockaddr* %28, %struct.proc* %29, i32 %30, i32 %31, i32* %32, i32 %33, i8* %34, i32 %35, %struct.uio* %36, i32* %37)
  ret i32 %38
}

declare dso_local i32 @udp_connectx_common(%struct.socket*, i32, %struct.sockaddr*, %struct.sockaddr*, %struct.proc*, i32, i32, i32*, i32, i8*, i32, %struct.uio*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
