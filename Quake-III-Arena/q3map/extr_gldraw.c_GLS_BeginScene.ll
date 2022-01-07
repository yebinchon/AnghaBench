; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_gldraw.c_GLS_BeginScene.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_gldraw.c_GLS_BeginScene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@wins_init = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Winsock initialization failed.\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@draw_socket = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"draw_socket failed\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@GLSERV_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GLS_BeginScene() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* @wins_init, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* @qtrue, align 8
  store i64 %8, i64* @wins_init, align 8
  %9 = call i32 @MAKEWORD(i32 1, i32 1)
  store i32 %9, i32* %2, align 4
  %10 = call i32 @MAKEWORD(i32 1, i32 1)
  %11 = call i32 @WSAStartup(i32 %10, i32* %1)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = call i32 @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %7
  br label %17

17:                                               ; preds = %16, %0
  %18 = load i32, i32* @PF_INET, align 4
  %19 = load i32, i32* @SOCK_STREAM, align 4
  %20 = load i32, i32* @IPPROTO_TCP, align 4
  %21 = call i32 @socket(i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* @draw_socket, align 4
  %22 = load i32, i32* @draw_socket, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i32, i32* @AF_INET, align 4
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @INADDR_LOOPBACK, align 4
  %30 = call i32 @htonl(i32 %29)
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @GLSERV_PORT, align 4
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @draw_socket, align 4
  %36 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %37 = call i32 @connect(i32 %35, %struct.sockaddr* %36, i32 12)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @draw_socket, align 4
  %42 = call i32 @closesocket(i32 %41)
  store i32 0, i32* @draw_socket, align 4
  br label %43

43:                                               ; preds = %40, %26
  ret void
}

declare dso_local i32 @MAKEWORD(i32, i32) #1

declare dso_local i32 @WSAStartup(i32, i32*) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @closesocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
