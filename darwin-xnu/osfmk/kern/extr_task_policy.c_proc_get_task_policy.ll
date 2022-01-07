; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_proc_get_task_policy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_proc_get_task_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.task_requested_policy }
%struct.task_requested_policy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TASK_POLICY_EXTERNAL = common dso_local global i32 0, align 4
@TASK_POLICY_ATTRIBUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unknown policy_flavor %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_get_task_policy(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_requested_policy, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = call i32 @task_lock(%struct.TYPE_5__* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = bitcast %struct.task_requested_policy* %8 to i8*
  %14 = bitcast %struct.task_requested_policy* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 36, i1 false)
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %91 [
    i32 134, label %16
    i32 131, label %27
    i32 132, label %44
    i32 130, label %55
    i32 133, label %66
    i32 129, label %75
    i32 128, label %83
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @TASK_POLICY_EXTERNAL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  br label %26

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %8, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %20
  br label %94

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @TASK_POLICY_EXTERNAL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %8, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %8, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @proc_tier_to_iopol(i32 %33, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %43

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %8, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %8, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @proc_tier_to_iopol(i32 %39, i32 %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %37, %31
  br label %94

44:                                               ; preds = %3
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @TASK_POLICY_EXTERNAL, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %8, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  br label %54

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %8, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %48
  br label %94

55:                                               ; preds = %3
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @TASK_POLICY_EXTERNAL, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %8, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  br label %65

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %8, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %59
  br label %94

66:                                               ; preds = %3
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %8, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @proc_tier_to_iopol(i32 %73, i32 0)
  store i32 %74, i32* %7, align 4
  br label %94

75:                                               ; preds = %3
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %8, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %7, align 4
  br label %94

83:                                               ; preds = %3
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %8, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %7, align 4
  br label %94

91:                                               ; preds = %3
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91, %83, %75, %66, %65, %54, %43, %26
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = call i32 @task_unlock(%struct.TYPE_5__* %95)
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @task_lock(%struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @proc_tier_to_iopol(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @task_unlock(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
