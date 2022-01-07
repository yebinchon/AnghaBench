; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_willneed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_willneed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, i64, i32, %struct.TYPE_16__*, i32, i32, i64 }
%struct.vm_object_fault_info = type { i32, i32, i64, i64, i64, i32, i32, i32 }

@THREAD_UNINT = common dso_local global i32 0, align 4
@VM_BEHAVIOR_SEQUENTIAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@KERN_INVALID_ADDRESS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PMAP_OPTIONS_ALT_ACCT = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_15__* null, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64)* @vm_map_willneed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vm_map_willneed(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vm_object_fault_info, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = bitcast %struct.vm_object_fault_info* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 48, i1 false)
  %16 = load i32, i32* @THREAD_UNINT, align 4
  %17 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %11, i32 0, i32 7
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @VM_BEHAVIOR_SEQUENTIAL, align 4
  %19 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %11, i32 0, i32 6
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @TRUE, align 4
  %21 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %11, i32 0, i32 5
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @vm_map_lock_read(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @vm_map_range_check(i32 %24, i64 %25, i64 %26, %struct.TYPE_16__** %8)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @vm_map_unlock_read(i32 %30)
  %32 = load i64, i64* @KERN_INVALID_ADDRESS, align 8
  store i64 %32, i64* %4, align 8
  br label %182

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %177, %120, %108, %33
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.TYPE_16__* @vm_map_to_entry(i32 %36)
  %38 = icmp ne %struct.TYPE_16__* %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp slt i64 %40, %41
  br label %43

43:                                               ; preds = %39, %34
  %44 = phi i1 [ false, %34 ], [ %42, %39 ]
  br i1 %44, label %45, label %178

45:                                               ; preds = %43
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %52 = call i64 @VME_OFFSET(%struct.TYPE_16__* %51)
  %53 = add nsw i64 %50, %52
  store i64 %53, i64* %14, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = sub nsw i64 %56, %57
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = sub nsw i64 %59, %60
  %62 = call i64 @MIN(i64 %58, i64 %61)
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %45
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = sub nsw i64 0, %67
  store i64 %68, i64* %13, align 8
  br label %69

69:                                               ; preds = %66, %45
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %11, i32 0, i32 4
  store i64 %70, i64* %71, align 8
  %72 = load i64, i64* %14, align 8
  %73 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %11, i32 0, i32 3
  store i64 %72, i64* %73, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* %13, align 8
  %76 = add nsw i64 %74, %75
  %77 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %11, i32 0, i32 2
  store i64 %76, i64* %77, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %79 = call i32 @VME_ALIAS(%struct.TYPE_16__* %78)
  %80 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %11, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %11, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %69
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91, %69
  %97 = load i32, i32* @PMAP_OPTIONS_ALT_ACCT, align 4
  %98 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %11, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %97
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %96, %91, %86
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @VM_PROT_READ, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  store %struct.TYPE_16__* %111, %struct.TYPE_16__** %8, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %6, align 8
  br label %34

115:                                              ; preds = %101
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %117 = call %struct.TYPE_15__* @find_vnode_object(%struct.TYPE_16__* %116)
  store %struct.TYPE_15__* %117, %struct.TYPE_15__** %9, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** @VM_OBJECT_NULL, align 8
  %119 = icmp eq %struct.TYPE_15__* %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  store %struct.TYPE_16__* %123, %struct.TYPE_16__** %8, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %6, align 8
  br label %34

127:                                              ; preds = %115
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @vm_map_unlock_read(i32 %128)
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %131 = call i32 @vm_object_paging_begin(%struct.TYPE_15__* %130)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %10, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %136 = call i32 @vm_object_unlock(%struct.TYPE_15__* %135)
  %137 = load i32, i32* %10, align 4
  %138 = load i64, i64* %14, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %138, %141
  %143 = load i32, i32* @VM_PROT_READ, align 4
  %144 = ptrtoint %struct.vm_object_fault_info* %11 to i32
  %145 = call i64 @memory_object_data_request(i32 %137, i64 %142, i32 0, i32 %143, i32 %144)
  store i64 %145, i64* %12, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %147 = call i32 @vm_object_lock(%struct.TYPE_15__* %146)
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %149 = call i32 @vm_object_paging_end(%struct.TYPE_15__* %148)
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %151 = call i32 @vm_object_unlock(%struct.TYPE_15__* %150)
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* @KERN_SUCCESS, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %127
  %156 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %156, i64* %4, align 8
  br label %182

157:                                              ; preds = %127
  %158 = load i64, i64* %13, align 8
  %159 = load i64, i64* %6, align 8
  %160 = add nsw i64 %159, %158
  store i64 %160, i64* %6, align 8
  %161 = load i64, i64* %6, align 8
  %162 = load i64, i64* %7, align 8
  %163 = icmp sge i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %165, i64* %4, align 8
  br label %182

166:                                              ; preds = %157
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @vm_map_lock_read(i32 %167)
  %169 = load i32, i32* %5, align 4
  %170 = load i64, i64* %6, align 8
  %171 = call i32 @vm_map_lookup_entry(i32 %169, i64 %170, %struct.TYPE_16__** %8)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %166
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @vm_map_unlock_read(i32 %174)
  %176 = load i64, i64* @KERN_INVALID_ADDRESS, align 8
  store i64 %176, i64* %4, align 8
  br label %182

177:                                              ; preds = %166
  br label %34

178:                                              ; preds = %43
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @vm_map_unlock_read(i32 %179)
  %181 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %181, i64* %4, align 8
  br label %182

182:                                              ; preds = %178, %173, %164, %155, %29
  %183 = load i64, i64* %4, align 8
  ret i64 %183
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vm_map_lock_read(i32) #2

declare dso_local i32 @vm_map_range_check(i32, i64, i64, %struct.TYPE_16__**) #2

declare dso_local i32 @vm_map_unlock_read(i32) #2

declare dso_local %struct.TYPE_16__* @vm_map_to_entry(i32) #2

declare dso_local i64 @VME_OFFSET(%struct.TYPE_16__*) #2

declare dso_local i64 @MIN(i64, i64) #2

declare dso_local i32 @VME_ALIAS(%struct.TYPE_16__*) #2

declare dso_local %struct.TYPE_15__* @find_vnode_object(%struct.TYPE_16__*) #2

declare dso_local i32 @vm_object_paging_begin(%struct.TYPE_15__*) #2

declare dso_local i32 @vm_object_unlock(%struct.TYPE_15__*) #2

declare dso_local i64 @memory_object_data_request(i32, i64, i32, i32, i32) #2

declare dso_local i32 @vm_object_lock(%struct.TYPE_15__*) #2

declare dso_local i32 @vm_object_paging_end(%struct.TYPE_15__*) #2

declare dso_local i32 @vm_map_lookup_entry(i32, i64, %struct.TYPE_16__**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
