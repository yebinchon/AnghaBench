; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_process_wsc_ack.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_process_wsc_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i64*, i32*, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"WPS: Received WSC_ACK\00", align 1
@WPS_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"WPS: No Message Type attribute\00", align 1
@WPS_WSC_ACK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"WPS: Invalid Message Type %d\00", align 1
@WPS_NONCE_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"WPS: Mismatch in registrar nonce\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"WPS: Mismatch in enrollee nonce\00", align 1
@RECV_ACK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [60 x i8] c"WPS: External Registrar registration completed successfully\00", align 1
@WPS_FINISHED = common dso_local global i64 0, align 8
@WPS_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*)* @wps_process_wsc_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_wsc_ack(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wps_parse_attr*, align 8
  %6 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %7 = load i32, i32* @MSG_DEBUG, align 4
  %8 = call i32 (i32, i8*, ...) @wpa_printf(i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = call i64 @os_zalloc(i32 24)
  %10 = inttoptr i64 %9 to %struct.wps_parse_attr*
  store %struct.wps_parse_attr* %10, %struct.wps_parse_attr** %5, align 8
  %11 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %12 = icmp eq %struct.wps_parse_attr* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %14, i32* %6, align 4
  br label %110

15:                                               ; preds = %2
  %16 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %17 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %18 = call i64 @wps_parse_msg(%struct.wpabuf* %16, %struct.wps_parse_attr* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %21, i32* %6, align 4
  br label %110

22:                                               ; preds = %15
  %23 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %24 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %30, i32* %6, align 4
  br label %110

31:                                               ; preds = %22
  %32 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %33 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WPS_WSC_ACK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %41 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %45, i32* %6, align 4
  br label %110

46:                                               ; preds = %31
  %47 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %48 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %53 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %56 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @WPS_NONCE_LEN, align 4
  %59 = call i64 @os_memcmp(i32 %54, i32* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %51, %46
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %64, i32* %6, align 4
  br label %110

65:                                               ; preds = %51
  %66 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %67 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %65
  %71 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %72 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %75 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @WPS_NONCE_LEN, align 4
  %78 = call i64 @os_memcmp(i32 %73, i32* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %70, %65
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %83, i32* %6, align 4
  br label %110

84:                                               ; preds = %70
  %85 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %86 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @RECV_ACK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %84
  %91 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %92 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load i32, i32* @MSG_DEBUG, align 4
  %99 = call i32 (i32, i8*, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  %100 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %101 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = call i32 @wps_success_event(%struct.TYPE_2__* %102)
  %104 = load i64, i64* @WPS_FINISHED, align 8
  %105 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %106 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load i32, i32* @WPS_DONE, align 4
  store i32 %107, i32* %6, align 4
  br label %110

108:                                              ; preds = %90, %84
  %109 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %108, %97, %80, %61, %38, %27, %20, %13
  %111 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %112 = icmp ne %struct.wps_parse_attr* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %115 = call i32 @os_free(%struct.wps_parse_attr* %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i32 @wps_success_event(%struct.TYPE_2__*) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
