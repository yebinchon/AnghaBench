; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_cocoa_input.c_cocoa_mouse_state_screen.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_cocoa_input.c_cocoa_mouse_state_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_4__*, i32)* @cocoa_mouse_state_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @cocoa_mouse_state_screen(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call float (...) @get_backing_scale_factor()
  store float %8, float* %7, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %18 [
    i32 129, label %10
    i32 128, label %14
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load float, float* %12, align 4
  store float %13, float* %6, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load float, float* %16, align 4
  store float %17, float* %6, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call float @cocoa_mouse_state(%struct.TYPE_4__* %19, i32 %20)
  store float %21, float* %3, align 4
  br label %27

22:                                               ; preds = %14, %10
  %23 = load float, float* %7, align 4
  %24 = load float, float* %6, align 4
  %25 = fmul float %24, %23
  store float %25, float* %6, align 4
  %26 = load float, float* %6, align 4
  store float %26, float* %3, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load float, float* %3, align 4
  ret float %28
}

declare dso_local float @get_backing_scale_factor(...) #1

declare dso_local float @cocoa_mouse_state(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
