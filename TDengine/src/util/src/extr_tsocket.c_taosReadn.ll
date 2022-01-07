; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tsocket.c_taosReadn.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tsocket.c_taosReadn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fd %d timeout\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"select error, %d (%s)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"read error, %d (%s)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"fd %d EOF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosReadn(i32 %0, i8* %1, i32 %2) #0 {
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
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %10, align 4
  br label %14

14:                                               ; preds = %70, %57, %38, %3
  %15 = load i32, i32* %10, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %78

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i32 30, i32* %18, align 8
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = call i32 @FD_ZERO(i32* %11)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @FD_SET(i32 %21, i32* %11)
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32 @select(i32 %24, i32* null, i32* %11, i32* null, %struct.timeval* %12)
  store i32 %25, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %28, i32* @errno, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, i32, ...) @pError(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %78

31:                                               ; preds = %17
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32, i32* @errno, align 4
  %36 = load i32, i32* @EINTR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %14

39:                                               ; preds = %34
  %40 = load i32, i32* @errno, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @strerror(i32 %41)
  %43 = call i32 (i8*, i32, ...) @pError(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %42)
  store i32 -1, i32* %4, align 4
  br label %82

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = call i64 @taosReadSocket(i32 %46, i8* %47, i64 %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = load i32, i32* @errno, align 4
  %55 = load i32, i32* @EINTR, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %14

58:                                               ; preds = %53
  %59 = load i32, i32* @errno, align 4
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 @strerror(i32 %60)
  %62 = call i32 (i8*, i32, ...) @pError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %61)
  store i32 -1, i32* %4, align 4
  br label %82

63:                                               ; preds = %45
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = call i32 (i8*, i32, ...) @pError(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %78

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i8*, i8** %6, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %6, align 8
  br label %14

78:                                               ; preds = %66, %27, %14
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %78, %58, %39
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @pError(i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @taosReadSocket(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
