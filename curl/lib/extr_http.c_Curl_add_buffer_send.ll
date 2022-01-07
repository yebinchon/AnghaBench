; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_add_buffer_send.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_add_buffer_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i64 }
%struct.connectdata = type { i32, %struct.TYPE_11__, %struct.TYPE_10__*, i32*, %struct.Curl_easy* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i8*, i8*, i64 }
%struct.TYPE_13__ = type { i64, %struct.HTTP* }
%struct.HTTP = type { i8*, i64, i32, %struct.TYPE_16__*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i64, i8*, i64 }
%struct.TYPE_12__ = type { i64 }

@SECONDARYSOCKET = common dso_local global i32 0, align 4
@PROTOPT_SSL = common dso_local global i32 0, align 4
@CURLPROXY_HTTPS = common dso_local global i64 0, align 8
@CURL_MAX_WRITE_SIZE = common dso_local global i32 0, align 4
@CURLINFO_HEADER_OUT = common dso_local global i32 0, align 4
@CURLINFO_DATA_OUT = common dso_local global i32 0, align 4
@readmoredata = common dso_local global i64 0, align 8
@HTTPSEND_REQUEST = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@HTTPSEND_BODY = common dso_local global i32 0, align 4
@CURLE_SEND_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_add_buffer_send(%struct.TYPE_16__** %0, %struct.connectdata* %1, i64* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__**, align 8
  %8 = alloca %struct.connectdata*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.Curl_easy*, align 8
  %17 = alloca %struct.HTTP*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_16__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_16__** %0, %struct.TYPE_16__*** %7, align 8
  store %struct.connectdata* %1, %struct.connectdata** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %25 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %24, i32 0, i32 4
  %26 = load %struct.Curl_easy*, %struct.Curl_easy** %25, align 8
  store %struct.Curl_easy* %26, %struct.Curl_easy** %16, align 8
  %27 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %28 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load %struct.HTTP*, %struct.HTTP** %29, align 8
  store %struct.HTTP* %30, %struct.HTTP** %17, align 8
  %31 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %21, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @SECONDARYSOCKET, align 4
  %35 = icmp sle i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @DEBUGASSERT(i32 %36)
  %38 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %39 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %19, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %14, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %10, align 8
  %53 = sub i64 %51, %52
  store i64 %53, i64* %20, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ugt i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @DEBUGASSERT(i32 %57)
  %59 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = load i64, i64* %20, align 8
  %62 = call i64 @Curl_convert_to_network(%struct.Curl_easy* %59, i8* %60, i64 %61)
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %13, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %5
  %66 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %67 = call i32 @Curl_add_buffer_free(%struct.TYPE_16__** %66)
  %68 = load i64, i64* %13, align 8
  store i64 %68, i64* %6, align 8
  br label %253

69:                                               ; preds = %5
  %70 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %71 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %70, i32 0, i32 2
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PROTOPT_SSL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %69
  %79 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %80 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CURLPROXY_HTTPS, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %78, %69
  %86 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %87 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 20
  br i1 %89, label %90, label %113

90:                                               ; preds = %85
  %91 = load i64, i64* %15, align 8
  %92 = load i32, i32* @CURL_MAX_WRITE_SIZE, align 4
  %93 = call i64 @CURLMIN(i64 %91, i32 %92)
  store i64 %93, i64* %18, align 8
  %94 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %95 = call i64 @Curl_get_upload_buffer(%struct.Curl_easy* %94)
  store i64 %95, i64* %13, align 8
  %96 = load i64, i64* %13, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = call i32 @Curl_add_buffer_free(%struct.TYPE_16__** %21)
  %100 = load i64, i64* %13, align 8
  store i64 %100, i64* %6, align 8
  br label %253

101:                                              ; preds = %90
  %102 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %103 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i8*, i8** %14, align 8
  %107 = load i64, i64* %18, align 8
  %108 = call i32 @memcpy(i8* %105, i8* %106, i64 %107)
  %109 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %110 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %14, align 8
  br label %115

113:                                              ; preds = %85, %78
  %114 = load i64, i64* %15, align 8
  store i64 %114, i64* %18, align 8
  br label %115

115:                                              ; preds = %113, %101
  %116 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %117 = load i32, i32* %19, align 4
  %118 = load i8*, i8** %14, align 8
  %119 = load i64, i64* %18, align 8
  %120 = call i64 @Curl_write(%struct.connectdata* %116, i32 %117, i8* %118, i64 %119, i64* %12)
  store i64 %120, i64* %13, align 8
  %121 = load i64, i64* %13, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %250, label %123

123:                                              ; preds = %115
  %124 = load i64, i64* %12, align 8
  %125 = load i64, i64* %20, align 8
  %126 = icmp ugt i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i64, i64* %20, align 8
  br label %131

129:                                              ; preds = %123
  %130 = load i64, i64* %12, align 8
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i64 [ %128, %127 ], [ %130, %129 ]
  store i64 %132, i64* %22, align 8
  %133 = load i64, i64* %12, align 8
  %134 = load i64, i64* %22, align 8
  %135 = sub i64 %133, %134
  store i64 %135, i64* %23, align 8
  %136 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %137 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %131
  %142 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %143 = load i32, i32* @CURLINFO_HEADER_OUT, align 4
  %144 = load i8*, i8** %14, align 8
  %145 = load i64, i64* %22, align 8
  %146 = call i32 @Curl_debug(%struct.Curl_easy* %142, i32 %143, i8* %144, i64 %145)
  %147 = load i64, i64* %23, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %141
  %150 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %151 = load i32, i32* @CURLINFO_DATA_OUT, align 4
  %152 = load i8*, i8** %14, align 8
  %153 = load i64, i64* %22, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  %155 = load i64, i64* %23, align 8
  %156 = call i32 @Curl_debug(%struct.Curl_easy* %150, i32 %151, i8* %154, i64 %155)
  br label %157

157:                                              ; preds = %149, %141
  br label %158

158:                                              ; preds = %157, %131
  %159 = load i64, i64* %12, align 8
  %160 = load i64*, i64** %9, align 8
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, %159
  store i64 %162, i64* %160, align 8
  %163 = load %struct.HTTP*, %struct.HTTP** %17, align 8
  %164 = icmp ne %struct.HTTP* %163, null
  br i1 %164, label %165, label %242

165:                                              ; preds = %158
  %166 = load i64, i64* %23, align 8
  %167 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %168 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = add i64 %170, %166
  store i64 %171, i64* %169, align 8
  %172 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %173 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %174 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @Curl_pgrsSetUploadCounter(%struct.Curl_easy* %172, i64 %176)
  %178 = load i64, i64* %12, align 8
  %179 = load i64, i64* %15, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %238

181:                                              ; preds = %165
  %182 = load i64, i64* %12, align 8
  %183 = load i64, i64* %15, align 8
  %184 = sub i64 %183, %182
  store i64 %184, i64* %15, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = load i64, i64* %12, align 8
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  store i8* %189, i8** %14, align 8
  %190 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %191 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.HTTP*, %struct.HTTP** %17, align 8
  %195 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 3
  store i64 %193, i64* %196, align 8
  %197 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %198 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.HTTP*, %struct.HTTP** %17, align 8
  %202 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 2
  store i8* %200, i8** %203, align 8
  %204 = load %struct.HTTP*, %struct.HTTP** %17, align 8
  %205 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.HTTP*, %struct.HTTP** %17, align 8
  %208 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  store i8* %206, i8** %209, align 8
  %210 = load %struct.HTTP*, %struct.HTTP** %17, align 8
  %211 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.HTTP*, %struct.HTTP** %17, align 8
  %214 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  store i64 %212, i64* %215, align 8
  %216 = load i64, i64* @readmoredata, align 8
  %217 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %218 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 2
  store i64 %216, i64* %219, align 8
  %220 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %221 = bitcast %struct.connectdata* %220 to i8*
  %222 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %223 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 1
  store i8* %221, i8** %224, align 8
  %225 = load i8*, i8** %14, align 8
  %226 = load %struct.HTTP*, %struct.HTTP** %17, align 8
  %227 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %226, i32 0, i32 0
  store i8* %225, i8** %227, align 8
  %228 = load i64, i64* %15, align 8
  %229 = load %struct.HTTP*, %struct.HTTP** %17, align 8
  %230 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %229, i32 0, i32 1
  store i64 %228, i64* %230, align 8
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %232 = load %struct.HTTP*, %struct.HTTP** %17, align 8
  %233 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %232, i32 0, i32 3
  store %struct.TYPE_16__* %231, %struct.TYPE_16__** %233, align 8
  %234 = load i32, i32* @HTTPSEND_REQUEST, align 4
  %235 = load %struct.HTTP*, %struct.HTTP** %17, align 8
  %236 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %235, i32 0, i32 2
  store i32 %234, i32* %236, align 8
  %237 = load i64, i64* @CURLE_OK, align 8
  store i64 %237, i64* %6, align 8
  br label %253

238:                                              ; preds = %165
  %239 = load i32, i32* @HTTPSEND_BODY, align 4
  %240 = load %struct.HTTP*, %struct.HTTP** %17, align 8
  %241 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  br label %249

242:                                              ; preds = %158
  %243 = load i64, i64* %12, align 8
  %244 = load i64, i64* %15, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = load i64, i64* @CURLE_SEND_ERROR, align 8
  store i64 %247, i64* %6, align 8
  br label %253

248:                                              ; preds = %242
  br label %249

249:                                              ; preds = %248, %238
  br label %250

250:                                              ; preds = %249, %115
  %251 = call i32 @Curl_add_buffer_free(%struct.TYPE_16__** %21)
  %252 = load i64, i64* %13, align 8
  store i64 %252, i64* %6, align 8
  br label %253

253:                                              ; preds = %250, %246, %181, %98, %65
  %254 = load i64, i64* %6, align 8
  ret i64 %254
}

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local i64 @Curl_convert_to_network(%struct.Curl_easy*, i8*, i64) #1

declare dso_local i32 @Curl_add_buffer_free(%struct.TYPE_16__**) #1

declare dso_local i64 @CURLMIN(i64, i32) #1

declare dso_local i64 @Curl_get_upload_buffer(%struct.Curl_easy*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @Curl_write(%struct.connectdata*, i32, i8*, i64, i64*) #1

declare dso_local i32 @Curl_debug(%struct.Curl_easy*, i32, i8*, i64) #1

declare dso_local i32 @Curl_pgrsSetUploadCounter(%struct.Curl_easy*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
