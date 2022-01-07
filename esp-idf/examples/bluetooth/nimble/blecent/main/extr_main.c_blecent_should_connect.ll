; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_main.c_blecent_should_connect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_main.c_blecent_should_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_gap_disc_desc = type { i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ble_hs_adv_fields = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BLE_HCI_ADV_RPT_EVTYPE_ADV_IND = common dso_local global i64 0, align 8
@BLE_HCI_ADV_RPT_EVTYPE_DIR_IND = common dso_local global i64 0, align 8
@CONFIG_EXAMPLE_PEER_ADDR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"ADDR_ANY\00", align 1
@tag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Peer address from menuconfig: %s\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%hhx:%hhx:%hhx:%hhx:%hhx:%hhx\00", align 1
@peer_addr = common dso_local global i32* null, align 8
@BLECENT_SVC_ALERT_UUID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ble_gap_disc_desc*)* @blecent_should_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blecent_should_connect(%struct.ble_gap_disc_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ble_gap_disc_desc*, align 8
  %4 = alloca %struct.ble_hs_adv_fields, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ble_gap_disc_desc* %0, %struct.ble_gap_disc_desc** %3, align 8
  %7 = load %struct.ble_gap_disc_desc*, %struct.ble_gap_disc_desc** %3, align 8
  %8 = getelementptr inbounds %struct.ble_gap_disc_desc, %struct.ble_gap_disc_desc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BLE_HCI_ADV_RPT_EVTYPE_ADV_IND, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.ble_gap_disc_desc*, %struct.ble_gap_disc_desc** %3, align 8
  %14 = getelementptr inbounds %struct.ble_gap_disc_desc, %struct.ble_gap_disc_desc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BLE_HCI_ADV_RPT_EVTYPE_DIR_IND, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %89

19:                                               ; preds = %12, %1
  %20 = load %struct.ble_gap_disc_desc*, %struct.ble_gap_disc_desc** %3, align 8
  %21 = getelementptr inbounds %struct.ble_gap_disc_desc, %struct.ble_gap_disc_desc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ble_gap_disc_desc*, %struct.ble_gap_disc_desc** %3, align 8
  %24 = getelementptr inbounds %struct.ble_gap_disc_desc, %struct.ble_gap_disc_desc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ble_hs_adv_parse_fields(%struct.ble_hs_adv_fields* %4, i32 %22, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %89

31:                                               ; preds = %19
  %32 = load i8*, i8** @CONFIG_EXAMPLE_PEER_ADDR, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %31
  %36 = load i8*, i8** @CONFIG_EXAMPLE_PEER_ADDR, align 8
  %37 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %38 = call i64 @strncmp(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %35
  %41 = load i32, i32* @tag, align 4
  %42 = load i8*, i8** @CONFIG_EXAMPLE_PEER_ADDR, align 8
  %43 = call i32 @ESP_LOGI(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** @CONFIG_EXAMPLE_PEER_ADDR, align 8
  %45 = load i32*, i32** @peer_addr, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32*, i32** @peer_addr, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = load i32*, i32** @peer_addr, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32*, i32** @peer_addr, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32*, i32** @peer_addr, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32*, i32** @peer_addr, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = call i32 @sscanf(i8* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32* %46, i32* %48, i32* %50, i32* %52, i32* %54, i32* %56)
  %58 = load i32*, i32** @peer_addr, align 8
  %59 = load %struct.ble_gap_disc_desc*, %struct.ble_gap_disc_desc** %3, align 8
  %60 = getelementptr inbounds %struct.ble_gap_disc_desc, %struct.ble_gap_disc_desc* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @memcmp(i32* %58, i32 %62, i32 4)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %89

66:                                               ; preds = %40
  br label %67

67:                                               ; preds = %66, %35, %31
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %85, %67
  %69 = load i32, i32* %6, align 4
  %70 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %4, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %4, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = call i64 @ble_uuid_u16(i32* %79)
  %81 = load i64, i64* @BLECENT_SVC_ALERT_UUID, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  store i32 1, i32* %2, align 4
  br label %89

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %68

88:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %83, %65, %29, %18
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @ble_hs_adv_parse_fields(%struct.ble_hs_adv_fields*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i64 @ble_uuid_u16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
