; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_swap_magazines.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_swap_magazines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcc_magazine = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zcache_swap_magazines(%struct.zcc_magazine** %0, %struct.zcc_magazine** %1) #0 {
  %3 = alloca %struct.zcc_magazine**, align 8
  %4 = alloca %struct.zcc_magazine**, align 8
  %5 = alloca %struct.zcc_magazine*, align 8
  store %struct.zcc_magazine** %0, %struct.zcc_magazine*** %3, align 8
  store %struct.zcc_magazine** %1, %struct.zcc_magazine*** %4, align 8
  %6 = load %struct.zcc_magazine**, %struct.zcc_magazine*** %3, align 8
  %7 = load %struct.zcc_magazine*, %struct.zcc_magazine** %6, align 8
  store %struct.zcc_magazine* %7, %struct.zcc_magazine** %5, align 8
  %8 = load %struct.zcc_magazine**, %struct.zcc_magazine*** %4, align 8
  %9 = load %struct.zcc_magazine*, %struct.zcc_magazine** %8, align 8
  %10 = load %struct.zcc_magazine**, %struct.zcc_magazine*** %3, align 8
  store %struct.zcc_magazine* %9, %struct.zcc_magazine** %10, align 8
  %11 = load %struct.zcc_magazine*, %struct.zcc_magazine** %5, align 8
  %12 = load %struct.zcc_magazine**, %struct.zcc_magazine*** %4, align 8
  store %struct.zcc_magazine* %11, %struct.zcc_magazine** %12, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
