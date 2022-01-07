; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_parseurlandfillconn.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_parseurlandfillconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_8__, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.connectdata = type { i64, %struct.TYPE_7__, %struct.TYPE_10__, i32, i32, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8* }

@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@STRING_DEFAULT_PROTOCOL = common dso_local global i64 0, align 8
@MAX_SCHEME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s://%s\00", align 1
@TRUE = common dso_local global i8* null, align 8
@CURLUPART_URL = common dso_local global i32 0, align 4
@CURLU_GUESS_SCHEME = common dso_local global i32 0, align 4
@CURLU_NON_SUPPORT_SCHEME = common dso_local global i32 0, align 4
@CURLU_DISALLOW_USER = common dso_local global i32 0, align 4
@CURLU_PATH_AS_IS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"curl_url_set rejected %s\0A\00", align 1
@CURLUPART_SCHEME = common dso_local global i32 0, align 4
@CURLUPART_USER = common dso_local global i32 0, align 4
@CURLU_URLDECODE = common dso_local global i32 0, align 4
@CURLUE_NO_USER = common dso_local global i64 0, align 8
@CURLUPART_PASSWORD = common dso_local global i32 0, align 4
@CURLUE_NO_PASSWORD = common dso_local global i64 0, align 8
@CURLUPART_OPTIONS = common dso_local global i32 0, align 4
@CURLUE_NO_OPTIONS = common dso_local global i64 0, align 8
@CURLUPART_HOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@CURLUPART_PATH = common dso_local global i32 0, align 4
@CURLUPART_PORT = common dso_local global i32 0, align 4
@CURLU_DEFAULT_PORT = common dso_local global i32 0, align 4
@CURLUPART_QUERY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CURLE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.Curl_easy*, %struct.connectdata*)* @parseurlandfillconn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parseurlandfillconn(%struct.Curl_easy* %0, %struct.connectdata* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %4, align 8
  store %struct.connectdata* %1, %struct.connectdata** %5, align 8
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %15 = call i32 @up_free(%struct.Curl_easy* %14)
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %17 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %23 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = call i32* @curl_url_dup(i64 %25)
  %27 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %28 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  store i32* %26, i32** %29, align 8
  store i32* %26, i32** %7, align 8
  br label %35

30:                                               ; preds = %2
  %31 = call i32* (...) @curl_url()
  %32 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %33 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  store i32* %31, i32** %34, align 8
  store i32* %31, i32** %7, align 8
  br label %35

35:                                               ; preds = %30, %21
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %39, i64* %3, align 8
  br label %462

40:                                               ; preds = %35
  %41 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %42 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 4
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @STRING_DEFAULT_PROTOCOL, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %95

49:                                               ; preds = %40
  %50 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %51 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* @MAX_SCHEME_LEN, align 4
  %55 = call i32 @Curl_is_absolute_url(i8* %53, i32* null, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %95, label %57

57:                                               ; preds = %49
  %58 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %59 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %65 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @free(i8* %67)
  br label %69

69:                                               ; preds = %63, %57
  %70 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %71 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 4
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* @STRING_DEFAULT_PROTOCOL, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %78 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i8* @aprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %76, i8* %80)
  store i8* %81, i8** %10, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %69
  %85 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %85, i64* %3, align 8
  br label %462

86:                                               ; preds = %69
  %87 = load i8*, i8** %10, align 8
  %88 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %89 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i8* %87, i8** %90, align 8
  %91 = load i8*, i8** @TRUE, align 8
  %92 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %93 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  store i8* %91, i8** %94, align 8
  br label %95

95:                                               ; preds = %86, %49, %40
  %96 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %97 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %176, label %101

101:                                              ; preds = %95
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* @CURLUPART_URL, align 4
  %104 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %105 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* @CURLU_GUESS_SCHEME, align 4
  %109 = load i32, i32* @CURLU_NON_SUPPORT_SCHEME, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %112 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %101
  %117 = load i32, i32* @CURLU_DISALLOW_USER, align 4
  br label %119

118:                                              ; preds = %101
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi i32 [ %117, %116 ], [ 0, %118 ]
  %121 = or i32 %110, %120
  %122 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %123 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32, i32* @CURLU_PATH_AS_IS, align 4
  br label %130

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129, %127
  %131 = phi i32 [ %128, %127 ], [ 0, %129 ]
  %132 = or i32 %121, %131
  %133 = call i64 @curl_url_set(i32* %102, i32 %103, i8* %107, i32 %132)
  store i64 %133, i64* %8, align 8
  %134 = load i64, i64* %8, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %130
  %137 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %138 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %139 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @infof(%struct.Curl_easy* %137, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %141)
  %143 = call i32 @DEBUGF(i32 %142)
  %144 = load i64, i64* %8, align 8
  %145 = call i64 @Curl_uc_to_curlcode(i64 %144)
  store i64 %145, i64* %3, align 8
  br label %462

146:                                              ; preds = %130
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* @CURLUPART_URL, align 4
  %149 = call i64 @curl_url_get(i32* %147, i32 %148, i8** %11, i32 0)
  store i64 %149, i64* %8, align 8
  %150 = load i64, i64* %8, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i64, i64* %8, align 8
  %154 = call i64 @Curl_uc_to_curlcode(i64 %153)
  store i64 %154, i64* %3, align 8
  br label %462

155:                                              ; preds = %146
  %156 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %157 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %163 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @free(i8* %165)
  br label %167

167:                                              ; preds = %161, %155
  %168 = load i8*, i8** %11, align 8
  %169 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %170 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  store i8* %168, i8** %171, align 8
  %172 = load i8*, i8** @TRUE, align 8
  %173 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %174 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  store i8* %172, i8** %175, align 8
  br label %176

176:                                              ; preds = %167, %95
  %177 = load i32*, i32** %7, align 8
  %178 = load i32, i32* @CURLUPART_SCHEME, align 4
  %179 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %180 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = call i64 @curl_url_get(i32* %177, i32 %178, i8** %182, i32 0)
  store i64 %183, i64* %8, align 8
  %184 = load i64, i64* %8, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %176
  %187 = load i64, i64* %8, align 8
  %188 = call i64 @Curl_uc_to_curlcode(i64 %187)
  store i64 %188, i64* %3, align 8
  br label %462

189:                                              ; preds = %176
  %190 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %191 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %192 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %193 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = call i64 @findprotocol(%struct.Curl_easy* %190, %struct.connectdata* %191, i8* %196)
  store i64 %197, i64* %6, align 8
  %198 = load i64, i64* %6, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %189
  %201 = load i64, i64* %6, align 8
  store i64 %201, i64* %3, align 8
  br label %462

202:                                              ; preds = %189
  %203 = load i32*, i32** %7, align 8
  %204 = load i32, i32* @CURLUPART_USER, align 4
  %205 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %206 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 1
  %209 = load i32, i32* @CURLU_URLDECODE, align 4
  %210 = call i64 @curl_url_get(i32* %203, i32 %204, i8** %208, i32 %209)
  store i64 %210, i64* %8, align 8
  %211 = load i64, i64* %8, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %233, label %213

213:                                              ; preds = %202
  %214 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %215 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = call i8* @strdup(i8* %218)
  %220 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %221 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %220, i32 0, i32 7
  store i8* %219, i8** %221, align 8
  %222 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %223 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %222, i32 0, i32 7
  %224 = load i8*, i8** %223, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %228, label %226

226:                                              ; preds = %213
  %227 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %227, i64* %3, align 8
  br label %462

228:                                              ; preds = %213
  %229 = load i8*, i8** @TRUE, align 8
  %230 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %231 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  store i8* %229, i8** %232, align 8
  br label %241

233:                                              ; preds = %202
  %234 = load i64, i64* %8, align 8
  %235 = load i64, i64* @CURLUE_NO_USER, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %233
  %238 = load i64, i64* %8, align 8
  %239 = call i64 @Curl_uc_to_curlcode(i64 %238)
  store i64 %239, i64* %3, align 8
  br label %462

240:                                              ; preds = %233
  br label %241

241:                                              ; preds = %240, %228
  %242 = load i32*, i32** %7, align 8
  %243 = load i32, i32* @CURLUPART_PASSWORD, align 4
  %244 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %245 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 2
  %248 = load i32, i32* @CURLU_URLDECODE, align 4
  %249 = call i64 @curl_url_get(i32* %242, i32 %243, i8** %247, i32 %248)
  store i64 %249, i64* %8, align 8
  %250 = load i64, i64* %8, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %272, label %252

252:                                              ; preds = %241
  %253 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %254 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 2
  %257 = load i8*, i8** %256, align 8
  %258 = call i8* @strdup(i8* %257)
  %259 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %260 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %259, i32 0, i32 6
  store i8* %258, i8** %260, align 8
  %261 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %262 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %261, i32 0, i32 6
  %263 = load i8*, i8** %262, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %267, label %265

265:                                              ; preds = %252
  %266 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %266, i64* %3, align 8
  br label %462

267:                                              ; preds = %252
  %268 = load i8*, i8** @TRUE, align 8
  %269 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %270 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 1
  store i8* %268, i8** %271, align 8
  br label %280

272:                                              ; preds = %241
  %273 = load i64, i64* %8, align 8
  %274 = load i64, i64* @CURLUE_NO_PASSWORD, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = load i64, i64* %8, align 8
  %278 = call i64 @Curl_uc_to_curlcode(i64 %277)
  store i64 %278, i64* %3, align 8
  br label %462

279:                                              ; preds = %272
  br label %280

280:                                              ; preds = %279, %267
  %281 = load i32*, i32** %7, align 8
  %282 = load i32, i32* @CURLUPART_OPTIONS, align 4
  %283 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %284 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 3
  %287 = load i32, i32* @CURLU_URLDECODE, align 4
  %288 = call i64 @curl_url_get(i32* %281, i32 %282, i8** %286, i32 %287)
  store i64 %288, i64* %8, align 8
  %289 = load i64, i64* %8, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %307, label %291

291:                                              ; preds = %280
  %292 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %293 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 3
  %296 = load i8*, i8** %295, align 8
  %297 = call i8* @strdup(i8* %296)
  %298 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %299 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %298, i32 0, i32 5
  store i8* %297, i8** %299, align 8
  %300 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %301 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %300, i32 0, i32 5
  %302 = load i8*, i8** %301, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %306, label %304

304:                                              ; preds = %291
  %305 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %305, i64* %3, align 8
  br label %462

306:                                              ; preds = %291
  br label %315

307:                                              ; preds = %280
  %308 = load i64, i64* %8, align 8
  %309 = load i64, i64* @CURLUE_NO_OPTIONS, align 8
  %310 = icmp ne i64 %308, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %307
  %312 = load i64, i64* %8, align 8
  %313 = call i64 @Curl_uc_to_curlcode(i64 %312)
  store i64 %313, i64* %3, align 8
  br label %462

314:                                              ; preds = %307
  br label %315

315:                                              ; preds = %314, %306
  %316 = load i32*, i32** %7, align 8
  %317 = load i32, i32* @CURLUPART_HOST, align 4
  %318 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %319 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 4
  %322 = call i64 @curl_url_get(i32* %316, i32 %317, i8** %321, i32 0)
  store i64 %322, i64* %8, align 8
  %323 = load i64, i64* %8, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %336

325:                                              ; preds = %315
  %326 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %327 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 0
  %330 = load i8*, i8** %329, align 8
  %331 = call i32 @strcasecompare(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %335, label %333

333:                                              ; preds = %325
  %334 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %334, i64* %3, align 8
  br label %462

335:                                              ; preds = %325
  br label %336

336:                                              ; preds = %335, %315
  %337 = load i32*, i32** %7, align 8
  %338 = load i32, i32* @CURLUPART_PATH, align 4
  %339 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %340 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 5
  %343 = call i64 @curl_url_get(i32* %337, i32 %338, i8** %342, i32 0)
  store i64 %343, i64* %8, align 8
  %344 = load i64, i64* %8, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %336
  %347 = load i64, i64* %8, align 8
  %348 = call i64 @Curl_uc_to_curlcode(i64 %347)
  store i64 %348, i64* %3, align 8
  br label %462

349:                                              ; preds = %336
  %350 = load i32*, i32** %7, align 8
  %351 = load i32, i32* @CURLUPART_PORT, align 4
  %352 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %353 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 6
  %356 = load i32, i32* @CURLU_DEFAULT_PORT, align 4
  %357 = call i64 @curl_url_get(i32* %350, i32 %351, i8** %355, i32 %356)
  store i64 %357, i64* %8, align 8
  %358 = load i64, i64* %8, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %371

360:                                              ; preds = %349
  %361 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %362 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  %366 = call i32 @strcasecompare(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %365)
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %370, label %368

368:                                              ; preds = %360
  %369 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %369, i64* %3, align 8
  br label %462

370:                                              ; preds = %360
  br label %384

371:                                              ; preds = %349
  %372 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %373 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 6
  %376 = load i8*, i8** %375, align 8
  %377 = call i64 @strtoul(i8* %376, i32* null, i32 10)
  store i64 %377, i64* %12, align 8
  %378 = load i64, i64* %12, align 8
  %379 = call i32 @curlx_ultous(i64 %378)
  %380 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %381 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %380, i32 0, i32 3
  store i32 %379, i32* %381, align 8
  %382 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %383 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %382, i32 0, i32 4
  store i32 %379, i32* %383, align 4
  br label %384

384:                                              ; preds = %371, %370
  %385 = load i32*, i32** %7, align 8
  %386 = load i32, i32* @CURLUPART_QUERY, align 4
  %387 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %388 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %389, i32 0, i32 7
  %391 = call i64 @curl_url_get(i32* %385, i32 %386, i8** %390, i32 0)
  %392 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %393 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 4
  %396 = load i8*, i8** %395, align 8
  store i8* %396, i8** %9, align 8
  %397 = load i8*, i8** %9, align 8
  %398 = icmp ne i8* %397, null
  br i1 %398, label %399, label %421

399:                                              ; preds = %384
  %400 = load i8*, i8** %9, align 8
  %401 = getelementptr inbounds i8, i8* %400, i64 0
  %402 = load i8, i8* %401, align 1
  %403 = sext i8 %402 to i32
  %404 = icmp eq i32 %403, 91
  br i1 %404, label %405, label %421

405:                                              ; preds = %399
  %406 = load i8*, i8** @TRUE, align 8
  %407 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %408 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %407, i32 0, i32 2
  %409 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %408, i32 0, i32 0
  store i8* %406, i8** %409, align 8
  %410 = load i8*, i8** %9, align 8
  %411 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %411, i8** %9, align 8
  %412 = load i8*, i8** %9, align 8
  %413 = call i64 @strlen(i8* %412)
  store i64 %413, i64* %13, align 8
  %414 = load i8*, i8** %9, align 8
  %415 = load i64, i64* %13, align 8
  %416 = sub i64 %415, 1
  %417 = getelementptr inbounds i8, i8* %414, i64 %416
  store i8 0, i8* %417, align 1
  %418 = load i32*, i32** %7, align 8
  %419 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %420 = call i32 @zonefrom_url(i32* %418, %struct.connectdata* %419)
  br label %421

421:                                              ; preds = %405, %399, %384
  %422 = load i8*, i8** %9, align 8
  %423 = icmp ne i8* %422, null
  br i1 %423, label %424, label %426

424:                                              ; preds = %421
  %425 = load i8*, i8** %9, align 8
  br label %427

426:                                              ; preds = %421
  br label %427

427:                                              ; preds = %426, %424
  %428 = phi i8* [ %425, %424 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %426 ]
  %429 = call i8* @strdup(i8* %428)
  %430 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %431 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %431, i32 0, i32 0
  store i8* %429, i8** %432, align 8
  %433 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %434 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %433, i32 0, i32 1
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %434, i32 0, i32 0
  %436 = load i8*, i8** %435, align 8
  %437 = icmp ne i8* %436, null
  br i1 %437, label %440, label %438

438:                                              ; preds = %427
  %439 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %439, i64* %3, align 8
  br label %462

440:                                              ; preds = %427
  %441 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %442 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %442, i32 0, i32 0
  %444 = load i8*, i8** %443, align 8
  %445 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %446 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %445, i32 0, i32 1
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %446, i32 0, i32 1
  store i8* %444, i8** %447, align 8
  %448 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %449 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %460

453:                                              ; preds = %440
  %454 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %455 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %459 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %458, i32 0, i32 0
  store i64 %457, i64* %459, align 8
  br label %460

460:                                              ; preds = %453, %440
  %461 = load i64, i64* @CURLE_OK, align 8
  store i64 %461, i64* %3, align 8
  br label %462

462:                                              ; preds = %460, %438, %368, %346, %333, %311, %304, %276, %265, %237, %226, %200, %186, %152, %136, %84, %38
  %463 = load i64, i64* %3, align 8
  ret i64 %463
}

declare dso_local i32 @up_free(%struct.Curl_easy*) #1

declare dso_local i32* @curl_url_dup(i64) #1

declare dso_local i32* @curl_url(...) #1

declare dso_local i32 @Curl_is_absolute_url(i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @aprintf(i8*, i64, i8*) #1

declare dso_local i64 @curl_url_set(i32*, i32, i8*, i32) #1

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i8*) #1

declare dso_local i64 @Curl_uc_to_curlcode(i64) #1

declare dso_local i64 @curl_url_get(i32*, i32, i8**, i32) #1

declare dso_local i64 @findprotocol(%struct.Curl_easy*, %struct.connectdata*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strcasecompare(i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @curlx_ultous(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @zonefrom_url(i32*, %struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
