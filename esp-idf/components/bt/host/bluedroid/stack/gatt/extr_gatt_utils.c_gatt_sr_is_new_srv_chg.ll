; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_sr_is_new_srv_chg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_sr_is_new_srv_chg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32 }

@gatt_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [28 x i8] c"gatt_sr_is_new_srv_chg: Yes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @gatt_sr_is_new_srv_chg(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gatt_cb, i32 0, i32 0), align 4
  %13 = call i64 @fixed_queue_is_empty(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %62

16:                                               ; preds = %3
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gatt_cb, i32 0, i32 0), align 4
  %18 = call i32* @fixed_queue_get_list(i32 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32* @list_begin(i32* %19)
  store i32* %20, i32** %10, align 8
  br label %21

21:                                               ; preds = %57, %16
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32* @list_end(i32* %23)
  %25 = icmp ne i32* %22, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %21
  %27 = load i32*, i32** %10, align 8
  %28 = call i64 @list_node(i32* %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %8, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %11, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @gatt_uuid_compare(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %26
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @gatt_uuid_compare(i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %60

56:                                               ; preds = %48, %40, %26
  br label %57

57:                                               ; preds = %56
  %58 = load i32*, i32** %10, align 8
  %59 = call i32* @list_next(i32* %58)
  store i32* %59, i32** %10, align 8
  br label %21

60:                                               ; preds = %54, %21
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %4, align 8
  br label %62

62:                                               ; preds = %60, %15
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %63
}

declare dso_local i64 @fixed_queue_is_empty(i32) #1

declare dso_local i32* @fixed_queue_get_list(i32) #1

declare dso_local i32* @list_begin(i32*) #1

declare dso_local i32* @list_end(i32*) #1

declare dso_local i64 @list_node(i32*) #1

declare dso_local i64 @gatt_uuid_compare(i32, i32) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #1

declare dso_local i32* @list_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
