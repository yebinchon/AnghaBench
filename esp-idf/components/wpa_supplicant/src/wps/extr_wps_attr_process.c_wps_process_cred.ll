; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_process.c_wps_process_cred.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_process.c_wps_process_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_parse_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wps_credential = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"WPS: Process Credential\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_process_cred(%struct.wps_parse_attr* %0, %struct.wps_credential* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_parse_attr*, align 8
  %5 = alloca %struct.wps_credential*, align 8
  store %struct.wps_parse_attr* %0, %struct.wps_parse_attr** %4, align 8
  store %struct.wps_credential* %1, %struct.wps_credential** %5, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = call i32 @wpa_printf(i32 %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %9 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %10 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %9, i32 0, i32 15
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @wps_process_cred_network_idx(%struct.wps_credential* %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %103, label %14

14:                                               ; preds = %2
  %15 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %16 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %17 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %16, i32 0, i32 14
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %20 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %19, i32 0, i32 13
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @wps_process_cred_ssid(%struct.wps_credential* %15, i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %103, label %24

24:                                               ; preds = %14
  %25 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %26 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %27 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @wps_process_cred_auth_type(%struct.wps_credential* %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %103, label %31

31:                                               ; preds = %24
  %32 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %33 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %34 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @wps_process_cred_encr_type(%struct.wps_credential* %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %103, label %38

38:                                               ; preds = %31
  %39 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %40 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %41 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @wps_process_cred_network_key_idx(%struct.wps_credential* %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %103, label %45

45:                                               ; preds = %38
  %46 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %47 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %48 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %51 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @wps_process_cred_network_key(%struct.wps_credential* %46, i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %103, label %55

55:                                               ; preds = %45
  %56 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %57 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %58 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @wps_process_cred_mac_addr(%struct.wps_credential* %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %103, label %62

62:                                               ; preds = %55
  %63 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %64 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %65 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %68 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @wps_process_cred_eap_type(%struct.wps_credential* %63, i32 %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %103, label %72

72:                                               ; preds = %62
  %73 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %74 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %75 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %78 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @wps_process_cred_eap_identity(%struct.wps_credential* %73, i32 %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %103, label %82

82:                                               ; preds = %72
  %83 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %84 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %85 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @wps_process_cred_key_prov_auto(%struct.wps_credential* %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %82
  %90 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %91 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %92 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @wps_process_cred_802_1x_enabled(%struct.wps_credential* %90, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  %97 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %98 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %99 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @wps_process_cred_ap_channel(%struct.wps_credential* %97, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96, %89, %82, %72, %62, %55, %45, %38, %31, %24, %14, %2
  store i32 -1, i32* %3, align 4
  br label %107

104:                                              ; preds = %96
  %105 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %106 = call i32 @wps_workaround_cred_key(%struct.wps_credential* %105)
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %104, %103
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_process_cred_network_idx(%struct.wps_credential*, i32) #1

declare dso_local i64 @wps_process_cred_ssid(%struct.wps_credential*, i32, i32) #1

declare dso_local i64 @wps_process_cred_auth_type(%struct.wps_credential*, i32) #1

declare dso_local i64 @wps_process_cred_encr_type(%struct.wps_credential*, i32) #1

declare dso_local i64 @wps_process_cred_network_key_idx(%struct.wps_credential*, i32) #1

declare dso_local i64 @wps_process_cred_network_key(%struct.wps_credential*, i32, i32) #1

declare dso_local i64 @wps_process_cred_mac_addr(%struct.wps_credential*, i32) #1

declare dso_local i64 @wps_process_cred_eap_type(%struct.wps_credential*, i32, i32) #1

declare dso_local i64 @wps_process_cred_eap_identity(%struct.wps_credential*, i32, i32) #1

declare dso_local i64 @wps_process_cred_key_prov_auto(%struct.wps_credential*, i32) #1

declare dso_local i64 @wps_process_cred_802_1x_enabled(%struct.wps_credential*, i32) #1

declare dso_local i64 @wps_process_cred_ap_channel(%struct.wps_credential*, i32) #1

declare dso_local i32 @wps_workaround_cred_key(%struct.wps_credential*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
