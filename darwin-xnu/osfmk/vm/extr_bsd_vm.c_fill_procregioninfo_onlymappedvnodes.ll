; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_bsd_vm.c_fill_procregioninfo_onlymappedvnodes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_bsd_vm.c_fill_procregioninfo_onlymappedvnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.proc_regioninfo_internal = type { i64, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_11__*, i64, i64, i64, i32, i32, i32, i32, i32 }

@VM_MAP_NULL = common dso_local global i64 0, align 8
@PROC_REGION_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_procregioninfo_onlymappedvnodes(%struct.TYPE_12__* %0, i8* %1, %struct.proc_regioninfo_internal* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.proc_regioninfo_internal*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.proc_regioninfo_internal* %2, %struct.proc_regioninfo_internal** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = call i32 @task_lock(%struct.TYPE_12__* %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* @VM_MAP_NULL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = call i32 @task_unlock(%struct.TYPE_12__* %27)
  store i32 0, i32* %6, align 4
  br label %171

29:                                               ; preds = %5
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @vm_map_reference(i64 %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = call i32 @task_unlock(%struct.TYPE_12__* %32)
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @vm_map_lock_read(i64 %34)
  %36 = load i64, i64* %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @vm_map_lookup_entry(i64 %36, i32 %37, %struct.TYPE_11__** %14)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %29
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %15, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call %struct.TYPE_11__* @vm_map_to_entry(i64 %44)
  %46 = icmp eq %struct.TYPE_11__* %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @vm_map_unlock_read(i64 %48)
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @vm_map_deallocate(i64 %50)
  store i32 0, i32* %6, align 4
  br label %171

52:                                               ; preds = %40
  br label %55

53:                                               ; preds = %29
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %15, align 8
  br label %55

55:                                               ; preds = %53, %52
  br label %56

56:                                               ; preds = %162, %55
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call %struct.TYPE_11__* @vm_map_to_entry(i64 %58)
  %60 = icmp ne %struct.TYPE_11__* %57, %59
  br i1 %60, label %61, label %166

61:                                               ; preds = %56
  %62 = load i64*, i64** %10, align 8
  store i64 0, i64* %62, align 8
  %63 = load i64*, i64** %11, align 8
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %162

68:                                               ; preds = %61
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %70 = load i64*, i64** %10, align 8
  %71 = load i64*, i64** %11, align 8
  %72 = call i64 @fill_vnodeinfoforaddr(%struct.TYPE_11__* %69, i64* %70, i64* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %161

74:                                               ; preds = %68
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %76 = call i32 @VME_OFFSET(%struct.TYPE_11__* %75)
  %77 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %78 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %77, i32 0, i32 20
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %83 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %82, i32 0, i32 19
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %88 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %87, i32 0, i32 18
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %93 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %92, i32 0, i32 17
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %98 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %97, i32 0, i32 16
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %103 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %102, i32 0, i32 15
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %105 = call i32 @VME_ALIAS(%struct.TYPE_11__* %104)
  %106 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %107 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %106, i32 0, i32 14
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %74
  %113 = load i32, i32* @PROC_REGION_SHARED, align 4
  %114 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %115 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %114, i32 0, i32 13
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %112, %74
  %119 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %120 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %119, i32 0, i32 12
  store i64 0, i64* %120, align 8
  %121 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %122 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %121, i32 0, i32 11
  store i64 0, i64* %122, align 8
  %123 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %124 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %123, i32 0, i32 10
  store i64 0, i64* %124, align 8
  %125 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %126 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %125, i32 0, i32 9
  store i64 0, i64* %126, align 8
  %127 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %128 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %127, i32 0, i32 8
  store i64 0, i64* %128, align 8
  %129 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %130 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %129, i32 0, i32 7
  store i64 0, i64* %130, align 8
  %131 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %132 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %131, i32 0, i32 6
  store i64 0, i64* %132, align 8
  %133 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %134 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %133, i32 0, i32 5
  store i64 0, i64* %134, align 8
  %135 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %136 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %135, i32 0, i32 4
  store i64 0, i64* %136, align 8
  %137 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %138 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %137, i32 0, i32 3
  store i64 0, i64* %138, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to i8*
  %143 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %144 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %147, %150
  %152 = inttoptr i64 %151 to i8*
  %153 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %154 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  %155 = load %struct.proc_regioninfo_internal*, %struct.proc_regioninfo_internal** %9, align 8
  %156 = getelementptr inbounds %struct.proc_regioninfo_internal, %struct.proc_regioninfo_internal* %155, i32 0, i32 0
  store i64 0, i64* %156, align 8
  %157 = load i64, i64* %12, align 8
  %158 = call i32 @vm_map_unlock_read(i64 %157)
  %159 = load i64, i64* %12, align 8
  %160 = call i32 @vm_map_deallocate(i64 %159)
  store i32 1, i32* %6, align 4
  br label %171

161:                                              ; preds = %68
  br label %162

162:                                              ; preds = %161, %61
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  store %struct.TYPE_11__* %165, %struct.TYPE_11__** %15, align 8
  br label %56

166:                                              ; preds = %56
  %167 = load i64, i64* %12, align 8
  %168 = call i32 @vm_map_unlock_read(i64 %167)
  %169 = load i64, i64* %12, align 8
  %170 = call i32 @vm_map_deallocate(i64 %169)
  store i32 0, i32* %6, align 4
  br label %171

171:                                              ; preds = %166, %118, %47, %26
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i32 @task_lock(%struct.TYPE_12__*) #1

declare dso_local i32 @task_unlock(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_map_reference(i64) #1

declare dso_local i32 @vm_map_lock_read(i64) #1

declare dso_local i32 @vm_map_lookup_entry(i64, i32, %struct.TYPE_11__**) #1

declare dso_local %struct.TYPE_11__* @vm_map_to_entry(i64) #1

declare dso_local i32 @vm_map_unlock_read(i64) #1

declare dso_local i32 @vm_map_deallocate(i64) #1

declare dso_local i64 @fill_vnodeinfoforaddr(%struct.TYPE_11__*, i64*, i64*) #1

declare dso_local i32 @VME_OFFSET(%struct.TYPE_11__*) #1

declare dso_local i32 @VME_ALIAS(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
