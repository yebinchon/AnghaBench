; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_entry_delete.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_entry_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i32, i64, i64 }

@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_16__*)* @vm_map_entry_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_map_entry_delete(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @page_aligned(i64 %15)
  %17 = call i32 @assert(i32 %16)
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @page_aligned(i64 %18)
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TRUE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %2
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_15__* %28)
  %30 = call i32 @VM_MAP_PAGE_ALIGNED(i64 %27, i32 %29)
  %31 = call i32 @assert(i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_15__* %33)
  %35 = call i32 @VM_MAP_PAGE_ALIGNED(i64 %32, i32 %34)
  %36 = call i32 @assert(i32 %35)
  br label %37

37:                                               ; preds = %26, %2
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %37
  store i32* null, i32** %7, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = call %struct.TYPE_15__* @VME_SUBMAP(%struct.TYPE_16__* %62)
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %8, align 8
  br label %67

64:                                               ; preds = %37
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = call i32* @VME_OBJECT(%struct.TYPE_16__* %65)
  store i32* %66, i32** %7, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = call i32 @vm_map_store_entry_unlink(%struct.TYPE_15__* %68, %struct.TYPE_16__* %69)
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %5, align 8
  %73 = sub nsw i64 %71, %72
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = call i32 @vm_map_entry_dispose(%struct.TYPE_15__* %80, %struct.TYPE_16__* %81)
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %84 = call i32 @vm_map_unlock(%struct.TYPE_15__* %83)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %86 = icmp ne %struct.TYPE_15__* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %67
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %89 = call i32 @vm_map_deallocate(%struct.TYPE_15__* %88)
  br label %93

90:                                               ; preds = %67
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @vm_object_deallocate(i32* %91)
  br label %93

93:                                               ; preds = %90, %87
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @page_aligned(i64) #1

declare dso_local i32 @VM_MAP_PAGE_ALIGNED(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @VME_SUBMAP(%struct.TYPE_16__*) #1

declare dso_local i32* @VME_OBJECT(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_map_store_entry_unlink(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @vm_map_entry_dispose(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_map_deallocate(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_object_deallocate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
