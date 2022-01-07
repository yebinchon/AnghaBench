; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristics_hash.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristics_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_cache_key_src = type { i32 }
%struct.tcp_heuristic_key = type { i32 }

@tcp_cache_hash_seed = common dso_local global i32 0, align 4
@tcp_cache_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_cache_key_src*, %struct.tcp_heuristic_key*)* @tcp_heuristics_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_heuristics_hash(%struct.tcp_cache_key_src* %0, %struct.tcp_heuristic_key* %1) #0 {
  %3 = alloca %struct.tcp_cache_key_src*, align 8
  %4 = alloca %struct.tcp_heuristic_key*, align 8
  %5 = alloca i32, align 4
  store %struct.tcp_cache_key_src* %0, %struct.tcp_cache_key_src** %3, align 8
  store %struct.tcp_heuristic_key* %1, %struct.tcp_heuristic_key** %4, align 8
  %6 = load %struct.tcp_heuristic_key*, %struct.tcp_heuristic_key** %4, align 8
  %7 = call i32 @bzero(%struct.tcp_heuristic_key* %6, i32 4)
  %8 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %9 = load %struct.tcp_heuristic_key*, %struct.tcp_heuristic_key** %4, align 8
  %10 = call i32 @tcp_cache_hash_src(%struct.tcp_cache_key_src* %8, %struct.tcp_heuristic_key* %9)
  %11 = load %struct.tcp_heuristic_key*, %struct.tcp_heuristic_key** %4, align 8
  %12 = load i32, i32* @tcp_cache_hash_seed, align 4
  %13 = call i32 @net_flowhash(%struct.tcp_heuristic_key* %11, i32 4, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @tcp_cache_size, align 4
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %14, %16
  ret i32 %17
}

declare dso_local i32 @bzero(%struct.tcp_heuristic_key*, i32) #1

declare dso_local i32 @tcp_cache_hash_src(%struct.tcp_cache_key_src*, %struct.tcp_heuristic_key*) #1

declare dso_local i32 @net_flowhash(%struct.tcp_heuristic_key*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
