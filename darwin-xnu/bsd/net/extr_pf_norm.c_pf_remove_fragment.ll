; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_remove_fragment.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_remove_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_fragment = type { i32 }

@pf_frag_tree = common dso_local global i32 0, align 4
@pf_fragqueue = common dso_local global i32 0, align 4
@frag_next = common dso_local global i32 0, align 4
@pf_frag_pl = common dso_local global i32 0, align 4
@pf_cache_tree = common dso_local global i32 0, align 4
@pf_cachequeue = common dso_local global i32 0, align 4
@pf_cache_pl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_fragment*)* @pf_remove_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_remove_fragment(%struct.pf_fragment* %0) #0 {
  %2 = alloca %struct.pf_fragment*, align 8
  store %struct.pf_fragment* %0, %struct.pf_fragment** %2, align 8
  %3 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %4 = call i64 @BUFFER_FRAGMENTS(%struct.pf_fragment* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32, i32* @pf_frag_tree, align 4
  %8 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %9 = call i32 @RB_REMOVE(i32 %7, i32* @pf_frag_tree, %struct.pf_fragment* %8)
  %10 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %11 = load i32, i32* @frag_next, align 4
  %12 = call i32 @TAILQ_REMOVE(i32* @pf_fragqueue, %struct.pf_fragment* %10, i32 %11)
  %13 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %14 = call i32 @pool_put(i32* @pf_frag_pl, %struct.pf_fragment* %13)
  br label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @pf_frag_tree, align 4
  %17 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %18 = call i32 @RB_REMOVE(i32 %16, i32* @pf_cache_tree, %struct.pf_fragment* %17)
  %19 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %20 = load i32, i32* @frag_next, align 4
  %21 = call i32 @TAILQ_REMOVE(i32* @pf_cachequeue, %struct.pf_fragment* %19, i32 %20)
  %22 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %23 = call i32 @pool_put(i32* @pf_cache_pl, %struct.pf_fragment* %22)
  br label %24

24:                                               ; preds = %15, %6
  ret void
}

declare dso_local i64 @BUFFER_FRAGMENTS(%struct.pf_fragment*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.pf_fragment*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pf_fragment*, i32) #1

declare dso_local i32 @pool_put(i32*, %struct.pf_fragment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
