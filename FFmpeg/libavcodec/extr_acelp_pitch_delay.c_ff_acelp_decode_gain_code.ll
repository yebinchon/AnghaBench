; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_pitch_delay.c_ff_acelp_decode_gain_code.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_pitch_delay.c_ff_acelp_decode_gain_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32*, i32*, i32, i32)* }
%struct.TYPE_4__ = type { i32 (i32*, i32*, i32)* }

@dsp = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_acelp_decode_gain_code(%struct.TYPE_4__* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* %12, align 4
  %19 = shl i32 %18, 10
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %20

20:                                               ; preds = %38, %8
  %21 = load i32, i32* %17, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i32*, i32** %13, align 8
  %26 = load i32, i32* %17, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* %17, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %29, %34
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %17, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %17, align 4
  br label %20

41:                                               ; preds = %20
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %12, align 4
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 0x41A4000000000000
  %46 = call i32 @ff_exp10(double %45)
  %47 = mul nsw i32 %42, %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %49, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call i32 %50(i32* %51, i32* %52, i32 %53)
  %55 = call i32 @sqrt(i32 %54)
  %56 = sdiv i32 %47, %55
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = ashr i32 %57, 12
  ret i32 %58
}

declare dso_local i32 @ff_exp10(double) #1

declare dso_local i32 @sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
