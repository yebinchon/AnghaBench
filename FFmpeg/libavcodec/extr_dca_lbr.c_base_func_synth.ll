; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_base_func_synth.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_base_func_synth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, float*, i32)* @base_func_synth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @base_func_synth(%struct.TYPE_4__* %0, i32 %1, float* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %55, %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %58

15:                                               ; preds = %12
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 22
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 5, %23
  %25 = ashr i32 %22, %24
  %26 = add nsw i32 %20, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %27, 22
  %29 = and i32 %28, 31
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 %29, %30
  %32 = and i32 %31, 31
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 1, %33
  %35 = add nsw i32 %32, %34
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load float*, float** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %42, 31
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 30, %44
  %46 = call i32 @synth_tones(%struct.TYPE_4__* %37, i32 %38, float* %39, i32 %40, i32 %43, i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load float*, float** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 31
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @synth_tones(%struct.TYPE_4__* %47, i32 %48, float* %49, i32 %50, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %15
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %12

58:                                               ; preds = %12
  ret void
}

declare dso_local i32 @synth_tones(%struct.TYPE_4__*, i32, float*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
