; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tlog.c_taosDumpData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tlog.c_taosDumpData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@tsTotalLogDirGB = common dso_local global i64 0, align 8
@tsAvailLogDirGB = common dso_local global i64 0, align 8
@tsMinimalLogDirGB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"server disk:%s space remain %.3f GB, total %.1f GB, stop dump log.\0A\00", align 1
@logDir = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@logHandle = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taosDumpData(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* @tsTotalLogDirGB, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i64, i64* @tsAvailLogDirGB, align 8
  %13 = load i64, i64* @tsMinimalLogDirGB, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load i8*, i8** @logDir, align 8
  %17 = load i64, i64* @tsAvailLogDirGB, align 8
  %18 = load i64, i64* @tsTotalLogDirGB, align 8
  %19 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %16, i64 %17, i64 %18)
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 @fflush(i32 %20)
  br label %70

22:                                               ; preds = %11, %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %56, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %23
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %36)
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 3
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 16
  br i1 %43, label %44, label %55

44:                                               ; preds = %27
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %47
  store i8 10, i8* %48, align 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @logHandle, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @twrite(i32 %51, i8* %52, i32 %53)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %44, %27
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %23

59:                                               ; preds = %23
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %62
  store i8 10, i8* %63, align 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @logHandle, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @twrite(i32 %66, i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %59, %15
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i64, i64) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext) #1

declare dso_local i32 @twrite(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
