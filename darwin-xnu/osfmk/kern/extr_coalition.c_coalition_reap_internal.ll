; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_coalition.c_coalition_reap_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_coalition.c_coalition_reap_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64, i32, i32, i64, i32 }

@COALITION_TYPE_MAX = common dso_local global i64 0, align 8
@init_coalition = common dso_local global %struct.TYPE_7__** null, align 8
@KERN_DEFAULT_SET = common dso_local global i32 0, align 4
@KERN_TERMINATED = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@coalitions_list_lock = common dso_local global i32 0, align 4
@coalition_count = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coalition_reap_internal(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @COALITION_TYPE_MAX, align 8
  %8 = icmp ule i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @init_coalition, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %12, i64 %15
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = icmp eq %struct.TYPE_7__* %11, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @KERN_DEFAULT_SET, align 4
  store i32 %20, i32* %2, align 4
  br label %78

21:                                               ; preds = %1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = call i32 @coalition_lock(%struct.TYPE_7__* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = call i32 @coalition_unlock(%struct.TYPE_7__* %29)
  %31 = load i32, i32* @KERN_TERMINATED, align 4
  store i32 %31, i32* %2, align 4
  br label %78

32:                                               ; preds = %21
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = call i32 @coalition_unlock(%struct.TYPE_7__* %38)
  %40 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %40, i32* %2, align 4
  br label %78

41:                                               ; preds = %32
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = call i32 @coalition_unlock(%struct.TYPE_7__* %51)
  %53 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %53, i32* %2, align 4
  br label %78

54:                                               ; preds = %41
  %55 = load i64, i64* @TRUE, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 5
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 2
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = call i32 @coalition_unlock(%struct.TYPE_7__* %64)
  %66 = call i32 @lck_mtx_lock(i32* @coalitions_list_lock)
  %67 = load i32, i32* @coalition_count, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* @coalition_count, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 4
  %71 = call i32 @remqueue(i32* %70)
  %72 = call i32 @lck_mtx_unlock(i32* @coalitions_list_lock)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = call i32 @coalition_release(%struct.TYPE_7__* %73)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = call i32 @coalition_release(%struct.TYPE_7__* %75)
  %77 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %54, %50, %37, %28, %19
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @coalition_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @coalition_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @remqueue(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @coalition_release(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
