; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copy_copy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copy_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i8* }

@VM_MAP_COPY_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@vm_map_copy_zone = common dso_local global i32 0, align 4
@VM_MAP_COPY_ENTRY_LIST = common dso_local global i64 0, align 8
@VM_MAP_COPY_OBJECT = common dso_local global i64 0, align 8
@VM_OBJECT_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @vm_map_copy_copy(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VM_MAP_COPY_NULL, align 8
  %7 = icmp eq %struct.TYPE_10__* %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VM_MAP_COPY_NULL, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %2, align 8
  br label %42

10:                                               ; preds = %1
  %11 = load i32, i32* @vm_map_copy_zone, align 4
  %12 = call i64 @zalloc(i32 %11)
  %13 = inttoptr i64 %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %4, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = bitcast %struct.TYPE_10__* %14 to i8*
  %17 = bitcast %struct.TYPE_10__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VM_MAP_COPY_ENTRY_LIST, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %10
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = call i8* @vm_map_copy_to_entry(%struct.TYPE_10__* %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = call %struct.TYPE_12__* @vm_map_copy_first_entry(%struct.TYPE_10__* %26)
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = call i8* @vm_map_copy_to_entry(%struct.TYPE_10__* %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = call %struct.TYPE_11__* @vm_map_copy_last_entry(%struct.TYPE_10__* %31)
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  br label %34

34:                                               ; preds = %23, %10
  %35 = load i64, i64* @VM_MAP_COPY_OBJECT, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @VM_OBJECT_NULL, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %2, align 8
  br label %42

42:                                               ; preds = %34, %8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %43
}

declare dso_local i64 @zalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @vm_map_copy_to_entry(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_12__* @vm_map_copy_first_entry(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @vm_map_copy_last_entry(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
