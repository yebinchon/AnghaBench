; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_routines.c_ml_static_mfree.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_routines.c_ml_static_mfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_6__* null, align 8
@vm_page_wire_count = common dso_local global i32 0, align 4
@vm_page_wire_count_initial = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ml_static_mfree(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %7, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  %10 = icmp sge i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = and i64 %13, %16
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* %3, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %81, %2
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @round_page_64(i64 %27)
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %85

30:                                               ; preds = %23
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_pmap, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @pmap_find_phys(%struct.TYPE_6__* %31, i32 %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %80

36:                                               ; preds = %30
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_pmap, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_pmap, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_pmap, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %45, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %36
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_pmap, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_pmap, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i64 %55, i64* %58, align 8
  br label %59

59:                                               ; preds = %51, %36
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_pmap, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = add nsw i32 %62, %63
  %65 = call i32 @pmap_remove(%struct.TYPE_6__* %60, i32 %61, i32 %64)
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @pmap_valid_page(i64 %66)
  %68 = call i32 @assert(i32 %67)
  %69 = load i64, i64* %6, align 8
  %70 = call i64 @IS_MANAGED_PAGE(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %59
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 %74, 1
  %76 = call i32 @vm_page_create(i64 %73, i64 %75)
  %77 = load i64, i64* %7, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %72, %59
  br label %80

80:                                               ; preds = %79, %30
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %23

85:                                               ; preds = %23
  %86 = call i32 (...) @vm_page_lockspin_queues()
  %87 = load i64, i64* %7, align 8
  %88 = load i32, i32* @vm_page_wire_count, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* @vm_page_wire_count, align 4
  %92 = load i64, i64* %7, align 8
  %93 = load i32, i32* @vm_page_wire_count_initial, align 4
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* @vm_page_wire_count_initial, align 4
  %97 = call i32 (...) @vm_page_unlock_queues()
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @round_page_64(i64) #1

declare dso_local i64 @pmap_find_phys(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @pmap_remove(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @pmap_valid_page(i64) #1

declare dso_local i64 @IS_MANAGED_PAGE(i64) #1

declare dso_local i32 @vm_page_create(i64, i64) #1

declare dso_local i32 @vm_page_lockspin_queues(...) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
