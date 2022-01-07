; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/corpses/extr_corpse.c_total_corpses_count.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/corpses/extr_corpse.c_total_corpses_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.corpse_creation_gate = type { i64 }

@inflight_corpses = common dso_local global i32 0, align 4
@memory_order_relaxed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @total_corpses_count() #0 {
  %1 = alloca %union.corpse_creation_gate, align 8
  %2 = load i32, i32* @memory_order_relaxed, align 4
  %3 = call i32 @atomic_load_explicit(i32* @inflight_corpses, i32 %2)
  %4 = bitcast %union.corpse_creation_gate* %1 to i32*
  store i32 %3, i32* %4, align 8
  %5 = bitcast %union.corpse_creation_gate* %1 to i64*
  %6 = load i64, i64* %5, align 8
  ret i64 %6
}

declare dso_local i32 @atomic_load_explicit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
