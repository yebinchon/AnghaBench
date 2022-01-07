; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_FinalizeLine8bit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_FinalizeLine8bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i64, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@DrawLineDest = common dso_local global i8* null, align 8
@rendstatus = common dso_local global i32 0, align 4
@FinalizeLine8bit.dirty_count = internal global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PDRAW_SONIC_MODE = common dso_local global i32 0, align 4
@HighPal = common dso_local global i8* null, align 8
@PicoOpt = common dso_local global i32 0, align 4
@POPT_DIS_32C_BORDER = common dso_local global i32 0, align 4
@HighCol = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @FinalizeLine8bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FinalizeLine8bit(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** @DrawLineDest, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i32, i32* @rendstatus, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %45, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 2, i32 0), align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %45

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PDRAW_SONIC_MODE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 1, i32* @FinalizeLine8bit.dirty_count, align 4
  br label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @FinalizeLine8bit.dirty_count, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @FinalizeLine8bit.dirty_count, align 4
  br label %24

24:                                               ; preds = %21, %20
  %25 = load i32, i32* @PDRAW_SONIC_MODE, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* @rendstatus, align 4
  %29 = load i32, i32* @FinalizeLine8bit.dirty_count, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i8*, i8** @HighPal, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1), align 8
  %34 = call i32 @blockcpy(i8* %32, i64 %33, i32 128)
  br label %44

35:                                               ; preds = %24
  %36 = load i32, i32* @FinalizeLine8bit.dirty_count, align 4
  %37 = icmp eq i32 %36, 11
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i8*, i8** @HighPal, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 64
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1), align 8
  %42 = call i32 @blockcpy(i8* %40, i64 %41, i32 128)
  br label %43

43:                                               ; preds = %38, %35
  br label %44

44:                                               ; preds = %43, %31
  br label %45

45:                                               ; preds = %44, %12, %2
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 12
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 320, i32* %6, align 4
  br label %61

52:                                               ; preds = %45
  %53 = load i32, i32* @PicoOpt, align 4
  %54 = load i32, i32* @POPT_DIS_32C_BORDER, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 32
  store i8* %59, i8** %5, align 8
  br label %60

60:                                               ; preds = %57, %52
  store i32 256, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %51
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @PDRAW_SONIC_MODE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %64
  %70 = load i32, i32* @FinalizeLine8bit.dirty_count, align 4
  %71 = icmp sge i32 %70, 11
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i8*, i8** %5, align 8
  %74 = load i64, i64* @HighCol, align 8
  %75 = add nsw i64 %74, 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @blockcpy_or(i8* %73, i64 %75, i32 %76, i32 128)
  br label %84

78:                                               ; preds = %69
  %79 = load i8*, i8** %5, align 8
  %80 = load i64, i64* @HighCol, align 8
  %81 = add nsw i64 %80, 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @blockcpy_or(i8* %79, i64 %81, i32 %82, i32 64)
  br label %84

84:                                               ; preds = %78, %72
  br label %91

85:                                               ; preds = %64, %61
  %86 = load i8*, i8** %5, align 8
  %87 = load i64, i64* @HighCol, align 8
  %88 = add nsw i64 %87, 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @blockcpy(i8* %86, i64 %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %84
  ret void
}

declare dso_local i32 @blockcpy(i8*, i64, i32) #1

declare dso_local i32 @blockcpy_or(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
