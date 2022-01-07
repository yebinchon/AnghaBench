; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_decode_gain_control.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_decode_gain_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@decode_gain_control.gain_mode = internal constant [4 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 5], [3 x i64] [i64 2, i64 1, i64 2], [3 x i64] [i64 8, i64 0, i64 2], [3 x i64] [i64 2, i64 1, i64 5]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @decode_gain_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_gain_control(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @get_bits(i32* %17, i32 2)
  store i64 %18, i64* %9, align 8
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %70, %2
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %19
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %66, %23
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x [3 x i64]], [4 x [3 x i64]]* @decode_gain_control.gain_mode, i64 0, i64 %27
  %29 = getelementptr inbounds [3 x i64], [3 x i64]* %28, i64 0, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %25, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %24
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @get_bits(i32* %33, i32 3)
  store i64 %34, i64* %10, align 8
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %62, %32
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %35
  %40 = load i32*, i32** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x [3 x i64]], [4 x [3 x i64]]* @decode_gain_control.gain_mode, i64 0, i64 %45
  %47 = getelementptr inbounds [3 x i64], [3 x i64]* %46, i64 0, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %57

51:                                               ; preds = %43, %39
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x [3 x i64]], [4 x [3 x i64]]* @decode_gain_control.gain_mode, i64 0, i64 %53
  %55 = getelementptr inbounds [3 x i64], [3 x i64]* %54, i64 0, i64 2
  %56 = load i64, i64* %55, align 8
  br label %57

57:                                               ; preds = %51, %50
  %58 = phi i64 [ 4, %50 ], [ %56, %51 ]
  %59 = add nsw i64 4, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @skip_bits(i32* %40, i32 %60)
  br label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %8, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %8, align 8
  br label %35

65:                                               ; preds = %35
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %7, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %24

69:                                               ; preds = %24
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %6, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %6, align 8
  br label %19

73:                                               ; preds = %19
  ret void
}

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
