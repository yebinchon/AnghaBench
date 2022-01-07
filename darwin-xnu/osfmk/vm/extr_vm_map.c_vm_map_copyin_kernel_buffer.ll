; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copyin_kernel_buffer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copyin_kernel_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32 }

@msg_ool_size_small = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@cpy_kdata_hdr_sz = common dso_local global i64 0, align 8
@VM_MAP_COPY_NULL = common dso_local global %struct.TYPE_5__* null, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@VM_MAP_COPY_KERNEL_BUFFER = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@VM_MAP_REMOVE_INTERRUPTIBLE = common dso_local global i32 0, align 4
@VM_MAP_REMOVE_WAIT_FOR_KWIRE = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i64 0, align 8
@VM_MAP_REMOVE_KUNWIRE = common dso_local global i32 0, align 4
@VM_MAP_REMOVE_NO_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64, %struct.TYPE_5__**)* @vm_map_copyin_kernel_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vm_map_copyin_kernel_buffer(i64 %0, i64 %1, i64 %2, i64 %3, %struct.TYPE_5__** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__**, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_5__** %4, %struct.TYPE_5__*** %11, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @msg_ool_size_small, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %19, i64* %6, align 8
  br label %89

20:                                               ; preds = %5
  %21 = load i64, i64* @cpy_kdata_hdr_sz, align 8
  %22 = load i64, i64* %9, align 8
  %23 = add nsw i64 %21, %22
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %14, align 8
  %25 = call i64 @kalloc(i64 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %13, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @VM_MAP_COPY_NULL, align 8
  %29 = icmp eq %struct.TYPE_5__* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %31, i64* %6, align 8
  br label %89

32:                                               ; preds = %20
  %33 = load i32, i32* @VM_MAP_COPY_KERNEL_BUFFER, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @copyinmap(i64 %41, i64 %42, i32 %45, i64 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @KERN_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %32
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @kfree(%struct.TYPE_5__* %52, i64 %53)
  %55 = load i64, i64* %12, align 8
  store i64 %55, i64* %6, align 8
  br label %89

56:                                               ; preds = %32
  %57 = load i64, i64* %10, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %56
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @VM_MAP_PAGE_MASK(i64 %62)
  %64 = call i32 @vm_map_trunc_page(i64 %61, i32 %63)
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @VM_MAP_PAGE_MASK(i64 %68)
  %70 = call i32 @vm_map_round_page(i64 %67, i32 %69)
  %71 = load i32, i32* @VM_MAP_REMOVE_INTERRUPTIBLE, align 4
  %72 = load i32, i32* @VM_MAP_REMOVE_WAIT_FOR_KWIRE, align 4
  %73 = or i32 %71, %72
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @kernel_map, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %59
  %78 = load i32, i32* @VM_MAP_REMOVE_KUNWIRE, align 4
  br label %81

79:                                               ; preds = %59
  %80 = load i32, i32* @VM_MAP_REMOVE_NO_FLAGS, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = or i32 %73, %82
  %84 = call i32 @vm_map_remove(i64 %60, i32 %64, i32 %70, i32 %83)
  br label %85

85:                                               ; preds = %81, %56
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %87, align 8
  %88 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %88, i64* %6, align 8
  br label %89

89:                                               ; preds = %85, %51, %30, %18
  %90 = load i64, i64* %6, align 8
  ret i64 %90
}

declare dso_local i64 @kalloc(i64) #1

declare dso_local i64 @copyinmap(i64, i64, i32, i64) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @vm_map_remove(i64, i32, i32, i32) #1

declare dso_local i32 @vm_map_trunc_page(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i64) #1

declare dso_local i32 @vm_map_round_page(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
