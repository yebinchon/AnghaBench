; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_brushbsp.c_ResetBrushBSP.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_brushbsp.c_ResetBrushBSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c_nodes = common dso_local global i64 0, align 8
@c_nonvis = common dso_local global i64 0, align 8
@c_active_brushes = common dso_local global i64 0, align 8
@c_solidleafnodes = common dso_local global i64 0, align 8
@c_totalsides = common dso_local global i64 0, align 8
@c_brushmemory = common dso_local global i64 0, align 8
@c_peak_brushmemory = common dso_local global i64 0, align 8
@c_nodememory = common dso_local global i64 0, align 8
@c_peak_totalbspmemory = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ResetBrushBSP() #0 {
  store i64 0, i64* @c_nodes, align 8
  store i64 0, i64* @c_nonvis, align 8
  store i64 0, i64* @c_active_brushes, align 8
  store i64 0, i64* @c_solidleafnodes, align 8
  store i64 0, i64* @c_totalsides, align 8
  store i64 0, i64* @c_brushmemory, align 8
  store i64 0, i64* @c_peak_brushmemory, align 8
  store i64 0, i64* @c_nodememory, align 8
  store i64 0, i64* @c_peak_totalbspmemory, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
