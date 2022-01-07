; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_add_a_bonded_dev_for_srv_chg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_add_a_bonded_dev_for_srv_chg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (i32, %struct.TYPE_10__*, i32*)* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i8*, i32 }

@BD_ADDR_LEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@gatt_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GATTS_SRV_CHG_CMD_ADD_CLIENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_add_a_bonded_dev_for_srv_chg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @BD_ADDR_LEN, align 4
  %9 = call i32 @memcpy(i32 %6, i32 %7, i32 %8)
  %10 = load i8*, i8** @FALSE, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = call i32* @gatt_add_srv_chg_clt(%struct.TYPE_11__* %4)
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @BD_ADDR_LEN, align 4
  %20 = call i32 @memcpy(i32 %17, i32 %18, i32 %19)
  %21 = load i8*, i8** @FALSE, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i32 (i32, %struct.TYPE_10__*, i32*)*, i32 (i32, %struct.TYPE_10__*, i32*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gatt_cb, i32 0, i32 0, i32 0), align 8
  %25 = icmp ne i32 (i32, %struct.TYPE_10__*, i32*)* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load i32 (i32, %struct.TYPE_10__*, i32*)*, i32 (i32, %struct.TYPE_10__*, i32*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gatt_cb, i32 0, i32 0, i32 0), align 8
  %28 = load i32, i32* @GATTS_SRV_CHG_CMD_ADD_CLIENT, align 4
  %29 = call i32 %27(i32 %28, %struct.TYPE_10__* %3, i32* null)
  br label %30

30:                                               ; preds = %26, %14
  br label %31

31:                                               ; preds = %30, %1
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32* @gatt_add_srv_chg_clt(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
