; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copy_extract.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copy_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__, i64, i64, i32 }
%struct.TYPE_9__ = type { i32 }

@VM_MAP_COPY_NULL = common dso_local global %struct.TYPE_8__* null, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_INVALID_ADDRESS = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@VM_MAP_COPY_ENTRY_LIST = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VM_INHERIT_SHARE = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_map_copy_extract(i32 %0, i64 %1, i64 %2, %struct.TYPE_8__** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_8__** %3, %struct.TYPE_8__*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @VM_MAP_COPY_NULL, align 8
  %22 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %22, align 8
  %23 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %23, i64* %7, align 8
  br label %80

24:                                               ; preds = %6
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = add nsw i64 %25, %26
  store i64 %27, i64* %15, align 8
  %28 = load i64, i64* %15, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i64, i64* @KERN_INVALID_ADDRESS, align 8
  store i64 %32, i64* %7, align 8
  br label %80

33:                                               ; preds = %24
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* @PAGE_MASK, align 4
  %36 = call i64 @vm_map_trunc_page(i64 %34, i32 %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %15, align 8
  %38 = load i32, i32* @PAGE_MASK, align 4
  %39 = call i64 @vm_map_round_page(i64 %37, i32 %38)
  store i64 %39, i64* %15, align 8
  %40 = call %struct.TYPE_8__* (...) @vm_map_copy_allocate()
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %16, align 8
  %41 = load i32, i32* @VM_MAP_COPY_ENTRY_LIST, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = call i32 @vm_map_store_init(%struct.TYPE_9__* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* @FALSE, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32*, i32** %12, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* @VM_INHERIT_SHARE, align 4
  %65 = load i32, i32* @TRUE, align 4
  %66 = load i32, i32* @FALSE, align 4
  %67 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %68 = call i64 @vm_map_remap_extract(i32 %56, i64 %57, i64 %58, i32 %59, %struct.TYPE_9__* %61, i32* %62, i32* %63, i32 %64, i32 %65, i32 %66, i32 %67)
  store i64 %68, i64* %17, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* @KERN_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %33
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %74 = call i32 @vm_map_copy_discard(%struct.TYPE_8__* %73)
  %75 = load i64, i64* %17, align 8
  store i64 %75, i64* %7, align 8
  br label %80

76:                                               ; preds = %33
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %78 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %78, align 8
  %79 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %76, %72, %31, %20
  %81 = load i64, i64* %7, align 8
  ret i64 %81
}

declare dso_local i64 @vm_map_trunc_page(i64, i32) #1

declare dso_local i64 @vm_map_round_page(i64, i32) #1

declare dso_local %struct.TYPE_8__* @vm_map_copy_allocate(...) #1

declare dso_local i32 @vm_map_store_init(%struct.TYPE_9__*) #1

declare dso_local i64 @vm_map_remap_extract(i32, i64, i64, i32, %struct.TYPE_9__*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @vm_map_copy_discard(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
