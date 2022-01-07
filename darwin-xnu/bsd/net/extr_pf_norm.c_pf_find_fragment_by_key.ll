; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_find_fragment_by_key.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_find_fragment_by_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_fragment = type { i32 }
%struct.pf_frag_tree = type { i32 }

@pf_frag_tree = common dso_local global i32 0, align 4
@pf_fragqueue = common dso_local global i32 0, align 4
@frag_next = common dso_local global i32 0, align 4
@pf_cachequeue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pf_fragment* (%struct.pf_fragment*, %struct.pf_frag_tree*)* @pf_find_fragment_by_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pf_fragment* @pf_find_fragment_by_key(%struct.pf_fragment* %0, %struct.pf_frag_tree* %1) #0 {
  %3 = alloca %struct.pf_fragment*, align 8
  %4 = alloca %struct.pf_frag_tree*, align 8
  %5 = alloca %struct.pf_fragment*, align 8
  store %struct.pf_fragment* %0, %struct.pf_fragment** %3, align 8
  store %struct.pf_frag_tree* %1, %struct.pf_frag_tree** %4, align 8
  %6 = load i32, i32* @pf_frag_tree, align 4
  %7 = load %struct.pf_frag_tree*, %struct.pf_frag_tree** %4, align 8
  %8 = load %struct.pf_fragment*, %struct.pf_fragment** %3, align 8
  %9 = call %struct.pf_fragment* @RB_FIND(i32 %6, %struct.pf_frag_tree* %7, %struct.pf_fragment* %8)
  store %struct.pf_fragment* %9, %struct.pf_fragment** %5, align 8
  %10 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %11 = icmp ne %struct.pf_fragment* %10, null
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = call i32 (...) @pf_time_second()
  %14 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %15 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %17 = call i64 @BUFFER_FRAGMENTS(%struct.pf_fragment* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %21 = load i32, i32* @frag_next, align 4
  %22 = call i32 @TAILQ_REMOVE(i32* @pf_fragqueue, %struct.pf_fragment* %20, i32 %21)
  %23 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %24 = load i32, i32* @frag_next, align 4
  %25 = call i32 @TAILQ_INSERT_HEAD(i32* @pf_fragqueue, %struct.pf_fragment* %23, i32 %24)
  br label %33

26:                                               ; preds = %12
  %27 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %28 = load i32, i32* @frag_next, align 4
  %29 = call i32 @TAILQ_REMOVE(i32* @pf_cachequeue, %struct.pf_fragment* %27, i32 %28)
  %30 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %31 = load i32, i32* @frag_next, align 4
  %32 = call i32 @TAILQ_INSERT_HEAD(i32* @pf_cachequeue, %struct.pf_fragment* %30, i32 %31)
  br label %33

33:                                               ; preds = %26, %19
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  ret %struct.pf_fragment* %35
}

declare dso_local %struct.pf_fragment* @RB_FIND(i32, %struct.pf_frag_tree*, %struct.pf_fragment*) #1

declare dso_local i32 @pf_time_second(...) #1

declare dso_local i64 @BUFFER_FRAGMENTS(%struct.pf_fragment*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pf_fragment*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.pf_fragment*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
