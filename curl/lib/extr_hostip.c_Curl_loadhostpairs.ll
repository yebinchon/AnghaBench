; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_hostip.c_Curl_loadhostpairs.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_hostip.c_Curl_loadhostpairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_8__, i64, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, %struct.curl_slist* }
%struct.curl_slist = type { i8*, %struct.curl_slist* }
%struct.TYPE_7__ = type { i32 }
%struct.Curl_dns_entry = type { i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@MAX_HOSTCACHE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%255[^:]:%d\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Couldn't parse CURLOPT_RESOLVE removal entry '%s'!\0A\00", align 1
@CURL_LOCK_DATA_DNS = common dso_local global i32 0, align 4
@CURL_LOCK_ACCESS_SINGLE = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"Ignoring resolve address '%s', missing IPv6 support.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Resolve address '%s' found illegal!\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Couldn't parse CURLOPT_RESOLVE entry '%s'!\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"RESOLVE %s:%d is - old addresses discarded!\0A\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Added %s:%d:%s to DNS cache\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"RESOLVE %s:%d is wildcard, enabling wildcard checks\0A\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_loadhostpairs(%struct.Curl_easy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca %struct.curl_slist*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.Curl_dns_entry*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [64 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_9__*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  store i32 0, i32* %6, align 4
  %26 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %27 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %30 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.curl_slist*, %struct.curl_slist** %31, align 8
  store %struct.curl_slist* %32, %struct.curl_slist** %4, align 8
  br label %33

33:                                               ; preds = %364, %1
  %34 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %35 = icmp ne %struct.curl_slist* %34, null
  br i1 %35, label %36, label %368

36:                                               ; preds = %33
  %37 = load i32, i32* @MAX_HOSTCACHE_LEN, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %7, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %8, align 8
  %41 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %42 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  store i32 4, i32* %9, align 4
  br label %360

46:                                               ; preds = %36
  %47 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %48 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 45
  br i1 %53, label %54, label %101

54:                                               ; preds = %46
  %55 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %56 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %60 = call i32 @sscanf(i8* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %59, i32* %6)
  %61 = icmp ne i32 2, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %64 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %65 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %63, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  store i32 4, i32* %9, align 4
  br label %360

68:                                               ; preds = %54
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %70 = load i32, i32* %6, align 4
  %71 = trunc i64 %38 to i32
  %72 = call i32 @create_hostcache_id(i8* %69, i32 %70, i8* %40, i32 %71)
  %73 = call i32 @strlen(i8* %40)
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %10, align 8
  %75 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %76 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %81 = load i32, i32* @CURL_LOCK_DATA_DNS, align 4
  %82 = load i32, i32* @CURL_LOCK_ACCESS_SINGLE, align 4
  %83 = call i32 @Curl_share_lock(%struct.Curl_easy* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %68
  %85 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %86 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %89, 1
  %91 = call i32 @Curl_hash_delete(i32 %88, i8* %40, i64 %90)
  %92 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %93 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %98 = load i32, i32* @CURL_LOCK_DATA_DNS, align 4
  %99 = call i32 @Curl_share_unlock(%struct.Curl_easy* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %84
  br label %359

101:                                              ; preds = %46
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  store i8* null, i8** %16, align 8
  store i32 1, i32* %23, align 4
  %102 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %103 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @strchr(i8* %104, i8 signext 58)
  store i8* %105, i8** %21, align 8
  %106 = load i8*, i8** %21, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %101
  %109 = load i8*, i8** %21, align 8
  %110 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %111 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = ptrtoint i8* %109 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = icmp sge i64 %115, 256
  br i1 %116, label %117, label %118

117:                                              ; preds = %108, %101
  br label %255

118:                                              ; preds = %108
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %120 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %121 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load i8*, i8** %21, align 8
  %124 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %125 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = ptrtoint i8* %123 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = call i32 @memcpy(i8* %119, i8* %122, i64 %129)
  %131 = load i8*, i8** %21, align 8
  %132 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %133 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = ptrtoint i8* %131 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %137
  store i8 0, i8* %138, align 1
  %139 = load i8*, i8** %21, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  store i8* %140, i8** %19, align 8
  %141 = load i8*, i8** %19, align 8
  %142 = call i64 @strtoul(i8* %141, i8** %20, i32 10)
  store i64 %142, i64* %22, align 8
  %143 = load i64, i64* %22, align 8
  %144 = load i64, i64* @USHRT_MAX, align 8
  %145 = icmp ugt i64 %143, %144
  br i1 %145, label %155, label %146

146:                                              ; preds = %118
  %147 = load i8*, i8** %20, align 8
  %148 = load i8*, i8** %19, align 8
  %149 = icmp eq i8* %147, %148
  br i1 %149, label %155, label %150

150:                                              ; preds = %146
  %151 = load i8*, i8** %20, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 58
  br i1 %154, label %155, label %156

155:                                              ; preds = %150, %146, %118
  br label %255

156:                                              ; preds = %150
  %157 = load i64, i64* %22, align 8
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %6, align 4
  %159 = load i8*, i8** %20, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  store i8* %160, i8** %16, align 8
  br label %161

161:                                              ; preds = %249, %223, %208, %156
  %162 = load i8*, i8** %20, align 8
  %163 = load i8, i8* %162, align 1
  %164 = icmp ne i8 %163, 0
  br i1 %164, label %165, label %250

165:                                              ; preds = %161
  %166 = load i8*, i8** %20, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  store i8* %167, i8** %17, align 8
  %168 = load i8*, i8** %17, align 8
  %169 = call i8* @strchr(i8* %168, i8 signext 44)
  store i8* %169, i8** %18, align 8
  %170 = load i8*, i8** %18, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %178, label %172

172:                                              ; preds = %165
  %173 = load i8*, i8** %17, align 8
  %174 = load i8*, i8** %17, align 8
  %175 = call i32 @strlen(i8* %174)
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  store i8* %177, i8** %18, align 8
  br label %178

178:                                              ; preds = %172, %165
  %179 = load i8*, i8** %18, align 8
  store i8* %179, i8** %20, align 8
  %180 = load i8*, i8** %17, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 91
  br i1 %183, label %184, label %200

184:                                              ; preds = %178
  %185 = load i8*, i8** %18, align 8
  %186 = load i8*, i8** %17, align 8
  %187 = icmp eq i8* %185, %186
  br i1 %187, label %194, label %188

188:                                              ; preds = %184
  %189 = load i8*, i8** %18, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 -1
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp ne i32 %192, 93
  br i1 %193, label %194, label %195

194:                                              ; preds = %188, %184
  br label %255

195:                                              ; preds = %188
  %196 = load i8*, i8** %17, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %17, align 8
  %198 = load i8*, i8** %18, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 -1
  store i8* %199, i8** %18, align 8
  br label %200

200:                                              ; preds = %195, %178
  %201 = load i8*, i8** %18, align 8
  %202 = load i8*, i8** %17, align 8
  %203 = ptrtoint i8* %201 to i64
  %204 = ptrtoint i8* %202 to i64
  %205 = sub i64 %203, %204
  store i64 %205, i64* %24, align 8
  %206 = load i64, i64* %24, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %200
  br label %161

209:                                              ; preds = %200
  %210 = load i64, i64* %24, align 8
  %211 = icmp uge i64 %210, 64
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  br label %255

213:                                              ; preds = %209
  %214 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %215 = load i8*, i8** %17, align 8
  %216 = load i64, i64* %24, align 8
  %217 = call i32 @memcpy(i8* %214, i8* %215, i64 %216)
  %218 = load i64, i64* %24, align 8
  %219 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 %218
  store i8 0, i8* %219, align 1
  %220 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %221 = call i8* @strchr(i8* %220, i8 signext 58)
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %227

223:                                              ; preds = %213
  %224 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %225 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %226 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %224, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %225)
  br label %161

227:                                              ; preds = %213
  %228 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %229 = load i32, i32* %6, align 4
  %230 = call %struct.TYPE_9__* @Curl_str2addr(i8* %228, i32 %229)
  store %struct.TYPE_9__* %230, %struct.TYPE_9__** %25, align 8
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %232 = icmp ne %struct.TYPE_9__* %231, null
  br i1 %232, label %237, label %233

233:                                              ; preds = %227
  %234 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %235 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %236 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %234, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %235)
  br label %255

237:                                              ; preds = %227
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %239 = icmp ne %struct.TYPE_9__* %238, null
  br i1 %239, label %240, label %247

240:                                              ; preds = %237
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  store %struct.TYPE_9__* %241, %struct.TYPE_9__** %243, align 8
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %245, align 8
  store %struct.TYPE_9__* %246, %struct.TYPE_9__** %13, align 8
  br label %249

247:                                              ; preds = %237
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  store %struct.TYPE_9__* %248, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %248, %struct.TYPE_9__** %12, align 8
  br label %249

249:                                              ; preds = %247, %240
  br label %161

250:                                              ; preds = %161
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %252 = icmp ne %struct.TYPE_9__* %251, null
  br i1 %252, label %254, label %253

253:                                              ; preds = %250
  br label %255

254:                                              ; preds = %250
  store i32 0, i32* %23, align 4
  br label %255

255:                                              ; preds = %254, %253, %233, %212, %194, %155, %117
  %256 = load i32, i32* %23, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %255
  %259 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %260 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %261 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %259, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %262)
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %265 = call i32 @Curl_freeaddrinfo(%struct.TYPE_9__* %264)
  store i32 4, i32* %9, align 4
  br label %360

266:                                              ; preds = %255
  %267 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %268 = load i32, i32* %6, align 4
  %269 = trunc i64 %38 to i32
  %270 = call i32 @create_hostcache_id(i8* %267, i32 %268, i8* %40, i32 %269)
  %271 = call i32 @strlen(i8* %40)
  %272 = sext i32 %271 to i64
  store i64 %272, i64* %14, align 8
  %273 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %274 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %266
  %278 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %279 = load i32, i32* @CURL_LOCK_DATA_DNS, align 4
  %280 = load i32, i32* @CURL_LOCK_ACCESS_SINGLE, align 4
  %281 = call i32 @Curl_share_lock(%struct.Curl_easy* %278, i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %277, %266
  %283 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %284 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i64, i64* %14, align 8
  %288 = add i64 %287, 1
  %289 = call %struct.Curl_dns_entry* @Curl_hash_pick(i32 %286, i8* %40, i64 %288)
  store %struct.Curl_dns_entry* %289, %struct.Curl_dns_entry** %11, align 8
  %290 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %11, align 8
  %291 = icmp ne %struct.Curl_dns_entry* %290, null
  br i1 %291, label %292, label %304

292:                                              ; preds = %282
  %293 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %294 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %295 = load i32, i32* %6, align 4
  %296 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %293, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %294, i32 %295)
  %297 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %298 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i64, i64* %14, align 8
  %302 = add i64 %301, 1
  %303 = call i32 @Curl_hash_delete(i32 %300, i8* %40, i64 %302)
  br label %304

304:                                              ; preds = %292, %282
  %305 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %307 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %308 = load i32, i32* %6, align 4
  %309 = call %struct.Curl_dns_entry* @Curl_cache_addr(%struct.Curl_easy* %305, %struct.TYPE_9__* %306, i8* %307, i32 %308)
  store %struct.Curl_dns_entry* %309, %struct.Curl_dns_entry** %11, align 8
  %310 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %11, align 8
  %311 = icmp ne %struct.Curl_dns_entry* %310, null
  br i1 %311, label %312, label %319

312:                                              ; preds = %304
  %313 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %11, align 8
  %314 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %313, i32 0, i32 1
  store i64 0, i64* %314, align 8
  %315 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %11, align 8
  %316 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = add nsw i32 %317, -1
  store i32 %318, i32* %316, align 8
  br label %319

319:                                              ; preds = %312, %304
  %320 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %321 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %319
  %325 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %326 = load i32, i32* @CURL_LOCK_DATA_DNS, align 4
  %327 = call i32 @Curl_share_unlock(%struct.Curl_easy* %325, i32 %326)
  br label %328

328:                                              ; preds = %324, %319
  %329 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %11, align 8
  %330 = icmp ne %struct.Curl_dns_entry* %329, null
  br i1 %330, label %335, label %331

331:                                              ; preds = %328
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %333 = call i32 @Curl_freeaddrinfo(%struct.TYPE_9__* %332)
  %334 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %334, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %360

335:                                              ; preds = %328
  %336 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %337 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %338 = load i32, i32* %6, align 4
  %339 = load i8*, i8** %16, align 8
  %340 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %336, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %337, i32 %338, i8* %339)
  %341 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %342 = load i8, i8* %341, align 16
  %343 = sext i8 %342 to i32
  %344 = icmp eq i32 %343, 42
  br i1 %344, label %345, label %358

345:                                              ; preds = %335
  %346 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 1
  %347 = load i8, i8* %346, align 1
  %348 = sext i8 %347 to i32
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %358

350:                                              ; preds = %345
  %351 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %352 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %353 = load i32, i32* %6, align 4
  %354 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %351, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %352, i32 %353)
  %355 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %356 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 0
  store i32 1, i32* %357, align 8
  br label %358

358:                                              ; preds = %350, %345, %335
  br label %359

359:                                              ; preds = %358, %100
  store i32 0, i32* %9, align 4
  br label %360

360:                                              ; preds = %359, %331, %258, %62, %45
  %361 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %361)
  %362 = load i32, i32* %9, align 4
  switch i32 %362, label %375 [
    i32 0, label %363
    i32 4, label %364
    i32 1, label %373
  ]

363:                                              ; preds = %360
  br label %364

364:                                              ; preds = %363, %360
  %365 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %366 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %365, i32 0, i32 1
  %367 = load %struct.curl_slist*, %struct.curl_slist** %366, align 8
  store %struct.curl_slist* %367, %struct.curl_slist** %4, align 8
  br label %33

368:                                              ; preds = %33
  %369 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %370 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 1
  store %struct.curl_slist* null, %struct.curl_slist** %371, align 8
  %372 = load i32, i32* @CURLE_OK, align 4
  store i32 %372, i32* %2, align 4
  br label %373

373:                                              ; preds = %368, %360
  %374 = load i32, i32* %2, align 4
  ret i32 %374

375:                                              ; preds = %360
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*) #2

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i8*, ...) #2

declare dso_local i32 @create_hostcache_id(i8*, i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @Curl_share_lock(%struct.Curl_easy*, i32, i32) #2

declare dso_local i32 @Curl_hash_delete(i32, i8*, i64) #2

declare dso_local i32 @Curl_share_unlock(%struct.Curl_easy*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i64 @strtoul(i8*, i8**, i32) #2

declare dso_local %struct.TYPE_9__* @Curl_str2addr(i8*, i32) #2

declare dso_local i32 @Curl_freeaddrinfo(%struct.TYPE_9__*) #2

declare dso_local %struct.Curl_dns_entry* @Curl_hash_pick(i32, i8*, i64) #2

declare dso_local %struct.Curl_dns_entry* @Curl_cache_addr(%struct.Curl_easy*, %struct.TYPE_9__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
