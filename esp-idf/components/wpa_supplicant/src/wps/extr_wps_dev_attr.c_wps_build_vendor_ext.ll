; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_dev_attr.c_wps_build_vendor_ext.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_dev_attr.c_wps_build_vendor_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_device_data = type { i32** }
%struct.wpabuf = type { i32 }

@MAX_WPS_VENDOR_EXTENSIONS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"WPS:  * Vendor Extension\00", align 1
@ATTR_VENDOR_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_build_vendor_ext(%struct.wps_device_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_device_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  store %struct.wps_device_data* %0, %struct.wps_device_data** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %61, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MAX_WPS_VENDOR_EXTENSIONS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %64

10:                                               ; preds = %6
  %11 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %12 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %61

20:                                               ; preds = %10
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %23 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @wpabuf_head_u8(i32* %28)
  %30 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %31 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %30, i32 0, i32 0
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @wpabuf_len(i32* %36)
  %38 = call i32 @wpa_hexdump(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %37)
  %39 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %40 = load i32, i32* @ATTR_VENDOR_EXT, align 4
  %41 = call i32 @wpabuf_put_be16(%struct.wpabuf* %39, i32 %40)
  %42 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %43 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %44 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @wpabuf_len(i32* %49)
  %51 = call i32 @wpabuf_put_be16(%struct.wpabuf* %42, i32 %50)
  %52 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %53 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %54 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @wpabuf_put_buf(%struct.wpabuf* %52, i32* %59)
  br label %61

61:                                               ; preds = %20, %19
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %6

64:                                               ; preds = %6
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
