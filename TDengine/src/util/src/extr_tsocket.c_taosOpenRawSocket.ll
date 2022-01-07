; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tsocket.c_taosOpenRawSocket.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tsocket.c_taosOpenRawSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"open udp raw socket:%s\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to open raw socket: %d (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_HDRINCL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to set hold option: %d (%s)\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to bind RAW socket: %d (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosOpenRawSocket(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @pTrace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i32, i32* @AF_INET, align 4
  %10 = load i32, i32* @SOCK_RAW, align 4
  %11 = load i32, i32* @IPPROTO_UDP, align 4
  %12 = call i64 @socket(i32 %9, i32 %10, i32 %11)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @errno, align 4
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @strerror(i32 %18)
  %20 = call i32 @pError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %19)
  store i32 -1, i32* %2, align 4
  br label %57

21:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IPPROTO_IP, align 4
  %24 = load i32, i32* @IP_HDRINCL, align 4
  %25 = bitcast i32* %5 to i8*
  %26 = call i64 @taosSetSockOpt(i32 %22, i32 %23, i32 %24, i8* %25, i32 4)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32, i32* @errno, align 4
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @strerror(i32 %30)
  %32 = call i32 @pError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @close(i32 %33)
  store i32 -1, i32* %2, align 4
  br label %57

35:                                               ; preds = %21
  %36 = bitcast %struct.sockaddr_in* %6 to i8*
  %37 = call i32 @bzero(i8* %36, i32 8)
  %38 = load i32, i32* @AF_INET, align 4
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @inet_addr(i8* %40)
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %4, align 4
  %45 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %46 = call i64 @bind(i32 %44, %struct.sockaddr* %45, i32 8)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %35
  %49 = load i32, i32* @errno, align 4
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = call i32 @pError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @close(i32 %53)
  store i32 -1, i32* %2, align 4
  br label %57

55:                                               ; preds = %35
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %48, %28, %16
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @pTrace(i8*, i8*) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @pError(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @taosSetSockOpt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
