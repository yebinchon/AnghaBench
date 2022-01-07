; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_create_conn_helper_init_proxy.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_create_conn_helper_init_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.connectdata = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_16__*, i64, %struct.TYPE_9__, %struct.Curl_easy* }
%struct.TYPE_15__ = type { i32, i32, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i8*, i32*, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i8*, i32*, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8** }

@CURLE_OK = common dso_local global i64 0, align 8
@STRING_PROXY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"memory shortage\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@STRING_PRE_PROXY = common dso_local global i64 0, align 8
@STRING_NOPROXY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"no_proxy\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"NO_PROXY\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Uses proxy env variable %s == '%s'\0A\00", align 1
@PROTOPT_NONETWORK = common dso_local global i32 0, align 4
@PROTO_FAMILY_HTTP = common dso_local global i32 0, align 4
@PROTOPT_PROXY_AS_HTTP = common dso_local global i32 0, align 4
@Curl_handler_http = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@CURLE_UNSUPPORTED_PROTOCOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @create_conn_helper_init_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_conn_helper_init_proxy(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.Curl_easy*, align 8
  %8 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %9 = load i64, i64* @CURLE_OK, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 6
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  store %struct.Curl_easy* %12, %struct.Curl_easy** %7, align 8
  %13 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %20 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %21 = call i64 @parse_proxy_auth(%struct.Curl_easy* %19, %struct.connectdata* %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %396

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %28 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = load i64, i64* @STRING_PROXY, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %26
  %36 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %37 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = load i64, i64* @STRING_PROXY, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @strdup(i8* %42)
  store i8* %43, i8** %3, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = icmp eq i8* null, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %48 = call i32 @failf(%struct.Curl_easy* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %49 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %49, i64* %6, align 8
  br label %396

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %26
  %52 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %53 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = load i64, i64* @STRING_PRE_PROXY, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %76

60:                                               ; preds = %51
  %61 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %62 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = load i64, i64* @STRING_PRE_PROXY, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @strdup(i8* %67)
  store i8* %68, i8** %4, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = icmp eq i8* null, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %73 = call i32 @failf(%struct.Curl_easy* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %74 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %74, i64* %6, align 8
  br label %396

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75, %51
  %77 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %78 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i8**, i8*** %79, align 8
  %81 = load i64, i64* @STRING_NOPROXY, align 8
  %82 = getelementptr inbounds i8*, i8** %80, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %104, label %85

85:                                               ; preds = %76
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = call i8* @curl_getenv(i8* %86)
  store i8* %87, i8** %5, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = call i8* @curl_getenv(i8* %91)
  store i8* %92, i8** %5, align 8
  br label %93

93:                                               ; preds = %90, %85
  %94 = load i8*, i8** %5, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %98 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %97, i32 0, i32 6
  %99 = load %struct.Curl_easy*, %struct.Curl_easy** %98, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @infof(%struct.Curl_easy* %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %100, i8* %101)
  br label %103

103:                                              ; preds = %96, %93
  br label %104

104:                                              ; preds = %103, %76
  %105 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %106 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %110 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i8**, i8*** %111, align 8
  %113 = load i64, i64* @STRING_NOPROXY, align 8
  %114 = getelementptr inbounds i8*, i8** %112, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %104
  %118 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %119 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i8**, i8*** %120, align 8
  %122 = load i64, i64* @STRING_NOPROXY, align 8
  %123 = getelementptr inbounds i8*, i8** %121, i64 %122
  %124 = load i8*, i8** %123, align 8
  br label %127

125:                                              ; preds = %104
  %126 = load i8*, i8** %5, align 8
  br label %127

127:                                              ; preds = %125, %117
  %128 = phi i8* [ %124, %117 ], [ %126, %125 ]
  %129 = call i64 @check_noproxy(i32 %108, i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load i8*, i8** %3, align 8
  %133 = call i32 @Curl_safefree(i8* %132)
  %134 = load i8*, i8** %4, align 8
  %135 = call i32 @Curl_safefree(i8* %134)
  br label %146

136:                                              ; preds = %127
  %137 = load i8*, i8** %3, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %136
  %140 = load i8*, i8** %4, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %144 = call i8* @detect_proxy(%struct.connectdata* %143)
  store i8* %144, i8** %3, align 8
  br label %145

145:                                              ; preds = %142, %139, %136
  br label %146

146:                                              ; preds = %145, %131
  %147 = load i8*, i8** %5, align 8
  %148 = call i32 @Curl_safefree(i8* %147)
  %149 = load i8*, i8** %3, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %167

151:                                              ; preds = %146
  %152 = load i8*, i8** %3, align 8
  %153 = load i8, i8* %152, align 1
  %154 = icmp ne i8 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %151
  %156 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %157 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %156, i32 0, i32 3
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @PROTOPT_NONETWORK, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %155, %151
  %165 = load i8*, i8** %3, align 8
  %166 = call i32 @free(i8* %165)
  store i8* null, i8** %3, align 8
  br label %167

167:                                              ; preds = %164, %155, %146
  %168 = load i8*, i8** %4, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %186

170:                                              ; preds = %167
  %171 = load i8*, i8** %4, align 8
  %172 = load i8, i8* %171, align 1
  %173 = icmp ne i8 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %170
  %175 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %176 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %175, i32 0, i32 3
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @PROTOPT_NONETWORK, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %174, %170
  %184 = load i8*, i8** %4, align 8
  %185 = call i32 @free(i8* %184)
  store i8* null, i8** %4, align 8
  br label %186

186:                                              ; preds = %183, %174, %167
  %187 = load i8*, i8** %3, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i8*, i8** %4, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %340

192:                                              ; preds = %189, %186
  %193 = load i8*, i8** %3, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %210

195:                                              ; preds = %192
  %196 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %197 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %198 = load i8*, i8** %3, align 8
  %199 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %200 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = call i64 @parse_proxy(%struct.Curl_easy* %196, %struct.connectdata* %197, i8* %198, i32 %202)
  store i64 %203, i64* %6, align 8
  %204 = load i8*, i8** %3, align 8
  %205 = call i32 @Curl_safefree(i8* %204)
  %206 = load i64, i64* %6, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %195
  br label %396

209:                                              ; preds = %195
  br label %210

210:                                              ; preds = %209, %192
  %211 = load i8*, i8** %4, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %228

213:                                              ; preds = %210
  %214 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %215 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %216 = load i8*, i8** %4, align 8
  %217 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %218 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = call i64 @parse_proxy(%struct.Curl_easy* %214, %struct.connectdata* %215, i8* %216, i32 %220)
  store i64 %221, i64* %6, align 8
  %222 = load i8*, i8** %4, align 8
  %223 = call i32 @Curl_safefree(i8* %222)
  %224 = load i64, i64* %6, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %213
  br label %396

227:                                              ; preds = %213
  br label %228

228:                                              ; preds = %227, %210
  %229 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %230 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %273

235:                                              ; preds = %228
  %236 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %237 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %236, i32 0, i32 3
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @PROTO_FAMILY_HTTP, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %268, label %244

244:                                              ; preds = %235
  %245 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %246 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %245, i32 0, i32 3
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @PROTOPT_PROXY_AS_HTTP, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %244
  %254 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %255 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 2
  %257 = load i8*, i8** %256, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %262, label %259

259:                                              ; preds = %253
  %260 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %261 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %260, i32 0, i32 3
  store %struct.TYPE_16__* @Curl_handler_http, %struct.TYPE_16__** %261, align 8
  br label %267

262:                                              ; preds = %253, %244
  %263 = load i8*, i8** @TRUE, align 8
  %264 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %265 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 2
  store i8* %263, i8** %266, align 8
  br label %267

267:                                              ; preds = %262, %259
  br label %268

268:                                              ; preds = %267, %235
  %269 = load i8*, i8** @TRUE, align 8
  %270 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %271 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 4
  store i8* %269, i8** %272, align 8
  br label %282

273:                                              ; preds = %228
  %274 = load i8*, i8** @FALSE, align 8
  %275 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %276 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 4
  store i8* %274, i8** %277, align 8
  %278 = load i8*, i8** @FALSE, align 8
  %279 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %280 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 2
  store i8* %278, i8** %281, align 8
  br label %282

282:                                              ; preds = %273, %268
  %283 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %284 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %334

289:                                              ; preds = %282
  %290 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %291 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %329, label %296

296:                                              ; preds = %289
  %297 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %298 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = icmp ne i32* %300, null
  br i1 %301, label %328, label %302

302:                                              ; preds = %296
  %303 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %304 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %308 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 1
  store i32* %306, i32** %309, align 8
  %310 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %311 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 1
  store i32* null, i32** %312, align 8
  %313 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %314 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 0
  %316 = load i8*, i8** %315, align 8
  %317 = call i32 @Curl_safefree(i8* %316)
  %318 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %319 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 0
  %321 = load i8*, i8** %320, align 8
  %322 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %323 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 0
  store i8* %321, i8** %324, align 8
  %325 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %326 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 0
  store i8* null, i8** %327, align 8
  br label %328

328:                                              ; preds = %302, %296
  br label %329

329:                                              ; preds = %328, %289
  %330 = load i8*, i8** @TRUE, align 8
  %331 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %332 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 3
  store i8* %330, i8** %333, align 8
  br label %339

334:                                              ; preds = %282
  %335 = load i8*, i8** @FALSE, align 8
  %336 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %337 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 3
  store i8* %335, i8** %338, align 8
  br label %339

339:                                              ; preds = %334, %329
  br label %349

340:                                              ; preds = %189
  %341 = load i8*, i8** @FALSE, align 8
  %342 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %343 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 3
  store i8* %341, i8** %344, align 8
  %345 = load i8*, i8** @FALSE, align 8
  %346 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %347 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 4
  store i8* %345, i8** %348, align 8
  br label %349

349:                                              ; preds = %340, %339
  %350 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %351 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i32 0, i32 4
  %353 = load i8*, i8** %352, align 8
  %354 = icmp ne i8* %353, null
  br i1 %354, label %361, label %355

355:                                              ; preds = %349
  %356 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %357 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 3
  %359 = load i8*, i8** %358, align 8
  %360 = icmp ne i8* %359, null
  br label %361

361:                                              ; preds = %355, %349
  %362 = phi i1 [ true, %349 ], [ %360, %355 ]
  %363 = zext i1 %362 to i32
  %364 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %365 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %365, i32 0, i32 1
  store i32 %363, i32* %366, align 4
  %367 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %368 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %395, label %372

372:                                              ; preds = %361
  %373 = load i8*, i8** @FALSE, align 8
  %374 = ptrtoint i8* %373 to i32
  %375 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %376 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %376, i32 0, i32 1
  store i32 %374, i32* %377, align 4
  %378 = load i8*, i8** @FALSE, align 8
  %379 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %380 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %380, i32 0, i32 4
  store i8* %378, i8** %381, align 8
  %382 = load i8*, i8** @FALSE, align 8
  %383 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %384 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %384, i32 0, i32 3
  store i8* %382, i8** %385, align 8
  %386 = load i8*, i8** @FALSE, align 8
  %387 = ptrtoint i8* %386 to i32
  %388 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %389 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %389, i32 0, i32 0
  store i32 %387, i32* %390, align 8
  %391 = load i8*, i8** @FALSE, align 8
  %392 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %393 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %393, i32 0, i32 2
  store i8* %391, i8** %394, align 8
  br label %395

395:                                              ; preds = %372, %361
  br label %396

396:                                              ; preds = %395, %226, %208, %71, %46, %24
  %397 = load i8*, i8** %4, align 8
  %398 = call i32 @free(i8* %397)
  %399 = load i8*, i8** %3, align 8
  %400 = call i32 @free(i8* %399)
  %401 = load i64, i64* %6, align 8
  ret i64 %401
}

declare dso_local i64 @parse_proxy_auth(%struct.Curl_easy*, %struct.connectdata*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i8* @curl_getenv(i8*) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i8*, i8*) #1

declare dso_local i64 @check_noproxy(i32, i8*) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i8* @detect_proxy(%struct.connectdata*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @parse_proxy(%struct.Curl_easy*, %struct.connectdata*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
