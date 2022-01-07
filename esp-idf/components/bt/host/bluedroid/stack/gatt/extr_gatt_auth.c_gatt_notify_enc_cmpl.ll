; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_auth.c_gatt_notify_enc_cmpl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_auth.c_gatt_notify_enc_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32 (i32, i32)* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@BT_TRANSPORT_LE = common dso_local global i32 0, align 4
@GATT_MAX_APPS = common dso_local global i64 0, align 8
@gatt_cb = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GATT_SEC_ENC_PENDING = common dso_local global i64 0, align 8
@GATT_SEC_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"notify GATT for encryption completion of unknown device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_notify_enc_cmpl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %4, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @BT_TRANSPORT_LE, align 4
  %9 = call %struct.TYPE_12__* @gatt_find_tcb_by_addr(i32 %7, i32 %8)
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %3, align 8
  %10 = icmp ne %struct.TYPE_12__* %9, null
  br i1 %10, label %11, label %87

11:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %46, %11
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @GATT_MAX_APPS, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gatt_cb, i32 0, i32 0), align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %16
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gatt_cb, i32 0, i32 0), align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32 (i32, i32)*, i32 (i32, i32)** %28, align 8
  %30 = icmp ne i32 (i32, i32)* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %23
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gatt_cb, i32 0, i32 0), align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32 (i32, i32)*, i32 (i32, i32)** %36, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gatt_cb, i32 0, i32 0), align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %2, align 4
  %44 = call i32 %37(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %31, %23, %16
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %4, align 8
  br label %12

49:                                               ; preds = %12
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = call i64 @gatt_get_sec_act(%struct.TYPE_12__* %50)
  %52 = load i64, i64* @GATT_SEC_ENC_PENDING, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %49
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = load i32, i32* @GATT_SEC_NONE, align 4
  %57 = call i32 @gatt_set_sec_act(%struct.TYPE_12__* %55, i32 %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @fixed_queue_length(i32 %60)
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %82, %54
  %63 = load i64, i64* %5, align 8
  %64 = icmp ugt i64 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @fixed_queue_dequeue(i32 %68, i32 0)
  %70 = inttoptr i64 %69 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %6, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = icmp ne %struct.TYPE_13__* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @gatt_security_check_start(i32 %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = call i32 @osi_free(%struct.TYPE_13__* %78)
  br label %81

80:                                               ; preds = %65
  br label %85

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %5, align 8
  %84 = add i64 %83, -1
  store i64 %84, i64* %5, align 8
  br label %62

85:                                               ; preds = %80, %62
  br label %86

86:                                               ; preds = %85, %49
  br label %89

87:                                               ; preds = %1
  %88 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %86
  ret void
}

declare dso_local %struct.TYPE_12__* @gatt_find_tcb_by_addr(i32, i32) #1

declare dso_local i64 @gatt_get_sec_act(%struct.TYPE_12__*) #1

declare dso_local i32 @gatt_set_sec_act(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @fixed_queue_length(i32) #1

declare dso_local i64 @fixed_queue_dequeue(i32, i32) #1

declare dso_local i32 @gatt_security_check_start(i32) #1

declare dso_local i32 @osi_free(%struct.TYPE_13__*) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
