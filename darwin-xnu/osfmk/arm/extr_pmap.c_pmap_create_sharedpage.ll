; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_create_sharedpage.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_create_sharedpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@sharedpage_pmap = common dso_local global i32* null, align 8
@_COMM_PAGE64_BASE_ADDRESS = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@VM_WIMG_USE_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@PMAP_COMM_PAGE_PTE_TEMPLATE = common dso_local global i32 0, align 4
@_COMM_PAGE32_BASE_ADDRESS = common dso_local global i32 0, align 4
@ARM_PTE_NG = common dso_local global i32 0, align 4
@_COMM_HIGH_PAGE64_BASE_ADDRESS = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_create_sharedpage() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @PAGE_SIZE, align 4
  %4 = call i32 @pmap_pages_alloc(i32* %2, i32 %3, i32 0)
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @phystokv(i32 %5)
  %7 = inttoptr i64 %6 to i8*
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = call i32 @memset(i8* %7, i32 0, i32 %8)
  %10 = load i32, i32* @FALSE, align 4
  %11 = call i32* @pmap_create(i32* null, i32 0, i32 %10)
  store i32* %11, i32** @sharedpage_pmap, align 8
  %12 = load i32*, i32** @sharedpage_pmap, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** @sharedpage_pmap, align 8
  %17 = load i32, i32* @_COMM_PAGE64_BASE_ADDRESS, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @atop(i32 %18)
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @VM_PROT_READ, align 4
  %22 = load i32, i32* @VM_PROT_NONE, align 4
  %23 = load i32, i32* @VM_WIMG_USE_DEFAULT, align 4
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i64 @pmap_enter(i32* %16, i32 %17, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24)
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* @KERN_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** @sharedpage_pmap, align 8
  %32 = load i32, i32* @_COMM_PAGE64_BASE_ADDRESS, align 4
  %33 = load i32, i32* @PMAP_COMM_PAGE_PTE_TEMPLATE, align 4
  %34 = call i32 @pmap_update_tt3e(i32* %31, i32 %32, i32 %33)
  %35 = load i32*, i32** @sharedpage_pmap, align 8
  %36 = load i32, i32* @_COMM_PAGE32_BASE_ADDRESS, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i64 @atop(i32 %37)
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @VM_PROT_READ, align 4
  %41 = load i32, i32* @VM_PROT_NONE, align 4
  %42 = load i32, i32* @VM_WIMG_USE_DEFAULT, align 4
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i64 @pmap_enter(i32* %35, i32 %36, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  store i64 %44, i64* %1, align 8
  %45 = load i64, i64* %1, align 8
  %46 = load i64, i64* @KERN_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32*, i32** @sharedpage_pmap, align 8
  %51 = load i32, i32* @_COMM_PAGE32_BASE_ADDRESS, align 4
  %52 = load i32, i32* @PMAP_COMM_PAGE_PTE_TEMPLATE, align 4
  %53 = call i32 @pmap_update_tt3e(i32* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %2, align 4
  %55 = call i64 @phystokv(i32 %54)
  %56 = trunc i64 %55 to i32
  ret i32 %56
}

declare dso_local i32 @pmap_pages_alloc(i32*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @phystokv(i32) #1

declare dso_local i32* @pmap_create(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pmap_enter(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @atop(i32) #1

declare dso_local i32 @pmap_update_tt3e(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
