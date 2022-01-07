; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_process_wsc_msg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_process_wsc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32*, i32, i32* }

@WPS_CONTINUE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"WPS: Received WSC_MSG\00", align 1
@WPS_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"WPS: No Message Type attribute\00", align 1
@SEND_WSC_NACK = common dso_local global i32 0, align 4
@WPS_NONCE_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"WPS: Mismatch in registrar nonce\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"WPS: Unsupported Message Type %d\00", align 1
@UPNP_WPS_WLANEVENT_TYPE_EAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*)* @wps_process_wsc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_wsc_msg(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wps_parse_attr, align 8
  %7 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %8 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 (i32, i8*, ...) @wpa_printf(i32 %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %12 = call i64 @wps_parse_msg(%struct.wpabuf* %11, %struct.wps_parse_attr* %6)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %15, i32* %3, align 4
  br label %177

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @SEND_WSC_NACK, align 4
  %24 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %25 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %26, i32* %3, align 4
  br label %177

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 131
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %38 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @WPS_NONCE_LEN, align 4
  %43 = call i64 @os_memcmp(i32 %39, i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36, %32
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %48, i32* %3, align 4
  br label %177

49:                                               ; preds = %36, %27
  %50 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %155 [
    i32 131, label %53
    i32 130, label %62
    i32 129, label %93
    i32 128, label %124
  ]

53:                                               ; preds = %49
  %54 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %55 = call i32 @wps_validate_m1(%struct.wpabuf* %54)
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %58, i32* %3, align 4
  br label %177

59:                                               ; preds = %53
  %60 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %61 = call i32 @wps_process_m1(%struct.wps_data* %60, %struct.wps_parse_attr* %6)
  store i32 %61, i32* %7, align 4
  br label %162

62:                                               ; preds = %49
  %63 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %64 = call i32 @wps_validate_m3(%struct.wpabuf* %63)
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %67, i32* %3, align 4
  br label %177

68:                                               ; preds = %62
  %69 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %70 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %71 = call i32 @wps_process_m3(%struct.wps_data* %69, %struct.wpabuf* %70, %struct.wps_parse_attr* %6)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @WPS_FAILURE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %77 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SEND_WSC_NACK, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %75, %68
  %82 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %83 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %86 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %89 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @wps_fail_event(%struct.TYPE_2__* %84, i32 130, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %81, %75
  br label %162

93:                                               ; preds = %49
  %94 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %95 = call i32 @wps_validate_m5(%struct.wpabuf* %94)
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %98, i32* %3, align 4
  br label %177

99:                                               ; preds = %93
  %100 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %101 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %102 = call i32 @wps_process_m5(%struct.wps_data* %100, %struct.wpabuf* %101, %struct.wps_parse_attr* %6)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @WPS_FAILURE, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %99
  %107 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %108 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @SEND_WSC_NACK, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %106, %99
  %113 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %114 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %113, i32 0, i32 3
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %117 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %120 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @wps_fail_event(%struct.TYPE_2__* %115, i32 129, i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %112, %106
  br label %162

124:                                              ; preds = %49
  %125 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %126 = call i32 @wps_validate_m7(%struct.wpabuf* %125)
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %129, i32* %3, align 4
  br label %177

130:                                              ; preds = %124
  %131 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %132 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %133 = call i32 @wps_process_m7(%struct.wps_data* %131, %struct.wpabuf* %132, %struct.wps_parse_attr* %6)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @WPS_FAILURE, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %143, label %137

137:                                              ; preds = %130
  %138 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %139 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @SEND_WSC_NACK, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %137, %130
  %144 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %145 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %144, i32 0, i32 3
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %148 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %151 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @wps_fail_event(%struct.TYPE_2__* %146, i32 128, i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %143, %137
  br label %162

155:                                              ; preds = %49
  %156 = load i32, i32* @MSG_DEBUG, align 4
  %157 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32, i8*, ...) @wpa_printf(i32 %156, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %161, i32* %3, align 4
  br label %177

162:                                              ; preds = %154, %123, %92, %59
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @WPS_CONTINUE, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %168 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @wpabuf_free(i32 %169)
  %171 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %172 = call i32 @wpabuf_dup(%struct.wpabuf* %171)
  %173 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %174 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %166, %162
  %176 = load i32, i32* %7, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %155, %128, %97, %66, %57, %45, %20, %14
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i32 @wps_validate_m1(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_m1(%struct.wps_data*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wps_validate_m3(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_m3(%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wps_fail_event(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @wps_validate_m5(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_m5(%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wps_validate_m7(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_m7(%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @wpabuf_dup(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
