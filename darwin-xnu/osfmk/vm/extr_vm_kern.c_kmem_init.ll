; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_kern.c_kmem_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_kern.c_kmem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TRUE = common dso_local global i8* null, align 8
@kernel_map = common dso_local global i32 0, align 4
@VM_MIN_KERNEL_AND_KEXT_ADDRESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@VM_FLAGS_FIXED = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@VM_INHERIT_DEFAULT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"kmem_init(0x%llx,0x%llx): vm_map_enter(0x%llx,0x%llx) error 0x%x\0A\00", align 1
@max_mem = common dso_local global i32 0, align 4
@VM_NOT_USER_WIREABLE = common dso_local global i32 0, align 4
@vm_global_no_user_wire_amount = common dso_local global i64 0, align 8
@vm_global_user_wire_limit = common dso_local global i64 0, align 8
@vm_user_wire_limit = common dso_local global i64 0, align 8
@VM_MAX_KERNEL_ADDRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmem_init(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_4__* @VM_MAP_KERNEL_FLAGS_NONE to i8*), i64 16, i1 false)
  %11 = load i8*, i8** @TRUE, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = load i8*, i8** @TRUE, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* @kernel_map, align 4
  %17 = call i32 @VM_MAP_PAGE_MASK(i32 %16)
  %18 = call i64 @vm_map_trunc_page(i64 %15, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* @kernel_map, align 4
  %21 = call i32 @VM_MAP_PAGE_MASK(i32 %20)
  %22 = call i64 @vm_map_round_page(i64 %19, i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = call i32 (...) @pmap_kernel()
  %24 = load i64, i64* @VM_MIN_KERNEL_AND_KEXT_ADDRESS, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 @vm_map_create(i32 %23, i64 %24, i64 %25, i32 %26)
  store i32 %27, i32* @kernel_map, align 4
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @VM_MIN_KERNEL_AND_KEXT_ADDRESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %2
  %32 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.TYPE_4__* @VM_MAP_KERNEL_FLAGS_NONE to i8*), i64 16, i1 false)
  %33 = load i8*, i8** @TRUE, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = load i64, i64* @VM_MIN_KERNEL_AND_KEXT_ADDRESS, align 8
  store i64 %35, i64* %8, align 8
  %36 = load i32, i32* @kernel_map, align 4
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @VM_MIN_KERNEL_AND_KEXT_ADDRESS, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load i32, i32* @VM_FLAGS_FIXED, align 4
  %41 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %42 = load i32, i32* @VM_OBJECT_NULL, align 4
  %43 = load i32, i32* @FALSE, align 4
  %44 = load i32, i32* @VM_PROT_NONE, align 4
  %45 = load i32, i32* @VM_PROT_NONE, align 4
  %46 = load i32, i32* @VM_INHERIT_DEFAULT, align 4
  %47 = call i64 @vm_map_enter(i32 %36, i64* %8, i64 %39, i64 0, i32 %40, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %7, i32 %41, i32 %42, i32 0, i32 %43, i32 %44, i32 %45, i32 %46)
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @KERN_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %31
  %52 = load i64, i64* %3, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i64, i64* %4, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* @VM_MIN_KERNEL_AND_KEXT_ADDRESS, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @VM_MIN_KERNEL_AND_KEXT_ADDRESS, align 8
  %60 = sub nsw i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @panic(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %55, i32 %57, i32 %61, i64 %62)
  br label %64

64:                                               ; preds = %51, %31
  br label %65

65:                                               ; preds = %64, %2
  %66 = load i32, i32* @max_mem, align 4
  %67 = mul nsw i32 %66, 20
  %68 = sdiv i32 %67, 100
  %69 = load i32, i32* @VM_NOT_USER_WIREABLE, align 4
  %70 = call i64 @MIN(i32 %68, i32 %69)
  store i64 %70, i64* @vm_global_no_user_wire_amount, align 8
  %71 = load i32, i32* @max_mem, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* @vm_global_no_user_wire_amount, align 8
  %74 = sub nsw i64 %72, %73
  store i64 %74, i64* @vm_global_user_wire_limit, align 8
  %75 = load i64, i64* @vm_global_user_wire_limit, align 8
  store i64 %75, i64* @vm_user_wire_limit, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @vm_map_trunc_page(i64, i32) #2

declare dso_local i32 @VM_MAP_PAGE_MASK(i32) #2

declare dso_local i64 @vm_map_round_page(i64, i32) #2

declare dso_local i32 @vm_map_create(i32, i64, i64, i32) #2

declare dso_local i32 @pmap_kernel(...) #2

declare dso_local i64 @vm_map_enter(i32, i64*, i64, i64, i32, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @panic(i8*, i32, i32, i32, i32, i64) #2

declare dso_local i64 @MIN(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
