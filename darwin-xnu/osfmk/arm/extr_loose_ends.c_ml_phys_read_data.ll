; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_loose_ends.c_ml_phys_read_data.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_loose_ends.c_ml_phys_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ml_phys_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ml_phys_read_data(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @PAGE_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %15 = call i32 (...) @mp_disable_preemption()
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @pmap_cache_attributes(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @VM_PROT_READ, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @pmap_map_cpu_windows_copy(i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = call i32 (...) @cpu_number()
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @pmap_cpu_windows_copy_addr(i32 %22, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @PAGE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = or i32 %24, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %45 [
    i32 1, label %30
    i32 2, label %37
    i32 4, label %44
  ]

30:                                               ; preds = %2
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = load volatile i8, i8* %33, align 1
  store i8 %34, i8* %9, align 1
  %35 = load i8, i8* %9, align 1
  %36 = zext i8 %35 to i32
  store i32 %36, i32* %6, align 4
  br label %50

37:                                               ; preds = %2
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i16*
  %41 = load volatile i16, i16* %40, align 2
  store i16 %41, i16* %10, align 2
  %42 = load i16, i16* %10, align 2
  %43 = zext i16 %42 to i32
  store i32 %43, i32* %6, align 4
  br label %50

44:                                               ; preds = %2
  br label %45

45:                                               ; preds = %2, %44
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i32*
  %49 = load volatile i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %45, %37, %30
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @pmap_unmap_cpu_windows_copy(i32 %51)
  %53 = call i32 (...) @mp_enable_preemption()
  %54 = load i32, i32* %6, align 4
  ret i32 %54
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
