; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copy_remap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copy_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i64, i32, i8*, i8*, i32, i32, i32, %struct.TYPE_19__* }

@VM_BEHAVIOR_DEFAULT = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_map_copy_remap(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32 %2, i64 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call %struct.TYPE_19__* @vm_map_copy_first_entry(i32 %17)
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %15, align 8
  br label %19

19:                                               ; preds = %95, %7
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.TYPE_19__* @vm_map_copy_to_entry(i32 %21)
  %23 = icmp ne %struct.TYPE_19__* %20, %22
  br i1 %23, label %24, label %99

24:                                               ; preds = %19
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call %struct.TYPE_19__* @vm_map_entry_create(%struct.TYPE_18__* %25, i32 %32)
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %16, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %36 = call i32 @vm_map_entry_copy(%struct.TYPE_19__* %34, %struct.TYPE_19__* %35)
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @VM_BEHAVIOR_DEFAULT, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %24
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %76 = call i32 @VME_SUBMAP(%struct.TYPE_19__* %75)
  %77 = call i32 @vm_map_lock(i32 %76)
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %79 = call i32 @VME_SUBMAP(%struct.TYPE_19__* %78)
  %80 = call i32 @vm_map_reference(i32 %79)
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %82 = call i32 @VME_SUBMAP(%struct.TYPE_19__* %81)
  %83 = call i32 @vm_map_unlock(i32 %82)
  br label %88

84:                                               ; preds = %24
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %86 = call i32 @VME_OBJECT(%struct.TYPE_19__* %85)
  %87 = call i32 @vm_object_reference(i32 %86)
  br label %88

88:                                               ; preds = %84, %67
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %92 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %93 = call i32 @vm_map_store_entry_link(%struct.TYPE_18__* %89, %struct.TYPE_19__* %90, %struct.TYPE_19__* %91, i32 %92)
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  store %struct.TYPE_19__* %94, %struct.TYPE_19__** %9, align 8
  br label %95

95:                                               ; preds = %88
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %97, align 8
  store %struct.TYPE_19__* %98, %struct.TYPE_19__** %15, align 8
  br label %19

99:                                               ; preds = %19
  ret void
}

declare dso_local %struct.TYPE_19__* @vm_map_copy_first_entry(i32) #1

declare dso_local %struct.TYPE_19__* @vm_map_copy_to_entry(i32) #1

declare dso_local %struct.TYPE_19__* @vm_map_entry_create(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @vm_map_entry_copy(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_map_lock(i32) #1

declare dso_local i32 @VME_SUBMAP(%struct.TYPE_19__*) #1

declare dso_local i32 @vm_map_reference(i32) #1

declare dso_local i32 @vm_map_unlock(i32) #1

declare dso_local i32 @vm_object_reference(i32) #1

declare dso_local i32 @VME_OBJECT(%struct.TYPE_19__*) #1

declare dso_local i32 @vm_map_store_entry_link(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
