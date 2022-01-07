; ModuleID = '/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tlinux.c_taosOpenUDClientSocket.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tlinux.c_taosOpenUDClientSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i64, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to open the UD socket:%s, reason:%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"failed to connect UD socket, name:%d, reason: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosOpenUDClientSocket(i8* %0, i16 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_un, align 8
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 0, i32* %6, align 4
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %11 = load i8*, i8** %4, align 8
  %12 = load i16, i16* %5, align 2
  %13 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %11, i16 signext %12)
  %14 = load i32, i32* @AF_UNIX, align 4
  %15 = load i32, i32* @SOCK_STREAM, align 4
  %16 = call i32 @socket(i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 @pError(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %22)
  store i32 -1, i32* %3, align 4
  br label %46

24:                                               ; preds = %2
  %25 = bitcast %struct.sockaddr_un* %7 to i8*
  %26 = call i32 @memset(i8* %25, i32 0, i32 16)
  %27 = load i32, i32* @AF_UNIX, align 4
  %28 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %7, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %7, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %33 = call i32 @strcpy(i64 %31, i8* %32)
  %34 = load i32, i32* %6, align 4
  %35 = bitcast %struct.sockaddr_un* %7 to %struct.sockaddr*
  %36 = call i32 @connect(i32 %34, %struct.sockaddr* %35, i32 16)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %24
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @strerror(i32 %41)
  %43 = call i32 @pError(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %40, i32 %42)
  store i32 -1, i32* %6, align 4
  br label %44

44:                                               ; preds = %39, %24
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i16 signext) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @pError(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i64, i8*) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
