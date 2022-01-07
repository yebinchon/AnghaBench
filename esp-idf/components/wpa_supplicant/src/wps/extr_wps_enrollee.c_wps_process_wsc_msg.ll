; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_process_wsc_msg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_process_wsc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32, i32, i32, i32, i32, i32 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32*, i32* }

@WPS_CONTINUE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"WPS: Received WSC_MSG\00", align 1
@WPS_FAILURE = common dso_local global i32 0, align 4
@WPS_NONCE_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"WPS: Mismatch in enrollee nonce\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"WPS: No Message Type attribute\00", align 1
@SEND_WSC_NACK = common dso_local global i32 0, align 4
@RECV_M2 = common dso_local global i32 0, align 4
@RECV_M4 = common dso_local global i32 0, align 4
@RECV_M6 = common dso_local global i32 0, align 4
@RECV_M8 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"WPS: Unsupported Message Type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*)* @wps_process_wsc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_wsc_msg(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wps_parse_attr*, align 8
  %6 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %7 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 (i32, i8*, ...) @wpa_printf(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = call i64 @os_zalloc(i32 16)
  %11 = inttoptr i64 %10 to %struct.wps_parse_attr*
  store %struct.wps_parse_attr* %11, %struct.wps_parse_attr** %5, align 8
  %12 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %13 = icmp eq %struct.wps_parse_attr* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %15, i32* %6, align 4
  br label %212

16:                                               ; preds = %2
  %17 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %18 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %19 = call i64 @wps_parse_msg(%struct.wpabuf* %17, %struct.wps_parse_attr* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %22, i32* %6, align 4
  br label %212

23:                                               ; preds = %16
  %24 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %25 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %30 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %33 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @WPS_NONCE_LEN, align 4
  %36 = call i64 @os_memcmp(i32 %31, i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28, %23
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %41, i32* %6, align 4
  br label %212

42:                                               ; preds = %28
  %43 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %44 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @SEND_WSC_NACK, align 4
  %51 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %52 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %53, i32* %6, align 4
  br label %212

54:                                               ; preds = %42
  %55 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %56 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %184 [
    i32 132, label %59
    i32 131, label %72
    i32 130, label %82
    i32 129, label %116
    i32 128, label %150
  ]

59:                                               ; preds = %54
  %60 = load i32, i32* @RECV_M2, align 4
  %61 = call i32 @WPS_IGNORE_STATE(i32 %60)
  %62 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %63 = call i32 @wps_validate_m2(%struct.wpabuf* %62)
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %66, i32* %6, align 4
  br label %212

67:                                               ; preds = %59
  %68 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %69 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %70 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %71 = call i32 @wps_process_m2(%struct.wps_data* %68, %struct.wpabuf* %69, %struct.wps_parse_attr* %70)
  store i32 %71, i32* %6, align 4
  br label %192

72:                                               ; preds = %54
  %73 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %74 = call i32 @wps_validate_m2d(%struct.wpabuf* %73)
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %77, i32* %6, align 4
  br label %212

78:                                               ; preds = %72
  %79 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %80 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %81 = call i32 @wps_process_m2d(%struct.wps_data* %79, %struct.wps_parse_attr* %80)
  store i32 %81, i32* %6, align 4
  br label %192

82:                                               ; preds = %54
  %83 = load i32, i32* @RECV_M4, align 4
  %84 = call i32 @WPS_IGNORE_STATE(i32 %83)
  %85 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %86 = call i32 @wps_validate_m4(%struct.wpabuf* %85)
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %89, i32* %6, align 4
  br label %212

90:                                               ; preds = %82
  %91 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %92 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %93 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %94 = call i32 @wps_process_m4(%struct.wps_data* %91, %struct.wpabuf* %92, %struct.wps_parse_attr* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @WPS_FAILURE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %90
  %99 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %100 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SEND_WSC_NACK, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %98, %90
  %105 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %106 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %109 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %112 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @wps_fail_event(i32 %107, i32 130, i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %104, %98
  br label %192

116:                                              ; preds = %54
  %117 = load i32, i32* @RECV_M6, align 4
  %118 = call i32 @WPS_IGNORE_STATE(i32 %117)
  %119 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %120 = call i32 @wps_validate_m6(%struct.wpabuf* %119)
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %123, i32* %6, align 4
  br label %212

124:                                              ; preds = %116
  %125 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %126 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %127 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %128 = call i32 @wps_process_m6(%struct.wps_data* %125, %struct.wpabuf* %126, %struct.wps_parse_attr* %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @WPS_FAILURE, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %124
  %133 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %134 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @SEND_WSC_NACK, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %132, %124
  %139 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %140 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %143 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %146 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @wps_fail_event(i32 %141, i32 129, i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %138, %132
  br label %192

150:                                              ; preds = %54
  %151 = load i32, i32* @RECV_M8, align 4
  %152 = call i32 @WPS_IGNORE_STATE(i32 %151)
  %153 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %154 = call i32 @wps_validate_m8(%struct.wpabuf* %153)
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %157, i32* %6, align 4
  br label %212

158:                                              ; preds = %150
  %159 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %160 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %161 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %162 = call i32 @wps_process_m8(%struct.wps_data* %159, %struct.wpabuf* %160, %struct.wps_parse_attr* %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @WPS_FAILURE, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %172, label %166

166:                                              ; preds = %158
  %167 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %168 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @SEND_WSC_NACK, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %166, %158
  %173 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %174 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %177 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %180 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @wps_fail_event(i32 %175, i32 128, i32 %178, i32 %181)
  br label %183

183:                                              ; preds = %172, %166
  br label %192

184:                                              ; preds = %54
  %185 = load i32, i32* @MSG_DEBUG, align 4
  %186 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %187 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i32, i8*, ...) @wpa_printf(i32 %185, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %191, i32* %6, align 4
  br label %212

192:                                              ; preds = %183, %149, %115, %78, %67
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @WPS_CONTINUE, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %211

196:                                              ; preds = %192
  %197 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %198 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 131
  br i1 %201, label %202, label %211

202:                                              ; preds = %196
  %203 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %204 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @wpabuf_free(i32 %205)
  %207 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %208 = call i32 @wpabuf_dup(%struct.wpabuf* %207)
  %209 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %210 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %202, %196, %192
  br label %212

212:                                              ; preds = %211, %184, %156, %122, %88, %76, %65, %47, %38, %21, %14
  %213 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %214 = icmp ne %struct.wps_parse_attr* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %217 = call i32 @os_free(%struct.wps_parse_attr* %216)
  br label %218

218:                                              ; preds = %215, %212
  %219 = load i32, i32* %6, align 4
  ret i32 %219
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i32 @WPS_IGNORE_STATE(i32) #1

declare dso_local i32 @wps_validate_m2(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_m2(%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wps_validate_m2d(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_m2d(%struct.wps_data*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wps_validate_m4(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_m4(%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wps_fail_event(i32, i32, i32, i32) #1

declare dso_local i32 @wps_validate_m6(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_m6(%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wps_validate_m8(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_m8(%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @wpabuf_dup(%struct.wpabuf*) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
