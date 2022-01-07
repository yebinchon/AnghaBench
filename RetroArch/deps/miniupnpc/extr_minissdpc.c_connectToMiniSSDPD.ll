; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_minissdpc.c_connectToMiniSSDPD.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_minissdpc.c_connectToMiniSSDPD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"socket(unix)\00", align 1
@MINISSDPC_SOCKET_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"/var/run/minissdpd.sock\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4
@SO_SNDTIMEO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connectToMiniSSDPD(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_un, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @AF_UNIX, align 4
  %7 = load i32, i32* @SOCK_STREAM, align 4
  %8 = call i32 @socket(i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @MINISSDPC_SOCKET_ERROR, align 4
  store i32 %13, i32* %2, align 4
  br label %36

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %18

18:                                               ; preds = %17, %14
  %19 = call i32 @memset(%struct.sockaddr_un* %5, i32 0, i32 8)
  %20 = load i32, i32* @AF_UNIX, align 4
  %21 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strncpy(i32 %23, i8* %24, i32 4)
  %26 = load i32, i32* %4, align 4
  %27 = bitcast %struct.sockaddr_un* %5 to %struct.sockaddr*
  %28 = call i64 @connect(i32 %26, %struct.sockaddr* %27, i32 8)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load i32, i32* @MINISSDPC_SOCKET_ERROR, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %30, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
