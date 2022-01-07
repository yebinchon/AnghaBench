; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_http.c_net_http_update.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_http.c_net_http_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_t = type { i32, i64, i8*, i32, i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }

@P_BODY = common dso_local global i64 0, align 8
@P_HEADER_TOP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"HTTP/1.\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"HTTP/1.1 \00", align 1
@P_HEADER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Content-Length: \00", align 1
@T_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Transfer-Encoding: chunked\00", align 1
@T_CHUNK = common dso_local global i64 0, align 8
@P_BODY_CHUNKLEN = common dso_local global i64 0, align 8
@P_DONE = common dso_local global i64 0, align 8
@T_FULL = common dso_local global i64 0, align 8
@P_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_http_update(%struct.http_t* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.http_t*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.http_t* %0, %struct.http_t** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.http_t*, %struct.http_t** %5, align 8
  %15 = icmp ne %struct.http_t* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.http_t*, %struct.http_t** %5, align 8
  %18 = getelementptr inbounds %struct.http_t, %struct.http_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %3
  br label %600

22:                                               ; preds = %16
  %23 = load %struct.http_t*, %struct.http_t** %5, align 8
  %24 = getelementptr inbounds %struct.http_t, %struct.http_t* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @P_BODY, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %253

28:                                               ; preds = %22
  %29 = load %struct.http_t*, %struct.http_t** %5, align 8
  %30 = getelementptr inbounds %struct.http_t, %struct.http_t* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 -1, i32* %8, align 4
  br label %58

34:                                               ; preds = %28
  %35 = load %struct.http_t*, %struct.http_t** %5, align 8
  %36 = getelementptr inbounds %struct.http_t, %struct.http_t* %35, i32 0, i32 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.http_t*, %struct.http_t** %5, align 8
  %40 = getelementptr inbounds %struct.http_t, %struct.http_t* %39, i32 0, i32 0
  %41 = load %struct.http_t*, %struct.http_t** %5, align 8
  %42 = getelementptr inbounds %struct.http_t, %struct.http_t* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.http_t*, %struct.http_t** %5, align 8
  %46 = getelementptr inbounds %struct.http_t, %struct.http_t* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load %struct.http_t*, %struct.http_t** %5, align 8
  %51 = getelementptr inbounds %struct.http_t, %struct.http_t* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.http_t*, %struct.http_t** %5, align 8
  %54 = getelementptr inbounds %struct.http_t, %struct.http_t* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %52, %55
  %57 = call i32 @socket_receive_all_nonblocking(i32 %38, i32* %40, i32* %49, i32 %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %34, %33
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %600

62:                                               ; preds = %58
  %63 = load %struct.http_t*, %struct.http_t** %5, align 8
  %64 = getelementptr inbounds %struct.http_t, %struct.http_t* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %65, %66
  %68 = load %struct.http_t*, %struct.http_t** %5, align 8
  %69 = getelementptr inbounds %struct.http_t, %struct.http_t* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 64
  %72 = icmp sge i32 %67, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %62
  %74 = load %struct.http_t*, %struct.http_t** %5, align 8
  %75 = getelementptr inbounds %struct.http_t, %struct.http_t* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 2
  store i32 %77, i32* %75, align 4
  %78 = load %struct.http_t*, %struct.http_t** %5, align 8
  %79 = getelementptr inbounds %struct.http_t, %struct.http_t* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.http_t*, %struct.http_t** %5, align 8
  %82 = getelementptr inbounds %struct.http_t, %struct.http_t* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @realloc(i8* %80, i32 %83)
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.http_t*, %struct.http_t** %5, align 8
  %87 = getelementptr inbounds %struct.http_t, %struct.http_t* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %73, %62
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.http_t*, %struct.http_t** %5, align 8
  %91 = getelementptr inbounds %struct.http_t, %struct.http_t* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %217, %88
  %95 = load %struct.http_t*, %struct.http_t** %5, align 8
  %96 = getelementptr inbounds %struct.http_t, %struct.http_t* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @P_BODY, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %240

100:                                              ; preds = %94
  %101 = load %struct.http_t*, %struct.http_t** %5, align 8
  %102 = getelementptr inbounds %struct.http_t, %struct.http_t* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.http_t*, %struct.http_t** %5, align 8
  %105 = getelementptr inbounds %struct.http_t, %struct.http_t* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  store i8* %108, i8** %9, align 8
  %109 = load %struct.http_t*, %struct.http_t** %5, align 8
  %110 = getelementptr inbounds %struct.http_t, %struct.http_t* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.http_t*, %struct.http_t** %5, align 8
  %113 = getelementptr inbounds %struct.http_t, %struct.http_t* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @memchr(i8* %111, i8 signext 10, i32 %114)
  %116 = inttoptr i64 %115 to i8*
  store i8* %116, i8** %10, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %100
  br label %240

120:                                              ; preds = %100
  %121 = load i8*, i8** %10, align 8
  store i8 0, i8* %121, align 1
  %122 = load i8*, i8** %10, align 8
  %123 = load %struct.http_t*, %struct.http_t** %5, align 8
  %124 = getelementptr inbounds %struct.http_t, %struct.http_t* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %122, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load i8*, i8** %10, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 -1
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 13
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i8*, i8** %10, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 -1
  store i8 0, i8* %135, align 1
  br label %136

136:                                              ; preds = %133, %127, %120
  %137 = load %struct.http_t*, %struct.http_t** %5, align 8
  %138 = getelementptr inbounds %struct.http_t, %struct.http_t* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @P_HEADER_TOP, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %164

142:                                              ; preds = %136
  %143 = load %struct.http_t*, %struct.http_t** %5, align 8
  %144 = getelementptr inbounds %struct.http_t, %struct.http_t* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %147 = call i64 @strncmp(i8* %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %600

150:                                              ; preds = %142
  %151 = load %struct.http_t*, %struct.http_t** %5, align 8
  %152 = getelementptr inbounds %struct.http_t, %struct.http_t* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = call i64 @strtoul(i8* %156, i32* null, i32 10)
  %158 = trunc i64 %157 to i32
  %159 = load %struct.http_t*, %struct.http_t** %5, align 8
  %160 = getelementptr inbounds %struct.http_t, %struct.http_t* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 8
  %161 = load i64, i64* @P_HEADER, align 8
  %162 = load %struct.http_t*, %struct.http_t** %5, align 8
  %163 = getelementptr inbounds %struct.http_t, %struct.http_t* %162, i32 0, i32 1
  store i64 %161, i64* %163, align 8
  br label %217

164:                                              ; preds = %136
  %165 = load %struct.http_t*, %struct.http_t** %5, align 8
  %166 = getelementptr inbounds %struct.http_t, %struct.http_t* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %169 = call i64 @strncmp(i8* %167, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %184, label %171

171:                                              ; preds = %164
  %172 = load i64, i64* @T_LEN, align 8
  %173 = load %struct.http_t*, %struct.http_t** %5, align 8
  %174 = getelementptr inbounds %struct.http_t, %struct.http_t* %173, i32 0, i32 6
  store i64 %172, i64* %174, align 8
  %175 = load %struct.http_t*, %struct.http_t** %5, align 8
  %176 = getelementptr inbounds %struct.http_t, %struct.http_t* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = call i32 @strtol(i8* %180, i32* null, i32 10)
  %182 = load %struct.http_t*, %struct.http_t** %5, align 8
  %183 = getelementptr inbounds %struct.http_t, %struct.http_t* %182, i32 0, i32 7
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %171, %164
  %185 = load %struct.http_t*, %struct.http_t** %5, align 8
  %186 = getelementptr inbounds %struct.http_t, %struct.http_t* %185, i32 0, i32 2
  %187 = load i8*, i8** %186, align 8
  %188 = call i64 @string_is_equal(i8* %187, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = load i64, i64* @T_CHUNK, align 8
  %192 = load %struct.http_t*, %struct.http_t** %5, align 8
  %193 = getelementptr inbounds %struct.http_t, %struct.http_t* %192, i32 0, i32 6
  store i64 %191, i64* %193, align 8
  br label %194

194:                                              ; preds = %190, %184
  %195 = load %struct.http_t*, %struct.http_t** %5, align 8
  %196 = getelementptr inbounds %struct.http_t, %struct.http_t* %195, i32 0, i32 2
  %197 = load i8*, i8** %196, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %194
  %203 = load i64, i64* @P_BODY, align 8
  %204 = load %struct.http_t*, %struct.http_t** %5, align 8
  %205 = getelementptr inbounds %struct.http_t, %struct.http_t* %204, i32 0, i32 1
  store i64 %203, i64* %205, align 8
  %206 = load %struct.http_t*, %struct.http_t** %5, align 8
  %207 = getelementptr inbounds %struct.http_t, %struct.http_t* %206, i32 0, i32 6
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @T_CHUNK, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %202
  %212 = load i64, i64* @P_BODY_CHUNKLEN, align 8
  %213 = load %struct.http_t*, %struct.http_t** %5, align 8
  %214 = getelementptr inbounds %struct.http_t, %struct.http_t* %213, i32 0, i32 1
  store i64 %212, i64* %214, align 8
  br label %215

215:                                              ; preds = %211, %202
  br label %216

216:                                              ; preds = %215, %194
  br label %217

217:                                              ; preds = %216, %150
  %218 = load %struct.http_t*, %struct.http_t** %5, align 8
  %219 = getelementptr inbounds %struct.http_t, %struct.http_t* %218, i32 0, i32 2
  %220 = load i8*, i8** %219, align 8
  %221 = load i8*, i8** %10, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  %223 = load i8*, i8** %9, align 8
  %224 = load i8*, i8** %10, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  %226 = ptrtoint i8* %223 to i64
  %227 = ptrtoint i8* %225 to i64
  %228 = sub i64 %226, %227
  %229 = trunc i64 %228 to i32
  %230 = call i32 @memmove(i8* %220, i8* %222, i32 %229)
  %231 = load i8*, i8** %9, align 8
  %232 = load i8*, i8** %10, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 1
  %234 = ptrtoint i8* %231 to i64
  %235 = ptrtoint i8* %233 to i64
  %236 = sub i64 %234, %235
  %237 = trunc i64 %236 to i32
  %238 = load %struct.http_t*, %struct.http_t** %5, align 8
  %239 = getelementptr inbounds %struct.http_t, %struct.http_t* %238, i32 0, i32 3
  store i32 %237, i32* %239, align 8
  br label %94

240:                                              ; preds = %119, %94
  %241 = load %struct.http_t*, %struct.http_t** %5, align 8
  %242 = getelementptr inbounds %struct.http_t, %struct.http_t* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @P_BODY, align 8
  %245 = icmp sge i64 %243, %244
  br i1 %245, label %246, label %252

246:                                              ; preds = %240
  %247 = load %struct.http_t*, %struct.http_t** %5, align 8
  %248 = getelementptr inbounds %struct.http_t, %struct.http_t* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  store i32 %249, i32* %8, align 4
  %250 = load %struct.http_t*, %struct.http_t** %5, align 8
  %251 = getelementptr inbounds %struct.http_t, %struct.http_t* %250, i32 0, i32 3
  store i32 0, i32* %251, align 8
  br label %252

252:                                              ; preds = %246, %240
  br label %253

253:                                              ; preds = %252, %22
  %254 = load %struct.http_t*, %struct.http_t** %5, align 8
  %255 = getelementptr inbounds %struct.http_t, %struct.http_t* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @P_BODY, align 8
  %258 = icmp sge i64 %256, %257
  br i1 %258, label %259, label %566

259:                                              ; preds = %253
  %260 = load %struct.http_t*, %struct.http_t** %5, align 8
  %261 = getelementptr inbounds %struct.http_t, %struct.http_t* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @P_DONE, align 8
  %264 = icmp slt i64 %262, %263
  br i1 %264, label %265, label %566

265:                                              ; preds = %259
  %266 = load i32, i32* %8, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %350, label %268

268:                                              ; preds = %265
  %269 = load %struct.http_t*, %struct.http_t** %5, align 8
  %270 = getelementptr inbounds %struct.http_t, %struct.http_t* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %268
  store i32 -1, i32* %8, align 4
  br label %298

274:                                              ; preds = %268
  %275 = load %struct.http_t*, %struct.http_t** %5, align 8
  %276 = getelementptr inbounds %struct.http_t, %struct.http_t* %275, i32 0, i32 8
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.http_t*, %struct.http_t** %5, align 8
  %280 = getelementptr inbounds %struct.http_t, %struct.http_t* %279, i32 0, i32 0
  %281 = load %struct.http_t*, %struct.http_t** %5, align 8
  %282 = getelementptr inbounds %struct.http_t, %struct.http_t* %281, i32 0, i32 2
  %283 = load i8*, i8** %282, align 8
  %284 = bitcast i8* %283 to i32*
  %285 = load %struct.http_t*, %struct.http_t** %5, align 8
  %286 = getelementptr inbounds %struct.http_t, %struct.http_t* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %284, i64 %288
  %290 = load %struct.http_t*, %struct.http_t** %5, align 8
  %291 = getelementptr inbounds %struct.http_t, %struct.http_t* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.http_t*, %struct.http_t** %5, align 8
  %294 = getelementptr inbounds %struct.http_t, %struct.http_t* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = sub nsw i32 %292, %295
  %297 = call i32 @socket_receive_all_nonblocking(i32 %278, i32* %280, i32* %289, i32 %296)
  store i32 %297, i32* %8, align 4
  br label %298

298:                                              ; preds = %274, %273
  %299 = load i32, i32* %8, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %323

301:                                              ; preds = %298
  %302 = load %struct.http_t*, %struct.http_t** %5, align 8
  %303 = getelementptr inbounds %struct.http_t, %struct.http_t* %302, i32 0, i32 6
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @T_FULL, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %321

307:                                              ; preds = %301
  %308 = load i64, i64* @P_DONE, align 8
  %309 = load %struct.http_t*, %struct.http_t** %5, align 8
  %310 = getelementptr inbounds %struct.http_t, %struct.http_t* %309, i32 0, i32 1
  store i64 %308, i64* %310, align 8
  %311 = load %struct.http_t*, %struct.http_t** %5, align 8
  %312 = getelementptr inbounds %struct.http_t, %struct.http_t* %311, i32 0, i32 2
  %313 = load i8*, i8** %312, align 8
  %314 = load %struct.http_t*, %struct.http_t** %5, align 8
  %315 = getelementptr inbounds %struct.http_t, %struct.http_t* %314, i32 0, i32 7
  %316 = load i32, i32* %315, align 8
  %317 = call i64 @realloc(i8* %313, i32 %316)
  %318 = inttoptr i64 %317 to i8*
  %319 = load %struct.http_t*, %struct.http_t** %5, align 8
  %320 = getelementptr inbounds %struct.http_t, %struct.http_t* %319, i32 0, i32 2
  store i8* %318, i8** %320, align 8
  br label %322

321:                                              ; preds = %301
  br label %600

322:                                              ; preds = %307
  store i32 0, i32* %8, align 4
  br label %323

323:                                              ; preds = %322, %298
  %324 = load %struct.http_t*, %struct.http_t** %5, align 8
  %325 = getelementptr inbounds %struct.http_t, %struct.http_t* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* %8, align 4
  %328 = add nsw i32 %326, %327
  %329 = load %struct.http_t*, %struct.http_t** %5, align 8
  %330 = getelementptr inbounds %struct.http_t, %struct.http_t* %329, i32 0, i32 4
  %331 = load i32, i32* %330, align 4
  %332 = sub nsw i32 %331, 64
  %333 = icmp sge i32 %328, %332
  br i1 %333, label %334, label %349

334:                                              ; preds = %323
  %335 = load %struct.http_t*, %struct.http_t** %5, align 8
  %336 = getelementptr inbounds %struct.http_t, %struct.http_t* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  %338 = mul nsw i32 %337, 2
  store i32 %338, i32* %336, align 4
  %339 = load %struct.http_t*, %struct.http_t** %5, align 8
  %340 = getelementptr inbounds %struct.http_t, %struct.http_t* %339, i32 0, i32 2
  %341 = load i8*, i8** %340, align 8
  %342 = load %struct.http_t*, %struct.http_t** %5, align 8
  %343 = getelementptr inbounds %struct.http_t, %struct.http_t* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 4
  %345 = call i64 @realloc(i8* %341, i32 %344)
  %346 = inttoptr i64 %345 to i8*
  %347 = load %struct.http_t*, %struct.http_t** %5, align 8
  %348 = getelementptr inbounds %struct.http_t, %struct.http_t* %347, i32 0, i32 2
  store i8* %346, i8** %348, align 8
  br label %349

349:                                              ; preds = %334, %323
  br label %350

350:                                              ; preds = %349, %265
  br label %351

351:                                              ; preds = %493, %476, %350
  %352 = load %struct.http_t*, %struct.http_t** %5, align 8
  %353 = getelementptr inbounds %struct.http_t, %struct.http_t* %352, i32 0, i32 6
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @T_CHUNK, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %528

357:                                              ; preds = %351
  %358 = load %struct.http_t*, %struct.http_t** %5, align 8
  %359 = getelementptr inbounds %struct.http_t, %struct.http_t* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* @P_BODY_CHUNKLEN, align 8
  %362 = icmp eq i64 %360, %361
  br i1 %362, label %363, label %479

363:                                              ; preds = %357
  %364 = load i32, i32* %8, align 4
  %365 = load %struct.http_t*, %struct.http_t** %5, align 8
  %366 = getelementptr inbounds %struct.http_t, %struct.http_t* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 8
  %368 = add nsw i32 %367, %364
  store i32 %368, i32* %366, align 8
  %369 = load %struct.http_t*, %struct.http_t** %5, align 8
  %370 = getelementptr inbounds %struct.http_t, %struct.http_t* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.http_t*, %struct.http_t** %5, align 8
  %373 = getelementptr inbounds %struct.http_t, %struct.http_t* %372, i32 0, i32 7
  %374 = load i32, i32* %373, align 8
  %375 = sub nsw i32 %371, %374
  %376 = icmp sge i32 %375, 2
  br i1 %376, label %377, label %478

377:                                              ; preds = %363
  %378 = load %struct.http_t*, %struct.http_t** %5, align 8
  %379 = getelementptr inbounds %struct.http_t, %struct.http_t* %378, i32 0, i32 2
  %380 = load i8*, i8** %379, align 8
  %381 = load %struct.http_t*, %struct.http_t** %5, align 8
  %382 = getelementptr inbounds %struct.http_t, %struct.http_t* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 8
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8, i8* %380, i64 %384
  store i8* %385, i8** %11, align 8
  %386 = load %struct.http_t*, %struct.http_t** %5, align 8
  %387 = getelementptr inbounds %struct.http_t, %struct.http_t* %386, i32 0, i32 2
  %388 = load i8*, i8** %387, align 8
  %389 = load %struct.http_t*, %struct.http_t** %5, align 8
  %390 = getelementptr inbounds %struct.http_t, %struct.http_t* %389, i32 0, i32 7
  %391 = load i32, i32* %390, align 8
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, i8* %388, i64 %392
  %394 = getelementptr inbounds i8, i8* %393, i64 2
  %395 = load %struct.http_t*, %struct.http_t** %5, align 8
  %396 = getelementptr inbounds %struct.http_t, %struct.http_t* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.http_t*, %struct.http_t** %5, align 8
  %399 = getelementptr inbounds %struct.http_t, %struct.http_t* %398, i32 0, i32 7
  %400 = load i32, i32* %399, align 8
  %401 = sub nsw i32 %397, %400
  %402 = sub nsw i32 %401, 2
  %403 = call i64 @memchr(i8* %394, i8 signext 10, i32 %402)
  %404 = inttoptr i64 %403 to i8*
  store i8* %404, i8** %12, align 8
  %405 = load i8*, i8** %12, align 8
  %406 = icmp ne i8* %405, null
  br i1 %406, label %407, label %477

407:                                              ; preds = %377
  %408 = load %struct.http_t*, %struct.http_t** %5, align 8
  %409 = getelementptr inbounds %struct.http_t, %struct.http_t* %408, i32 0, i32 2
  %410 = load i8*, i8** %409, align 8
  %411 = load %struct.http_t*, %struct.http_t** %5, align 8
  %412 = getelementptr inbounds %struct.http_t, %struct.http_t* %411, i32 0, i32 7
  %413 = load i32, i32* %412, align 8
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8, i8* %410, i64 %414
  %416 = call i64 @strtoul(i8* %415, i32* null, i32 16)
  store i64 %416, i64* %13, align 8
  %417 = load %struct.http_t*, %struct.http_t** %5, align 8
  %418 = getelementptr inbounds %struct.http_t, %struct.http_t* %417, i32 0, i32 7
  %419 = load i32, i32* %418, align 8
  %420 = load %struct.http_t*, %struct.http_t** %5, align 8
  %421 = getelementptr inbounds %struct.http_t, %struct.http_t* %420, i32 0, i32 3
  store i32 %419, i32* %421, align 8
  %422 = load i8*, i8** %12, align 8
  %423 = getelementptr inbounds i8, i8* %422, i32 1
  store i8* %423, i8** %12, align 8
  %424 = load %struct.http_t*, %struct.http_t** %5, align 8
  %425 = getelementptr inbounds %struct.http_t, %struct.http_t* %424, i32 0, i32 2
  %426 = load i8*, i8** %425, align 8
  %427 = load %struct.http_t*, %struct.http_t** %5, align 8
  %428 = getelementptr inbounds %struct.http_t, %struct.http_t* %427, i32 0, i32 7
  %429 = load i32, i32* %428, align 8
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i8, i8* %426, i64 %430
  %432 = load i8*, i8** %12, align 8
  %433 = load i8*, i8** %11, align 8
  %434 = load i8*, i8** %12, align 8
  %435 = ptrtoint i8* %433 to i64
  %436 = ptrtoint i8* %434 to i64
  %437 = sub i64 %435, %436
  %438 = trunc i64 %437 to i32
  %439 = call i32 @memmove(i8* %431, i8* %432, i32 %438)
  %440 = load i64, i64* %13, align 8
  %441 = trunc i64 %440 to i32
  %442 = load %struct.http_t*, %struct.http_t** %5, align 8
  %443 = getelementptr inbounds %struct.http_t, %struct.http_t* %442, i32 0, i32 7
  store i32 %441, i32* %443, align 8
  %444 = load i8*, i8** %11, align 8
  %445 = load i8*, i8** %12, align 8
  %446 = ptrtoint i8* %444 to i64
  %447 = ptrtoint i8* %445 to i64
  %448 = sub i64 %446, %447
  %449 = trunc i64 %448 to i32
  store i32 %449, i32* %8, align 4
  %450 = load i64, i64* @P_BODY, align 8
  %451 = load %struct.http_t*, %struct.http_t** %5, align 8
  %452 = getelementptr inbounds %struct.http_t, %struct.http_t* %451, i32 0, i32 1
  store i64 %450, i64* %452, align 8
  %453 = load %struct.http_t*, %struct.http_t** %5, align 8
  %454 = getelementptr inbounds %struct.http_t, %struct.http_t* %453, i32 0, i32 7
  %455 = load i32, i32* %454, align 8
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %476

457:                                              ; preds = %407
  %458 = load i64, i64* @P_DONE, align 8
  %459 = load %struct.http_t*, %struct.http_t** %5, align 8
  %460 = getelementptr inbounds %struct.http_t, %struct.http_t* %459, i32 0, i32 1
  store i64 %458, i64* %460, align 8
  %461 = load %struct.http_t*, %struct.http_t** %5, align 8
  %462 = getelementptr inbounds %struct.http_t, %struct.http_t* %461, i32 0, i32 3
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.http_t*, %struct.http_t** %5, align 8
  %465 = getelementptr inbounds %struct.http_t, %struct.http_t* %464, i32 0, i32 7
  store i32 %463, i32* %465, align 8
  %466 = load %struct.http_t*, %struct.http_t** %5, align 8
  %467 = getelementptr inbounds %struct.http_t, %struct.http_t* %466, i32 0, i32 2
  %468 = load i8*, i8** %467, align 8
  %469 = load %struct.http_t*, %struct.http_t** %5, align 8
  %470 = getelementptr inbounds %struct.http_t, %struct.http_t* %469, i32 0, i32 7
  %471 = load i32, i32* %470, align 8
  %472 = call i64 @realloc(i8* %468, i32 %471)
  %473 = inttoptr i64 %472 to i8*
  %474 = load %struct.http_t*, %struct.http_t** %5, align 8
  %475 = getelementptr inbounds %struct.http_t, %struct.http_t* %474, i32 0, i32 2
  store i8* %473, i8** %475, align 8
  br label %476

476:                                              ; preds = %457, %407
  br label %351

477:                                              ; preds = %377
  br label %478

478:                                              ; preds = %477, %363
  br label %527

479:                                              ; preds = %357
  %480 = load %struct.http_t*, %struct.http_t** %5, align 8
  %481 = getelementptr inbounds %struct.http_t, %struct.http_t* %480, i32 0, i32 1
  %482 = load i64, i64* %481, align 8
  %483 = load i64, i64* @P_BODY, align 8
  %484 = icmp eq i64 %482, %483
  br i1 %484, label %485, label %526

485:                                              ; preds = %479
  %486 = load i32, i32* %8, align 4
  %487 = sext i32 %486 to i64
  %488 = load %struct.http_t*, %struct.http_t** %5, align 8
  %489 = getelementptr inbounds %struct.http_t, %struct.http_t* %488, i32 0, i32 7
  %490 = load i32, i32* %489, align 8
  %491 = sext i32 %490 to i64
  %492 = icmp uge i64 %487, %491
  br i1 %492, label %493, label %514

493:                                              ; preds = %485
  %494 = load %struct.http_t*, %struct.http_t** %5, align 8
  %495 = getelementptr inbounds %struct.http_t, %struct.http_t* %494, i32 0, i32 7
  %496 = load i32, i32* %495, align 8
  %497 = load %struct.http_t*, %struct.http_t** %5, align 8
  %498 = getelementptr inbounds %struct.http_t, %struct.http_t* %497, i32 0, i32 3
  %499 = load i32, i32* %498, align 8
  %500 = add nsw i32 %499, %496
  store i32 %500, i32* %498, align 8
  %501 = load %struct.http_t*, %struct.http_t** %5, align 8
  %502 = getelementptr inbounds %struct.http_t, %struct.http_t* %501, i32 0, i32 7
  %503 = load i32, i32* %502, align 8
  %504 = load i32, i32* %8, align 4
  %505 = sub nsw i32 %504, %503
  store i32 %505, i32* %8, align 4
  %506 = load %struct.http_t*, %struct.http_t** %5, align 8
  %507 = getelementptr inbounds %struct.http_t, %struct.http_t* %506, i32 0, i32 3
  %508 = load i32, i32* %507, align 8
  %509 = load %struct.http_t*, %struct.http_t** %5, align 8
  %510 = getelementptr inbounds %struct.http_t, %struct.http_t* %509, i32 0, i32 7
  store i32 %508, i32* %510, align 8
  %511 = load i64, i64* @P_BODY_CHUNKLEN, align 8
  %512 = load %struct.http_t*, %struct.http_t** %5, align 8
  %513 = getelementptr inbounds %struct.http_t, %struct.http_t* %512, i32 0, i32 1
  store i64 %511, i64* %513, align 8
  br label %351

514:                                              ; preds = %485
  %515 = load i32, i32* %8, align 4
  %516 = load %struct.http_t*, %struct.http_t** %5, align 8
  %517 = getelementptr inbounds %struct.http_t, %struct.http_t* %516, i32 0, i32 3
  %518 = load i32, i32* %517, align 8
  %519 = add nsw i32 %518, %515
  store i32 %519, i32* %517, align 8
  %520 = load i32, i32* %8, align 4
  %521 = load %struct.http_t*, %struct.http_t** %5, align 8
  %522 = getelementptr inbounds %struct.http_t, %struct.http_t* %521, i32 0, i32 7
  %523 = load i32, i32* %522, align 8
  %524 = sub nsw i32 %523, %520
  store i32 %524, i32* %522, align 8
  br label %525

525:                                              ; preds = %514
  br label %526

526:                                              ; preds = %525, %479
  br label %527

527:                                              ; preds = %526, %478
  br label %565

528:                                              ; preds = %351
  %529 = load i32, i32* %8, align 4
  %530 = load %struct.http_t*, %struct.http_t** %5, align 8
  %531 = getelementptr inbounds %struct.http_t, %struct.http_t* %530, i32 0, i32 3
  %532 = load i32, i32* %531, align 8
  %533 = add nsw i32 %532, %529
  store i32 %533, i32* %531, align 8
  %534 = load %struct.http_t*, %struct.http_t** %5, align 8
  %535 = getelementptr inbounds %struct.http_t, %struct.http_t* %534, i32 0, i32 3
  %536 = load i32, i32* %535, align 8
  %537 = load %struct.http_t*, %struct.http_t** %5, align 8
  %538 = getelementptr inbounds %struct.http_t, %struct.http_t* %537, i32 0, i32 7
  %539 = load i32, i32* %538, align 8
  %540 = icmp eq i32 %536, %539
  br i1 %540, label %541, label %555

541:                                              ; preds = %528
  %542 = load i64, i64* @P_DONE, align 8
  %543 = load %struct.http_t*, %struct.http_t** %5, align 8
  %544 = getelementptr inbounds %struct.http_t, %struct.http_t* %543, i32 0, i32 1
  store i64 %542, i64* %544, align 8
  %545 = load %struct.http_t*, %struct.http_t** %5, align 8
  %546 = getelementptr inbounds %struct.http_t, %struct.http_t* %545, i32 0, i32 2
  %547 = load i8*, i8** %546, align 8
  %548 = load %struct.http_t*, %struct.http_t** %5, align 8
  %549 = getelementptr inbounds %struct.http_t, %struct.http_t* %548, i32 0, i32 7
  %550 = load i32, i32* %549, align 8
  %551 = call i64 @realloc(i8* %547, i32 %550)
  %552 = inttoptr i64 %551 to i8*
  %553 = load %struct.http_t*, %struct.http_t** %5, align 8
  %554 = getelementptr inbounds %struct.http_t, %struct.http_t* %553, i32 0, i32 2
  store i8* %552, i8** %554, align 8
  br label %555

555:                                              ; preds = %541, %528
  %556 = load %struct.http_t*, %struct.http_t** %5, align 8
  %557 = getelementptr inbounds %struct.http_t, %struct.http_t* %556, i32 0, i32 3
  %558 = load i32, i32* %557, align 8
  %559 = load %struct.http_t*, %struct.http_t** %5, align 8
  %560 = getelementptr inbounds %struct.http_t, %struct.http_t* %559, i32 0, i32 7
  %561 = load i32, i32* %560, align 8
  %562 = icmp sgt i32 %558, %561
  br i1 %562, label %563, label %564

563:                                              ; preds = %555
  br label %600

564:                                              ; preds = %555
  br label %565

565:                                              ; preds = %564, %527
  br label %566

566:                                              ; preds = %565, %259, %253
  %567 = load i64*, i64** %6, align 8
  %568 = icmp ne i64* %567, null
  br i1 %568, label %569, label %575

569:                                              ; preds = %566
  %570 = load %struct.http_t*, %struct.http_t** %5, align 8
  %571 = getelementptr inbounds %struct.http_t, %struct.http_t* %570, i32 0, i32 3
  %572 = load i32, i32* %571, align 8
  %573 = sext i32 %572 to i64
  %574 = load i64*, i64** %6, align 8
  store i64 %573, i64* %574, align 8
  br label %575

575:                                              ; preds = %569, %566
  %576 = load i64*, i64** %7, align 8
  %577 = icmp ne i64* %576, null
  br i1 %577, label %578, label %593

578:                                              ; preds = %575
  %579 = load %struct.http_t*, %struct.http_t** %5, align 8
  %580 = getelementptr inbounds %struct.http_t, %struct.http_t* %579, i32 0, i32 6
  %581 = load i64, i64* %580, align 8
  %582 = load i64, i64* @T_LEN, align 8
  %583 = icmp eq i64 %581, %582
  br i1 %583, label %584, label %590

584:                                              ; preds = %578
  %585 = load %struct.http_t*, %struct.http_t** %5, align 8
  %586 = getelementptr inbounds %struct.http_t, %struct.http_t* %585, i32 0, i32 7
  %587 = load i32, i32* %586, align 8
  %588 = sext i32 %587 to i64
  %589 = load i64*, i64** %7, align 8
  store i64 %588, i64* %589, align 8
  br label %592

590:                                              ; preds = %578
  %591 = load i64*, i64** %7, align 8
  store i64 0, i64* %591, align 8
  br label %592

592:                                              ; preds = %590, %584
  br label %593

593:                                              ; preds = %592, %575
  %594 = load %struct.http_t*, %struct.http_t** %5, align 8
  %595 = getelementptr inbounds %struct.http_t, %struct.http_t* %594, i32 0, i32 1
  %596 = load i64, i64* %595, align 8
  %597 = load i64, i64* @P_DONE, align 8
  %598 = icmp eq i64 %596, %597
  %599 = zext i1 %598 to i32
  store i32 %599, i32* %4, align 4
  br label %612

600:                                              ; preds = %563, %321, %149, %61, %21
  %601 = load %struct.http_t*, %struct.http_t** %5, align 8
  %602 = icmp ne %struct.http_t* %601, null
  br i1 %602, label %603, label %611

603:                                              ; preds = %600
  %604 = load %struct.http_t*, %struct.http_t** %5, align 8
  %605 = getelementptr inbounds %struct.http_t, %struct.http_t* %604, i32 0, i32 0
  store i32 1, i32* %605, align 8
  %606 = load i64, i64* @P_ERROR, align 8
  %607 = load %struct.http_t*, %struct.http_t** %5, align 8
  %608 = getelementptr inbounds %struct.http_t, %struct.http_t* %607, i32 0, i32 1
  store i64 %606, i64* %608, align 8
  %609 = load %struct.http_t*, %struct.http_t** %5, align 8
  %610 = getelementptr inbounds %struct.http_t, %struct.http_t* %609, i32 0, i32 5
  store i32 -1, i32* %610, align 8
  br label %611

611:                                              ; preds = %603, %600
  store i32 1, i32* %4, align 4
  br label %612

612:                                              ; preds = %611, %593
  %613 = load i32, i32* %4, align 4
  ret i32 %613
}

declare dso_local i32 @socket_receive_all_nonblocking(i32, i32*, i32*, i32) #1

declare dso_local i64 @realloc(i8*, i32) #1

declare dso_local i64 @memchr(i8*, i8 signext, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @STRLEN_CONST(i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
