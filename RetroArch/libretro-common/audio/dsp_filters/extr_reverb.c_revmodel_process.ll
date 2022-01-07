; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_reverb.c_revmodel_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_reverb.c_revmodel_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revmodel = type { float, float, float, i32*, i32* }

@numcombs = common dso_local global i32 0, align 4
@numallpasses = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.revmodel*, float)* @revmodel_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @revmodel_process(%struct.revmodel* %0, float %1) #0 {
  %3 = alloca %struct.revmodel*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.revmodel* %0, %struct.revmodel** %3, align 8
  store float %1, float* %4, align 4
  store float 0.000000e+00, float* %6, align 4
  %9 = load float, float* %4, align 4
  store float %9, float* %7, align 4
  %10 = load float, float* %7, align 4
  %11 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %12 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %11, i32 0, i32 0
  %13 = load float, float* %12, align 8
  %14 = fmul float %10, %13
  store float %14, float* %8, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @numcombs, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %21 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load float, float* %8, align 4
  %27 = call i64 @comb_process(i32* %25, float %26)
  %28 = sitofp i64 %27 to float
  %29 = load float, float* %6, align 4
  %30 = fadd float %29, %28
  store float %30, float* %6, align 4
  br label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %15

34:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %48, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @numallpasses, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %41 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load float, float* %6, align 4
  %47 = call float @allpass_process(i32* %45, float %46)
  store float %47, float* %6, align 4
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %35

51:                                               ; preds = %35
  %52 = load float, float* %7, align 4
  %53 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %54 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %53, i32 0, i32 1
  %55 = load float, float* %54, align 4
  %56 = fmul float %52, %55
  %57 = load float, float* %6, align 4
  %58 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %59 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %58, i32 0, i32 2
  %60 = load float, float* %59, align 8
  %61 = fmul float %57, %60
  %62 = fadd float %56, %61
  ret float %62
}

declare dso_local i64 @comb_process(i32*, float) #1

declare dso_local float @allpass_process(i32*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
