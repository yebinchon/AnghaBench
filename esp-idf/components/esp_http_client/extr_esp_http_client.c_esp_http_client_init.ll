; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_client/extr_esp_http_client.c_esp_http_client_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_client/extr_esp_http_client.c_esp_http_client_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_26__, %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_23__, i32, %struct.TYPE_22__*, i32, %struct.TYPE_20__*, i32, i8* }
%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_25__ = type { %struct.TYPE_27__* }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, i8* }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, i8* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { i32, i32*, i32*, i32*, i64, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Error allocate memory\00", align 1
@DEFAULT_HTTP_PORT = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Error initialize transport\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Error set configurations\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Allocation failed\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"User-Agent\00", align 1
@DEFAULT_HTTP_USER_AGENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Error while setting default configurations\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"config should have either URL or host & path\00", align 1
@http_on_message_begin = common dso_local global i32 0, align 4
@http_on_url = common dso_local global i32 0, align 4
@http_on_status = common dso_local global i32 0, align 4
@http_on_header_field = common dso_local global i32 0, align 4
@http_on_header_value = common dso_local global i32 0, align 4
@http_on_headers_complete = common dso_local global i32 0, align 4
@http_on_body = common dso_local global i32 0, align 4
@http_on_message_complete = common dso_local global i32 0, align 4
@http_on_chunk_complete = common dso_local global i32 0, align 4
@HTTP_STATE_INIT = common dso_local global i32 0, align 4
@DEFAULT_HTTPS_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_27__* @esp_http_client_init(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %7 = call i8* @calloc(i32 1, i32 4)
  %8 = bitcast i8* %7 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %8, %struct.TYPE_27__** %4, align 8
  %9 = icmp ne %struct.TYPE_27__* %8, null
  br i1 %9, label %10, label %69

10:                                               ; preds = %1
  %11 = call i8* @calloc(i32 1, i32 4)
  %12 = bitcast i8* %11 to %struct.TYPE_25__*
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 2
  store %struct.TYPE_25__* %12, %struct.TYPE_25__** %14, align 8
  %15 = icmp ne %struct.TYPE_25__* %12, null
  br i1 %15, label %16, label %69

16:                                               ; preds = %10
  %17 = call i8* @calloc(i32 1, i32 4)
  %18 = bitcast i8* %17 to %struct.TYPE_24__*
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 3
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %20, align 8
  %21 = icmp ne %struct.TYPE_24__* %18, null
  br i1 %21, label %22, label %69

22:                                               ; preds = %16
  %23 = call i8* @calloc(i32 1, i32 4)
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 10
  store i8* %23, i8** %25, align 8
  %26 = icmp ne i8* %23, null
  br i1 %26, label %27, label %69

27:                                               ; preds = %22
  %28 = call i8* @calloc(i32 1, i32 4)
  %29 = bitcast i8* %28 to %struct.TYPE_20__*
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 8
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %31, align 8
  %32 = icmp ne %struct.TYPE_20__* %29, null
  br i1 %32, label %33, label %69

33:                                               ; preds = %27
  %34 = call i8* (...) @http_header_init()
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  store i8* %34, i8** %38, align 8
  %39 = icmp ne i8* %34, null
  br i1 %39, label %40, label %69

40:                                               ; preds = %33
  %41 = call i8* @calloc(i32 1, i32 4)
  %42 = bitcast i8* %41 to %struct.TYPE_19__*
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  store %struct.TYPE_19__* %42, %struct.TYPE_19__** %46, align 8
  %47 = icmp ne %struct.TYPE_19__* %42, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %40
  %49 = call i8* @calloc(i32 1, i32 4)
  %50 = bitcast i8* %49 to %struct.TYPE_22__*
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 6
  store %struct.TYPE_22__* %50, %struct.TYPE_22__** %52, align 8
  %53 = icmp ne %struct.TYPE_22__* %50, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = call i8* (...) @http_header_init()
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 1
  store i8* %55, i8** %59, align 8
  %60 = icmp ne i8* %55, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = call i8* @calloc(i32 1, i32 4)
  %63 = bitcast i8* %62 to %struct.TYPE_21__*
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 6
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  store %struct.TYPE_21__* %63, %struct.TYPE_21__** %67, align 8
  %68 = icmp ne %struct.TYPE_21__* %63, null
  br label %69

69:                                               ; preds = %61, %54, %48, %40, %33, %27, %22, %16, %10, %1
  %70 = phi i1 [ false, %54 ], [ false, %48 ], [ false, %40 ], [ false, %33 ], [ false, %27 ], [ false, %22 ], [ false, %16 ], [ false, %10 ], [ false, %1 ], [ %68, %61 ]
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @TAG, align 4
  %76 = call i32 @ESP_LOGE(i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %282

77:                                               ; preds = %69
  %78 = call i32 (...) @esp_transport_list_init()
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 8
  %81 = icmp ne i32 %78, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %77
  %83 = call i32 (...) @esp_transport_tcp_init()
  store i32 %83, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @DEFAULT_HTTP_PORT, align 4
  %88 = call i64 @esp_transport_set_default_port(i32 %86, i32 %87)
  %89 = load i64, i64* @ESP_OK, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i64 @esp_transport_list_add(i32 %94, i32 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i64, i64* @ESP_OK, align 8
  %98 = icmp eq i64 %96, %97
  br label %99

99:                                               ; preds = %91, %85, %82, %77
  %100 = phi i1 [ false, %85 ], [ false, %82 ], [ false, %77 ], [ %98, %91 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @TAG, align 4
  %106 = call i32 @ESP_LOGE(i32 %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %282

107:                                              ; preds = %99
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %110 = call i64 @_set_config(%struct.TYPE_27__* %108, %struct.TYPE_18__* %109)
  %111 = load i64, i64* @ESP_OK, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i32, i32* @TAG, align 4
  %115 = call i32 @ESP_LOGE(i32 %114, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %282

116:                                              ; preds = %107
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @malloc(i32 %119)
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  store i8* %120, i8** %126, align 8
  %127 = icmp ne i8* %120, null
  br i1 %127, label %128, label %140

128:                                              ; preds = %116
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @malloc(i32 %131)
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 6
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  store i8* %132, i8** %138, align 8
  %139 = icmp ne i8* %132, null
  br label %140

140:                                              ; preds = %128, %116
  %141 = phi i1 [ false, %116 ], [ %139, %128 ]
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* @TAG, align 4
  %147 = call i32 @ESP_LOGE(i32 %146, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %282

148:                                              ; preds = %140
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %182

153:                                              ; preds = %148
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %182

158:                                              ; preds = %153
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %160 = load i32, i32* @DEFAULT_HTTP_USER_AGENT, align 4
  %161 = call i64 @esp_http_client_set_header(%struct.TYPE_27__* %159, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %160)
  %162 = load i64, i64* @ESP_OK, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %158
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @esp_http_client_set_header(%struct.TYPE_27__* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %169)
  %171 = load i64, i64* @ESP_OK, align 8
  %172 = icmp eq i64 %170, %171
  br label %173

173:                                              ; preds = %164, %158
  %174 = phi i1 [ false, %158 ], [ %172, %164 ]
  %175 = zext i1 %174 to i32
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %173
  %179 = load i32, i32* @TAG, align 4
  %180 = call i32 @ESP_LOGE(i32 %179, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %282

181:                                              ; preds = %173
  br label %223

182:                                              ; preds = %153, %148
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %219

187:                                              ; preds = %182
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = call i64 @esp_http_client_set_url(%struct.TYPE_27__* %188, i32* %191)
  %193 = load i64, i64* @ESP_OK, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %210

195:                                              ; preds = %187
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %197 = load i32, i32* @DEFAULT_HTTP_USER_AGENT, align 4
  %198 = call i64 @esp_http_client_set_header(%struct.TYPE_27__* %196, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %197)
  %199 = load i64, i64* @ESP_OK, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %195
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i64 @esp_http_client_set_header(%struct.TYPE_27__* %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %206)
  %208 = load i64, i64* @ESP_OK, align 8
  %209 = icmp eq i64 %207, %208
  br label %210

210:                                              ; preds = %201, %195, %187
  %211 = phi i1 [ false, %195 ], [ false, %187 ], [ %209, %201 ]
  %212 = zext i1 %211 to i32
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %210
  %216 = load i32, i32* @TAG, align 4
  %217 = call i32 @ESP_LOGE(i32 %216, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %282

218:                                              ; preds = %210
  br label %222

219:                                              ; preds = %182
  %220 = load i32, i32* @TAG, align 4
  %221 = call i32 @ESP_LOGE(i32 %220, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %282

222:                                              ; preds = %218
  br label %223

223:                                              ; preds = %222, %181
  %224 = load i32, i32* @http_on_message_begin, align 4
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 3
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 8
  store i32 %224, i32* %228, align 4
  %229 = load i32, i32* @http_on_url, align 4
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %230, i32 0, i32 3
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 7
  store i32 %229, i32* %233, align 4
  %234 = load i32, i32* @http_on_status, align 4
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 3
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 6
  store i32 %234, i32* %238, align 4
  %239 = load i32, i32* @http_on_header_field, align 4
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 5
  store i32 %239, i32* %243, align 4
  %244 = load i32, i32* @http_on_header_value, align 4
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %245, i32 0, i32 3
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 4
  store i32 %244, i32* %248, align 4
  %249 = load i32, i32* @http_on_headers_complete, align 4
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 3
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 3
  store i32 %249, i32* %253, align 4
  %254 = load i32, i32* @http_on_body, align 4
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %255, i32 0, i32 3
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 2
  store i32 %254, i32* %258, align 4
  %259 = load i32, i32* @http_on_message_complete, align 4
  %260 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %260, i32 0, i32 3
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 1
  store i32 %259, i32* %263, align 4
  %264 = load i32, i32* @http_on_chunk_complete, align 4
  %265 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 3
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 0
  store i32 %264, i32* %268, align 4
  %269 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 2
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 0
  store %struct.TYPE_27__* %269, %struct.TYPE_27__** %273, align 8
  %274 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %276, i32 0, i32 0
  store %struct.TYPE_27__* %274, %struct.TYPE_27__** %277, align 8
  %278 = load i32, i32* @HTTP_STATE_INIT, align 4
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 0
  store i32 %278, i32* %280, align 8
  %281 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_27__* %281, %struct.TYPE_27__** %2, align 8
  br label %285

282:                                              ; preds = %219, %215, %178, %145, %113, %104, %74
  %283 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %284 = call i32 @esp_http_client_cleanup(%struct.TYPE_27__* %283)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %2, align 8
  br label %285

285:                                              ; preds = %282, %223
  %286 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  ret %struct.TYPE_27__* %286
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i8* @http_header_init(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_transport_list_init(...) #1

declare dso_local i32 @esp_transport_tcp_init(...) #1

declare dso_local i64 @esp_transport_set_default_port(i32, i32) #1

declare dso_local i64 @esp_transport_list_add(i32, i32, i8*) #1

declare dso_local i64 @_set_config(%struct.TYPE_27__*, %struct.TYPE_18__*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @esp_http_client_set_header(%struct.TYPE_27__*, i8*, i32) #1

declare dso_local i64 @esp_http_client_set_url(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @esp_http_client_cleanup(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
