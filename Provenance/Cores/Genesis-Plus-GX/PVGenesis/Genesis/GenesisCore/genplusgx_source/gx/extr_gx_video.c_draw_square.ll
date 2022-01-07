; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_draw_square.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_draw_square.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GX_QUADS = common dso_local global i32 0, align 4
@GX_VTXFMT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @draw_square to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_square() #0 {
  %1 = load i32, i32* @GX_QUADS, align 4
  %2 = load i32, i32* @GX_VTXFMT0, align 4
  %3 = call i32 @GX_Begin(i32 %1, i32 %2, i32 4)
  %4 = call i32 @draw_vert(i32 3, double 0.000000e+00, double 0.000000e+00)
  %5 = call i32 @draw_vert(i32 2, double 1.000000e+00, double 0.000000e+00)
  %6 = call i32 @draw_vert(i32 1, double 1.000000e+00, double 1.000000e+00)
  %7 = call i32 @draw_vert(i32 0, double 0.000000e+00, double 1.000000e+00)
  %8 = call i32 (...) @GX_End()
  ret void
}

declare dso_local i32 @GX_Begin(i32, i32, i32) #1

declare dso_local i32 @draw_vert(i32, double, double) #1

declare dso_local i32 @GX_End(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
