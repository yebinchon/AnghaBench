; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/dis/extr_dis_profile.c_dis_AddChar.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/dis/extr_dis_profile.c_dis_AddChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@dis_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@dis_mask = common dso_local global i32 0, align 4
@i = common dso_local global i64 0, align 8
@DIS_MAX_CHAR_NUM = common dso_local global i64 0, align 8
@dis_attr_uuid = common dso_local global i32* null, align 8
@uuid = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GATT_PERM_READ = common dso_local global i32 0, align 4
@GATT_CHAR_PROP_BIT_READ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dis_AddChar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dis_cb, i32 0, i32 2), align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i64 0
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %3, align 8
  br label %6

6:                                                ; preds = %15, %1
  %7 = load i32, i32* @dis_mask, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i64, i64* @i, align 8
  %11 = load i64, i64* @DIS_MAX_CHAR_NUM, align 8
  %12 = icmp ult i64 %10, %11
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i1 [ false, %6 ], [ %12, %9 ]
  br i1 %14, label %15, label %32

15:                                               ; preds = %13
  %16 = load i32*, i32** @dis_attr_uuid, align 8
  %17 = load i64, i64* @i, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uuid, i32 0, i32 0, i32 0), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dis_cb, i32 0, i32 1), align 4
  %23 = load i32, i32* @GATT_PERM_READ, align 4
  %24 = load i32, i32* @GATT_CHAR_PROP_BIT_READ, align 4
  %25 = call i32 @esp_ble_gatts_add_char(i32 %22, %struct.TYPE_8__* @uuid, i32 %23, i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 1
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %3, align 8
  %28 = load i64, i64* @i, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* @i, align 8
  %30 = load i32, i32* @dis_mask, align 4
  %31 = ashr i32 %30, 1
  store i32 %31, i32* @dis_mask, align 4
  br label %6

32:                                               ; preds = %13
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dis_cb, i32 0, i32 1), align 4
  %34 = call i32 @esp_ble_gatts_start_srvc(i32 %33)
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dis_cb, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @esp_ble_gatts_add_char(i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @esp_ble_gatts_start_srvc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
