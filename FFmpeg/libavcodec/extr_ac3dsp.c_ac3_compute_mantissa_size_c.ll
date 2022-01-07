; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dsp.c_ac3_compute_mantissa_size_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dsp.c_ac3_compute_mantissa_size_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AC3_MAX_BLOCKS = common dso_local global i32 0, align 4
@ff_ac3_bap_bits = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ([16 x i32]*)* @ac3_compute_mantissa_size_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac3_compute_mantissa_size_c([16 x i32]* %0) #0 {
  %2 = alloca [16 x i32]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store [16 x i32]* %0, [16 x i32]** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %72, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @AC3_MAX_BLOCKS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %75

10:                                               ; preds = %6
  %11 = load [16 x i32]*, [16 x i32]** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 %13
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %16, 3
  %18 = mul nsw i32 %17, 5
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load [16 x i32]*, [16 x i32]** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 %23
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 3
  %28 = load [16 x i32]*, [16 x i32]** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %28, i64 %30
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %31, i64 0, i64 4
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 1
  %35 = add nsw i32 %27, %34
  %36 = mul nsw i32 %35, 7
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load [16 x i32]*, [16 x i32]** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %39, i64 %41
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %42, i64 0, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 3
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %5, align 4
  store i32 5, i32* %4, align 4
  br label %48

48:                                               ; preds = %68, %10
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 16
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load [16 x i32]*, [16 x i32]** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %52, i64 %54
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %55, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** @ff_ac3_bap_bits, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %59, %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %51
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %48

71:                                               ; preds = %48
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %6

75:                                               ; preds = %6
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
