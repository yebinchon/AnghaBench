; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_l2cif_config_cfm_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_l2cif_config_cfm_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }

@GATT_CH_CFG = common dso_local global i64 0, align 8
@L2CAP_CFG_OK = common dso_local global i64 0, align 8
@GATT_L2C_CFG_CFM_DONE = common dso_local global i32 0, align 4
@GATT_L2C_CFG_IND_DONE = common dso_local global i32 0, align 4
@GATT_CH_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_l2cif_config_cfm_cback(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store i32* null, i32** %6, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.TYPE_9__* @gatt_find_tcb_by_cid(i32 %7)
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %5, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %10, label %66

10:                                               ; preds = %2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = call i64 @gatt_get_ch_state(%struct.TYPE_9__* %11)
  %13 = load i64, i64* @GATT_CH_CFG, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %10
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @L2CAP_CFG_OK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %15
  %22 = load i32, i32* @GATT_L2C_CFG_CFM_DONE, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GATT_L2C_CFG_IND_DONE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %21
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = load i32, i32* @GATT_CH_OPEN, align 4
  %36 = call i32 @gatt_set_ch_state(%struct.TYPE_9__* %34, i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @gatt_is_bda_in_the_srv_chg_clt_list(i32 %39)
  store i32* %40, i32** %6, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @gatt_chk_srv_chg(i32* %43)
  br label %57

45:                                               ; preds = %33
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @btm_sec_is_a_bonded_dev(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @gatt_add_a_bonded_dev_for_srv_chg(i32 %54)
  br label %56

56:                                               ; preds = %51, %45
  br label %57

57:                                               ; preds = %56, %42
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = call i32 @gatt_send_conn_cback(%struct.TYPE_9__* %58)
  br label %60

60:                                               ; preds = %57, %21
  br label %64

61:                                               ; preds = %15
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @L2CA_DisconnectReq(i32 %62)
  br label %64

64:                                               ; preds = %61, %60
  br label %65

65:                                               ; preds = %64, %10
  br label %66

66:                                               ; preds = %65, %2
  ret void
}

declare dso_local %struct.TYPE_9__* @gatt_find_tcb_by_cid(i32) #1

declare dso_local i64 @gatt_get_ch_state(%struct.TYPE_9__*) #1

declare dso_local i32 @gatt_set_ch_state(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @gatt_is_bda_in_the_srv_chg_clt_list(i32) #1

declare dso_local i32 @gatt_chk_srv_chg(i32*) #1

declare dso_local i64 @btm_sec_is_a_bonded_dev(i32) #1

declare dso_local i32 @gatt_add_a_bonded_dev_for_srv_chg(i32) #1

declare dso_local i32 @gatt_send_conn_cback(%struct.TYPE_9__*) #1

declare dso_local i32 @L2CA_DisconnectReq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
