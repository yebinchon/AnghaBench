; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_ReadSect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_ReadSect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@cdReadMode = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadSect(i32 %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cdReadMode, i32 0, i32 0), align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %52, %4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 32
  br i1 %14, label %15, label %55

15:                                               ; preds = %12
  %16 = load i32, i32* %10, align 4
  %17 = icmp sle i32 %16, 8
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cdReadMode, i32 0, i32 1), align 4
  br label %20

19:                                               ; preds = %15
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cdReadMode, i32 0, i32 1), align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = call i32 (...) @isValidDisc()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %5, align 4
  br label %67

25:                                               ; preds = %20
  %26 = call i32 @sceCdDiskReady(i32 0)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @sceCdRead(i32 %27, i32 %28, i8* %29, i32* %30)
  %32 = load i64, i64* @TRUE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 31
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 %39, 11
  %41 = call i32 @memset(i8* %38, i32 0, i32 %40)
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %5, align 4
  br label %67

43:                                               ; preds = %34
  br label %46

44:                                               ; preds = %25
  %45 = call i32 @sceCdSync(i32 0)
  br label %55

46:                                               ; preds = %43
  %47 = call i32 (...) @sceCdGetError()
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %55

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %12

55:                                               ; preds = %50, %44, %12
  store i32 32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cdReadMode, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cdReadMode, i32 0, i32 1), align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, i64* @TRUE, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %67

61:                                               ; preds = %55
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = shl i32 %63, 11
  %65 = call i32 @memset(i8* %62, i32 0, i32 %64)
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %61, %58, %37, %23
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @isValidDisc(...) #1

declare dso_local i32 @sceCdDiskReady(i32) #1

declare dso_local i64 @sceCdRead(i32, i32, i8*, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sceCdSync(i32) #1

declare dso_local i32 @sceCdGetError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
