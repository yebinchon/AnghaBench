; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_lerp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_lerp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rgbvec = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rgbvec*, %struct.rgbvec*, %struct.rgbvec*, float)* @lerp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lerp(%struct.rgbvec* noalias sret %0, %struct.rgbvec* %1, %struct.rgbvec* %2, float %3) #0 {
  %5 = alloca %struct.rgbvec*, align 8
  %6 = alloca %struct.rgbvec*, align 8
  %7 = alloca float, align 4
  store %struct.rgbvec* %1, %struct.rgbvec** %5, align 8
  store %struct.rgbvec* %2, %struct.rgbvec** %6, align 8
  store float %3, float* %7, align 4
  %8 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %0, i32 0, i32 0
  %9 = load %struct.rgbvec*, %struct.rgbvec** %5, align 8
  %10 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rgbvec*, %struct.rgbvec** %6, align 8
  %13 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load float, float* %7, align 4
  %16 = call i32 @lerpf(i32 %11, i32 %14, float %15)
  store i32 %16, i32* %8, align 4
  %17 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %0, i32 0, i32 1
  %18 = load %struct.rgbvec*, %struct.rgbvec** %5, align 8
  %19 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rgbvec*, %struct.rgbvec** %6, align 8
  %22 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load float, float* %7, align 4
  %25 = call i32 @lerpf(i32 %20, i32 %23, float %24)
  store i32 %25, i32* %17, align 4
  %26 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %0, i32 0, i32 2
  %27 = load %struct.rgbvec*, %struct.rgbvec** %5, align 8
  %28 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rgbvec*, %struct.rgbvec** %6, align 8
  %31 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load float, float* %7, align 4
  %34 = call i32 @lerpf(i32 %29, i32 %32, float %33)
  store i32 %34, i32* %26, align 4
  %35 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %0, i32 0, i32 3
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %0, i32 0, i32 4
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %0, i32 0, i32 5
  store i32 0, i32* %37, align 4
  ret void
}

declare dso_local i32 @lerpf(i32, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
