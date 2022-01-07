; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_remove_a_srv_from_list.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_remove_a_srv_from_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [40 x i8] c"p_remove==NULL || p_list->p_first==NULL\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gatt_remove_a_srv_from_list(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %7 = icmp ne %struct.TYPE_11__* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8, %2
  %14 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %3, align 4
  br label %76

16:                                               ; preds = %8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = icmp eq %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %35, align 8
  br label %36

36:                                               ; preds = %31, %21
  br label %68

37:                                               ; preds = %16
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = icmp eq %struct.TYPE_9__* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %51, align 8
  br label %67

52:                                               ; preds = %37
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %66, align 8
  br label %67

67:                                               ; preds = %52, %42
  br label %68

68:                                               ; preds = %67, %36
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = call i32 @gatt_update_last_pri_srv_info(%struct.TYPE_10__* %73)
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %68, %13
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #1

declare dso_local i32 @gatt_update_last_pri_srv_info(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
