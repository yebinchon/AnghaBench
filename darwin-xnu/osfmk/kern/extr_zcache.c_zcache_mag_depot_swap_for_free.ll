; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_mag_depot_swap_for_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_mag_depot_swap_for_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone_cache = type { i64, i32* }
%struct.zcc_per_cpu_cache = type { i32 }

@depot_element_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zcache_mag_depot_swap_for_free(%struct.zone_cache* %0, %struct.zcc_per_cpu_cache* %1) #0 {
  %3 = alloca %struct.zone_cache*, align 8
  %4 = alloca %struct.zcc_per_cpu_cache*, align 8
  store %struct.zone_cache* %0, %struct.zone_cache** %3, align 8
  store %struct.zcc_per_cpu_cache* %1, %struct.zcc_per_cpu_cache** %4, align 8
  %5 = load %struct.zone_cache*, %struct.zone_cache** %3, align 8
  %6 = call i32 @zcache_depot_available(%struct.zone_cache* %5)
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.zone_cache*, %struct.zone_cache** %3, align 8
  %9 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @depot_element_count, align 8
  %12 = icmp ult i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %4, align 8
  %16 = getelementptr inbounds %struct.zcc_per_cpu_cache, %struct.zcc_per_cpu_cache* %15, i32 0, i32 0
  %17 = load %struct.zone_cache*, %struct.zone_cache** %3, align 8
  %18 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.zone_cache*, %struct.zone_cache** %3, align 8
  %21 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = call i32 @zcache_swap_magazines(i32* %16, i32* %23)
  %25 = load %struct.zone_cache*, %struct.zone_cache** %3, align 8
  %26 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %26, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zcache_depot_available(%struct.zone_cache*) #1

declare dso_local i32 @zcache_swap_magazines(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
