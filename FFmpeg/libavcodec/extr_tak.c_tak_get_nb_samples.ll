; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tak.c_tak_get_nb_samples.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tak.c_tak_get_nb_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAK_FST_250ms = common dso_local global i32 0, align 4
@frame_duration_type_quants = common dso_local global i32* null, align 8
@TAK_FRAME_DURATION_QUANT_SHIFT = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @tak_get_nb_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tak_get_nb_samples(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @TAK_FST_250ms, align 4
  %10 = icmp ule i32 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32*, i32** @frame_duration_type_quants, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %12, %17
  %19 = load i32, i32* @TAK_FRAME_DURATION_QUANT_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %6, align 4
  store i32 16384, i32* %7, align 4
  br label %44

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** @frame_duration_type_quants, align 8
  %24 = call i32 @FF_ARRAY_ELEMS(i32* %23)
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load i32*, i32** @frame_duration_type_quants, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32*, i32** @frame_duration_type_quants, align 8
  %34 = load i32, i32* @TAK_FST_250ms, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %32, %37
  %39 = load i32, i32* @TAK_FRAME_DURATION_QUANT_SHIFT, align 4
  %40 = ashr i32 %38, %39
  store i32 %40, i32* %7, align 4
  br label %43

41:                                               ; preds = %21
  %42 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %42, i32* %3, align 4
  br label %55

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43, %11
  %45 = load i32, i32* %6, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %44
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %51, %41
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
