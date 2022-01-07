; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rte_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rte_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32 }

@rte_debug = common dso_local global i32 0, align 4
@RTD_DEBUG = common dso_local global i32 0, align 4
@rte_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtentry* ()* @rte_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtentry* @rte_alloc() #0 {
  %1 = alloca %struct.rtentry*, align 8
  %2 = load i32, i32* @rte_debug, align 4
  %3 = load i32, i32* @RTD_DEBUG, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call %struct.rtentry* (...) @rte_alloc_debug()
  store %struct.rtentry* %7, %struct.rtentry** %1, align 8
  br label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @rte_zone, align 4
  %10 = call i64 @zalloc(i32 %9)
  %11 = inttoptr i64 %10 to %struct.rtentry*
  store %struct.rtentry* %11, %struct.rtentry** %1, align 8
  br label %12

12:                                               ; preds = %8, %6
  %13 = load %struct.rtentry*, %struct.rtentry** %1, align 8
  ret %struct.rtentry* %13
}

declare dso_local %struct.rtentry* @rte_alloc_debug(...) #1

declare dso_local i64 @zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
