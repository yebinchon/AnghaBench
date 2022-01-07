; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_pmap_steal_memory.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_pmap_steal_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@virtual_space_start = common dso_local global i64 0, align 8
@virtual_space_end = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"pmap_steal_memory() size: 0x%llx\0A\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@VM_WIMG_USE_DEFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"pmap_steal_memory() pmap_enter failed, vaddr=%#lx, phys_page=%u\00", align 1
@vm_page_wire_count = common dso_local global i32 0, align 4
@vm_page_stolen_count = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pmap_steal_memory(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = add i64 %8, 8
  %10 = sub i64 %9, 1
  %11 = and i64 %10, -8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %2, align 4
  %13 = load i64, i64* @virtual_space_start, align 8
  %14 = load i64, i64* @virtual_space_end, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = call i32 @pmap_virtual_space(i64* @virtual_space_start, i64* @virtual_space_end)
  %18 = load i64, i64* @virtual_space_start, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i8* @round_page(i32 %19)
  %21 = ptrtoint i8* %20 to i64
  store i64 %21, i64* @virtual_space_start, align 8
  %22 = load i64, i64* @virtual_space_end, align 8
  %23 = call i64 @trunc_page(i64 %22)
  store i64 %23, i64* @virtual_space_end, align 8
  br label %24

24:                                               ; preds = %16, %1
  %25 = load i64, i64* @virtual_space_start, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @virtual_space_start, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* @virtual_space_start, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i8* @round_page(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %74, %24
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %36, %37
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %34
  %41 = call i32 @pmap_next_page_hi(i32* %6)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = call i32 (i8*, i64, ...) @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* @kernel_pmap, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @pmap_pre_expand(i32 %48, i32 %49)
  %51 = load i32, i32* @kernel_pmap, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @VM_PROT_READ, align 4
  %55 = load i32, i32* @VM_PROT_WRITE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @VM_PROT_NONE, align 4
  %58 = load i32, i32* @VM_WIMG_USE_DEFAULT, align 4
  %59 = load i32, i32* @FALSE, align 4
  %60 = call i64 @pmap_enter(i32 %51, i32 %52, i32 %53, i32 %56, i32 %57, i32 %58, i32 %59)
  store i64 %60, i64* %3, align 8
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @KERN_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %47
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i8*, i64, ...) @panic(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %47
  %70 = load i32, i32* @vm_page_wire_count, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @vm_page_wire_count, align 4
  %72 = load i32, i32* @vm_page_stolen_count, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @vm_page_stolen_count, align 4
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %34

78:                                               ; preds = %34
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  ret i8* %81
}

declare dso_local i32 @pmap_virtual_space(i64*, i64*) #1

declare dso_local i8* @round_page(i32) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i32 @pmap_next_page_hi(i32*) #1

declare dso_local i32 @panic(i8*, i64, ...) #1

declare dso_local i32 @pmap_pre_expand(i32, i32) #1

declare dso_local i64 @pmap_enter(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
