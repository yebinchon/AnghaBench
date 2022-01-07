; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_tfo_middlebox_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_tfo_middlebox_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_cache_key_src = type { i32 }
%struct.tcp_heuristics_head = type { i32 }
%struct.tcp_heuristic = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_cache_key_src*)* @tcp_heuristic_tfo_middlebox_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_heuristic_tfo_middlebox_common(%struct.tcp_cache_key_src* %0) #0 {
  %2 = alloca %struct.tcp_cache_key_src*, align 8
  %3 = alloca %struct.tcp_heuristics_head*, align 8
  %4 = alloca %struct.tcp_heuristic*, align 8
  store %struct.tcp_cache_key_src* %0, %struct.tcp_cache_key_src** %2, align 8
  %5 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %2, align 8
  %6 = call %struct.tcp_heuristic* @tcp_getheuristic_with_lock(%struct.tcp_cache_key_src* %5, i32 1, %struct.tcp_heuristics_head** %3)
  store %struct.tcp_heuristic* %6, %struct.tcp_heuristic** %4, align 8
  %7 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %4, align 8
  %8 = icmp eq %struct.tcp_heuristic* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %4, align 8
  %12 = call i32 @__tcp_heuristic_tfo_middlebox_common(%struct.tcp_heuristic* %11)
  %13 = load %struct.tcp_heuristics_head*, %struct.tcp_heuristics_head** %3, align 8
  %14 = call i32 @tcp_heuristic_unlock(%struct.tcp_heuristics_head* %13)
  br label %15

15:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.tcp_heuristic* @tcp_getheuristic_with_lock(%struct.tcp_cache_key_src*, i32, %struct.tcp_heuristics_head**) #1

declare dso_local i32 @__tcp_heuristic_tfo_middlebox_common(%struct.tcp_heuristic*) #1

declare dso_local i32 @tcp_heuristic_unlock(%struct.tcp_heuristics_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
