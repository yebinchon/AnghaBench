; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_registrar_process_msg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_registrar_process_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64, i32* }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"WPS: Processing received message (len=%lu op_code=%d)\00", align 1
@WPS_FAILURE = common dso_local global i32 0, align 4
@SEND_WSC_NACK = common dso_local global i32 0, align 4
@WPS_WSC_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"WPS: Unsupported op_code %d\00", align 1
@UPNP_WPS_WLANEVENT_TYPE_EAP = common dso_local global i32 0, align 4
@WPS_CONTINUE = common dso_local global i32 0, align 4
@WPS_M3 = common dso_local global i64 0, align 8
@WPS_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_registrar_process_msg(%struct.wps_data* %0, i32 %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %11 = call i64 @wpabuf_len(%struct.wpabuf* %10)
  %12 = load i32, i32* %6, align 4
  %13 = call i32 (i32, i8*, ...) @wpa_printf(i32 %9, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %12)
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %69 [
    i32 129, label %15
    i32 131, label %19
    i32 128, label %29
    i32 130, label %39
  ]

15:                                               ; preds = %3
  %16 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %18 = call i32 @wps_process_wsc_msg(%struct.wps_data* %16, %struct.wpabuf* %17)
  store i32 %18, i32* %4, align 4
  br label %74

19:                                               ; preds = %3
  %20 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %21 = call i32 @wps_validate_wsc_ack(%struct.wpabuf* %20)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %24, i32* %4, align 4
  br label %74

25:                                               ; preds = %19
  %26 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %27 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %28 = call i32 @wps_process_wsc_ack(%struct.wps_data* %26, %struct.wpabuf* %27)
  store i32 %28, i32* %4, align 4
  br label %74

29:                                               ; preds = %3
  %30 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %31 = call i32 @wps_validate_wsc_nack(%struct.wpabuf* %30)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %34, i32* %4, align 4
  br label %74

35:                                               ; preds = %29
  %36 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %37 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %38 = call i32 @wps_process_wsc_nack(%struct.wps_data* %36, %struct.wpabuf* %37)
  store i32 %38, i32* %4, align 4
  br label %74

39:                                               ; preds = %3
  %40 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %41 = call i32 @wps_validate_wsc_done(%struct.wpabuf* %40)
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %44, i32* %4, align 4
  br label %74

45:                                               ; preds = %39
  %46 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %47 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %48 = call i32 @wps_process_wsc_done(%struct.wps_data* %46, %struct.wpabuf* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @WPS_FAILURE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %45
  %53 = load i32, i32* @SEND_WSC_NACK, align 4
  %54 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %55 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %57 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* @WPS_WSC_DONE, align 4
  %60 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %61 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %64 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wps_fail_event(%struct.TYPE_3__* %58, i32 %59, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %52, %45
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %74

69:                                               ; preds = %3
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %67, %43, %35, %33, %25, %23, %15
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_wsc_msg(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i32 @wps_validate_wsc_ack(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_wsc_ack(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i32 @wps_validate_wsc_nack(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_wsc_nack(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i32 @wps_validate_wsc_done(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_wsc_done(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i32 @wps_fail_event(%struct.TYPE_3__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
