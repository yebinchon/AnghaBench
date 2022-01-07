; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_pvq.c_celt_compute_qn.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_pvq.c_celt_compute_qn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_celt_qn_exp2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @celt_compute_qn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @celt_compute_qn(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 2, %14
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %13, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %22, %19, %5
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sub nsw i32 %28, 32
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %31, %32
  %34 = add nsw i32 %30, %33
  %35 = load i32, i32* %13, align 4
  %36 = sdiv i32 %34, %35
  %37 = call i32 @FFMIN3(i32 %29, i32 %36, i32 64)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %55

41:                                               ; preds = %25
  %42 = load i32*, i32** @ff_celt_qn_exp2, align 8
  %43 = load i32, i32* %12, align 4
  %44 = and i32 %43, 7
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %12, align 4
  %49 = ashr i32 %48, 3
  %50 = sub nsw i32 14, %49
  %51 = ashr i32 %47, %50
  %52 = add nsw i32 %51, 1
  %53 = ashr i32 %52, 1
  %54 = shl i32 %53, 1
  br label %55

55:                                               ; preds = %41, %40
  %56 = phi i32 [ 1, %40 ], [ %54, %41 ]
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  ret i32 %57
}

declare dso_local i32 @FFMIN3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
