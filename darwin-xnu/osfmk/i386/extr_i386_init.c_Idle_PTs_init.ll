; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_init.c_Idle_PTs_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_init.c_Idle_PTs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NKPT = common dso_local global i32 0, align 4
@KPTphys = common dso_local global i64 0, align 8
@NPGPTD = common dso_local global i32 0, align 4
@IdlePTD = common dso_local global i64 0, align 8
@IdlePDPT = common dso_local global i64 0, align 8
@IdlePML4 = common dso_local global i64 0, align 8
@INTEL_PTE_WRITE = common dso_local global i32 0, align 4
@physfree = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@KERNEL_PML4_INDEX = common dso_local global i64 0, align 8
@VSTART_PHYSMAP_INIT = common dso_local global i32 0, align 4
@VSTART_SET_CR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Idle_PTs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Idle_PTs_init() #0 {
  %1 = load i32, i32* @NKPT, align 4
  %2 = call i64 @ALLOCPAGES(i32 %1)
  store i64 %2, i64* @KPTphys, align 8
  %3 = load i32, i32* @NPGPTD, align 4
  %4 = call i64 @ALLOCPAGES(i32 %3)
  store i64 %4, i64* @IdlePTD, align 8
  %5 = call i64 @ALLOCPAGES(i32 1)
  store i64 %5, i64* @IdlePDPT, align 8
  %6 = call i64 @ALLOCPAGES(i32 1)
  store i64 %6, i64* @IdlePML4, align 8
  %7 = load i64, i64* @KPTphys, align 8
  %8 = load i32, i32* @INTEL_PTE_WRITE, align 4
  %9 = load i64, i64* @physfree, align 8
  %10 = load i64, i64* @PAGE_SHIFT, align 8
  %11 = lshr i64 %9, %10
  %12 = trunc i64 %11 to i32
  %13 = call i32 @fillkpt(i64 %7, i32 %8, i64 0, i32 0, i32 %12)
  %14 = load i64, i64* @IdlePTD, align 8
  %15 = load i32, i32* @INTEL_PTE_WRITE, align 4
  %16 = load i64, i64* @KPTphys, align 8
  %17 = call i64 @ID_MAP_VTOP(i64 %16)
  %18 = load i32, i32* @NKPT, align 4
  %19 = call i32 @fillkpt(i64 %14, i32 %15, i64 %17, i32 0, i32 %18)
  %20 = load i64, i64* @IdlePDPT, align 8
  %21 = load i32, i32* @INTEL_PTE_WRITE, align 4
  %22 = load i64, i64* @IdlePTD, align 8
  %23 = call i64 @ID_MAP_VTOP(i64 %22)
  %24 = load i32, i32* @NPGPTD, align 4
  %25 = call i32 @fillkpt(i64 %20, i32 %21, i64 %23, i32 0, i32 %24)
  %26 = load i64, i64* @IdlePML4, align 8
  %27 = load i64, i64* @KERNEL_PML4_INDEX, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* @INTEL_PTE_WRITE, align 4
  %30 = load i64, i64* @IdlePDPT, align 8
  %31 = call i64 @ID_MAP_VTOP(i64 %30)
  %32 = call i32 @fillkpt(i64 %28, i32 %29, i64 %31, i32 0, i32 1)
  %33 = load i32, i32* @VSTART_PHYSMAP_INIT, align 4
  %34 = call i32 @postcode(i32 %33)
  %35 = call i32 (...) @physmap_init()
  %36 = call i32 (...) @doublemap_init()
  %37 = call i32 (...) @idt64_remap()
  %38 = load i32, i32* @VSTART_SET_CR3, align 4
  %39 = call i32 @postcode(i32 %38)
  %40 = load i64, i64* @IdlePML4, align 8
  %41 = call i64 @ID_MAP_VTOP(i64 %40)
  %42 = call i32 @set_cr3_raw(i64 %41)
  ret void
}

declare dso_local i64 @ALLOCPAGES(i32) #1

declare dso_local i32 @fillkpt(i64, i32, i64, i32, i32) #1

declare dso_local i64 @ID_MAP_VTOP(i64) #1

declare dso_local i32 @postcode(i32) #1

declare dso_local i32 @physmap_init(...) #1

declare dso_local i32 @doublemap_init(...) #1

declare dso_local i32 @idt64_remap(...) #1

declare dso_local i32 @set_cr3_raw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
