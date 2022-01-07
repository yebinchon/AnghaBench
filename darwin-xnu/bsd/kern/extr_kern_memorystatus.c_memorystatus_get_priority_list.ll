; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_get_priority_list.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_get_priority_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32 }

@memorystatus_list_count = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"memorystatus_get_priority_list: returning %lu for size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__**, i64*, i64*, i64)* @memorystatus_get_priority_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memorystatus_get_priority_list(%struct.TYPE_10__** %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @memorystatus_list_count, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 24, %16
  %18 = load i64*, i64** %8, align 8
  store i64 %17, i64* %18, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %118

22:                                               ; preds = %4
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %5, align 4
  br label %118

30:                                               ; preds = %22
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @kalloc(i64 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_10__*
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %35, align 8
  %36 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %5, align 4
  br label %118

41:                                               ; preds = %30
  %42 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @memset(%struct.TYPE_10__* %43, i32 0, i64 %45)
  %47 = load i64*, i64** %8, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %7, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64*, i64** %8, align 8
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %12, align 8
  %53 = call i32 (...) @proc_list_lock()
  %54 = load i32, i32* @TRUE, align 4
  %55 = call %struct.TYPE_9__* @memorystatus_get_first_proc_locked(i32* %11, i32 %54)
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %13, align 8
  br label %56

56:                                               ; preds = %100, %41
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %58 = icmp ne %struct.TYPE_9__* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i64*, i64** %8, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %7, align 8
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %61, %63
  br label %65

65:                                               ; preds = %59, %56
  %66 = phi i1 [ false, %56 ], [ %64, %59 ]
  br i1 %66, label %67, label %113

67:                                               ; preds = %65
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sle i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %67
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = call i32 @task_get_phys_footprint_limit(i32 %90, i64* %92)
  br label %100

94:                                               ; preds = %67
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %94, %87
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %102 = call i32 @memorystatus_build_state(%struct.TYPE_9__* %101)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 1
  store %struct.TYPE_10__* %106, %struct.TYPE_10__** %12, align 8
  %107 = load i64*, i64** %8, align 8
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, 24
  store i64 %109, i64* %107, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %111 = load i32, i32* @TRUE, align 4
  %112 = call %struct.TYPE_9__* @memorystatus_get_next_proc_locked(i32* %11, %struct.TYPE_9__* %110, i32 %111)
  store %struct.TYPE_9__* %112, %struct.TYPE_9__** %13, align 8
  br label %56

113:                                              ; preds = %65
  %114 = call i32 (...) @proc_list_unlock()
  %115 = load i64*, i64** %8, align 8
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @MEMORYSTATUS_DEBUG(i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %116)
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %113, %39, %28, %21
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i64 @kalloc(i64) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i64) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local %struct.TYPE_9__* @memorystatus_get_first_proc_locked(i32*, i32) #1

declare dso_local i32 @task_get_phys_footprint_limit(i32, i64*) #1

declare dso_local i32 @memorystatus_build_state(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @memorystatus_get_next_proc_locked(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @MEMORYSTATUS_DEBUG(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
