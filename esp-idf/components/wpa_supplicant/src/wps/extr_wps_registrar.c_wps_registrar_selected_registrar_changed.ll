; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_registrar_selected_registrar_changed.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_registrar_selected_registrar_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i32, i32, i64, %struct.TYPE_2__*, i64, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"WPS: Selected registrar information changed\00", align 1
@WPS_MAX_AUTHORIZED_MACS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"WPS: Authorized MACs union (start with own)\00", align 1
@WPS_CONFIG_PUSHBUTTON = common dso_local global i32 0, align 4
@DEV_PW_PUSHBUTTON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"WPS: Internal Registrar selected (pbc=%d)\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"WPS: Internal Registrar not selected\00", align 1
@WPS_CONFIG_PHY_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_VIRT_PUSHBUTTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_registrar_selected_registrar_changed(%struct.wps_registrar* %0) #0 {
  %2 = alloca %struct.wps_registrar*, align 8
  %3 = alloca i32, align 4
  store %struct.wps_registrar* %0, %struct.wps_registrar** %2, align 8
  %4 = load i32, i32* @MSG_DEBUG, align 4
  %5 = call i32 (i32, i8*, ...) @wpa_printf(i32 %4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %7 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %10 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %9, i32 0, i32 7
  store i64 %8, i64* %10, align 8
  %11 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %12 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 8
  %13 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %14 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %13, i32 0, i32 1
  store i32 -1, i32* %14, align 4
  %15 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %16 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %19 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @WPS_MAX_AUTHORIZED_MACS, align 4
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = mul nsw i32 %21, %22
  %24 = call i32 @os_memcpy(i64 %17, i32 %20, i32 %23)
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %27 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @wpa_hexdump(i32 %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32* %29, i32 8)
  %31 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %32 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %1
  %36 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %37 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @WPS_CONFIG_PUSHBUTTON, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* %3, align 4
  %44 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %45 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %35
  %49 = load i32, i32* @DEV_PW_PUSHBUTTON, align 4
  %50 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %51 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %53 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @wps_set_pushbutton(i32* %3, i32 %56)
  br label %58

58:                                               ; preds = %48, %35
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %61 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %66 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %70

67:                                               ; preds = %1
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %77

70:                                               ; preds = %58
  %71 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %72 = call i32 @wps_registrar_sel_reg_union(%struct.wps_registrar* %71)
  %73 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %74 = call i32 @wps_set_ie(%struct.wps_registrar* %73)
  %75 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %76 = call i32 @wps_cb_set_sel_reg(%struct.wps_registrar* %75)
  br label %77

77:                                               ; preds = %70, %67
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memcpy(i64, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wps_set_pushbutton(i32*, i32) #1

declare dso_local i32 @wps_registrar_sel_reg_union(%struct.wps_registrar*) #1

declare dso_local i32 @wps_set_ie(%struct.wps_registrar*) #1

declare dso_local i32 @wps_cb_set_sel_reg(%struct.wps_registrar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
