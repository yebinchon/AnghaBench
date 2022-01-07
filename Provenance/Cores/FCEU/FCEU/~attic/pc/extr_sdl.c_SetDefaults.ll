; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl.c_SetDefaults.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl.c_SetDefaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@Settings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@_bpp = common dso_local global i32 0, align 4
@_xres = common dso_local global i32 0, align 4
@_yres = common dso_local global i32 0, align 4
@_fullscreen = common dso_local global i64 0, align 8
@_xscale = common dso_local global double 0.000000e+00, align 8
@_yscale = common dso_local global i32 0, align 4
@_yscalefs = common dso_local global i32 0, align 4
@_xscalefs = common dso_local global i32 0, align 4
@_efxfs = common dso_local global i64 0, align 8
@_efx = common dso_local global i64 0, align 8
@_opengl = common dso_local global i32 0, align 4
@_openglip = common dso_local global i32 0, align 4
@_stretchx = common dso_local global i32 0, align 4
@_stretchy = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SetDefaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetDefaults() #0 {
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 1), align 8
  store i32 8, i32* @_bpp, align 4
  store i32 640, i32* @_xres, align 4
  store i32 480, i32* @_yres, align 4
  store i64 0, i64* @_fullscreen, align 8
  store double 2.500000e+00, double* @_xscale, align 8
  store i32 2, i32* @_yscale, align 4
  store i32 2, i32* @_yscalefs, align 4
  store i32 2, i32* @_xscalefs, align 4
  store i64 0, i64* @_efxfs, align 8
  store i64 0, i64* @_efx, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
