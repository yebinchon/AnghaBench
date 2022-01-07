; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_vibrato.c_vibratocore_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_vibrato.c_vibratocore_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vibrato_core = type { i32, i32, float, float, i64, i64, i32 }

@BASE_DELAY_SEC = common dso_local global i32 0, align 4
@add_delay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vibrato_core*, float, i32, float)* @vibratocore_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vibratocore_init(%struct.vibrato_core* %0, float %1, i32 %2, float %3) #0 {
  %5 = alloca %struct.vibrato_core*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store %struct.vibrato_core* %0, %struct.vibrato_core** %5, align 8
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  store float %3, float* %8, align 4
  %9 = load i32, i32* @BASE_DELAY_SEC, align 4
  %10 = load i32, i32* %7, align 4
  %11 = mul nsw i32 %9, %10
  %12 = mul nsw i32 %11, 2
  %13 = load %struct.vibrato_core*, %struct.vibrato_core** %5, align 8
  %14 = getelementptr inbounds %struct.vibrato_core, %struct.vibrato_core* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.vibrato_core*, %struct.vibrato_core** %5, align 8
  %16 = getelementptr inbounds %struct.vibrato_core, %struct.vibrato_core* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @add_delay, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i32 @malloc(i32 %22)
  %24 = load %struct.vibrato_core*, %struct.vibrato_core** %5, align 8
  %25 = getelementptr inbounds %struct.vibrato_core, %struct.vibrato_core* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load %struct.vibrato_core*, %struct.vibrato_core** %5, align 8
  %27 = getelementptr inbounds %struct.vibrato_core, %struct.vibrato_core* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.vibrato_core*, %struct.vibrato_core** %5, align 8
  %30 = getelementptr inbounds %struct.vibrato_core, %struct.vibrato_core* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @add_delay, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memset(i32 %28, i32 0, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.vibrato_core*, %struct.vibrato_core** %5, align 8
  %40 = getelementptr inbounds %struct.vibrato_core, %struct.vibrato_core* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load float, float* %8, align 4
  %42 = load %struct.vibrato_core*, %struct.vibrato_core** %5, align 8
  %43 = getelementptr inbounds %struct.vibrato_core, %struct.vibrato_core* %42, i32 0, i32 2
  store float %41, float* %43, align 8
  %44 = load float, float* %6, align 4
  %45 = load %struct.vibrato_core*, %struct.vibrato_core** %5, align 8
  %46 = getelementptr inbounds %struct.vibrato_core, %struct.vibrato_core* %45, i32 0, i32 3
  store float %44, float* %46, align 4
  %47 = load %struct.vibrato_core*, %struct.vibrato_core** %5, align 8
  %48 = getelementptr inbounds %struct.vibrato_core, %struct.vibrato_core* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load %struct.vibrato_core*, %struct.vibrato_core** %5, align 8
  %50 = getelementptr inbounds %struct.vibrato_core, %struct.vibrato_core* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  ret void
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
