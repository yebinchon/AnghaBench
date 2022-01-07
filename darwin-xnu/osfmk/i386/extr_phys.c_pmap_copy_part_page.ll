; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_phys.c_pmap_copy_part_page.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_phys.c_pmap_copy_part_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vm_page_fictitious_addr = common dso_local global i64 0, align 8
@vm_page_guard_addr = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@INTEL_OFFMASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_copy_part_page(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @vm_page_fictitious_addr, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @vm_page_fictitious_addr, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @vm_page_guard_addr, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @vm_page_guard_addr, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @i386_ptob(i64 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @i386_ptob(i64 %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @PAGE_MASK, align 8
  %39 = and i64 %37, %38
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %39, %40
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %41, %42
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = icmp ule i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @PAGE_MASK, align 8
  %50 = and i64 %48, %49
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %50, %51
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %52, %53
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = icmp ule i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @INTEL_OFFMASK, align 8
  %62 = and i64 %60, %61
  %63 = add i64 %59, %62
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @INTEL_OFFMASK, align 8
  %67 = and i64 %65, %66
  %68 = add i64 %64, %67
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @bcopy_phys(i64 %63, i64 %68, i64 %69)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @i386_ptob(i64) #1

declare dso_local i32 @bcopy_phys(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
