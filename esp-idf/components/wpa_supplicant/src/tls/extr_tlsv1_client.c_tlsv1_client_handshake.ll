; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client.c_tlsv1_client_handshake.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client.c_tlsv1_client_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i64, %struct.wpabuf*, i32, i64, i32 }
%struct.wpabuf = type { i32 }

@CLIENT_HELLO = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"TLSv1: Failed to allocate memory for pending record\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"TLSv1: Processing received record failed\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"TLSv1: Need more data\00", align 1
@FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tlsv1_client_handshake(%struct.tlsv1_client* %0, i32* %1, i64 %2, i64* %3, i32** %4, i64* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tlsv1_client*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.wpabuf*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i32** %4, i32*** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32*, i32** %15, align 8
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %30, %7
  %33 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %34 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CLIENT_HELLO, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32* null, i32** %8, align 8
  br label %269

42:                                               ; preds = %38
  %43 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %44 = load i64*, i64** %12, align 8
  %45 = call i32* @tls_send_client_hello(%struct.tlsv1_client* %43, i64* %44)
  store i32* %45, i32** %8, align 8
  br label %269

46:                                               ; preds = %32
  %47 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %48 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %47, i32 0, i32 1
  %49 = load %struct.wpabuf*, %struct.wpabuf** %48, align 8
  %50 = icmp ne %struct.wpabuf* %49, null
  br i1 %50, label %51, label %79

51:                                               ; preds = %46
  %52 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %53 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %52, i32 0, i32 1
  %54 = load i64, i64* %11, align 8
  %55 = call i64 @wpabuf_resize(%struct.wpabuf** %53, i64 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = call i32 @wpa_printf(i32 %58, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %61 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %62 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %63 = call i32 @tls_alert(%struct.tlsv1_client* %60, i32 %61, i32 %62)
  br label %217

64:                                               ; preds = %51
  %65 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %66 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %65, i32 0, i32 1
  %67 = load %struct.wpabuf*, %struct.wpabuf** %66, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @wpabuf_put_data(%struct.wpabuf* %67, i32* %68, i64 %69)
  %71 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %72 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %71, i32 0, i32 1
  %73 = load %struct.wpabuf*, %struct.wpabuf** %72, align 8
  %74 = call i32* @wpabuf_head(%struct.wpabuf* %73)
  store i32* %74, i32** %10, align 8
  %75 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %76 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %75, i32 0, i32 1
  %77 = load %struct.wpabuf*, %struct.wpabuf** %76, align 8
  %78 = call i64 @wpabuf_len(%struct.wpabuf* %77)
  store i64 %78, i64* %11, align 8
  br label %79

79:                                               ; preds = %64, %46
  %80 = load i32*, i32** %10, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* %11, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82, %79
  store i32* null, i32** %8, align 8
  br label %269

86:                                               ; preds = %82
  %87 = load i32*, i32** %10, align 8
  store i32* %87, i32** %16, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %17, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i32* @os_malloc(i64 %91)
  store i32* %92, i32** %19, align 8
  %93 = load i32*, i32** %19, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  store i32* null, i32** %8, align 8
  br label %269

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %196, %96
  %98 = load i32*, i32** %16, align 8
  %99 = load i32*, i32** %17, align 8
  %100 = icmp ult i32* %98, %99
  br i1 %100, label %101, label %201

101:                                              ; preds = %97
  %102 = load i64, i64* %11, align 8
  store i64 %102, i64* %24, align 8
  %103 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %104 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %103, i32 0, i32 4
  %105 = load i32*, i32** %16, align 8
  %106 = load i32*, i32** %17, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = ptrtoint i32* %106 to i64
  %109 = ptrtoint i32* %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 4
  %112 = trunc i64 %111 to i32
  %113 = load i32*, i32** %19, align 8
  %114 = call i32 @tlsv1_record_receive(i32* %104, i32* %105, i32 %112, i32* %113, i64* %24, i32* %22)
  store i32 %114, i32* %26, align 4
  %115 = load i32, i32* %26, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %101
  %118 = load i32, i32* @MSG_DEBUG, align 4
  %119 = call i32 @wpa_printf(i32 %118, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %120 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %121 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %122 = load i32, i32* %22, align 4
  %123 = call i32 @tls_alert(%struct.tlsv1_client* %120, i32 %121, i32 %122)
  br label %217

124:                                              ; preds = %101
  %125 = load i32, i32* %26, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %165

127:                                              ; preds = %124
  %128 = load i32, i32* @MSG_DEBUG, align 4
  %129 = call i32 @wpa_printf(i32 %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i32*, i32** %16, align 8
  %131 = load i32*, i32** %17, align 8
  %132 = load i32*, i32** %16, align 8
  %133 = ptrtoint i32* %131 to i64
  %134 = ptrtoint i32* %132 to i64
  %135 = sub i64 %133, %134
  %136 = sdiv exact i64 %135, 4
  %137 = trunc i64 %136 to i32
  %138 = call %struct.wpabuf* @wpabuf_alloc_copy(i32* %130, i32 %137)
  store %struct.wpabuf* %138, %struct.wpabuf** %27, align 8
  %139 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %140 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %139, i32 0, i32 1
  %141 = load %struct.wpabuf*, %struct.wpabuf** %140, align 8
  %142 = call i32 @wpabuf_free(%struct.wpabuf* %141)
  %143 = load %struct.wpabuf*, %struct.wpabuf** %27, align 8
  %144 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %145 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %144, i32 0, i32 1
  store %struct.wpabuf* %143, %struct.wpabuf** %145, align 8
  %146 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %147 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %146, i32 0, i32 1
  %148 = load %struct.wpabuf*, %struct.wpabuf** %147, align 8
  %149 = icmp eq %struct.wpabuf* %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %127
  %151 = load i32, i32* @MSG_DEBUG, align 4
  %152 = call i32 @wpa_printf(i32 %151, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %153 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %154 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %155 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %156 = call i32 @tls_alert(%struct.tlsv1_client* %153, i32 %154, i32 %155)
  br label %217

157:                                              ; preds = %127
  %158 = load i32*, i32** %19, align 8
  %159 = call i32 @os_free(i32* %158)
  %160 = load i32*, i32** %15, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load i32*, i32** %15, align 8
  store i32 1, i32* %163, align 4
  br label %164

164:                                              ; preds = %162, %157
  store i32* null, i32** %8, align 8
  br label %269

165:                                              ; preds = %124
  %166 = load i32*, i32** %16, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %23, align 4
  %169 = load i32*, i32** %19, align 8
  store i32* %169, i32** %20, align 8
  %170 = load i32*, i32** %19, align 8
  %171 = load i64, i64* %24, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32* %172, i32** %21, align 8
  br label %173

173:                                              ; preds = %192, %165
  %174 = load i32*, i32** %20, align 8
  %175 = load i32*, i32** %21, align 8
  %176 = icmp ult i32* %174, %175
  br i1 %176, label %177, label %196

177:                                              ; preds = %173
  %178 = load i32*, i32** %21, align 8
  %179 = load i32*, i32** %20, align 8
  %180 = ptrtoint i32* %178 to i64
  %181 = ptrtoint i32* %179 to i64
  %182 = sub i64 %180, %181
  %183 = sdiv exact i64 %182, 4
  store i64 %183, i64* %24, align 8
  %184 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %185 = load i32, i32* %23, align 4
  %186 = load i32*, i32** %20, align 8
  %187 = load i32**, i32*** %13, align 8
  %188 = load i64*, i64** %14, align 8
  %189 = call i64 @tlsv1_client_process_handshake(%struct.tlsv1_client* %184, i32 %185, i32* %186, i64* %24, i32** %187, i64* %188)
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %177
  br label %217

192:                                              ; preds = %177
  %193 = load i64, i64* %24, align 8
  %194 = load i32*, i32** %20, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 %193
  store i32* %195, i32** %20, align 8
  br label %173

196:                                              ; preds = %173
  %197 = load i32, i32* %26, align 4
  %198 = load i32*, i32** %16, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32* %200, i32** %16, align 8
  br label %97

201:                                              ; preds = %97
  %202 = load i32*, i32** %19, align 8
  %203 = call i32 @os_free(i32* %202)
  store i32* null, i32** %19, align 8
  %204 = load i32**, i32*** %13, align 8
  %205 = icmp eq i32** %204, null
  br i1 %205, label %210, label %206

206:                                              ; preds = %201
  %207 = load i32**, i32*** %13, align 8
  %208 = load i32*, i32** %207, align 8
  %209 = icmp eq i32* %208, null
  br label %210

210:                                              ; preds = %206, %201
  %211 = phi i1 [ true, %201 ], [ %209, %206 ]
  %212 = zext i1 %211 to i32
  store i32 %212, i32* %25, align 4
  %213 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %214 = load i64*, i64** %12, align 8
  %215 = load i32, i32* %25, align 4
  %216 = call i32* @tlsv1_client_handshake_write(%struct.tlsv1_client* %213, i64* %214, i32 %215)
  store i32* %216, i32** %18, align 8
  br label %217

217:                                              ; preds = %210, %191, %150, %117, %57
  %218 = load i32*, i32** %19, align 8
  %219 = call i32 @os_free(i32* %218)
  %220 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %221 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %245

224:                                              ; preds = %217
  %225 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %226 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %225, i32 0, i32 1
  %227 = load %struct.wpabuf*, %struct.wpabuf** %226, align 8
  %228 = call i32 @wpabuf_free(%struct.wpabuf* %227)
  %229 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %230 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %229, i32 0, i32 1
  store %struct.wpabuf* null, %struct.wpabuf** %230, align 8
  %231 = load i64, i64* @FAILED, align 8
  %232 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %233 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %232, i32 0, i32 0
  store i64 %231, i64* %233, align 8
  %234 = load i32*, i32** %18, align 8
  %235 = call i32 @os_free(i32* %234)
  %236 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %237 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %238 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %241 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load i64*, i64** %12, align 8
  %244 = call i32* @tlsv1_client_send_alert(%struct.tlsv1_client* %236, i64 %239, i32 %242, i64* %243)
  store i32* %244, i32** %18, align 8
  br label %253

245:                                              ; preds = %217
  %246 = load i32*, i32** %18, align 8
  %247 = icmp eq i32* %246, null
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = call i64 @os_zalloc(i32 1)
  %250 = inttoptr i64 %249 to i32*
  store i32* %250, i32** %18, align 8
  %251 = load i64*, i64** %12, align 8
  store i64 0, i64* %251, align 8
  br label %252

252:                                              ; preds = %248, %245
  br label %253

253:                                              ; preds = %252, %224
  %254 = load i32*, i32** %15, align 8
  %255 = icmp eq i32* %254, null
  br i1 %255, label %260, label %256

256:                                              ; preds = %253
  %257 = load i32*, i32** %15, align 8
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %267, label %260

260:                                              ; preds = %256, %253
  %261 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %262 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %261, i32 0, i32 1
  %263 = load %struct.wpabuf*, %struct.wpabuf** %262, align 8
  %264 = call i32 @wpabuf_free(%struct.wpabuf* %263)
  %265 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %266 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %265, i32 0, i32 1
  store %struct.wpabuf* null, %struct.wpabuf** %266, align 8
  br label %267

267:                                              ; preds = %260, %256
  %268 = load i32*, i32** %18, align 8
  store i32* %268, i32** %8, align 8
  br label %269

269:                                              ; preds = %267, %164, %95, %85, %42, %41
  %270 = load i32*, i32** %8, align 8
  ret i32* %270
}

declare dso_local i32* @tls_send_client_hello(%struct.tlsv1_client*, i64*) #1

declare dso_local i64 @wpabuf_resize(%struct.wpabuf**, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @tlsv1_record_receive(i32*, i32*, i32, i32*, i64*, i32*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc_copy(i32*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i64 @tlsv1_client_process_handshake(%struct.tlsv1_client*, i32, i32*, i64*, i32**, i64*) #1

declare dso_local i32* @tlsv1_client_handshake_write(%struct.tlsv1_client*, i64*, i32) #1

declare dso_local i32* @tlsv1_client_send_alert(%struct.tlsv1_client*, i64, i32, i64*) #1

declare dso_local i64 @os_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
