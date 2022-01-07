; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_find_and_decrement_qos_override.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_find_and_decrement_qos_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.thread_qos_override* }
%struct.thread_qos_override = type { i64, i32, i64, %struct.thread_qos_override* }

@THREAD_QOS_OVERRIDE_RESOURCE_WILDCARD = common dso_local global i64 0, align 8
@THREAD_QOS_OVERRIDE_TYPE_WILDCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i32, i64, %struct.thread_qos_override**)* @find_and_decrement_qos_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_and_decrement_qos_override(%struct.TYPE_3__* %0, i64 %1, i32 %2, i64 %3, %struct.thread_qos_override** %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.thread_qos_override**, align 8
  %11 = alloca %struct.thread_qos_override*, align 8
  %12 = alloca %struct.thread_qos_override*, align 8
  %13 = alloca %struct.thread_qos_override*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store %struct.thread_qos_override** %4, %struct.thread_qos_override*** %10, align 8
  store %struct.thread_qos_override* null, %struct.thread_qos_override** %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.thread_qos_override*, %struct.thread_qos_override** %15, align 8
  store %struct.thread_qos_override* %16, %struct.thread_qos_override** %11, align 8
  br label %17

17:                                               ; preds = %87, %5
  %18 = load %struct.thread_qos_override*, %struct.thread_qos_override** %11, align 8
  %19 = icmp ne %struct.thread_qos_override* %18, null
  br i1 %19, label %20, label %89

20:                                               ; preds = %17
  %21 = load %struct.thread_qos_override*, %struct.thread_qos_override** %11, align 8
  %22 = getelementptr inbounds %struct.thread_qos_override, %struct.thread_qos_override* %21, i32 0, i32 3
  %23 = load %struct.thread_qos_override*, %struct.thread_qos_override** %22, align 8
  store %struct.thread_qos_override* %23, %struct.thread_qos_override** %13, align 8
  %24 = load i64, i64* @THREAD_QOS_OVERRIDE_RESOURCE_WILDCARD, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load %struct.thread_qos_override*, %struct.thread_qos_override** %11, align 8
  %29 = getelementptr inbounds %struct.thread_qos_override, %struct.thread_qos_override* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %85

33:                                               ; preds = %27, %20
  %34 = load i32, i32* @THREAD_QOS_OVERRIDE_TYPE_WILDCARD, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load %struct.thread_qos_override*, %struct.thread_qos_override** %11, align 8
  %39 = getelementptr inbounds %struct.thread_qos_override, %struct.thread_qos_override* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %85

43:                                               ; preds = %37, %33
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.thread_qos_override*, %struct.thread_qos_override** %11, align 8
  %48 = getelementptr inbounds %struct.thread_qos_override, %struct.thread_qos_override* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  br label %54

49:                                               ; preds = %43
  %50 = load %struct.thread_qos_override*, %struct.thread_qos_override** %11, align 8
  %51 = getelementptr inbounds %struct.thread_qos_override, %struct.thread_qos_override* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %49, %46
  %55 = load %struct.thread_qos_override*, %struct.thread_qos_override** %11, align 8
  %56 = getelementptr inbounds %struct.thread_qos_override, %struct.thread_qos_override* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load %struct.thread_qos_override*, %struct.thread_qos_override** %12, align 8
  %61 = icmp eq %struct.thread_qos_override* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.thread_qos_override*, %struct.thread_qos_override** %13, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store %struct.thread_qos_override* %63, %struct.thread_qos_override** %65, align 8
  br label %70

66:                                               ; preds = %59
  %67 = load %struct.thread_qos_override*, %struct.thread_qos_override** %13, align 8
  %68 = load %struct.thread_qos_override*, %struct.thread_qos_override** %12, align 8
  %69 = getelementptr inbounds %struct.thread_qos_override, %struct.thread_qos_override* %68, i32 0, i32 3
  store %struct.thread_qos_override* %67, %struct.thread_qos_override** %69, align 8
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.thread_qos_override**, %struct.thread_qos_override*** %10, align 8
  %72 = load %struct.thread_qos_override*, %struct.thread_qos_override** %71, align 8
  %73 = load %struct.thread_qos_override*, %struct.thread_qos_override** %11, align 8
  %74 = getelementptr inbounds %struct.thread_qos_override, %struct.thread_qos_override* %73, i32 0, i32 3
  store %struct.thread_qos_override* %72, %struct.thread_qos_override** %74, align 8
  %75 = load %struct.thread_qos_override*, %struct.thread_qos_override** %11, align 8
  %76 = load %struct.thread_qos_override**, %struct.thread_qos_override*** %10, align 8
  store %struct.thread_qos_override* %75, %struct.thread_qos_override** %76, align 8
  br label %79

77:                                               ; preds = %54
  %78 = load %struct.thread_qos_override*, %struct.thread_qos_override** %11, align 8
  store %struct.thread_qos_override* %78, %struct.thread_qos_override** %12, align 8
  br label %79

79:                                               ; preds = %77, %70
  %80 = load i64, i64* @THREAD_QOS_OVERRIDE_RESOURCE_WILDCARD, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %89

84:                                               ; preds = %79
  br label %87

85:                                               ; preds = %37, %27
  %86 = load %struct.thread_qos_override*, %struct.thread_qos_override** %11, align 8
  store %struct.thread_qos_override* %86, %struct.thread_qos_override** %12, align 8
  br label %87

87:                                               ; preds = %85, %84
  %88 = load %struct.thread_qos_override*, %struct.thread_qos_override** %13, align 8
  store %struct.thread_qos_override* %88, %struct.thread_qos_override** %11, align 8
  br label %17

89:                                               ; preds = %83, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
