; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_l2cif_config_ind_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_l2cif_config_ind_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64 }
%struct.TYPE_10__ = type { i64, i32, i32 }

@GATT_MIN_BR_MTU_SIZE = common dso_local global i64 0, align 8
@L2CAP_DEFAULT_MTU = common dso_local global i64 0, align 8
@L2CAP_CFG_OK = common dso_local global i32 0, align 4
@GATT_L2C_CFG_IND_DONE = common dso_local global i32 0, align 4
@GATT_L2C_CFG_CFM_DONE = common dso_local global i32 0, align 4
@GATT_CH_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_l2cif_config_ind_cback(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  store i32* null, i32** %6, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.TYPE_10__* @gatt_find_tcb_by_cid(i32 %7)
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %5, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %10, label %93

10:                                               ; preds = %2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @GATT_MIN_BR_MTU_SIZE, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @L2CAP_DEFAULT_MTU, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %37

33:                                               ; preds = %21, %15, %10
  %34 = load i64, i64* @L2CAP_DEFAULT_MTU, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = call i32 @memset(%struct.TYPE_9__* %38, i32 0, i32 24)
  %40 = load i32, i32* @L2CAP_CFG_OK, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = call i32 @L2CA_ConfigRsp(i32 %43, %struct.TYPE_9__* %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GATT_L2C_CFG_IND_DONE, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %92

52:                                               ; preds = %37
  %53 = load i32, i32* @GATT_L2C_CFG_IND_DONE, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @GATT_L2C_CFG_CFM_DONE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %52
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = load i32, i32* @GATT_CH_OPEN, align 4
  %67 = call i32 @gatt_set_ch_state(%struct.TYPE_10__* %65, i32 %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32* @gatt_is_bda_in_the_srv_chg_clt_list(i32 %70)
  store i32* %71, i32** %6, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @gatt_chk_srv_chg(i32* %74)
  br label %88

76:                                               ; preds = %64
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @btm_sec_is_a_bonded_dev(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @gatt_add_a_bonded_dev_for_srv_chg(i32 %85)
  br label %87

87:                                               ; preds = %82, %76
  br label %88

88:                                               ; preds = %87, %73
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = call i32 @gatt_send_conn_cback(%struct.TYPE_10__* %89)
  br label %91

91:                                               ; preds = %88, %52
  br label %92

92:                                               ; preds = %91, %37
  br label %93

93:                                               ; preds = %92, %2
  ret void
}

declare dso_local %struct.TYPE_10__* @gatt_find_tcb_by_cid(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @L2CA_ConfigRsp(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @gatt_set_ch_state(%struct.TYPE_10__*, i32) #1

declare dso_local i32* @gatt_is_bda_in_the_srv_chg_clt_list(i32) #1

declare dso_local i32 @gatt_chk_srv_chg(i32*) #1

declare dso_local i64 @btm_sec_is_a_bonded_dev(i32) #1

declare dso_local i32 @gatt_add_a_bonded_dev_for_srv_chg(i32) #1

declare dso_local i32 @gatt_send_conn_cback(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
