; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_build_cred_encr_type.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_build_cred_encr_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wpabuf = type { i32 }

@WPS_AUTH_WPA2PSK = common dso_local global i32 0, align 4
@WPS_AUTH_WPAPSK = common dso_local global i32 0, align 4
@WPS_ENCR_AES = common dso_local global i32 0, align 4
@WPS_ENCR_TKIP = common dso_local global i32 0, align 4
@WPS_ENCR_WEP = common dso_local global i32 0, align 4
@WPS_ENCR_NONE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"WPS:  * Encryption Type (0x%x)\00", align 1
@ATTR_ENCR_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*)* @wps_build_cred_encr_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_build_cred_encr_type(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %6 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %7 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %12 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %17 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @WPS_ENCR_AES, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @WPS_ENCR_AES, align 4
  store i32 %27, i32* %5, align 4
  br label %36

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @WPS_ENCR_TKIP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @WPS_ENCR_TKIP, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %28
  br label %36

36:                                               ; preds = %35, %26
  br label %53

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @WPS_ENCR_WEP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @WPS_ENCR_WEP, align 4
  store i32 %43, i32* %5, align 4
  br label %52

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @WPS_ENCR_NONE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @WPS_ENCR_NONE, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %44
  br label %52

52:                                               ; preds = %51, %42
  br label %53

53:                                               ; preds = %52, %36
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @wpa_printf(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %58 = load i32, i32* @ATTR_ENCR_TYPE, align 4
  %59 = call i32 @wpabuf_put_be16(%struct.wpabuf* %57, i32 %58)
  %60 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %61 = call i32 @wpabuf_put_be16(%struct.wpabuf* %60, i32 2)
  %62 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @wpabuf_put_be16(%struct.wpabuf* %62, i32 %63)
  ret i32 0
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
