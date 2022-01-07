; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_set_srv_chg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_set_srv_chg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 (i32, %struct.TYPE_8__*, i32*)* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"gatt_set_srv_chg\00", align 1
@gatt_cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"found a srv_chg clt\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"set srv_changed to TRUE\00", align 1
@TRUE = common dso_local global i64 0, align 8
@GATTS_SRV_CHG_CMD_UPDATE_CLIENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_set_srv_chg() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gatt_cb, i32 0, i32 1), align 8
  %7 = call i64 @fixed_queue_is_empty(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %48

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gatt_cb, i32 0, i32 1), align 8
  %12 = call i32* @fixed_queue_get_list(i32 %11)
  store i32* %12, i32** %1, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = call i32* @list_begin(i32* %13)
  store i32* %14, i32** %2, align 8
  br label %15

15:                                               ; preds = %45, %10
  %16 = load i32*, i32** %2, align 8
  %17 = load i32*, i32** %1, align 8
  %18 = call i32* @list_end(i32* %17)
  %19 = icmp ne i32* %16, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %15
  %21 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = call i64 @list_node(i32* %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %3, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %20
  %30 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i64, i64* @TRUE, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = call i32 @memcpy(i32* %34, %struct.TYPE_9__* %35, i32 8)
  %37 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gatt_cb, i32 0, i32 0, i32 0), align 8
  %38 = icmp ne i32 (i32, %struct.TYPE_8__*, i32*)* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gatt_cb, i32 0, i32 0, i32 0), align 8
  %41 = load i32, i32* @GATTS_SRV_CHG_CMD_UPDATE_CLIENT, align 4
  %42 = call i32 %40(i32 %41, %struct.TYPE_8__* %4, i32* null)
  br label %43

43:                                               ; preds = %39, %29
  br label %44

44:                                               ; preds = %43, %20
  br label %45

45:                                               ; preds = %44
  %46 = load i32*, i32** %2, align 8
  %47 = call i32* @list_next(i32* %46)
  store i32* %47, i32** %2, align 8
  br label %15

48:                                               ; preds = %9, %15
  ret void
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #1

declare dso_local i64 @fixed_queue_is_empty(i32) #1

declare dso_local i32* @fixed_queue_get_list(i32) #1

declare dso_local i32* @list_begin(i32*) #1

declare dso_local i32* @list_end(i32*) #1

declare dso_local i64 @list_node(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32* @list_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
