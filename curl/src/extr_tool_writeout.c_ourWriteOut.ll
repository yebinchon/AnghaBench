; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_writeout.c_ourWriteOut.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_writeout.c_ourWriteOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.OutStruct = type { i8* }

@stdout = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%{\00", align 1
@replacements = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@CURLINFO_EFFECTIVE_URL = common dso_local global i32 0, align 4
@CURLINFO_RESPONSE_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%03ld\00", align 1
@CURLINFO_HTTP_CONNECTCODE = common dso_local global i32 0, align 4
@CURLINFO_HEADER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@CURLINFO_REQUEST_SIZE = common dso_local global i32 0, align 4
@CURLINFO_NUM_CONNECTS = common dso_local global i32 0, align 4
@CURLINFO_REDIRECT_COUNT = common dso_local global i32 0, align 4
@CURLINFO_REDIRECT_TIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%.6f\00", align 1
@CURLINFO_TOTAL_TIME = common dso_local global i32 0, align 4
@CURLINFO_NAMELOOKUP_TIME = common dso_local global i32 0, align 4
@CURLINFO_CONNECT_TIME = common dso_local global i32 0, align 4
@CURLINFO_APPCONNECT_TIME = common dso_local global i32 0, align 4
@CURLINFO_PRETRANSFER_TIME = common dso_local global i32 0, align 4
@CURLINFO_STARTTRANSFER_TIME = common dso_local global i32 0, align 4
@CURLINFO_SIZE_UPLOAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%.0f\00", align 1
@CURLINFO_SIZE_DOWNLOAD = common dso_local global i32 0, align 4
@CURLINFO_SPEED_DOWNLOAD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@CURLINFO_SPEED_UPLOAD = common dso_local global i32 0, align 4
@CURLINFO_CONTENT_TYPE = common dso_local global i32 0, align 4
@CURLINFO_FTP_ENTRY_PATH = common dso_local global i32 0, align 4
@CURLINFO_REDIRECT_URL = common dso_local global i32 0, align 4
@CURLINFO_SSL_VERIFYRESULT = common dso_local global i32 0, align 4
@CURLINFO_PROXY_SSL_VERIFYRESULT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CURLINFO_PRIMARY_IP = common dso_local global i32 0, align 4
@CURLINFO_PRIMARY_PORT = common dso_local global i32 0, align 4
@CURLINFO_LOCAL_IP = common dso_local global i32 0, align 4
@CURLINFO_LOCAL_PORT = common dso_local global i32 0, align 4
@CURLINFO_HTTP_VERSION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@CURLINFO_SCHEME = common dso_local global i32 0, align 4
@stderr = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [42 x i8] c"curl: unknown --write-out variable: '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ourWriteOut(i32* %0, %struct.OutStruct* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.OutStruct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.OutStruct* %1, %struct.OutStruct** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i32*, i32** @stdout, align 8
  store i32* %17, i32** %7, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %8, align 8
  store i8* null, i8** %9, align 8
  br label %19

19:                                               ; preds = %527, %65, %3
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i1 [ false, %19 ], [ %26, %22 ]
  br i1 %28, label %29, label %528

29:                                               ; preds = %27
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 37, %32
  br i1 %33, label %34, label %481

34:                                               ; preds = %29
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %481

40:                                               ; preds = %34
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 37, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @fputc(i8 signext 37, i32* %47)
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  store i8* %50, i8** %8, align 8
  br label %480

51:                                               ; preds = %40
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 123, %55
  br i1 %56, label %57, label %469

57:                                               ; preds = %51
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %15, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 125)
  store i8* %60, i8** %12, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %66)
  br label %19

68:                                               ; preds = %57
  %69 = load i8*, i8** %12, align 8
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %13, align 1
  %71 = load i8*, i8** %12, align 8
  store i8 0, i8* %71, align 1
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %454, %68
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @replacements, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %457

80:                                               ; preds = %72
  %81 = load i8*, i8** %8, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @replacements, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @curl_strequal(i8* %81, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %453

90:                                               ; preds = %80
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %15, align 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @replacements, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  switch i32 %97, label %451 [
    i32 155, label %98
    i32 152, label %112
    i32 151, label %123
    i32 153, label %134
    i32 138, label %145
    i32 146, label %156
    i32 141, label %167
    i32 140, label %178
    i32 128, label %189
    i32 147, label %200
    i32 158, label %211
    i32 159, label %222
    i32 145, label %233
    i32 131, label %244
    i32 135, label %255
    i32 136, label %266
    i32 134, label %277
    i32 133, label %288
    i32 157, label %299
    i32 154, label %313
    i32 139, label %327
    i32 132, label %341
    i32 142, label %352
    i32 156, label %363
    i32 144, label %375
    i32 143, label %386
    i32 149, label %397
    i32 148, label %408
    i32 150, label %419
    i32 137, label %436
    i32 129, label %447
    i32 130, label %449
  ]

98:                                               ; preds = %90
  %99 = load i32, i32* @CURLE_OK, align 4
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* @CURLINFO_EFFECTIVE_URL, align 4
  %102 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %100, i32 %101, i8** %9)
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load i8*, i8** %9, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i8*, i8** %9, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @fputs(i8* %108, i32* %109)
  br label %111

111:                                              ; preds = %107, %104, %98
  br label %452

112:                                              ; preds = %90
  %113 = load i32, i32* @CURLE_OK, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* @CURLINFO_RESPONSE_CODE, align 4
  %116 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %114, i32 %115, i64* %10)
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i32*, i32** %7, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i32 (i32*, i8*, ...) @fprintf(i32* %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %120)
  br label %122

122:                                              ; preds = %118, %112
  br label %452

123:                                              ; preds = %90
  %124 = load i32, i32* @CURLE_OK, align 4
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* @CURLINFO_HTTP_CONNECTCODE, align 4
  %127 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %125, i32 %126, i64* %10)
  %128 = icmp eq i32 %124, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i32*, i32** %7, align 8
  %131 = load i64, i64* %10, align 8
  %132 = call i32 (i32*, i8*, ...) @fprintf(i32* %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %131)
  br label %133

133:                                              ; preds = %129, %123
  br label %452

134:                                              ; preds = %90
  %135 = load i32, i32* @CURLE_OK, align 4
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* @CURLINFO_HEADER_SIZE, align 4
  %138 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %136, i32 %137, i64* %10)
  %139 = icmp eq i32 %135, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i32*, i32** %7, align 8
  %142 = load i64, i64* %10, align 8
  %143 = call i32 (i32*, i8*, ...) @fprintf(i32* %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %142)
  br label %144

144:                                              ; preds = %140, %134
  br label %452

145:                                              ; preds = %90
  %146 = load i32, i32* @CURLE_OK, align 4
  %147 = load i32*, i32** %4, align 8
  %148 = load i32, i32* @CURLINFO_REQUEST_SIZE, align 4
  %149 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %147, i32 %148, i64* %10)
  %150 = icmp eq i32 %146, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load i32*, i32** %7, align 8
  %153 = load i64, i64* %10, align 8
  %154 = call i32 (i32*, i8*, ...) @fprintf(i32* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %153)
  br label %155

155:                                              ; preds = %151, %145
  br label %452

156:                                              ; preds = %90
  %157 = load i32, i32* @CURLE_OK, align 4
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* @CURLINFO_NUM_CONNECTS, align 4
  %160 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %158, i32 %159, i64* %10)
  %161 = icmp eq i32 %157, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load i32*, i32** %7, align 8
  %164 = load i64, i64* %10, align 8
  %165 = call i32 (i32*, i8*, ...) @fprintf(i32* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %164)
  br label %166

166:                                              ; preds = %162, %156
  br label %452

167:                                              ; preds = %90
  %168 = load i32, i32* @CURLE_OK, align 4
  %169 = load i32*, i32** %4, align 8
  %170 = load i32, i32* @CURLINFO_REDIRECT_COUNT, align 4
  %171 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %169, i32 %170, i64* %10)
  %172 = icmp eq i32 %168, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load i32*, i32** %7, align 8
  %175 = load i64, i64* %10, align 8
  %176 = call i32 (i32*, i8*, ...) @fprintf(i32* %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %175)
  br label %177

177:                                              ; preds = %173, %167
  br label %452

178:                                              ; preds = %90
  %179 = load i32, i32* @CURLE_OK, align 4
  %180 = load i32*, i32** %4, align 8
  %181 = load i32, i32* @CURLINFO_REDIRECT_TIME, align 4
  %182 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %180, i32 %181, double* %11)
  %183 = icmp eq i32 %179, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load i32*, i32** %7, align 8
  %186 = load double, double* %11, align 8
  %187 = call i32 (i32*, i8*, ...) @fprintf(i32* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %186)
  br label %188

188:                                              ; preds = %184, %178
  br label %452

189:                                              ; preds = %90
  %190 = load i32, i32* @CURLE_OK, align 4
  %191 = load i32*, i32** %4, align 8
  %192 = load i32, i32* @CURLINFO_TOTAL_TIME, align 4
  %193 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %191, i32 %192, double* %11)
  %194 = icmp eq i32 %190, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load i32*, i32** %7, align 8
  %197 = load double, double* %11, align 8
  %198 = call i32 (i32*, i8*, ...) @fprintf(i32* %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %197)
  br label %199

199:                                              ; preds = %195, %189
  br label %452

200:                                              ; preds = %90
  %201 = load i32, i32* @CURLE_OK, align 4
  %202 = load i32*, i32** %4, align 8
  %203 = load i32, i32* @CURLINFO_NAMELOOKUP_TIME, align 4
  %204 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %202, i32 %203, double* %11)
  %205 = icmp eq i32 %201, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = load i32*, i32** %7, align 8
  %208 = load double, double* %11, align 8
  %209 = call i32 (i32*, i8*, ...) @fprintf(i32* %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %208)
  br label %210

210:                                              ; preds = %206, %200
  br label %452

211:                                              ; preds = %90
  %212 = load i32, i32* @CURLE_OK, align 4
  %213 = load i32*, i32** %4, align 8
  %214 = load i32, i32* @CURLINFO_CONNECT_TIME, align 4
  %215 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %213, i32 %214, double* %11)
  %216 = icmp eq i32 %212, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %211
  %218 = load i32*, i32** %7, align 8
  %219 = load double, double* %11, align 8
  %220 = call i32 (i32*, i8*, ...) @fprintf(i32* %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %219)
  br label %221

221:                                              ; preds = %217, %211
  br label %452

222:                                              ; preds = %90
  %223 = load i32, i32* @CURLE_OK, align 4
  %224 = load i32*, i32** %4, align 8
  %225 = load i32, i32* @CURLINFO_APPCONNECT_TIME, align 4
  %226 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %224, i32 %225, double* %11)
  %227 = icmp eq i32 %223, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %222
  %229 = load i32*, i32** %7, align 8
  %230 = load double, double* %11, align 8
  %231 = call i32 (i32*, i8*, ...) @fprintf(i32* %229, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %230)
  br label %232

232:                                              ; preds = %228, %222
  br label %452

233:                                              ; preds = %90
  %234 = load i32, i32* @CURLE_OK, align 4
  %235 = load i32*, i32** %4, align 8
  %236 = load i32, i32* @CURLINFO_PRETRANSFER_TIME, align 4
  %237 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %235, i32 %236, double* %11)
  %238 = icmp eq i32 %234, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %233
  %240 = load i32*, i32** %7, align 8
  %241 = load double, double* %11, align 8
  %242 = call i32 (i32*, i8*, ...) @fprintf(i32* %240, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %241)
  br label %243

243:                                              ; preds = %239, %233
  br label %452

244:                                              ; preds = %90
  %245 = load i32, i32* @CURLE_OK, align 4
  %246 = load i32*, i32** %4, align 8
  %247 = load i32, i32* @CURLINFO_STARTTRANSFER_TIME, align 4
  %248 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %246, i32 %247, double* %11)
  %249 = icmp eq i32 %245, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %244
  %251 = load i32*, i32** %7, align 8
  %252 = load double, double* %11, align 8
  %253 = call i32 (i32*, i8*, ...) @fprintf(i32* %251, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %252)
  br label %254

254:                                              ; preds = %250, %244
  br label %452

255:                                              ; preds = %90
  %256 = load i32, i32* @CURLE_OK, align 4
  %257 = load i32*, i32** %4, align 8
  %258 = load i32, i32* @CURLINFO_SIZE_UPLOAD, align 4
  %259 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %257, i32 %258, double* %11)
  %260 = icmp eq i32 %256, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %255
  %262 = load i32*, i32** %7, align 8
  %263 = load double, double* %11, align 8
  %264 = call i32 (i32*, i8*, ...) @fprintf(i32* %262, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), double %263)
  br label %265

265:                                              ; preds = %261, %255
  br label %452

266:                                              ; preds = %90
  %267 = load i32, i32* @CURLE_OK, align 4
  %268 = load i32*, i32** %4, align 8
  %269 = load i32, i32* @CURLINFO_SIZE_DOWNLOAD, align 4
  %270 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %268, i32 %269, double* %11)
  %271 = icmp eq i32 %267, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %266
  %273 = load i32*, i32** %7, align 8
  %274 = load double, double* %11, align 8
  %275 = call i32 (i32*, i8*, ...) @fprintf(i32* %273, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), double %274)
  br label %276

276:                                              ; preds = %272, %266
  br label %452

277:                                              ; preds = %90
  %278 = load i32, i32* @CURLE_OK, align 4
  %279 = load i32*, i32** %4, align 8
  %280 = load i32, i32* @CURLINFO_SPEED_DOWNLOAD, align 4
  %281 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %279, i32 %280, double* %11)
  %282 = icmp eq i32 %278, %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %277
  %284 = load i32*, i32** %7, align 8
  %285 = load double, double* %11, align 8
  %286 = call i32 (i32*, i8*, ...) @fprintf(i32* %284, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), double %285)
  br label %287

287:                                              ; preds = %283, %277
  br label %452

288:                                              ; preds = %90
  %289 = load i32, i32* @CURLE_OK, align 4
  %290 = load i32*, i32** %4, align 8
  %291 = load i32, i32* @CURLINFO_SPEED_UPLOAD, align 4
  %292 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %290, i32 %291, double* %11)
  %293 = icmp eq i32 %289, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %288
  %295 = load i32*, i32** %7, align 8
  %296 = load double, double* %11, align 8
  %297 = call i32 (i32*, i8*, ...) @fprintf(i32* %295, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), double %296)
  br label %298

298:                                              ; preds = %294, %288
  br label %452

299:                                              ; preds = %90
  %300 = load i32, i32* @CURLE_OK, align 4
  %301 = load i32*, i32** %4, align 8
  %302 = load i32, i32* @CURLINFO_CONTENT_TYPE, align 4
  %303 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %301, i32 %302, i8** %9)
  %304 = icmp eq i32 %300, %303
  br i1 %304, label %305, label %312

305:                                              ; preds = %299
  %306 = load i8*, i8** %9, align 8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %308, label %312

308:                                              ; preds = %305
  %309 = load i8*, i8** %9, align 8
  %310 = load i32*, i32** %7, align 8
  %311 = call i32 @fputs(i8* %309, i32* %310)
  br label %312

312:                                              ; preds = %308, %305, %299
  br label %452

313:                                              ; preds = %90
  %314 = load i32, i32* @CURLE_OK, align 4
  %315 = load i32*, i32** %4, align 8
  %316 = load i32, i32* @CURLINFO_FTP_ENTRY_PATH, align 4
  %317 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %315, i32 %316, i8** %9)
  %318 = icmp eq i32 %314, %317
  br i1 %318, label %319, label %326

319:                                              ; preds = %313
  %320 = load i8*, i8** %9, align 8
  %321 = icmp ne i8* %320, null
  br i1 %321, label %322, label %326

322:                                              ; preds = %319
  %323 = load i8*, i8** %9, align 8
  %324 = load i32*, i32** %7, align 8
  %325 = call i32 @fputs(i8* %323, i32* %324)
  br label %326

326:                                              ; preds = %322, %319, %313
  br label %452

327:                                              ; preds = %90
  %328 = load i32, i32* @CURLE_OK, align 4
  %329 = load i32*, i32** %4, align 8
  %330 = load i32, i32* @CURLINFO_REDIRECT_URL, align 4
  %331 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %329, i32 %330, i8** %9)
  %332 = icmp eq i32 %328, %331
  br i1 %332, label %333, label %340

333:                                              ; preds = %327
  %334 = load i8*, i8** %9, align 8
  %335 = icmp ne i8* %334, null
  br i1 %335, label %336, label %340

336:                                              ; preds = %333
  %337 = load i8*, i8** %9, align 8
  %338 = load i32*, i32** %7, align 8
  %339 = call i32 @fputs(i8* %337, i32* %338)
  br label %340

340:                                              ; preds = %336, %333, %327
  br label %452

341:                                              ; preds = %90
  %342 = load i32, i32* @CURLE_OK, align 4
  %343 = load i32*, i32** %4, align 8
  %344 = load i32, i32* @CURLINFO_SSL_VERIFYRESULT, align 4
  %345 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %343, i32 %344, i64* %10)
  %346 = icmp eq i32 %342, %345
  br i1 %346, label %347, label %351

347:                                              ; preds = %341
  %348 = load i32*, i32** %7, align 8
  %349 = load i64, i64* %10, align 8
  %350 = call i32 (i32*, i8*, ...) @fprintf(i32* %348, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %349)
  br label %351

351:                                              ; preds = %347, %341
  br label %452

352:                                              ; preds = %90
  %353 = load i32, i32* @CURLE_OK, align 4
  %354 = load i32*, i32** %4, align 8
  %355 = load i32, i32* @CURLINFO_PROXY_SSL_VERIFYRESULT, align 4
  %356 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %354, i32 %355, i64* %10)
  %357 = icmp eq i32 %353, %356
  br i1 %357, label %358, label %362

358:                                              ; preds = %352
  %359 = load i32*, i32** %7, align 8
  %360 = load i64, i64* %10, align 8
  %361 = call i32 (i32*, i8*, ...) @fprintf(i32* %359, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %360)
  br label %362

362:                                              ; preds = %358, %352
  br label %452

363:                                              ; preds = %90
  %364 = load %struct.OutStruct*, %struct.OutStruct** %5, align 8
  %365 = getelementptr inbounds %struct.OutStruct, %struct.OutStruct* %364, i32 0, i32 0
  %366 = load i8*, i8** %365, align 8
  %367 = icmp ne i8* %366, null
  br i1 %367, label %368, label %374

368:                                              ; preds = %363
  %369 = load i32*, i32** %7, align 8
  %370 = load %struct.OutStruct*, %struct.OutStruct** %5, align 8
  %371 = getelementptr inbounds %struct.OutStruct, %struct.OutStruct* %370, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = call i32 (i32*, i8*, ...) @fprintf(i32* %369, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %372)
  br label %374

374:                                              ; preds = %368, %363
  br label %452

375:                                              ; preds = %90
  %376 = load i32, i32* @CURLE_OK, align 4
  %377 = load i32*, i32** %4, align 8
  %378 = load i32, i32* @CURLINFO_PRIMARY_IP, align 4
  %379 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %377, i32 %378, i8** %9)
  %380 = icmp eq i32 %376, %379
  br i1 %380, label %381, label %385

381:                                              ; preds = %375
  %382 = load i32*, i32** %7, align 8
  %383 = load i8*, i8** %9, align 8
  %384 = call i32 (i32*, i8*, ...) @fprintf(i32* %382, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %383)
  br label %385

385:                                              ; preds = %381, %375
  br label %452

386:                                              ; preds = %90
  %387 = load i32, i32* @CURLE_OK, align 4
  %388 = load i32*, i32** %4, align 8
  %389 = load i32, i32* @CURLINFO_PRIMARY_PORT, align 4
  %390 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %388, i32 %389, i64* %10)
  %391 = icmp eq i32 %387, %390
  br i1 %391, label %392, label %396

392:                                              ; preds = %386
  %393 = load i32*, i32** %7, align 8
  %394 = load i64, i64* %10, align 8
  %395 = call i32 (i32*, i8*, ...) @fprintf(i32* %393, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %394)
  br label %396

396:                                              ; preds = %392, %386
  br label %452

397:                                              ; preds = %90
  %398 = load i32, i32* @CURLE_OK, align 4
  %399 = load i32*, i32** %4, align 8
  %400 = load i32, i32* @CURLINFO_LOCAL_IP, align 4
  %401 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %399, i32 %400, i8** %9)
  %402 = icmp eq i32 %398, %401
  br i1 %402, label %403, label %407

403:                                              ; preds = %397
  %404 = load i32*, i32** %7, align 8
  %405 = load i8*, i8** %9, align 8
  %406 = call i32 (i32*, i8*, ...) @fprintf(i32* %404, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %405)
  br label %407

407:                                              ; preds = %403, %397
  br label %452

408:                                              ; preds = %90
  %409 = load i32, i32* @CURLE_OK, align 4
  %410 = load i32*, i32** %4, align 8
  %411 = load i32, i32* @CURLINFO_LOCAL_PORT, align 4
  %412 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %410, i32 %411, i64* %10)
  %413 = icmp eq i32 %409, %412
  br i1 %413, label %414, label %418

414:                                              ; preds = %408
  %415 = load i32*, i32** %7, align 8
  %416 = load i64, i64* %10, align 8
  %417 = call i32 (i32*, i8*, ...) @fprintf(i32* %415, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %416)
  br label %418

418:                                              ; preds = %414, %408
  br label %452

419:                                              ; preds = %90
  %420 = load i32, i32* @CURLE_OK, align 4
  %421 = load i32*, i32** %4, align 8
  %422 = load i32, i32* @CURLINFO_HTTP_VERSION, align 4
  %423 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %421, i32 %422, i64* %10)
  %424 = icmp eq i32 %420, %423
  br i1 %424, label %425, label %435

425:                                              ; preds = %419
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %16, align 8
  %426 = load i64, i64* %10, align 8
  switch i64 %426, label %431 [
    i64 163, label %427
    i64 162, label %428
    i64 161, label %429
    i64 160, label %430
  ]

427:                                              ; preds = %425
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %16, align 8
  br label %431

428:                                              ; preds = %425
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %16, align 8
  br label %431

429:                                              ; preds = %425
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %16, align 8
  br label %431

430:                                              ; preds = %425
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %16, align 8
  br label %431

431:                                              ; preds = %425, %430, %429, %428, %427
  %432 = load i32*, i32** %7, align 8
  %433 = load i8*, i8** %16, align 8
  %434 = call i32 (i32*, i8*, ...) @fprintf(i32* %432, i8* %433)
  br label %435

435:                                              ; preds = %431, %419
  br label %452

436:                                              ; preds = %90
  %437 = load i32, i32* @CURLE_OK, align 4
  %438 = load i32*, i32** %4, align 8
  %439 = load i32, i32* @CURLINFO_SCHEME, align 4
  %440 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %438, i32 %439, i8** %9)
  %441 = icmp eq i32 %437, %440
  br i1 %441, label %442, label %446

442:                                              ; preds = %436
  %443 = load i32*, i32** %7, align 8
  %444 = load i8*, i8** %9, align 8
  %445 = call i32 (i32*, i8*, ...) @fprintf(i32* %443, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %444)
  br label %446

446:                                              ; preds = %442, %436
  br label %452

447:                                              ; preds = %90
  %448 = load i32*, i32** @stdout, align 8
  store i32* %448, i32** %7, align 8
  br label %452

449:                                              ; preds = %90
  %450 = load i32*, i32** @stderr, align 8
  store i32* %450, i32** %7, align 8
  br label %452

451:                                              ; preds = %90
  br label %452

452:                                              ; preds = %451, %449, %447, %446, %435, %418, %407, %396, %385, %374, %362, %351, %340, %326, %312, %298, %287, %276, %265, %254, %243, %232, %221, %210, %199, %188, %177, %166, %155, %144, %133, %122, %111
  br label %457

453:                                              ; preds = %80
  br label %454

454:                                              ; preds = %453
  %455 = load i32, i32* %14, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %14, align 4
  br label %72

457:                                              ; preds = %452, %72
  %458 = load i32, i32* %15, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %464, label %460

460:                                              ; preds = %457
  %461 = load i32*, i32** @stderr, align 8
  %462 = load i8*, i8** %8, align 8
  %463 = call i32 (i32*, i8*, ...) @fprintf(i32* %461, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i8* %462)
  br label %464

464:                                              ; preds = %460, %457
  %465 = load i8*, i8** %12, align 8
  %466 = getelementptr inbounds i8, i8* %465, i64 1
  store i8* %466, i8** %8, align 8
  %467 = load i8, i8* %13, align 1
  %468 = load i8*, i8** %12, align 8
  store i8 %467, i8* %468, align 1
  br label %479

469:                                              ; preds = %51
  %470 = load i32*, i32** %7, align 8
  %471 = call i32 @fputc(i8 signext 37, i32* %470)
  %472 = load i8*, i8** %8, align 8
  %473 = getelementptr inbounds i8, i8* %472, i64 1
  %474 = load i8, i8* %473, align 1
  %475 = load i32*, i32** %7, align 8
  %476 = call i32 @fputc(i8 signext %474, i32* %475)
  %477 = load i8*, i8** %8, align 8
  %478 = getelementptr inbounds i8, i8* %477, i64 2
  store i8* %478, i8** %8, align 8
  br label %479

479:                                              ; preds = %469, %464
  br label %480

480:                                              ; preds = %479, %46
  br label %527

481:                                              ; preds = %34, %29
  %482 = load i8*, i8** %8, align 8
  %483 = load i8, i8* %482, align 1
  %484 = sext i8 %483 to i32
  %485 = icmp eq i32 92, %484
  br i1 %485, label %486, label %519

486:                                              ; preds = %481
  %487 = load i8*, i8** %8, align 8
  %488 = getelementptr inbounds i8, i8* %487, i64 1
  %489 = load i8, i8* %488, align 1
  %490 = sext i8 %489 to i32
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %519

492:                                              ; preds = %486
  %493 = load i8*, i8** %8, align 8
  %494 = getelementptr inbounds i8, i8* %493, i64 1
  %495 = load i8, i8* %494, align 1
  %496 = sext i8 %495 to i32
  switch i32 %496, label %506 [
    i32 114, label %497
    i32 110, label %500
    i32 116, label %503
  ]

497:                                              ; preds = %492
  %498 = load i32*, i32** %7, align 8
  %499 = call i32 @fputc(i8 signext 13, i32* %498)
  br label %516

500:                                              ; preds = %492
  %501 = load i32*, i32** %7, align 8
  %502 = call i32 @fputc(i8 signext 10, i32* %501)
  br label %516

503:                                              ; preds = %492
  %504 = load i32*, i32** %7, align 8
  %505 = call i32 @fputc(i8 signext 9, i32* %504)
  br label %516

506:                                              ; preds = %492
  %507 = load i8*, i8** %8, align 8
  %508 = load i8, i8* %507, align 1
  %509 = load i32*, i32** %7, align 8
  %510 = call i32 @fputc(i8 signext %508, i32* %509)
  %511 = load i8*, i8** %8, align 8
  %512 = getelementptr inbounds i8, i8* %511, i64 1
  %513 = load i8, i8* %512, align 1
  %514 = load i32*, i32** %7, align 8
  %515 = call i32 @fputc(i8 signext %513, i32* %514)
  br label %516

516:                                              ; preds = %506, %503, %500, %497
  %517 = load i8*, i8** %8, align 8
  %518 = getelementptr inbounds i8, i8* %517, i64 2
  store i8* %518, i8** %8, align 8
  br label %526

519:                                              ; preds = %486, %481
  %520 = load i8*, i8** %8, align 8
  %521 = load i8, i8* %520, align 1
  %522 = load i32*, i32** %7, align 8
  %523 = call i32 @fputc(i8 signext %521, i32* %522)
  %524 = load i8*, i8** %8, align 8
  %525 = getelementptr inbounds i8, i8* %524, i32 1
  store i8* %525, i8** %8, align 8
  br label %526

526:                                              ; preds = %519, %516
  br label %527

527:                                              ; preds = %526, %480
  br label %19

528:                                              ; preds = %27
  ret void
}

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i64 @curl_strequal(i8*, i64) #1

declare dso_local i32 @curl_easy_getinfo(i32*, i32, ...) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
