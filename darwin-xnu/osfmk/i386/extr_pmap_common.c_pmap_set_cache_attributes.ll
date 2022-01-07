; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_common.c_pmap_set_cache_attributes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_common.c_pmap_set_cache_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MEM_NOT_CACHEABLE = common dso_local global i32 0, align 4
@VM_MEM_GUARDED = common dso_local global i32 0, align 4
@PHYS_PTA = common dso_local global i32 0, align 4
@PHYS_NCACHE = common dso_local global i32 0, align 4
@vm_page_fictitious_addr = common dso_local global i64 0, align 8
@vm_page_guard_addr = common dso_local global i64 0, align 8
@pmap_phys_attributes = common dso_local global i32* null, align 8
@PHYS_CACHEABILITY_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_set_cache_attributes(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @VM_MEM_NOT_CACHEABLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @VM_MEM_GUARDED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @PHYS_PTA, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* @PHYS_NCACHE, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %21, %2
  %26 = call i32 (...) @pmap_intr_assert()
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @vm_page_fictitious_addr, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @vm_page_guard_addr, align 8
  %33 = icmp ne i64 %31, %32
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i1 [ false, %25 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @ppn_to_pai(i64 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @IS_MANAGED_PAGE(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %86

44:                                               ; preds = %34
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @LOCK_PVH(i32 %45)
  %47 = load i64, i64* %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @pmap_update_cache_attributes_locked(i64 %47, i32 %48)
  %50 = load i32*, i32** @pmap_phys_attributes, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PHYS_CACHEABILITY_MASK, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @PHYS_CACHEABILITY_MASK, align 4
  %58 = xor i32 %57, -1
  %59 = load i32*, i32** @pmap_phys_attributes, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %58
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32*, i32** @pmap_phys_attributes, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @UNLOCK_PVH(i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @PHYS_NCACHE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %44
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @PHYS_NCACHE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i64, i64* %3, align 8
  %85 = call i32 @pmap_sync_page_attributes_phys(i64 %84)
  br label %86

86:                                               ; preds = %43, %83, %78, %44
  ret void
}

declare dso_local i32 @pmap_intr_assert(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ppn_to_pai(i64) #1

declare dso_local i32 @IS_MANAGED_PAGE(i32) #1

declare dso_local i32 @LOCK_PVH(i32) #1

declare dso_local i32 @pmap_update_cache_attributes_locked(i64, i32) #1

declare dso_local i32 @UNLOCK_PVH(i32) #1

declare dso_local i32 @pmap_sync_page_attributes_phys(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
