; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_random_address_for_size.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_random_address_for_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__* }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@VM_MAP_ENTRY_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@MAX_TRIES_TO_GET_RANDOM_ADDRESS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@KERN_NO_SPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_random_address_for_size(i32 %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @VM_MAP_ENTRY_NULL, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @VM_MAP_ENTRY_NULL, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %12, align 8
  store i64 0, i64* %13, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @vm_map_max(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @vm_map_min(i32 %20)
  %22 = sub nsw i64 %19, %21
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @page_aligned(i64 %23)
  %25 = call i32 @assert(i32 %24)
  br label %26

26:                                               ; preds = %83, %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @MAX_TRIES_TO_GET_RANDOM_ADDRESS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %86

30:                                               ; preds = %26
  %31 = call i64 (...) @random()
  %32 = load i64, i64* @PAGE_SHIFT, align 8
  %33 = shl i64 %31, %32
  store i64 %33, i64* %9, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @vm_map_min(i32 %34)
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %14, align 8
  %38 = srem i64 %36, %37
  %39 = add nsw i64 %35, %38
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @VM_MAP_PAGE_MASK(i32 %40)
  %42 = call i64 @vm_map_trunc_page(i64 %39, i32 %41)
  store i64 %42, i64* %9, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @vm_map_lookup_entry(i32 %43, i64 %44, %struct.TYPE_6__** %12)
  %46 = load i64, i64* @FALSE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %83

48:                                               ; preds = %30
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call %struct.TYPE_6__* @vm_map_to_entry(i32 %50)
  %52 = icmp eq %struct.TYPE_6__* %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = call %struct.TYPE_6__* @vm_map_first_entry(i32 %54)
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %11, align 8
  br label %60

56:                                               ; preds = %48
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %11, align 8
  br label %60

60:                                               ; preds = %56, %53
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call %struct.TYPE_6__* @vm_map_to_entry(i32 %62)
  %64 = icmp eq %struct.TYPE_6__* %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %4, align 4
  %67 = call i64 @vm_map_max(i32 %66)
  store i64 %67, i64* %10, align 8
  br label %72

68:                                               ; preds = %60
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %10, align 8
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %9, align 8
  %75 = sub nsw i64 %73, %74
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i64, i64* %9, align 8
  %81 = load i64*, i64** %5, align 8
  store i64 %80, i64* %81, align 8
  br label %86

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %30
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %26

86:                                               ; preds = %79, %26
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @MAX_TRIES_TO_GET_RANDOM_ADDRESS, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %90, %86
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i64 @vm_map_max(i32) #1

declare dso_local i64 @vm_map_min(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @page_aligned(i64) #1

declare dso_local i64 @random(...) #1

declare dso_local i64 @vm_map_trunc_page(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i32) #1

declare dso_local i64 @vm_map_lookup_entry(i32, i64, %struct.TYPE_6__**) #1

declare dso_local %struct.TYPE_6__* @vm_map_to_entry(i32) #1

declare dso_local %struct.TYPE_6__* @vm_map_first_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
