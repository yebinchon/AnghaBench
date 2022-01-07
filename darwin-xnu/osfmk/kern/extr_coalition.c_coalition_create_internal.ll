; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_coalition.c_coalition_create_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_coalition.c_coalition_create_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coalition = type { i32, i32, i32, i32, i64, i32, i32, i32 }

@COALITION_TYPE_MAX = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@coalition_zone = common dso_local global i32 0, align 4
@COALITION_NULL = common dso_local global %struct.coalition* null, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@init = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@coalitions_lck_grp = common dso_local global i32 0, align 4
@coalitions_lck_attr = common dso_local global i32 0, align 4
@coalitions_list_lock = common dso_local global i32 0, align 4
@coalition_next_id = common dso_local global i32 0, align 4
@coalition_count = common dso_local global i32 0, align 4
@coalitions_q = common dso_local global i32 0, align 4
@DBG_MACH_COALITION = common dso_local global i32 0, align 4
@MACH_COALITION_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"id:%llu, type:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @coalition_create_internal(i32 %0, i32 %1, i64 %2, %struct.coalition** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.coalition**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.coalition*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.coalition** %3, %struct.coalition*** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @COALITION_TYPE_MAX, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %4
  %19 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %19, i64* %5, align 8
  br label %99

20:                                               ; preds = %14
  %21 = load i32, i32* @coalition_zone, align 4
  %22 = call i64 @zalloc(i32 %21)
  %23 = inttoptr i64 %22 to %struct.coalition*
  store %struct.coalition* %23, %struct.coalition** %11, align 8
  %24 = load %struct.coalition*, %struct.coalition** %11, align 8
  %25 = load %struct.coalition*, %struct.coalition** @COALITION_NULL, align 8
  %26 = icmp eq %struct.coalition* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %28, i64* %5, align 8
  br label %99

29:                                               ; preds = %20
  %30 = load %struct.coalition*, %struct.coalition** %11, align 8
  %31 = call i32 @bzero(%struct.coalition* %30, i32 40)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.coalition*, %struct.coalition** %11, align 8
  %34 = getelementptr inbounds %struct.coalition, %struct.coalition* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.coalition*, %struct.coalition** %11, align 8
  %37 = getelementptr inbounds %struct.coalition, %struct.coalition* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.coalition*, %struct.coalition** %11, align 8
  %39 = load i32, i32* @init, align 4
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @coal_call(%struct.coalition* %38, i32 %39, i64 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @KERN_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load i32, i32* @coalition_zone, align 4
  %47 = load %struct.coalition*, %struct.coalition** %11, align 8
  %48 = call i32 @zfree(i32 %46, %struct.coalition* %47)
  %49 = load i64, i64* %10, align 8
  store i64 %49, i64* %5, align 8
  br label %99

50:                                               ; preds = %29
  %51 = load %struct.coalition*, %struct.coalition** %11, align 8
  %52 = getelementptr inbounds %struct.coalition, %struct.coalition* %51, i32 0, i32 2
  store i32 2, i32* %52, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @TRUE, align 4
  br label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @FALSE, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load %struct.coalition*, %struct.coalition** %11, align 8
  %62 = getelementptr inbounds %struct.coalition, %struct.coalition* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 8
  %63 = load %struct.coalition*, %struct.coalition** %11, align 8
  %64 = getelementptr inbounds %struct.coalition, %struct.coalition* %63, i32 0, i32 6
  %65 = call i32 @lck_mtx_init(i32* %64, i32* @coalitions_lck_grp, i32* @coalitions_lck_attr)
  %66 = call i32 @lck_mtx_lock(i32* @coalitions_list_lock)
  %67 = load i32, i32* @coalition_next_id, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @coalition_next_id, align 4
  %69 = sext i32 %67 to i64
  %70 = load %struct.coalition*, %struct.coalition** %11, align 8
  %71 = getelementptr inbounds %struct.coalition, %struct.coalition* %70, i32 0, i32 4
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* @coalition_count, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @coalition_count, align 4
  %74 = load %struct.coalition*, %struct.coalition** %11, align 8
  %75 = getelementptr inbounds %struct.coalition, %struct.coalition* %74, i32 0, i32 5
  %76 = call i32 @enqueue_tail(i32* @coalitions_q, i32* %75)
  %77 = load i32, i32* @DBG_MACH_COALITION, align 4
  %78 = load i32, i32* @MACH_COALITION_NEW, align 4
  %79 = call i32 @MACHDBG_CODE(i32 %77, i32 %78)
  %80 = load %struct.coalition*, %struct.coalition** %11, align 8
  %81 = getelementptr inbounds %struct.coalition, %struct.coalition* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.coalition*, %struct.coalition** %11, align 8
  %84 = getelementptr inbounds %struct.coalition, %struct.coalition* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @KDBG_RELEASE(i32 %79, i64 %82, i32 %85)
  %87 = call i32 @lck_mtx_unlock(i32* @coalitions_list_lock)
  %88 = load %struct.coalition*, %struct.coalition** %11, align 8
  %89 = getelementptr inbounds %struct.coalition, %struct.coalition* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.coalition*, %struct.coalition** %11, align 8
  %92 = getelementptr inbounds %struct.coalition, %struct.coalition* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @coal_type_str(i32 %93)
  %95 = call i32 @coal_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %90, i32 %94)
  %96 = load %struct.coalition*, %struct.coalition** %11, align 8
  %97 = load %struct.coalition**, %struct.coalition*** %9, align 8
  store %struct.coalition* %96, %struct.coalition** %97, align 8
  %98 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %98, i64* %5, align 8
  br label %99

99:                                               ; preds = %59, %45, %27, %18
  %100 = load i64, i64* %5, align 8
  ret i64 %100
}

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @bzero(%struct.coalition*, i32) #1

declare dso_local i64 @coal_call(%struct.coalition*, i32, i64) #1

declare dso_local i32 @zfree(i32, %struct.coalition*) #1

declare dso_local i32 @lck_mtx_init(i32*, i32*, i32*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @enqueue_tail(i32*, i32*) #1

declare dso_local i32 @KDBG_RELEASE(i32, i64, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @coal_dbg(i8*, i64, i32) #1

declare dso_local i32 @coal_type_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
