; ModuleID = '/home/carl/AnghaBench/TDengine/src/os/darwin/src/extr_tdarwin.c_taosOpenUDServerSocket.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/os/darwin/src/extr_tdarwin.c_taosOpenUDServerSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i64, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"open ud socket:%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to open UD socket:%s, reason:%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"bind socket:%s failed, reason:%s\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"listen socket:%s failed, reason:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosOpenUDServerSocket(i8* %0, i16 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.sockaddr_un, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i16 %1, i16* %5, align 2
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %10 = call i32 @pTrace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %12 = load i8*, i8** %4, align 8
  %13 = load i16, i16* %5, align 2
  %14 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %12, i16 signext %13)
  %15 = bitcast %struct.sockaddr_un* %6 to i8*
  %16 = call i32 @bzero(i8* %15, i32 16)
  %17 = load i32, i32* @AF_UNIX, align 4
  %18 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %23 = call i32 @strcpy(i64 %21, i8* %22)
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %25 = call i32 @unlink(i8* %24)
  %26 = load i32, i32* @AF_UNIX, align 4
  %27 = load i32, i32* @SOCK_STREAM, align 4
  %28 = call i32 @socket(i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @strerror(i32 %32)
  %34 = call i32 @pError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %31, i32 %33)
  store i32 -1, i32* %3, align 4
  br label %58

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %38 = call i64 @bind(i32 %36, %struct.sockaddr* %37, i32 16)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i32 @pError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %41, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @tclose(i32 %45)
  store i32 -1, i32* %3, align 4
  br label %58

47:                                               ; preds = %35
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @listen(i32 %48, i32 10)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @strerror(i32 %53)
  %55 = call i32 @pError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %52, i32 %54)
  store i32 -1, i32* %3, align 4
  br label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %51, %40, %30
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @pTrace(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i16 signext) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @strcpy(i64, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @pError(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @tclose(i32) #1

declare dso_local i64 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
