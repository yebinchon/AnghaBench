; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_mach_memory_object_memory_entry_64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_mach_memory_object_memory_entry_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i64, %struct.TYPE_10__, i32, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@HOST_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_HOST = common dso_local global i64 0, align 8
@MEMORY_OBJECT_NULL = common dso_local global i64 0, align 8
@MEMORY_OBJECT_COPY_SYMMETRIC = common dso_local global i64 0, align 8
@MEMORY_OBJECT_COPY_DELAY = common dso_local global i64 0, align 8
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i64 0, align 8
@VM_PROT_ALL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_memory_object_memory_entry_64(i64 %0, i64 %1, i32 %2, i32 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @HOST_NULL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i64, i64* @KERN_INVALID_HOST, align 8
  store i64 %22, i64* %7, align 8
  br label %113

23:                                               ; preds = %6
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @MEMORY_OBJECT_NULL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.TYPE_11__* @vm_object_allocate(i32 %31)
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %17, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MEMORY_OBJECT_COPY_SYMMETRIC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i64, i64* @MEMORY_OBJECT_COPY_DELAY, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %30
  br label %53

43:                                               ; preds = %27, %23
  %44 = load i64, i64* %12, align 8
  %45 = call %struct.TYPE_11__* @memory_object_to_vm_object(i64 %44)
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %17, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VM_OBJECT_NULL, align 8
  %48 = icmp ne %struct.TYPE_11__* %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %51 = call i32 @vm_object_reference(%struct.TYPE_11__* %50)
  br label %52

52:                                               ; preds = %49, %43
  br label %53

53:                                               ; preds = %52, %42
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VM_OBJECT_NULL, align 8
  %56 = icmp eq %struct.TYPE_11__* %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %58, i64* %7, align 8
  br label %113

59:                                               ; preds = %53
  %60 = call i64 @mach_memory_entry_allocate(%struct.TYPE_12__** %15, i32* %16)
  %61 = load i64, i64* @KERN_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %65 = call i32 @vm_object_deallocate(%struct.TYPE_11__* %64)
  %66 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %66, i64* %7, align 8
  br label %113

67:                                               ; preds = %59
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @VM_PROT_ALL, align 4
  %75 = and i32 %73, %74
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @GET_MAP_MEM(i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @SET_MAP_MEM(i32 %80, i32 %83)
  %85 = load i32, i32* @FALSE, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 1
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %97, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %9, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load i32, i32* %16, align 4
  %111 = load i32*, i32** %13, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %112, i64* %7, align 8
  br label %113

113:                                              ; preds = %67, %63, %57, %21
  %114 = load i64, i64* %7, align 8
  ret i64 %114
}

declare dso_local %struct.TYPE_11__* @vm_object_allocate(i32) #1

declare dso_local %struct.TYPE_11__* @memory_object_to_vm_object(i64) #1

declare dso_local i32 @vm_object_reference(%struct.TYPE_11__*) #1

declare dso_local i64 @mach_memory_entry_allocate(%struct.TYPE_12__**, i32*) #1

declare dso_local i32 @vm_object_deallocate(%struct.TYPE_11__*) #1

declare dso_local i32 @GET_MAP_MEM(i32) #1

declare dso_local i32 @SET_MAP_MEM(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
