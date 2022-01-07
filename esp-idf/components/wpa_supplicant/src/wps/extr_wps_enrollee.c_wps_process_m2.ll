; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_process_m2.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_process_m2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WPS: Received M2\00", align 1
@RECV_M2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"WPS: Unexpected state (%d) for receiving M2\00", align 1
@SEND_WSC_NACK = common dso_local global i8* null, align 8
@WPS_CONTINUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"WPS: AP Setup is locked - refuse registration of a new Registrar\00", align 1
@WPS_CFG_SETUP_LOCKED = common dso_local global i32 0, align 4
@SEND_M3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*)* @wps_process_m2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_m2(%struct.wps_data* %0, %struct.wpabuf* %1, %struct.wps_parse_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wps_parse_attr*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store %struct.wps_parse_attr* %2, %struct.wps_parse_attr** %7, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 (i32, i8*, ...) @wpa_printf(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %11 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RECV_M2, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %18 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i8*, i8** @SEND_WSC_NACK, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %24 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %25, i32* %4, align 4
  br label %125

26:                                               ; preds = %3
  %27 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %28 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %29 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @wps_process_registrar_nonce(%struct.wps_data* %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %26
  %34 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %35 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %36 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @wps_process_enrollee_nonce(%struct.wps_data* %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %42 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %43 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @wps_process_uuid_r(%struct.wps_data* %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40, %33, %26
  %48 = load i8*, i8** @SEND_WSC_NACK, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %51 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %52, i32* %4, align 4
  br label %125

53:                                               ; preds = %40
  %54 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %55 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %54, i32 0, i32 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %53
  %61 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %62 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %69 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %68, i32 0, i32 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 2
  br i1 %73, label %79, label %74

74:                                               ; preds = %67, %60
  %75 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %76 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %74, %67
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @WPS_CFG_SETUP_LOCKED, align 4
  %83 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %84 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i8*, i8** @SEND_WSC_NACK, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %88 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %89, i32* %4, align 4
  br label %125

90:                                               ; preds = %74, %53
  %91 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %92 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %93 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %96 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @wps_process_pubkey(%struct.wps_data* %91, i32 %94, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %90
  %101 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %102 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %103 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %106 = call i64 @wps_process_authenticator(%struct.wps_data* %101, i32 %104, %struct.wpabuf* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %100
  %109 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %110 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %109, i32 0, i32 1
  %111 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %112 = call i64 @wps_process_device_attrs(i32* %110, %struct.wps_parse_attr* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %108, %100, %90
  %115 = load i8*, i8** @SEND_WSC_NACK, align 8
  %116 = ptrtoint i8* %115 to i64
  %117 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %118 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %119, i32* %4, align 4
  br label %125

120:                                              ; preds = %108
  %121 = load i64, i64* @SEND_M3, align 8
  %122 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %123 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %120, %114, %79, %47, %15
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wps_process_registrar_nonce(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_enrollee_nonce(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_uuid_r(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_pubkey(%struct.wps_data*, i32, i32) #1

declare dso_local i64 @wps_process_authenticator(%struct.wps_data*, i32, %struct.wpabuf*) #1

declare dso_local i64 @wps_process_device_attrs(i32*, %struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
