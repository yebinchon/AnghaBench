; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_legacy_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_legacy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lapic_vbase = common dso_local global i64 0, align 8
@kernel_map = common dso_local global i32 0, align 4
@LAPIC_SIZE = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_IOKIT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"legacy_init: vm_map_find_entry FAILED (err=%d)\00", align 1
@lapic_pbase = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@VM_WIMG_IO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DFR = common dso_local global i32 0, align 4
@LAPIC_DFR_FLAT = common dso_local global i32 0, align 4
@LDR = common dso_local global i32 0, align 4
@LAPIC_LDR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @legacy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @legacy_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i64, i64* @lapic_vbase, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %0
  %8 = load i32, i32* @kernel_map, align 4
  %9 = call i64 @vm_map_min(i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i32, i32* @kernel_map, align 4
  %11 = load i32, i32* @LAPIC_SIZE, align 4
  %12 = call i32 @round_page(i32 %11)
  %13 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %14 = load i32, i32* @VM_KERN_MEMORY_IOKIT, align 4
  %15 = call i32 @vm_map_find_space(i32 %10, i64* %4, i32 %12, i32 0, i32 0, i32 %13, i32 %14, i32* %3)
  store i32 %15, i32* %1, align 4
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* @lapic_vbase, align 8
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @KERN_SUCCESS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %7
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %7
  %24 = load i32, i32* @kernel_map, align 4
  %25 = call i32 @vm_map_unlock(i32 %24)
  %26 = call i32 (...) @pmap_kernel()
  %27 = load i64, i64* @lapic_vbase, align 8
  %28 = load i32, i32* @lapic_pbase, align 4
  %29 = call i64 @i386_btop(i32 %28)
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @VM_PROT_READ, align 4
  %32 = load i32, i32* @VM_PROT_WRITE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @VM_PROT_NONE, align 4
  %35 = load i32, i32* @VM_WIMG_IO, align 4
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i32 @pmap_enter(i32 %26, i64 %27, i32 %30, i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @KERN_SUCCESS, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  br label %43

43:                                               ; preds = %23, %0
  %44 = load i32, i32* @DFR, align 4
  %45 = load i32, i32* @LAPIC_DFR_FLAT, align 4
  %46 = call i32 @LAPIC_WRITE(i32 %44, i32 %45)
  %47 = load i32, i32* @LDR, align 4
  %48 = call i32 (...) @get_cpu_number()
  %49 = load i32, i32* @LAPIC_LDR_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = call i32 @LAPIC_WRITE(i32 %47, i32 %50)
  ret void
}

declare dso_local i64 @vm_map_min(i32) #1

declare dso_local i32 @vm_map_find_space(i32, i64*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @vm_map_unlock(i32) #1

declare dso_local i32 @pmap_enter(i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pmap_kernel(...) #1

declare dso_local i64 @i386_btop(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LAPIC_WRITE(i32, i32) #1

declare dso_local i32 @get_cpu_number(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
