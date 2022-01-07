; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_zone_test.c_vme_zone_compares_to_vm_objects.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_zone_test.c_vme_zone_compares_to_vm_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [68 x i8] c"Comparing element counts of \22VM map entries\22 and \22vm objects\22 zones\00", align 1
@current_test = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@VME_ZONE = common dso_local global i32 0, align 4
@zone_info_array = common dso_local global %struct.TYPE_5__* null, align 8
@VMOBJECTS_ZONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"# VM map entries as percentage of # vm objects = %llu\00", align 1
@VMENTRY_TO_VMOBJECT_COMPARISON_RATIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Number of VM map entries is comparable to vm objects\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Number of VM map entries is NOT comparable to vm objects\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vme_zone_compares_to_vm_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vme_zone_compares_to_vm_objects() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %55, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @current_test, i32 0, i32 0), align 8
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %58

10:                                               ; preds = %6
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @current_test, i32 0, i32 1), align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VME_ZONE, align 4
  %18 = call i32 @strcmp(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %10
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @zone_info_array, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %10
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @current_test, i32 0, i32 1), align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VMOBJECTS_ZONE, align 4
  %35 = call i32 @strcmp(i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %27
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @zone_info_array, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %37, %27
  br label %45

45:                                               ; preds = %44, %20
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @current_test, i32 0, i32 1), align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @zone_info_array, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = call i32 @print_zone_info(%struct.TYPE_6__* %49, %struct.TYPE_5__* %53)
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %6

58:                                               ; preds = %6
  %59 = load i32, i32* %4, align 4
  %60 = mul nsw i32 %59, 100
  %61 = load i32, i32* %3, align 4
  %62 = sdiv i32 %60, %61
  %63 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @VMENTRY_TO_VMOBJECT_COMPARISON_RATIO, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sdiv i32 %67, 100
  %69 = icmp sge i32 %64, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %74

72:                                               ; preds = %58
  %73 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i32 @T_LOG(i8*, ...) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @print_zone_info(%struct.TYPE_6__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
