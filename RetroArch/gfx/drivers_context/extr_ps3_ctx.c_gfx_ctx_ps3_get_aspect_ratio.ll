; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_ps3_ctx.c_gfx_ctx_ps3_get_aspect_ratio.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_ps3_ctx.c_gfx_ctx_ps3_get_aspect_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CELL_VIDEO_OUT_PRIMARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i8*)* @gfx_ctx_ps3_get_aspect_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @gfx_ctx_ps3_get_aspect_ratio(i8* %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @CELL_VIDEO_OUT_PRIMARY, align 4
  %6 = call i32 @cellVideoOutGetState(i32 %5, i32 0, %struct.TYPE_5__* %4)
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %12 [
    i32 128, label %10
    i32 129, label %11
  ]

10:                                               ; preds = %1
  store float 0x3FF5555560000000, float* %2, align 4
  br label %13

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %1, %11
  store float 0x3FFC71C720000000, float* %2, align 4
  br label %13

13:                                               ; preds = %12, %10
  %14 = load float, float* %2, align 4
  ret float %14
}

declare dso_local i32 @cellVideoOutGetState(i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
