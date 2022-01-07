; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_compressor_pager_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_compressor_pager_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i64, i32 }

@VM_OBJECT_NULL = common dso_local global %struct.TYPE_15__* null, align 8
@kernel_object = common dso_local global %struct.TYPE_15__* null, align 8
@VM_OBJECT_EVENT_INITIALIZED = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"vm_object_compressor_pager_create(): no pager for object %p size 0x%llx\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [118 x i8] c"vm_object_compressor_pager_create: mismatch (pager: %p, pager_object: %p, orig_object: %p, orig_object size: 0x%llx)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_object_compressor_pager_create(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** @VM_OBJECT_NULL, align 8
  store %struct.TYPE_15__* %5, %struct.TYPE_15__** %4, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kernel_object, align 8
  %8 = icmp ne %struct.TYPE_15__* %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = call i32 @vm_object_paging_begin(%struct.TYPE_15__* %11)
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %24, %17
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %26 = load i32, i32* @VM_OBJECT_EVENT_INITIALIZED, align 4
  %27 = load i32, i32* @THREAD_UNINT, align 4
  %28 = call i32 @vm_object_sleep(%struct.TYPE_15__* %25, i32 %26, i32 %27)
  br label %18

29:                                               ; preds = %18
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %31 = call i32 @vm_object_paging_end(%struct.TYPE_15__* %30)
  br label %109

32:                                               ; preds = %1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = sdiv i32 %35, %36
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = sdiv i32 %40, %41
  %43 = icmp ne i32 %37, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = call i32 @vm_object_paging_end(%struct.TYPE_15__* %45)
  br label %109

47:                                               ; preds = %32
  %48 = load i64, i64* @TRUE, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %54 = call i32 @vm_object_unlock(%struct.TYPE_15__* %53)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = sdiv i32 %57, %58
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = sdiv i32 %62, %63
  %65 = icmp eq i32 %59, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @compressor_memory_object_create(i32 %70, i32** %3)
  %72 = load i32*, i32** %3, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %47
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to %struct.TYPE_15__*
  %81 = call i32 (i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, ...) @panic(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %75, %struct.TYPE_15__* %80)
  br label %82

82:                                               ; preds = %74, %47
  %83 = load i32*, i32** %3, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @FALSE, align 4
  %89 = call %struct.TYPE_15__* @vm_object_memory_object_associate(i32* %83, %struct.TYPE_15__* %84, i32 %87, i32 %88)
  store %struct.TYPE_15__* %89, %struct.TYPE_15__** %4, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %92 = icmp ne %struct.TYPE_15__* %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %82
  %94 = load i32*, i32** %3, align 8
  %95 = bitcast i32* %94 to %struct.TYPE_15__*
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, ...) @panic(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_15__* %95, %struct.TYPE_15__* %96, %struct.TYPE_15__* %97, i32 %100)
  br label %102

102:                                              ; preds = %93, %82
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @memory_object_deallocate(i32* %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %106 = call i32 @vm_object_lock(%struct.TYPE_15__* %105)
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %108 = call i32 @vm_object_paging_end(%struct.TYPE_15__* %107)
  br label %109

109:                                              ; preds = %102, %44, %29
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_object_paging_begin(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_object_sleep(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @vm_object_paging_end(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @compressor_memory_object_create(i32, i32**) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, ...) #1

declare dso_local %struct.TYPE_15__* @vm_object_memory_object_associate(i32*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @memory_object_deallocate(i32*) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
