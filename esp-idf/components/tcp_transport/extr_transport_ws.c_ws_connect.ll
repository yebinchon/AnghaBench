; ModuleID = '/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_ws.c_ws_connect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_ws.c_ws_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error connecting to host %s:%d\00", align 1
@DEFAULT_WS_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [158 x i8] c"GET %s HTTP/1.1\0D\0AConnection: Upgrade\0D\0AHost: %s:%d\0D\0AUpgrade: websocket\0D\0ASec-WebSocket-Version: 13\0D\0ASec-WebSocket-Key: %s\0D\0AUser-Agent: ESP32 Websocket Client\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Error in request generation, %d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Sec-WebSocket-Protocol: %s\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"Error in request generation(snprintf of subprotocol returned %d, desired request len: %d, buffer size: %d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [110 x i8] c"Error in request generation(snprintf of header terminal returned %d, desired request len: %d, buffer size: %d\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Write upgrate request\0D\0A%s\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Error write Upgrade header %s\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Error read response for Upgrade header %s\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Read header chunk %d, current header size: %d\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Sec-WebSocket-Accept:\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Sec-WebSocket-Accept not found\00", align 1
@__const.ws_connect.expected_server_magic = private unnamed_addr constant [37 x i8] c"258EAFA5-E914-47DA-95CA-C5AB0DC85B11\00", align 16
@.str.14 = private unnamed_addr constant [51 x i8] c"server key=%s, send_key=%s, expected_server_key=%s\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Invalid websocket key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @ws_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws_connect(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca [16 x i8], align 16
  %12 = alloca [28 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca [20 x i8], align 16
  %20 = alloca [33 x i8], align 16
  %21 = alloca [37 x i8], align 16
  %22 = alloca [66 x i8], align 16
  %23 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.TYPE_3__* @esp_transport_get_context_data(i32 %24)
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %10, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @esp_transport_connect(i32 %28, i8* %29, i32 %30, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load i32, i32* @TAG, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %37)
  store i32 -1, i32* %5, align 4
  br label %248

39:                                               ; preds = %4
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %41 = call i32 @getrandom(i8* %40, i32 16, i32 0)
  %42 = bitcast [28 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 0, i64 28, i1 false)
  store i64 0, i64* %13, align 8
  %43 = getelementptr inbounds [28 x i8], [28 x i8]* %12, i64 0, i64 0
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %45 = call i32 @mbedtls_base64_encode(i8* %43, i32 28, i64* %13, i8* %44, i32 16)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* @DEFAULT_WS_BUFFER, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = getelementptr inbounds [28 x i8], [28 x i8]* %12, i64 0, i64 0
  %56 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %48, i32 %49, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.1, i64 0, i64 0), i8* %52, i8* %53, i32 %54, i8* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %39
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @DEFAULT_WS_BUFFER, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59, %39
  %64 = load i32, i32* @TAG, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  store i32 -1, i32* %5, align 4
  br label %248

67:                                               ; preds = %59
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %102

72:                                               ; preds = %67
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i32, i32* @DEFAULT_WS_BUFFER, align 4
  %80 = load i32, i32* %14, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %78, i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %72
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @DEFAULT_WS_BUFFER, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91, %72
  %96 = load i32, i32* @TAG, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @DEFAULT_WS_BUFFER, align 4
  %100 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %96, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 %97, i32 %98, i32 %99)
  store i32 -1, i32* %5, align 4
  br label %248

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %67
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i32, i32* @DEFAULT_WS_BUFFER, align 4
  %110 = load i32, i32* %14, align 4
  %111 = sub nsw i32 %109, %110
  %112 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %108, i32 %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp sle i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %102
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* @DEFAULT_WS_BUFFER, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %118, %102
  %123 = load i32, i32* @TAG, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @DEFAULT_WS_BUFFER, align 4
  %127 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %123, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.6, i64 0, i64 0), i32 %124, i32 %125, i32 %126)
  store i32 -1, i32* %5, align 4
  br label %248

128:                                              ; preds = %118
  %129 = load i32, i32* @TAG, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %129, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %132)
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i64 @esp_transport_write(i32 %136, i8* %139, i32 %140, i32 %141)
  %143 = icmp sle i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %128
  %145 = load i32, i32* @TAG, align 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %145, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %148)
  store i32 -1, i32* %5, align 4
  br label %248

150:                                              ; preds = %128
  store i32 0, i32* %17, align 4
  br label %151

151:                                              ; preds = %197, %150
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* %17, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i32, i32* @DEFAULT_WS_BUFFER, align 4
  %162 = load i32, i32* %17, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @esp_transport_read(i32 %154, i8* %160, i32 %163, i32 %164)
  store i32 %165, i32* %14, align 4
  %166 = icmp sle i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %151
  %168 = load i32, i32* @TAG, align 4
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %168, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8* %171)
  store i32 -1, i32* %5, align 4
  br label %248

173:                                              ; preds = %151
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %17, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %17, align 4
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load i32, i32* %17, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  store i8 0, i8* %182, align 1
  %183 = load i32, i32* @TAG, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %17, align 4
  %186 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %183, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %173
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = call i32* @strstr(i8* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %192 = icmp eq i32* null, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* @DEFAULT_WS_BUFFER, align 4
  %196 = icmp slt i32 %194, %195
  br label %197

197:                                              ; preds = %193, %187
  %198 = phi i1 [ false, %187 ], [ %196, %193 ]
  br i1 %198, label %151, label %199

199:                                              ; preds = %197
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i8* @get_http_header(i8* %202, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  store i8* %203, i8** %18, align 8
  %204 = load i8*, i8** %18, align 8
  %205 = icmp eq i8* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %199
  %207 = load i32, i32* @TAG, align 4
  %208 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %207, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %248

209:                                              ; preds = %199
  %210 = bitcast [33 x i8]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %210, i8 0, i64 33, i1 false)
  %211 = bitcast [37 x i8]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %211, i8* align 16 getelementptr inbounds ([37 x i8], [37 x i8]* @__const.ws_connect.expected_server_magic, i32 0, i32 0), i64 37, i1 false)
  %212 = getelementptr inbounds [66 x i8], [66 x i8]* %22, i64 0, i64 0
  %213 = getelementptr inbounds [28 x i8], [28 x i8]* %12, i64 0, i64 0
  %214 = call i32 @strcpy(i8* %212, i8* %213)
  %215 = getelementptr inbounds [66 x i8], [66 x i8]* %22, i64 0, i64 0
  %216 = getelementptr inbounds [37 x i8], [37 x i8]* %21, i64 0, i64 0
  %217 = call i32 @strcat(i8* %215, i8* %216)
  %218 = getelementptr inbounds [66 x i8], [66 x i8]* %22, i64 0, i64 0
  %219 = call i64 @strlen(i8* %218)
  store i64 %219, i64* %23, align 8
  %220 = getelementptr inbounds [66 x i8], [66 x i8]* %22, i64 0, i64 0
  %221 = load i64, i64* %23, align 8
  %222 = getelementptr inbounds [20 x i8], [20 x i8]* %19, i64 0, i64 0
  %223 = call i32 @mbedtls_sha1_ret(i8* %220, i64 %221, i8* %222)
  %224 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 0
  %225 = getelementptr inbounds [20 x i8], [20 x i8]* %19, i64 0, i64 0
  %226 = call i32 @mbedtls_base64_encode(i8* %224, i32 33, i64* %13, i8* %225, i32 20)
  %227 = load i64, i64* %13, align 8
  %228 = icmp ult i64 %227, 33
  br i1 %228, label %229, label %231

229:                                              ; preds = %209
  %230 = load i64, i64* %13, align 8
  br label %232

231:                                              ; preds = %209
  br label %232

232:                                              ; preds = %231, %229
  %233 = phi i64 [ %230, %229 ], [ 32, %231 ]
  %234 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 %233
  store i8 0, i8* %234, align 1
  %235 = load i32, i32* @TAG, align 4
  %236 = load i8*, i8** %18, align 8
  %237 = getelementptr inbounds [28 x i8], [28 x i8]* %12, i64 0, i64 0
  %238 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 0
  %239 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %235, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0), i8* %236, i8* %237, i8* %238)
  %240 = getelementptr inbounds [33 x i8], [33 x i8]* %20, i64 0, i64 0
  %241 = load i8*, i8** %18, align 8
  %242 = call i64 @strcmp(i8* %240, i8* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %232
  %245 = load i32, i32* @TAG, align 4
  %246 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %245, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %248

247:                                              ; preds = %232
  store i32 0, i32* %5, align 4
  br label %248

248:                                              ; preds = %247, %244, %206, %167, %144, %122, %95, %63, %34
  %249 = load i32, i32* %5, align 4
  ret i32 %249
}

declare dso_local %struct.TYPE_3__* @esp_transport_get_context_data(i32) #1

declare dso_local i64 @esp_transport_connect(i32, i8*, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @getrandom(i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mbedtls_base64_encode(i8*, i32, i64*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i64 @esp_transport_write(i32, i8*, i32, i32) #1

declare dso_local i32 @esp_transport_read(i32, i8*, i32, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i8* @get_http_header(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mbedtls_sha1_ret(i8*, i64, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
