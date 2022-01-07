; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_pcm.c_pcm_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_pcm.c_pcm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@snd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SCYCLES_PER_LINE = common dso_local global i32 0, align 4
@vdp_pal = common dso_local global i64 0, align 8
@SCD_CLOCK = common dso_local global i32 0, align 4
@blip = common dso_local global i32** null, align 8
@PCM_SCYCLES_RATIO = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcm_init(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snd, i32 0, i32 0), align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i32, i32* @SCYCLES_PER_LINE, align 4
  %10 = load i64, i64* @vdp_pal, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 313, i32 262
  %14 = mul nsw i32 %9, %13
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snd, i32 0, i32 0), align 4
  %16 = mul nsw i32 %14, %15
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @SCD_CLOCK, align 4
  br label %19

19:                                               ; preds = %17, %8
  %20 = phi i32 [ %16, %8 ], [ %18, %17 ]
  %21 = sitofp i32 %20 to double
  store double %21, double* %5, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32**, i32*** @blip, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  store i32* %22, i32** %24, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32**, i32*** @blip, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 1
  store i32* %25, i32** %27, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load double, double* %5, align 8
  %30 = load double, double* @PCM_SCYCLES_RATIO, align 8
  %31 = fdiv double %29, %30
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snd, i32 0, i32 1), align 4
  %33 = call i32 @blip_set_rates(i32* %28, double %31, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load double, double* %5, align 8
  %36 = load double, double* @PCM_SCYCLES_RATIO, align 8
  %37 = fdiv double %35, %36
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snd, i32 0, i32 1), align 4
  %39 = call i32 @blip_set_rates(i32* %34, double %37, i32 %38)
  ret void
}

declare dso_local i32 @blip_set_rates(i32*, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
