; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_build_e_snonce2.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_build_e_snonce2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"WPS:  * E-SNonce2\00", align 1
@ATTR_E_SNONCE2 = common dso_local global i64 0, align 8
@WPS_SECRET_NONCE_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*)* @wps_build_e_snonce2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_build_e_snonce2(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %5 = load i32, i32* @MSG_DEBUG, align 4
  %6 = call i32 @wpa_printf(i32 %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %8 = load i64, i64* @ATTR_E_SNONCE2, align 8
  %9 = call i32 @wpabuf_put_be16(%struct.wpabuf* %7, i64 %8)
  %10 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %11 = load i64, i64* @WPS_SECRET_NONCE_LEN, align 8
  %12 = call i32 @wpabuf_put_be16(%struct.wpabuf* %10, i64 %11)
  %13 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %14 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %15 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WPS_SECRET_NONCE_LEN, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* @WPS_SECRET_NONCE_LEN, align 8
  %20 = call i32 @wpabuf_put_data(%struct.wpabuf* %13, i64 %18, i64 %19)
  ret i32 0
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
