; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_update_app_hold_link_status.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_update_app_hold_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"gatt_update_app_hold_link_status p_tcb=NULL\00", align 1
@GATT_MAX_APPS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [79 x i8] c"gatt_update_app_hold_link_status found=%d[1-found] idx=%d gatt_if=%d is_add=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_update_app_hold_link_status(i64 %0, %struct.TYPE_3__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %81

14:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %40, %14
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @GATT_MAX_APPS, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load i64, i64* @TRUE, align 8
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 0, i64* %37, align 8
  br label %43

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %19
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %15

43:                                               ; preds = %32, %15
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %75, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %46
  store i64 0, i64* %7, align 8
  br label %50

50:                                               ; preds = %71, %49
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @GATT_MAX_APPS, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load i64, i64* %4, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 %63, i64* %68, align 8
  %69 = load i64, i64* @TRUE, align 8
  store i64 %69, i64* %8, align 8
  br label %74

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %50

74:                                               ; preds = %62, %50
  br label %75

75:                                               ; preds = %74, %46, %43
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i64 %76, i64 %77, i64 %78, i64 %79)
  br label %81

81:                                               ; preds = %75, %12
  ret void
}

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
