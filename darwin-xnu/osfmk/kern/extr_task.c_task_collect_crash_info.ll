; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task.c_task_collect_crash_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task.c_task_collect_crash_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.label*, i32* }
%struct.label = type { i32 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@CORPSEINFO_ALLOCATION_SIZE = common dso_local global i32 0, align 4
@KERN_NOT_SUPPORTED = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@CORPSE_CRASHINFO_HAS_REF = common dso_local global i32 0, align 4
@KCFLAG_USE_MEMCOPY = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_collect_crash_info(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %13, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %14 = load i32, i32* @CORPSEINFO_ALLOCATION_SIZE, align 4
  store i32 %14, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %15 = call i32 (...) @corpses_enabled()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @KERN_NOT_SUPPORTED, align 4
  store i32 %18, i32* %3, align 4
  br label %114

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = call i32 @task_lock(%struct.TYPE_6__* %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ true, %19 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %108

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %108

45:                                               ; preds = %40, %37
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = call i32 @task_unlock(%struct.TYPE_6__* %46)
  %48 = load i32, i32* @CORPSEINFO_ALLOCATION_SIZE, align 4
  %49 = call i64 @kalloc(i32 %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %54, i32* %6, align 4
  br label %112

55:                                               ; preds = %45
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* @CORPSEINFO_ALLOCATION_SIZE, align 4
  %58 = call i32 @bzero(i8* %56, i32 %57)
  %59 = load i8*, i8** %11, align 8
  %60 = ptrtoint i8* %59 to i64
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %69

67:                                               ; preds = %55
  %68 = load i32, i32* @CORPSE_CRASHINFO_HAS_REF, align 4
  br label %69

69:                                               ; preds = %67, %66
  %70 = phi i32 [ 0, %66 ], [ %68, %67 ]
  %71 = load i32, i32* @KCFLAG_USE_MEMCOPY, align 4
  %72 = call i32* @task_crashinfo_alloc_init(i32 %62, i32 %63, i32 %70, i32 %71)
  store i32* %72, i32** %7, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = call i32 @task_lock(%struct.TYPE_6__* %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %8, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = call i8* @kcdata_memory_get_begin_addr(i32* %81)
  store i8* %82, i8** %12, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32* %83, i32** %85, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = call i32 @task_unlock(%struct.TYPE_6__* %86)
  %88 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %88, i32* %6, align 4
  br label %94

89:                                               ; preds = %69
  %90 = load i8*, i8** %11, align 8
  %91 = load i32, i32* @CORPSEINFO_ALLOCATION_SIZE, align 4
  %92 = call i32 @kfree(i8* %90, i32 %91)
  %93 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %89, %75
  %95 = load i32*, i32** %8, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @task_crashinfo_destroy(i32* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i8*, i8** %12, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i8*, i8** %12, align 8
  %105 = load i32, i32* @CORPSEINFO_ALLOCATION_SIZE, align 4
  %106 = call i32 @kfree(i8* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %100
  br label %111

108:                                              ; preds = %40, %29
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = call i32 @task_unlock(%struct.TYPE_6__* %109)
  br label %111

111:                                              ; preds = %108, %107
  br label %112

112:                                              ; preds = %111, %53
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %17
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @corpses_enabled(...) #1

declare dso_local i32 @task_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @task_unlock(%struct.TYPE_6__*) #1

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32* @task_crashinfo_alloc_init(i32, i32, i32, i32) #1

declare dso_local i8* @kcdata_memory_get_begin_addr(i32*) #1

declare dso_local i32 @kfree(i8*, i32) #1

declare dso_local i32 @task_crashinfo_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
