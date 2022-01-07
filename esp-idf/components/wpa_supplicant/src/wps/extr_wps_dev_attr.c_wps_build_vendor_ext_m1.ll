; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_dev_attr.c_wps_build_vendor_ext_m1.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_dev_attr.c_wps_build_vendor_ext_m1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_device_data = type { i32* }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"WPS:  * Vendor Extension M1\00", align 1
@ATTR_VENDOR_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_build_vendor_ext_m1(%struct.wps_device_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_device_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  store %struct.wps_device_data* %0, %struct.wps_device_data** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %5 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %6 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %12 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @wpabuf_head_u8(i32* %13)
  %15 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %16 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @wpabuf_len(i32* %17)
  %19 = call i32 @wpa_hexdump(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18)
  %20 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %21 = load i32, i32* @ATTR_VENDOR_EXT, align 4
  %22 = call i32 @wpabuf_put_be16(%struct.wpabuf* %20, i32 %21)
  %23 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %24 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %25 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @wpabuf_len(i32* %26)
  %28 = call i32 @wpabuf_put_be16(%struct.wpabuf* %23, i32 %27)
  %29 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %30 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %31 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @wpabuf_put_buf(%struct.wpabuf* %29, i32* %32)
  br label %34

34:                                               ; preds = %9, %2
  ret i32 0
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local i32 @wpabuf_head_u8(i32*) #1

declare dso_local i32 @wpabuf_len(i32*) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
