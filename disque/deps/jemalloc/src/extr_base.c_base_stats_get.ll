; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_base.c_base_stats_get.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_base.c_base_stats_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base_mtx = common dso_local global i32 0, align 4
@base_allocated = common dso_local global i64 0, align 8
@base_resident = common dso_local global i64 0, align 8
@base_mapped = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @base_stats_get(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = call i32 @malloc_mutex_lock(i32* @base_mtx)
  %8 = load i64, i64* @base_allocated, align 8
  %9 = load i64, i64* @base_resident, align 8
  %10 = icmp ule i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* @base_resident, align 8
  %14 = load i64, i64* @base_mapped, align 8
  %15 = icmp ule i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i64, i64* @base_allocated, align 8
  %19 = load i64*, i64** %4, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i64, i64* @base_resident, align 8
  %21 = load i64*, i64** %5, align 8
  store i64 %20, i64* %21, align 8
  %22 = load i64, i64* @base_mapped, align 8
  %23 = load i64*, i64** %6, align 8
  store i64 %22, i64* %23, align 8
  %24 = call i32 @malloc_mutex_unlock(i32* @base_mtx)
  ret void
}

declare dso_local i32 @malloc_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
