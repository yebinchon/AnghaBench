; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_cache_get_cookie_len_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_cache_get_cookie_len_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_cache_key_src = type { i32 }
%struct.tcp_cache_head = type { i32 }
%struct.tcp_cache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_cache_key_src*)* @tcp_cache_get_cookie_len_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_cache_get_cookie_len_common(%struct.tcp_cache_key_src* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcp_cache_key_src*, align 8
  %4 = alloca %struct.tcp_cache_head*, align 8
  %5 = alloca %struct.tcp_cache*, align 8
  %6 = alloca i32, align 4
  store %struct.tcp_cache_key_src* %0, %struct.tcp_cache_key_src** %3, align 8
  %7 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %8 = call %struct.tcp_cache* @tcp_getcache_with_lock(%struct.tcp_cache_key_src* %7, i32 1, %struct.tcp_cache_head** %4)
  store %struct.tcp_cache* %8, %struct.tcp_cache** %5, align 8
  %9 = load %struct.tcp_cache*, %struct.tcp_cache** %5, align 8
  %10 = icmp eq %struct.tcp_cache* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.tcp_cache*, %struct.tcp_cache** %5, align 8
  %14 = getelementptr inbounds %struct.tcp_cache, %struct.tcp_cache* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.tcp_cache_head*, %struct.tcp_cache_head** %4, align 8
  %17 = call i32 @tcp_cache_unlock(%struct.tcp_cache_head* %16)
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.tcp_cache* @tcp_getcache_with_lock(%struct.tcp_cache_key_src*, i32, %struct.tcp_cache_head**) #1

declare dso_local i32 @tcp_cache_unlock(%struct.tcp_cache_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
