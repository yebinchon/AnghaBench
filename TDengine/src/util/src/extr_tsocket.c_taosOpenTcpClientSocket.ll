; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tsocket.c_taosOpenTcpClientSocket.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tsocket.c_taosOpenTcpClientSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i64, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"open tcp client socket:%s:%d\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to open the socket: %d (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [72 x i8] c"bind tcp client socket failed, client(%s:0), dest(%s:%d), reason:%d(%s)\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"failed to connect socket, ip:%s, port:%d, reason: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosOpenTcpClientSocket(i8* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 8
  %10 = alloca %struct.sockaddr_in, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i16 %1, i16* %6, align 2
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i16, i16* %6, align 2
  %14 = call i32 @pTrace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %12, i16 signext %13)
  %15 = load i32, i32* @PF_INET, align 4
  %16 = load i32, i32* @SOCK_STREAM, align 4
  %17 = load i32, i32* @IPPROTO_TCP, align 4
  %18 = call i64 @socket(i32 %15, i32 %16, i32 %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load i32, i32* @errno, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 (i8*, i8*, ...) @pError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 %27)
  store i32 -1, i32* %4, align 4
  br label %99

29:                                               ; preds = %3
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %70

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %32
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 48
  br i1 %43, label %44, label %70

44:                                               ; preds = %38
  %45 = bitcast %struct.sockaddr_in* %10 to i8*
  %46 = call i32 @memset(i8* %45, i32 0, i32 24)
  %47 = load i8*, i8** @AF_INET, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* @inet_addr(i8* %49)
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %56 = call i64 @bind(i32 %54, %struct.sockaddr* %55, i32 24)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %44
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i16, i16* %6, align 2
  %62 = sext i16 %61 to i32
  %63 = load i32, i32* @errno, align 4
  %64 = load i32, i32* @errno, align 4
  %65 = call i32 @strerror(i32 %64)
  %66 = call i32 (i8*, i8*, ...) @pError(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i8* %59, i8* %60, i32 %62, i32 %63, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @close(i32 %67)
  store i32 -1, i32* %4, align 4
  br label %99

69:                                               ; preds = %44
  br label %70

70:                                               ; preds = %69, %38, %32, %29
  %71 = bitcast %struct.sockaddr_in* %9 to i8*
  %72 = call i32 @memset(i8* %71, i32 0, i32 24)
  %73 = load i8*, i8** @AF_INET, align 8
  %74 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  store i8* %73, i8** %74, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = call i8* @inet_addr(i8* %75)
  %77 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load i16, i16* %6, align 2
  %80 = sext i16 %79 to i64
  %81 = call i64 @htons(i64 %80)
  %82 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i64 %81, i64* %82, align 8
  %83 = load i32, i32* %8, align 4
  %84 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %85 = call i32 @connect(i32 %83, %struct.sockaddr* %84, i32 24)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %70
  %89 = load i8*, i8** %5, align 8
  %90 = load i16, i16* %6, align 2
  %91 = sext i16 %90 to i32
  %92 = load i32, i32* @errno, align 4
  %93 = call i32 @strerror(i32 %92)
  %94 = call i32 (i8*, i8*, ...) @pError(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %89, i32 %91, i32 %93)
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @taosCloseSocket(i32 %95)
  store i32 -1, i32* %8, align 4
  br label %97

97:                                               ; preds = %88, %70
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %58, %22
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @pTrace(i8*, i8*, i16 signext) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @pError(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @inet_addr(i8*) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @taosCloseSocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
