; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_init_srv_chg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_init_srv_chg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 (i32, %struct.TYPE_11__*, %struct.TYPE_10__*)* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"gatt_init_srv_chg\00", align 1
@gatt_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GATTS_SRV_CHG_CMD_READ_NUM_CLENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"gatt_init_srv_chg num_srv_chg_clt_clients=%d\00", align 1
@GATTS_SRV_CHG_CMD_READ_CLENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to add a service change client\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"gatt_init_srv_chg callback not registered yet\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_init_srv_chg() #0 {
  %1 = alloca %struct.TYPE_11__, align 4
  %2 = alloca %struct.TYPE_10__, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = load i64 (i32, %struct.TYPE_11__*, %struct.TYPE_10__*)*, i64 (i32, %struct.TYPE_11__*, %struct.TYPE_10__*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gatt_cb, i32 0, i32 0, i32 0), align 8
  %9 = icmp ne i64 (i32, %struct.TYPE_11__*, %struct.TYPE_10__*)* %8, null
  br i1 %9, label %10, label %57

10:                                               ; preds = %0
  %11 = load i64 (i32, %struct.TYPE_11__*, %struct.TYPE_10__*)*, i64 (i32, %struct.TYPE_11__*, %struct.TYPE_10__*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gatt_cb, i32 0, i32 0, i32 0), align 8
  %12 = load i32, i32* @GATTS_SRV_CHG_CMD_READ_NUM_CLENTS, align 4
  %13 = call i64 %11(i32 %12, %struct.TYPE_11__* null, %struct.TYPE_10__* %2)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %26

26:                                               ; preds = %52, %20
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* %3, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i1 [ false, %26 ], [ %32, %30 ]
  br i1 %34, label %35, label %55

35:                                               ; preds = %33
  %36 = load i32, i32* %5, align 4
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i64 (i32, %struct.TYPE_11__*, %struct.TYPE_10__*)*, i64 (i32, %struct.TYPE_11__*, %struct.TYPE_10__*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gatt_cb, i32 0, i32 0, i32 0), align 8
  %39 = load i32, i32* @GATTS_SRV_CHG_CMD_READ_CLENT, align 4
  %40 = call i64 %38(i32 %39, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2)
  store i64 %40, i64* %3, align 8
  %41 = load i64, i64* @TRUE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %45 = call i32 @memcpy(i32* %6, i32* %44, i32 4)
  %46 = call i32* @gatt_add_srv_chg_clt(i32* %6)
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i64, i64* @FALSE, align 8
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %48, %43
  br label %52

52:                                               ; preds = %51, %35
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %26

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55, %16, %10
  br label %59

57:                                               ; preds = %0
  %58 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %56
  ret void
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @gatt_add_srv_chg_clt(i32*) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
