; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_unlock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32 }
%struct.rtentry_dbg = type { i32 }

@rte_debug = common dso_local global i32 0, align 4
@RTD_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt_unlock(%struct.rtentry* %0) #0 {
  %2 = alloca %struct.rtentry*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %2, align 8
  %3 = load i32, i32* @rte_debug, align 4
  %4 = load i32, i32* @RTD_DEBUG, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %9 = bitcast %struct.rtentry* %8 to %struct.rtentry_dbg*
  %10 = call i32 @rte_unlock_debug(%struct.rtentry_dbg* %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %13 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %12, i32 0, i32 0
  %14 = call i32 @lck_mtx_unlock(i32* %13)
  ret void
}

declare dso_local i32 @rte_unlock_debug(%struct.rtentry_dbg*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
