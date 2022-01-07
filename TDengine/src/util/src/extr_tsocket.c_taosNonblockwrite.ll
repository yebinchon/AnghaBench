; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tsocket.c_taosNonblockwrite.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tsocket.c_taosNonblockwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"fd %d timeout, no enough space to write\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"select error, %d (%s)\00", align 1
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"write error, %d (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosNonblockwrite(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @taosSetNonblocking(i32 %13, i32 1)
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %71, %65, %40, %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %79

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i32 30, i32* %20, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = call i32 @FD_ZERO(i32* %11)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @FD_SET(i32 %23, i32* %11)
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i32 @select(i32 %26, i32* null, i32* %11, i32* null, %struct.timeval* %12)
  store i32 %27, i32* %10, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %30, i32* @errno, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i8*, i32, ...) @pError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %79

33:                                               ; preds = %19
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32, i32* @errno, align 4
  %38 = load i32, i32* @EINTR, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %16

41:                                               ; preds = %36
  %42 = load i32, i32* @errno, align 4
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = call i32 (i8*, i32, ...) @pError(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %44)
  store i32 -1, i32* %4, align 4
  br label %85

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = load i32, i32* @MSG_NOSIGNAL, align 4
  %53 = call i64 @send(i32 %48, i8* %49, i64 %51, i32 %52)
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %47
  %58 = load i32, i32* @errno, align 4
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @errno, align 4
  %63 = load i32, i32* @EINTR, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %57
  br label %16

66:                                               ; preds = %61
  %67 = load i32, i32* @errno, align 4
  %68 = load i32, i32* @errno, align 4
  %69 = call i32 @strerror(i32 %68)
  %70 = call i32 (i8*, i32, ...) @pError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %69)
  store i32 -1, i32* %4, align 4
  br label %85

71:                                               ; preds = %47
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %6, align 8
  br label %16

79:                                               ; preds = %29, %16
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @taosSetNonblocking(i32 %80, i32 0)
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %79, %66, %41
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @taosSetNonblocking(i32, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @pError(i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @send(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
