; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_postfilter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_postfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, i32, i64, i32 }

@postfilter.pow_0_775 = internal constant [10 x float] [float 0x3FE8CCCCC0000000, float 0x3FE33851E0000000, float 0x3FDDCA7D60000000, float 0x3FD7168720000000, float 0x3FD1E4ABE0000000, float 0x3FCBBC0A00000000, float 0x3FC57E88A0000000, float 0x3FC0A875E0000000, float 0x3FB9D1E540000000, float 0x3FB402AFE0000000], align 16
@postfilter.pow_0_625 = internal constant [10 x float] [float 6.250000e-01, float 3.906250e-01, float 0x3FCF400320000000, float 0x3FC38800E0000000, float 0x3FB869F8C0000000, float 0x3FAE848BE0000000, float 0x3FA312D340000000, float 0x3F97D77FA0000000, float 0x3F8DCD7060000000, float 0x3F82A06640000000], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, float*)* @postfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @postfilter(%struct.TYPE_3__* %0, float* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca [10 x float], align 16
  %8 = alloca [10 x float], align 16
  %9 = alloca [170 x float], align 16
  %10 = alloca [160 x float], align 16
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %42, %3
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %45

15:                                               ; preds = %12
  %16 = load float*, float** %6, align 8
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, float* %16, i64 %18
  %20 = load float, float* %19, align 4
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x float], [10 x float]* @postfilter.pow_0_625, i64 0, i64 %22
  %24 = load float, float* %23, align 4
  %25 = fmul float %20, %24
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [10 x float], [10 x float]* %7, i64 0, i64 %27
  store float %25, float* %28, align 4
  %29 = load float*, float** %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %29, i64 %31
  %33 = load float, float* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [10 x float], [10 x float]* @postfilter.pow_0_775, i64 0, i64 %35
  %37 = load float, float* %36, align 4
  %38 = fmul float %33, %37
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [10 x float], [10 x float]* %8, i64 0, i64 %40
  store float %38, float* %41, align 4
  br label %42

42:                                               ; preds = %15
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %12

45:                                               ; preds = %12
  %46 = getelementptr inbounds [160 x float], [160 x float]* %10, i64 0, i64 0
  %47 = getelementptr inbounds [10 x float], [10 x float]* %7, i64 0, i64 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 10
  %52 = call i32 @ff_celp_lp_zero_synthesis_filterf(float* %46, float* %47, i64 %51, i32 160, i32 10)
  %53 = getelementptr inbounds [170 x float], [170 x float]* %9, i64 0, i64 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load float*, float** %55, align 8
  %57 = call i32 @memcpy(float* %53, float* %56, i32 40)
  %58 = getelementptr inbounds [170 x float], [170 x float]* %9, i64 0, i64 0
  %59 = getelementptr inbounds float, float* %58, i64 10
  %60 = getelementptr inbounds [10 x float], [10 x float]* %8, i64 0, i64 0
  %61 = getelementptr inbounds [160 x float], [160 x float]* %10, i64 0, i64 0
  %62 = call i32 @ff_celp_lp_synthesis_filterf(float* %59, float* %60, float* %61, i32 160, i32 10)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load float*, float** %64, align 8
  %66 = getelementptr inbounds [170 x float], [170 x float]* %9, i64 0, i64 0
  %67 = getelementptr inbounds float, float* %66, i64 160
  %68 = call i32 @memcpy(float* %65, float* %67, i32 40)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = getelementptr inbounds [170 x float], [170 x float]* %9, i64 0, i64 0
  %72 = getelementptr inbounds float, float* %71, i64 10
  %73 = call i32 @ff_tilt_compensation(i32* %70, double 3.000000e-01, float* %72, i32 160)
  %74 = load float*, float** %5, align 8
  %75 = getelementptr inbounds [170 x float], [170 x float]* %9, i64 0, i64 0
  %76 = getelementptr inbounds float, float* %75, i64 10
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 10
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 10
  %85 = call i32 @avpriv_scalarproduct_float_c(i64 %80, i64 %84, i32 160)
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = call i32 @ff_adaptive_gain_control(float* %74, float* %76, i32 %85, i32 160, double 9.375000e-01, i32* %87)
  ret void
}

declare dso_local i32 @ff_celp_lp_zero_synthesis_filterf(float*, float*, i64, i32, i32) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

declare dso_local i32 @ff_celp_lp_synthesis_filterf(float*, float*, float*, i32, i32) #1

declare dso_local i32 @ff_tilt_compensation(i32*, double, float*, i32) #1

declare dso_local i32 @ff_adaptive_gain_control(float*, float*, i32, i32, double, i32*) #1

declare dso_local i32 @avpriv_scalarproduct_float_c(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
