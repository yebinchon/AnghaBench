; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcahuff.c_ff_dca_vlc_calc_quant_bits.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcahuff.c_ff_dca_vlc_calc_quant_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bitalloc_offsets = common dso_local global i64* null, align 8
@bitalloc_sizes = common dso_local global i64* null, align 8
@bitalloc_bits = common dso_local global i64*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dca_vlc_calc_quant_bits(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %49, %4
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64*, i64** @bitalloc_offsets, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %21, %25
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64*, i64** @bitalloc_sizes, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %27, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @av_assert0(i32 %33)
  %35 = load i64***, i64**** @bitalloc_bits, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i64**, i64*** %35, i64 %36
  %38 = load i64**, i64*** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i64*, i64** %38, i64 %39
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %16
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %12

52:                                               ; preds = %12
  %53 = load i32, i32* %11, align 4
  ret i32 %53
}

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
