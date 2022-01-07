; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_purgable_control.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_purgable_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64, i64, i32 }
%struct.TYPE_19__ = type { i32, i64, i64, i32, i64 }

@VM_MAP_NULL = common dso_local global %struct.TYPE_18__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@VM_PURGABLE_SET_STATE = common dso_local global i32 0, align 4
@VM_PURGABLE_GET_STATE = common dso_local global i32 0, align 4
@VM_PURGABLE_PURGE_ALL = common dso_local global i32 0, align 4
@VM_PURGABLE_SET_STATE_FROM_KERNEL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@VM_PURGABLE_ALL_MASKS = common dso_local global i32 0, align 4
@VM_PURGABLE_STATE_MASK = common dso_local global i32 0, align 4
@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@KERN_PROTECTION_FAILURE = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_17__* null, align 8
@VM_PURGABLE_DENY = common dso_local global i64 0, align 8
@VM_PURGABLE_NONVOLATILE = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i64 0, align 8
@kernel_task = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_purgable_control(%struct.TYPE_18__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** @VM_MAP_NULL, align 8
  %16 = icmp eq %struct.TYPE_18__* %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %18, i32* %5, align 4
  br label %159

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @VM_PURGABLE_SET_STATE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @VM_PURGABLE_GET_STATE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @VM_PURGABLE_PURGE_ALL, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @VM_PURGABLE_SET_STATE_FROM_KERNEL, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %36, i32* %5, align 4
  br label %159

37:                                               ; preds = %31, %27, %23, %19
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @VM_PURGABLE_PURGE_ALL, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = call i32 (...) @vm_purgeable_object_purge_all()
  %43 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %43, i32* %5, align 4
  br label %159

44:                                               ; preds = %37
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @VM_PURGABLE_SET_STATE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @VM_PURGABLE_SET_STATE_FROM_KERNEL, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48, %44
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @VM_PURGABLE_ALL_MASKS, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @VM_PURGABLE_STATE_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @VM_PURGABLE_STATE_MASK, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %59, %52
  %67 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %67, i32* %5, align 4
  br label %159

68:                                               ; preds = %59, %48
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %70 = call i32 @vm_map_lock_read(%struct.TYPE_18__* %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @vm_map_lookup_entry(%struct.TYPE_18__* %71, i32 %72, %struct.TYPE_19__** %10)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75, %68
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = call i32 @vm_map_unlock_read(%struct.TYPE_18__* %81)
  %83 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %83, i32* %5, align 4
  br label %159

84:                                               ; preds = %75
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @VM_PROT_WRITE, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %93 = call i32 @vm_map_unlock_read(%struct.TYPE_18__* %92)
  %94 = load i32, i32* @KERN_PROTECTION_FAILURE, align 4
  store i32 %94, i32* %5, align 4
  br label %159

95:                                               ; preds = %84
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %97 = call %struct.TYPE_17__* @VME_OBJECT(%struct.TYPE_19__* %96)
  store %struct.TYPE_17__* %97, %struct.TYPE_17__** %11, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** @VM_OBJECT_NULL, align 8
  %100 = icmp eq %struct.TYPE_17__* %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @VM_PURGABLE_DENY, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101, %95
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %109 = call i32 @vm_map_unlock_read(%struct.TYPE_18__* %108)
  %110 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %110, i32* %5, align 4
  br label %159

111:                                              ; preds = %101
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %113 = call i32 @vm_object_lock(%struct.TYPE_17__* %112)
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %129 = call i32 @vm_map_unlock_read(%struct.TYPE_18__* %128)
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @VM_PURGABLE_NONVOLATILE, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %13, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = call i32 @vm_object_purgable_control(%struct.TYPE_17__* %136, i32 %137, i32* %138)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %111
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @VM_PURGABLE_NONVOLATILE, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %142
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @kernel_pmap, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  br label %155

155:                                              ; preds = %154, %148, %142, %111
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %157 = call i32 @vm_object_unlock(%struct.TYPE_17__* %156)
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %155, %107, %91, %80, %66, %41, %35, %17
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @vm_purgeable_object_purge_all(...) #1

declare dso_local i32 @vm_map_lock_read(%struct.TYPE_18__*) #1

declare dso_local i32 @vm_map_lookup_entry(%struct.TYPE_18__*, i32, %struct.TYPE_19__**) #1

declare dso_local i32 @vm_map_unlock_read(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_17__* @VME_OBJECT(%struct.TYPE_19__*) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_17__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_object_purgable_control(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
