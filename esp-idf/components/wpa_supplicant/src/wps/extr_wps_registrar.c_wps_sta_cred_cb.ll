; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_sta_cred_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_sta_cred_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 (i32, %struct.TYPE_4__*)* }

@WPS_AUTH_WPA2PSK = common dso_local global i32 0, align 4
@WPS_AUTH_WPAPSK = common dso_local global i32 0, align 4
@WPS_ENCR_AES = common dso_local global i32 0, align 4
@WPS_ENCR_TKIP = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"WPS: Update local configuration based on the AP configuration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_data*)* @wps_sta_cred_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_sta_cred_cb(%struct.wps_data* %0) #0 {
  %2 = alloca %struct.wps_data*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %2, align 8
  %3 = load %struct.wps_data*, %struct.wps_data** %2, align 8
  %4 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %12 = load %struct.wps_data*, %struct.wps_data** %2, align 8
  %13 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  br label %29

15:                                               ; preds = %1
  %16 = load %struct.wps_data*, %struct.wps_data** %2, align 8
  %17 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %25 = load %struct.wps_data*, %struct.wps_data** %2, align 8
  %26 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  br label %28

28:                                               ; preds = %23, %15
  br label %29

29:                                               ; preds = %28, %10
  %30 = load %struct.wps_data*, %struct.wps_data** %2, align 8
  %31 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @WPS_ENCR_AES, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i32, i32* @WPS_ENCR_AES, align 4
  %39 = load %struct.wps_data*, %struct.wps_data** %2, align 8
  %40 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  br label %56

42:                                               ; preds = %29
  %43 = load %struct.wps_data*, %struct.wps_data** %2, align 8
  %44 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WPS_ENCR_TKIP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i32, i32* @WPS_ENCR_TKIP, align 4
  %52 = load %struct.wps_data*, %struct.wps_data** %2, align 8
  %53 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %42
  br label %56

56:                                               ; preds = %55, %37
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = call i32 @wpa_printf(i32 %57, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.wps_data*, %struct.wps_data** %2, align 8
  %60 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32 (i32, %struct.TYPE_4__*)*, i32 (i32, %struct.TYPE_4__*)** %62, align 8
  %64 = icmp ne i32 (i32, %struct.TYPE_4__*)* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %56
  %66 = load %struct.wps_data*, %struct.wps_data** %2, align 8
  %67 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32 (i32, %struct.TYPE_4__*)*, i32 (i32, %struct.TYPE_4__*)** %69, align 8
  %71 = load %struct.wps_data*, %struct.wps_data** %2, align 8
  %72 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.wps_data*, %struct.wps_data** %2, align 8
  %77 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %76, i32 0, i32 0
  %78 = call i32 %70(i32 %75, %struct.TYPE_4__* %77)
  br label %79

79:                                               ; preds = %65, %56
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
