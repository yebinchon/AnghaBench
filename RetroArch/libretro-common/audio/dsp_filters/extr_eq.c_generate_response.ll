; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_eq.c_generate_response.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_eq.c_generate_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float }
%struct.eq_gain = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.eq_gain*, i32, i32)* @generate_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_response(%struct.TYPE_3__* %0, %struct.eq_gain* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.eq_gain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.eq_gain* %1, %struct.eq_gain** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store float 0.000000e+00, float* %10, align 4
  store float 1.000000e+00, float* %11, align 4
  store float 1.000000e+00, float* %12, align 4
  store float 1.000000e+00, float* %13, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load %struct.eq_gain*, %struct.eq_gain** %6, align 8
  %21 = getelementptr inbounds %struct.eq_gain, %struct.eq_gain* %20, i32 0, i32 0
  %22 = load float, float* %21, align 4
  store float %22, float* %12, align 4
  %23 = load %struct.eq_gain*, %struct.eq_gain** %6, align 8
  %24 = getelementptr inbounds %struct.eq_gain, %struct.eq_gain* %23, i32 0, i32 1
  %25 = load float, float* %24, align 4
  store float %25, float* %13, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %26, -1
  store i32 %27, i32* %7, align 4
  %28 = load %struct.eq_gain*, %struct.eq_gain** %6, align 8
  %29 = getelementptr inbounds %struct.eq_gain, %struct.eq_gain* %28, i32 1
  store %struct.eq_gain* %29, %struct.eq_gain** %6, align 8
  br label %30

30:                                               ; preds = %19, %4
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %114, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %35, label %117

35:                                               ; preds = %31
  store float 5.000000e-01, float* %15, align 4
  %36 = load i32, i32* %9, align 4
  %37 = uitofp i32 %36 to float
  %38 = load i32, i32* %8, align 4
  %39 = uitofp i32 %38 to float
  %40 = fdiv float %37, %39
  store float %40, float* %16, align 4
  br label %41

41:                                               ; preds = %64, %35
  %42 = load float, float* %16, align 4
  %43 = load float, float* %12, align 4
  %44 = fcmp oge float %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load float, float* %12, align 4
  store float %49, float* %10, align 4
  %50 = load float, float* %13, align 4
  store float %50, float* %11, align 4
  %51 = load %struct.eq_gain*, %struct.eq_gain** %6, align 8
  %52 = getelementptr inbounds %struct.eq_gain, %struct.eq_gain* %51, i32 0, i32 0
  %53 = load float, float* %52, align 4
  store float %53, float* %12, align 4
  %54 = load %struct.eq_gain*, %struct.eq_gain** %6, align 8
  %55 = getelementptr inbounds %struct.eq_gain, %struct.eq_gain* %54, i32 0, i32 1
  %56 = load float, float* %55, align 4
  store float %56, float* %13, align 4
  %57 = load %struct.eq_gain*, %struct.eq_gain** %6, align 8
  %58 = getelementptr inbounds %struct.eq_gain, %struct.eq_gain* %57, i32 1
  store %struct.eq_gain* %58, %struct.eq_gain** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, -1
  store i32 %60, i32* %7, align 4
  br label %64

61:                                               ; preds = %45
  %62 = load float, float* %12, align 4
  store float %62, float* %10, align 4
  %63 = load float, float* %13, align 4
  store float %63, float* %11, align 4
  store float 1.000000e+00, float* %12, align 4
  store float 1.000000e+00, float* %13, align 4
  br label %65

64:                                               ; preds = %48
  br label %41

65:                                               ; preds = %61, %41
  %66 = load float, float* %12, align 4
  %67 = load float, float* %10, align 4
  %68 = fcmp ogt float %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load float, float* %16, align 4
  %71 = load float, float* %10, align 4
  %72 = fsub float %70, %71
  %73 = load float, float* %12, align 4
  %74 = load float, float* %10, align 4
  %75 = fsub float %73, %74
  %76 = fdiv float %72, %75
  store float %76, float* %15, align 4
  br label %77

77:                                               ; preds = %69, %65
  %78 = load float, float* %15, align 4
  %79 = fsub float 1.000000e+00, %78
  %80 = load float, float* %11, align 4
  %81 = fmul float %79, %80
  %82 = load float, float* %15, align 4
  %83 = load float, float* %13, align 4
  %84 = fmul float %82, %83
  %85 = fadd float %81, %84
  store float %85, float* %14, align 4
  %86 = load float, float* %14, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store float %86, float* %91, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store float 0.000000e+00, float* %96, align 4
  %97 = load float, float* %14, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = mul i32 2, %99
  %101 = load i32, i32* %9, align 4
  %102 = sub i32 %100, %101
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store float %97, float* %105, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = load i32, i32* %8, align 4
  %108 = mul i32 2, %107
  %109 = load i32, i32* %9, align 4
  %110 = sub i32 %108, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store float 0.000000e+00, float* %113, align 4
  br label %114

114:                                              ; preds = %77
  %115 = load i32, i32* %9, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %31

117:                                              ; preds = %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
