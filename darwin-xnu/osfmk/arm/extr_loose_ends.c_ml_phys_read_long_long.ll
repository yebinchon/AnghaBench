; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_loose_ends.c_ml_phys_read_long_long.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_loose_ends.c_ml_phys_read_long_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @ml_phys_read_long_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ml_phys_read_long_long(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @PAGE_SHIFT, align 4
  %9 = ashr i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = call i32 (...) @mp_disable_preemption()
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @pmap_cache_attributes(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @VM_PROT_READ, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @pmap_map_cpu_windows_copy(i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = call i32 (...) @cpu_number()
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @pmap_cpu_windows_copy_addr(i32 %17, i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @PAGE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = or i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i64*
  %26 = load volatile i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @pmap_unmap_cpu_windows_copy(i32 %28)
  %30 = call i32 (...) @mp_enable_preemption()
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  ret i64 %32
}

declare dso_local i32 @mp_disable_preemption(...) #1

declare dso_local i32 @pmap_cache_attributes(i32) #1

declare dso_local i32 @pmap_map_cpu_windows_copy(i32, i32, i32) #1

declare dso_local i32 @pmap_cpu_windows_copy_addr(i32, i32) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @pmap_unmap_cpu_windows_copy(i32) #1

declare dso_local i32 @mp_enable_preemption(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
