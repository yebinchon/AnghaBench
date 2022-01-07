; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_is_srv_chg_ind_pending.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_is_srv_chg_ind_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"gatt_is_srv_chg_ind_pending is_queue_empty=%d\00", align 1
@gatt_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"srv_chg_ind_pending = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gatt_is_srv_chg_ind_pending(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @fixed_queue_is_empty(i32 %10)
  %12 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gatt_cb, i32 0, i32 0), align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @fixed_queue_is_empty(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %54, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32* @fixed_queue_get_list(i32 %29)
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32* @list_begin(i32* %31)
  store i32* %32, i32** %5, align 8
  br label %33

33:                                               ; preds = %50, %26
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32* @list_end(i32* %35)
  %37 = icmp ne i32* %34, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @list_node(i32* %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %6, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gatt_cb, i32 0, i32 0), align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32*, i32** %5, align 8
  %52 = call i32* @list_next(i32* %51)
  store i32* %52, i32** %5, align 8
  br label %33

53:                                               ; preds = %47, %33
  br label %54

54:                                               ; preds = %53, %20
  br label %55

55:                                               ; preds = %54, %18
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @fixed_queue_is_empty(i32) #1

declare dso_local i32* @fixed_queue_get_list(i32) #1

declare dso_local i32* @list_begin(i32*) #1

declare dso_local i32* @list_end(i32*) #1

declare dso_local i64 @list_node(i32*) #1

declare dso_local i32* @list_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
