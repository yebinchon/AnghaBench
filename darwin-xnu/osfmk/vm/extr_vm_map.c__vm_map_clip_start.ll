; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c__vm_map_clip_start.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c__vm_map_clip_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_map_header = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_map_header*, %struct.TYPE_11__*, i64)* @_vm_map_clip_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_vm_map_clip_start(%struct.vm_map_header* %0, %struct.TYPE_11__* %1, i64 %2) #0 {
  %4 = alloca %struct.vm_map_header*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.vm_map_header* %0, %struct.vm_map_header** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.vm_map_header*, %struct.vm_map_header** %4, align 8
  %15 = call i32 @VM_MAP_HDR_PAGE_MASK(%struct.vm_map_header* %14)
  %16 = call i32 @VM_MAP_PAGE_ALIGNED(i64 %13, i32 %15)
  %17 = call i32 @assert(i32 %16)
  br label %18

18:                                               ; preds = %12, %3
  %19 = load %struct.vm_map_header*, %struct.vm_map_header** %4, align 8
  %20 = load %struct.vm_map_header*, %struct.vm_map_header** %4, align 8
  %21 = getelementptr inbounds %struct.vm_map_header, %struct.vm_map_header* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call %struct.TYPE_11__* @_vm_map_entry_create(%struct.vm_map_header* %19, i32 %25)
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %7, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = call i32 @vm_map_entry_copy_full(%struct.TYPE_11__* %27, %struct.TYPE_11__* %28)
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = call i64 @VME_OFFSET(%struct.TYPE_11__* %43)
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = add nsw i64 %44, %49
  %51 = call i32 @VME_OFFSET_SET(%struct.TYPE_11__* %42, i64 %50)
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.vm_map_header*, %struct.vm_map_header** %4, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = call i32 @_vm_map_store_entry_link(%struct.vm_map_header* %62, i32 %65, %struct.TYPE_11__* %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %18
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = call i32 @VME_SUBMAP(%struct.TYPE_11__* %73)
  %75 = call i32 @vm_map_reference(i32 %74)
  br label %80

76:                                               ; preds = %18
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %78 = call i32 @VME_OBJECT(%struct.TYPE_11__* %77)
  %79 = call i32 @vm_object_reference(i32 %78)
  br label %80

80:                                               ; preds = %76, %72
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VM_MAP_PAGE_ALIGNED(i64, i32) #1

declare dso_local i32 @VM_MAP_HDR_PAGE_MASK(%struct.vm_map_header*) #1

declare dso_local %struct.TYPE_11__* @_vm_map_entry_create(%struct.vm_map_header*, i32) #1

declare dso_local i32 @vm_map_entry_copy_full(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @VME_OFFSET_SET(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @VME_OFFSET(%struct.TYPE_11__*) #1

declare dso_local i32 @_vm_map_store_entry_link(%struct.vm_map_header*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @vm_map_reference(i32) #1

declare dso_local i32 @VME_SUBMAP(%struct.TYPE_11__*) #1

declare dso_local i32 @vm_object_reference(i32) #1

declare dso_local i32 @VME_OBJECT(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
