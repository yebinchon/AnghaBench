; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_ap_join.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_ap_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.wpa_state_machine = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"init wpa sm=%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_ap_join(i8** %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostapd_data*, align 8
  %11 = alloca %struct.wpa_state_machine**, align 8
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call i64 (...) @esp_wifi_get_hostap_private_internal()
  %13 = inttoptr i64 %12 to %struct.hostapd_data*
  store %struct.hostapd_data* %13, %struct.hostapd_data** %10, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %16, %4
  store i32 0, i32* %5, align 4
  br label %79

23:                                               ; preds = %19
  %24 = load i8**, i8*** %6, align 8
  %25 = bitcast i8** %24 to %struct.wpa_state_machine**
  store %struct.wpa_state_machine** %25, %struct.wpa_state_machine*** %11, align 8
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %27 = icmp ne %struct.hostapd_data* %26, null
  br i1 %27, label %28, label %78

28:                                               ; preds = %23
  %29 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %30 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %28
  %37 = load %struct.wpa_state_machine**, %struct.wpa_state_machine*** %11, align 8
  %38 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %37, align 8
  %39 = icmp ne %struct.wpa_state_machine* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.wpa_state_machine**, %struct.wpa_state_machine*** %11, align 8
  %42 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %41, align 8
  %43 = call i32 @wpa_auth_sta_deinit(%struct.wpa_state_machine* %42)
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %46 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call %struct.wpa_state_machine* @wpa_auth_sta_init(%struct.TYPE_6__* %47, i32* %48)
  %50 = load %struct.wpa_state_machine**, %struct.wpa_state_machine*** %11, align 8
  store %struct.wpa_state_machine* %49, %struct.wpa_state_machine** %50, align 8
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = load %struct.wpa_state_machine**, %struct.wpa_state_machine*** %11, align 8
  %53 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %52, align 8
  %54 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.wpa_state_machine* %53)
  %55 = load %struct.wpa_state_machine**, %struct.wpa_state_machine*** %11, align 8
  %56 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %55, align 8
  %57 = icmp eq %struct.wpa_state_machine* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %79

59:                                               ; preds = %44
  %60 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %61 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load %struct.wpa_state_machine**, %struct.wpa_state_machine*** %11, align 8
  %64 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %63, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @wpa_validate_wpa_ie(%struct.TYPE_6__* %62, %struct.wpa_state_machine* %64, i32* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %79

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %28
  %72 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %73 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load %struct.wpa_state_machine**, %struct.wpa_state_machine*** %11, align 8
  %76 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %75, align 8
  %77 = call i32 @wpa_auth_sta_associated(%struct.TYPE_6__* %74, %struct.wpa_state_machine* %76)
  br label %78

78:                                               ; preds = %71, %23
  store i32 1, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %69, %58, %22
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i64 @esp_wifi_get_hostap_private_internal(...) #1

declare dso_local i32 @wpa_auth_sta_deinit(%struct.wpa_state_machine*) #1

declare dso_local %struct.wpa_state_machine* @wpa_auth_sta_init(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, %struct.wpa_state_machine*) #1

declare dso_local i64 @wpa_validate_wpa_ie(%struct.TYPE_6__*, %struct.wpa_state_machine*, i32*, i32) #1

declare dso_local i32 @wpa_auth_sta_associated(%struct.TYPE_6__*, %struct.wpa_state_machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
