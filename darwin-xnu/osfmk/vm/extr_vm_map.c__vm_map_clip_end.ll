; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c__vm_map_clip_end.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c__vm_map_clip_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_map_header = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_map_header*, %struct.TYPE_12__*, i64)* @_vm_map_clip_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_vm_map_clip_end(%struct.vm_map_header* %0, %struct.TYPE_12__* %1, i64 %2) #0 {
  %4 = alloca %struct.vm_map_header*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  store %struct.vm_map_header* %0, %struct.vm_map_header** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
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
  %26 = call %struct.TYPE_12__* @_vm_map_entry_create(%struct.vm_map_header* %19, i32 %25)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %7, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = call i32 @vm_map_entry_copy_full(%struct.TYPE_12__* %27, %struct.TYPE_12__* %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp slt i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store i64 %37, i64* %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = call i64 @VME_OFFSET(%struct.TYPE_12__* %43)
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = add nsw i64 %44, %49
  %51 = call i32 @VME_OFFSET_SET(%struct.TYPE_12__* %42, i64 %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.vm_map_header*, %struct.vm_map_header** %4, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = call i32 @_vm_map_store_entry_link(%struct.vm_map_header* %61, %struct.TYPE_12__* %62, %struct.TYPE_12__* %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %18
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = call i32 @VME_SUBMAP(%struct.TYPE_12__* %70)
  %72 = call i32 @vm_map_reference(i32 %71)
  br label %77

73:                                               ; preds = %18
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = call i32 @VME_OBJECT(%struct.TYPE_12__* %74)
  %76 = call i32 @vm_object_reference(i32 %75)
  br label %77

77:                                               ; preds = %73, %69
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VM_MAP_PAGE_ALIGNED(i64, i32) #1

declare dso_local i32 @VM_MAP_HDR_PAGE_MASK(%struct.vm_map_header*) #1

declare dso_local %struct.TYPE_12__* @_vm_map_entry_create(%struct.vm_map_header*, i32) #1

declare dso_local i32 @vm_map_entry_copy_full(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @VME_OFFSET_SET(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @VME_OFFSET(%struct.TYPE_12__*) #1

declare dso_local i32 @_vm_map_store_entry_link(%struct.vm_map_header*, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @vm_map_reference(i32) #1

declare dso_local i32 @VME_SUBMAP(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_object_reference(i32) #1

declare dso_local i32 @VME_OBJECT(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
