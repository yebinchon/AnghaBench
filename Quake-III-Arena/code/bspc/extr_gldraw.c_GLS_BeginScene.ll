; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_gldraw.c_GLS_BeginScene.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_gldraw.c_GLS_BeginScene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@wins_init = common dso_local global i32 0, align 4
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
  %5 = load i32, i32* @wins_init, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %0
  store i32 1, i32* @wins_init, align 4
  %8 = call i32 @MAKEWORD(i32 1, i32 1)
  store i32 %8, i32* %2, align 4
  %9 = call i32 @MAKEWORD(i32 1, i32 1)
  %10 = call i32 @WSAStartup(i32 %9, i32* %1)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %7
  br label %16

16:                                               ; preds = %15, %0
  %17 = load i32, i32* @PF_INET, align 4
  %18 = load i32, i32* @SOCK_STREAM, align 4
  %19 = load i32, i32* @IPPROTO_TCP, align 4
  %20 = call i32 @socket(i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* @draw_socket, align 4
  %21 = load i32, i32* @draw_socket, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %16
  %26 = load i32, i32* @AF_INET, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @INADDR_LOOPBACK, align 4
  %29 = call i32 @htonl(i32 %28)
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @GLSERV_PORT, align 4
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @draw_socket, align 4
  %35 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %36 = call i32 @connect(i32 %34, %struct.sockaddr* %35, i32 12)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @draw_socket, align 4
  %41 = call i32 @closesocket(i32 %40)
  store i32 0, i32* @draw_socket, align 4
  br label %42

42:                                               ; preds = %39, %25
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
