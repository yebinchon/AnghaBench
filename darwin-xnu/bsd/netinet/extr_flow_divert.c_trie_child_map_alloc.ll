; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_trie_child_map_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_trie_child_map_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_trie = type { i64, i64 }

@NULL_TRIE_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_divert_trie*)* @trie_child_map_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trie_child_map_alloc(%struct.flow_divert_trie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flow_divert_trie*, align 8
  store %struct.flow_divert_trie* %0, %struct.flow_divert_trie** %3, align 8
  %4 = load %struct.flow_divert_trie*, %struct.flow_divert_trie** %3, align 8
  %5 = getelementptr inbounds %struct.flow_divert_trie, %struct.flow_divert_trie* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.flow_divert_trie*, %struct.flow_divert_trie** %3, align 8
  %8 = getelementptr inbounds %struct.flow_divert_trie, %struct.flow_divert_trie* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %6, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.flow_divert_trie*, %struct.flow_divert_trie** %3, align 8
  %13 = getelementptr inbounds %struct.flow_divert_trie, %struct.flow_divert_trie* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = trunc i64 %14 to i32
  store i32 %16, i32* %2, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @NULL_TRIE_IDX, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %11
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
