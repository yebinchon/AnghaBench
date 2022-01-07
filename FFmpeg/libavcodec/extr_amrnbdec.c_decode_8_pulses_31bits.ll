; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_decode_8_pulses_31bits.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_decode_8_pulses_31bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @decode_8_pulses_31bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_8_pulses_31bits(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 4
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %15 = call i32 @decode_10bit_pulse(i32 %13, i32* %14, i32 0, i32 4, i32 1)
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 5
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %20 = call i32 @decode_10bit_pulse(i32 %18, i32* %19, i32 2, i32 6, i32 5)
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 6
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 2
  %25 = mul nsw i32 %24, 25
  %26 = add nsw i32 %25, 12
  %27 = ashr i32 %26, 5
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = srem i32 %28, 5
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sdiv i32 %31, 5
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %2
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 4, %40
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %2
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 1
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 6
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 1
  %51 = add nsw i32 %46, %50
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 1
  %56 = load i32*, i32** %3, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 6
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 1
  %60 = and i32 %59, 1
  %61 = add nsw i32 %55, %60
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 8, i32* %64, align 8
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %132, %43
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 4
  br i1 %67, label %68, label %135

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 2
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 2
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %9, align 4
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, double -1.000000e+00, double 1.000000e+00
  %92 = fptrunc double %91 to float
  store float %92, float* %10, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32 %100, i32* %107, align 4
  %108 = load float, float* %10, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load float*, float** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %111, i64 %113
  store float %108, float* %114, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %68
  %119 = load float, float* %10, align 4
  %120 = fneg float %119
  br label %123

121:                                              ; preds = %68
  %122 = load float, float* %10, align 4
  br label %123

123:                                              ; preds = %121, %118
  %124 = phi float [ %120, %118 ], [ %122, %121 ]
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load float*, float** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %127, i64 %130
  store float %124, float* %131, align 4
  br label %132

132:                                              ; preds = %123
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %65

135:                                              ; preds = %65
  ret void
}

declare dso_local i32 @decode_10bit_pulse(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
