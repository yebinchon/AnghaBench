; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_loose_ends.c_ml_phys_write_long_long.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_loose_ends.c_ml_phys_write_long_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @ml_phys_write_long_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ml_phys_write_long_long(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @PAGE_SHIFT, align 4
  %10 = ashr i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = call i32 (...) @mp_disable_preemption()
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @pmap_cache_attributes(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @VM_PROT_READ, align 4
  %16 = load i32, i32* @VM_PROT_WRITE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pmap_map_cpu_windows_copy(i32 %14, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i32 (...) @cpu_number()
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @pmap_cpu_windows_copy_addr(i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @PAGE_MASK, align 4
  %26 = and i32 %24, %25
  %27 = or i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i64*
  store volatile i64 %20, i64* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @pmap_unmap_cpu_windows_copy(i32 %30)
  %32 = call i32 (...) @mp_enable_preemption()
  ret void
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
