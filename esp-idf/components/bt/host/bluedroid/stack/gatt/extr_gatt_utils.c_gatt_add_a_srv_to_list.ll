; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_add_a_srv_to_list.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_add_a_srv_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [12 x i8] c"p_new==NULL\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gatt_add_a_srv_to_list(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %3, align 4
  br label %99

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %26, align 8
  br label %91

27:                                               ; preds = %12
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %6, align 8
  br label %31

31:                                               ; preds = %27, %86
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = icmp eq %struct.TYPE_7__* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %49, align 8
  br label %90

50:                                               ; preds = %31
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %50
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = icmp ne %struct.TYPE_7__* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %68, align 8
  br label %73

69:                                               ; preds = %58
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %72, align 8
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %84, align 8
  br label %90

85:                                               ; preds = %50
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  store %struct.TYPE_7__* %89, %struct.TYPE_7__** %6, align 8
  br label %31

90:                                               ; preds = %73, %34
  br label %91

91:                                               ; preds = %90, %17
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = call i32 @gatt_update_last_pri_srv_info(%struct.TYPE_6__* %96)
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %91, %9
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #1

declare dso_local i32 @gatt_update_last_pri_srv_info(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
