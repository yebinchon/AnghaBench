; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map_store_rb.c_vm_map_store_lookup_entry_rb.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map_store_rb.c_vm_map_store_lookup_entry_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.vm_map_header }
%struct.vm_map_header = type { i32 }
%struct.vm_map_store = type { i32 }

@VM_MAP_ENTRY_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"no entry\00", align 1
@TRUE = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_store_lookup_entry_rb(%struct.TYPE_9__* %0, i64 %1, %struct.TYPE_10__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca %struct.vm_map_header, align 4
  %9 = alloca %struct.vm_map_store*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = bitcast %struct.vm_map_header* %8 to i8*
  %15 = bitcast %struct.vm_map_header* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = getelementptr inbounds %struct.vm_map_header, %struct.vm_map_header* %8, i32 0, i32 0
  %17 = call %struct.vm_map_store* @RB_ROOT(i32* %16)
  store %struct.vm_map_store* %17, %struct.vm_map_store** %9, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = call %struct.TYPE_10__* @vm_map_to_entry(%struct.TYPE_9__* %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %10, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VM_MAP_ENTRY_NULL, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %11, align 8
  br label %21

21:                                               ; preds = %57, %3
  %22 = load %struct.vm_map_store*, %struct.vm_map_store** %9, align 8
  %23 = icmp ne %struct.vm_map_store* %22, null
  br i1 %23, label %24, label %58

24:                                               ; preds = %21
  %25 = load %struct.vm_map_store*, %struct.vm_map_store** %9, align 8
  %26 = call %struct.TYPE_10__* @VME_FOR_STORE(%struct.vm_map_store* %25)
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %10, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VM_MAP_ENTRY_NULL, align 8
  %29 = icmp eq %struct.TYPE_10__* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @panic(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %46 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %46, align 8
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %4, align 4
  br label %69

48:                                               ; preds = %38
  %49 = load %struct.vm_map_store*, %struct.vm_map_store** %9, align 8
  %50 = load i32, i32* @entry, align 4
  %51 = call %struct.vm_map_store* @RB_RIGHT(%struct.vm_map_store* %49, i32 %50)
  store %struct.vm_map_store* %51, %struct.vm_map_store** %9, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %11, align 8
  br label %57

53:                                               ; preds = %32
  %54 = load %struct.vm_map_store*, %struct.vm_map_store** %9, align 8
  %55 = load i32, i32* @entry, align 4
  %56 = call %struct.vm_map_store* @RB_LEFT(%struct.vm_map_store* %54, i32 %55)
  store %struct.vm_map_store* %56, %struct.vm_map_store** %9, align 8
  br label %57

57:                                               ; preds = %53, %48
  br label %21

58:                                               ; preds = %21
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VM_MAP_ENTRY_NULL, align 8
  %61 = icmp eq %struct.TYPE_10__* %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = call %struct.TYPE_10__* @vm_map_to_entry(%struct.TYPE_9__* %63)
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %11, align 8
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %67, align 8
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %44
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.vm_map_store* @RB_ROOT(i32*) #2

declare dso_local %struct.TYPE_10__* @vm_map_to_entry(%struct.TYPE_9__*) #2

declare dso_local %struct.TYPE_10__* @VME_FOR_STORE(%struct.vm_map_store*) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local %struct.vm_map_store* @RB_RIGHT(%struct.vm_map_store*, i32) #2

declare dso_local %struct.vm_map_store* @RB_LEFT(%struct.vm_map_store*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
