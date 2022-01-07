; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_policy_set.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_policy_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i32 }

@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@allow_qos_policy_set = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@KERN_POLICY_STATIC = common dso_local global i64 0, align 8
@THREAD_QOS_POLICY = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@THREAD_QOS_POLICY_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @thread_policy_set(%struct.TYPE_10__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @THREAD_NULL, align 8
  %16 = icmp eq %struct.TYPE_10__* %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %18, i64* %5, align 8
  br label %85

19:                                               ; preds = %4
  %20 = load i64, i64* @allow_qos_policy_set, align 8
  %21 = load i64, i64* @FALSE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = call i64 @thread_is_static_param(%struct.TYPE_10__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* @KERN_POLICY_STATIC, align 8
  store i64 %28, i64* %5, align 8
  br label %85

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @THREAD_QOS_POLICY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %34, i64* %5, align 8
  br label %85

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %36
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = call i64 @thread_remove_qos_policy(%struct.TYPE_10__* %54)
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @KERN_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %43
  %60 = load i64, i64* %11, align 8
  store i64 %60, i64* %5, align 8
  br label %85

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61, %36
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @thread_policy_set_internal(%struct.TYPE_10__* %63, i64 %64, i32 %65, i32 %66)
  store i64 %67, i64* %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %62
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* @KERN_SUCCESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = load i64, i64* @THREAD_QOS_POLICY, align 8
  %79 = ptrtoint %struct.TYPE_11__* %10 to i32
  %80 = load i32, i32* @THREAD_QOS_POLICY_COUNT, align 4
  %81 = call i64 @thread_policy_set_internal(%struct.TYPE_10__* %77, i64 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %72
  br label %83

83:                                               ; preds = %82, %62
  %84 = load i64, i64* %11, align 8
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %83, %59, %33, %27, %17
  %86 = load i64, i64* %5, align 8
  ret i64 %86
}

declare dso_local i64 @thread_is_static_param(%struct.TYPE_10__*) #1

declare dso_local i64 @thread_remove_qos_policy(%struct.TYPE_10__*) #1

declare dso_local i64 @thread_policy_set_internal(%struct.TYPE_10__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
