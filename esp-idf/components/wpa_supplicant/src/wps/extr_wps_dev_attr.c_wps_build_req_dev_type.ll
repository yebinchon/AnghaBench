; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_dev_attr.c_wps_build_req_dev_type.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_dev_attr.c_wps_build_req_dev_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_device_data = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"WPS: * Requested Device Type\00", align 1
@WPS_DEV_TYPE_LEN = common dso_local global i32 0, align 4
@ATTR_REQUESTED_DEV_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_build_req_dev_type(%struct.wps_device_data* %0, %struct.wpabuf* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.wps_device_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.wps_device_data* %0, %struct.wps_device_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %39, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %19 = mul i32 %17, %18
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %23 = call i32 @wpa_hexdump(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %21, i32 %22)
  %24 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %25 = load i32, i32* @ATTR_REQUESTED_DEV_TYPE, align 4
  %26 = call i32 @wpabuf_put_be16(%struct.wpabuf* %24, i32 %25)
  %27 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %28 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %29 = call i32 @wpabuf_put_be16(%struct.wpabuf* %27, i32 %28)
  %30 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %34 = mul i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %38 = call i32 @wpabuf_put_data(%struct.wpabuf* %30, i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %14
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %10

42:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
