; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_synth_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_synth_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.frame_type_desc = type { i64, i32 }

@MAX_LSPS = common dso_local global i32 0, align 4
@ACB_TYPE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32, i32, double*, double*, %struct.frame_type_desc*, float*, float*)* @synth_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synth_block(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3, i32 %4, double* %5, double* %6, %struct.frame_type_desc* %7, float* %8, float* %9) #0 {
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca %struct.frame_type_desc*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca float, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store double* %5, double** %16, align 8
  store double* %6, double** %17, align 8
  store %struct.frame_type_desc* %7, %struct.frame_type_desc** %18, align 8
  store float* %8, float** %19, align 8
  store float* %9, float** %20, align 8
  %26 = load i32, i32* @MAX_LSPS, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %21, align 8
  %29 = alloca double, i64 %27, align 16
  store i64 %27, i64* %22, align 8
  %30 = load i32, i32* @MAX_LSPS, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca float, i64 %31, align 16
  store i64 %31, i64* %23, align 8
  %33 = load %struct.frame_type_desc*, %struct.frame_type_desc** %18, align 8
  %34 = getelementptr inbounds %struct.frame_type_desc, %struct.frame_type_desc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ACB_TYPE_NONE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %10
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.frame_type_desc*, %struct.frame_type_desc** %18, align 8
  %44 = load float*, float** %19, align 8
  %45 = call i32 @synth_block_hardcoded(%struct.TYPE_5__* %39, i32* %40, i32 %41, i32 %42, %struct.frame_type_desc* %43, float* %44)
  br label %55

46:                                               ; preds = %10
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load %struct.frame_type_desc*, %struct.frame_type_desc** %18, align 8
  %53 = load float*, float** %19, align 8
  %54 = call i32 @synth_block_fcb_acb(%struct.TYPE_5__* %47, i32* %48, i32 %49, i32 %50, i32 %51, %struct.frame_type_desc* %52, float* %53)
  br label %55

55:                                               ; preds = %46, %38
  %56 = load i32, i32* %13, align 4
  %57 = sitofp i32 %56 to double
  %58 = fadd double %57, 5.000000e-01
  %59 = load %struct.frame_type_desc*, %struct.frame_type_desc** %18, align 8
  %60 = getelementptr inbounds %struct.frame_type_desc, %struct.frame_type_desc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %58, %62
  %64 = fptrunc double %63 to float
  store float %64, float* %24, align 4
  store i32 0, i32* %25, align 4
  br label %65

65:                                               ; preds = %96, %55
  %66 = load i32, i32* %25, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %65
  %72 = load double*, double** %17, align 8
  %73 = load i32, i32* %25, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double, double* %72, i64 %74
  %76 = load double, double* %75, align 8
  %77 = load float, float* %24, align 4
  %78 = fpext float %77 to double
  %79 = load double*, double** %16, align 8
  %80 = load i32, i32* %25, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %79, i64 %81
  %83 = load double, double* %82, align 8
  %84 = load double*, double** %17, align 8
  %85 = load i32, i32* %25, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %84, i64 %86
  %88 = load double, double* %87, align 8
  %89 = fsub double %83, %88
  %90 = fmul double %78, %89
  %91 = fadd double %76, %90
  %92 = call double @cos(double %91) #1
  %93 = load i32, i32* %25, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double, double* %29, i64 %94
  store double %92, double* %95, align 8
  br label %96

96:                                               ; preds = %71
  %97 = load i32, i32* %25, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %25, align 4
  br label %65

99:                                               ; preds = %65
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 1
  %104 = call i32 @ff_acelp_lspd2lpc(double* %29, float* %32, i32 %103)
  %105 = load float*, float** %20, align 8
  %106 = load float*, float** %19, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ff_celp_lp_synthesis_filterf(float* %105, float* %32, float* %106, i32 %107, i32 %110)
  %112 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %112)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @synth_block_hardcoded(%struct.TYPE_5__*, i32*, i32, i32, %struct.frame_type_desc*, float*) #2

declare dso_local i32 @synth_block_fcb_acb(%struct.TYPE_5__*, i32*, i32, i32, i32, %struct.frame_type_desc*, float*) #2

; Function Attrs: nounwind
declare dso_local double @cos(double) #3

declare dso_local i32 @ff_acelp_lspd2lpc(double*, float*, i32) #2

declare dso_local i32 @ff_celp_lp_synthesis_filterf(float*, float*, float*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
