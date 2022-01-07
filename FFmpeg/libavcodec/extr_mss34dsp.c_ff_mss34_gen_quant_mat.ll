; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss34dsp.c_ff_mss34_gen_quant_mat.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss34dsp.c_ff_mss34_gen_quant_mat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luma_quant = common dso_local global i32* null, align 8
@chroma_quant = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_mss34_gen_quant_mat(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32*, i32** @luma_quant, align 8
  br label %16

14:                                               ; preds = %3
  %15 = load i32*, i32** @chroma_quant, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32* [ %13, %12 ], [ %15, %14 ]
  store i32* %17, i32** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 50
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 2, %21
  %23 = sub nsw i32 200, %22
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %41, %20
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 64
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %34, 50
  %36 = sdiv i32 %35, 100
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %27
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %24

44:                                               ; preds = %24
  br label %68

45:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %64, %45
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 64
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 5000, %54
  %56 = load i32, i32* %5, align 4
  %57 = sdiv i32 %55, %56
  %58 = add nsw i32 %57, 50
  %59 = sdiv i32 %58, 100
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %49
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %46

67:                                               ; preds = %46
  br label %68

68:                                               ; preds = %67, %44
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
