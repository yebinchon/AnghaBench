; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_unzlocal_GetCurrentFileInfoInternal.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_unzlocal_GetCurrentFileInfoInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }

@UNZ_OK = common dso_local global i32 0, align 4
@UNZ_PARAMERROR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@UNZ_ERRNO = common dso_local global i32 0, align 4
@UNZ_BADZIPFILE = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, %struct.TYPE_7__*, i8*, i32, i8*, i32, i8*, i32)* @unzlocal_GetCurrentFileInfoInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unzlocal_GetCurrentFileInfoInternal(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca %struct.TYPE_8__, align 4
  %22 = alloca %struct.TYPE_7__, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  %29 = load i32, i32* @UNZ_OK, align 4
  store i32 %29, i32* %23, align 4
  store i64 0, i64* %25, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %9
  %33 = load i32, i32* @UNZ_PARAMERROR, align 4
  store i32 %33, i32* %10, align 4
  br label %433

34:                                               ; preds = %9
  %35 = load i32*, i32** %11, align 8
  %36 = bitcast i32* %35 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %20, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load i32, i32* @SEEK_SET, align 4
  %48 = call i64 @fseek(i32 %39, i64 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %51, i32* %23, align 4
  br label %52

52:                                               ; preds = %50, %34
  %53 = load i32, i32* %23, align 4
  %54 = load i32, i32* @UNZ_OK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @unzlocal_getLong(i32 %59, i32* %24)
  %61 = load i32, i32* @UNZ_OK, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %64, i32* %23, align 4
  br label %71

65:                                               ; preds = %56
  %66 = load i32, i32* %24, align 4
  %67 = icmp ne i32 %66, 33639248
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @UNZ_BADZIPFILE, align 4
  store i32 %69, i32* %23, align 4
  br label %70

70:                                               ; preds = %68, %65
  br label %71

71:                                               ; preds = %70, %63
  br label %72

72:                                               ; preds = %71, %52
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %77 = call i32 @unzlocal_getShort(i32 %75, i32* %76)
  %78 = load i32, i32* @UNZ_OK, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %81, i32* %23, align 4
  br label %82

82:                                               ; preds = %80, %72
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %87 = call i32 @unzlocal_getShort(i32 %85, i32* %86)
  %88 = load i32, i32* @UNZ_OK, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %91, i32* %23, align 4
  br label %92

92:                                               ; preds = %90, %82
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %97 = call i32 @unzlocal_getShort(i32 %95, i32* %96)
  %98 = load i32, i32* @UNZ_OK, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %101, i32* %23, align 4
  br label %102

102:                                              ; preds = %100, %92
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %107 = call i32 @unzlocal_getShort(i32 %105, i32* %106)
  %108 = load i32, i32* @UNZ_OK, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %111, i32* %23, align 4
  br label %112

112:                                              ; preds = %110, %102
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 4
  %117 = call i32 @unzlocal_getLong(i32 %115, i32* %116)
  %118 = load i32, i32* @UNZ_OK, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %121, i32* %23, align 4
  br label %122

122:                                              ; preds = %120, %112
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 14
  %126 = call i32 @unzlocal_DosDateToTmuDate(i32 %124, i32* %125)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 5
  %131 = call i32 @unzlocal_getLong(i32 %129, i32* %130)
  %132 = load i32, i32* @UNZ_OK, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %122
  %135 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %135, i32* %23, align 4
  br label %136

136:                                              ; preds = %134, %122
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 6
  %141 = call i32 @unzlocal_getLong(i32 %139, i32* %140)
  %142 = load i32, i32* @UNZ_OK, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %136
  %145 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %145, i32* %23, align 4
  br label %146

146:                                              ; preds = %144, %136
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 7
  %151 = call i32 @unzlocal_getLong(i32 %149, i32* %150)
  %152 = load i32, i32* @UNZ_OK, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %146
  %155 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %155, i32* %23, align 4
  br label %156

156:                                              ; preds = %154, %146
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 8
  %161 = call i32 @unzlocal_getShort(i32 %159, i32* %160)
  %162 = load i32, i32* @UNZ_OK, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %165, i32* %23, align 4
  br label %166

166:                                              ; preds = %164, %156
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 9
  %171 = call i32 @unzlocal_getShort(i32 %169, i32* %170)
  %172 = load i32, i32* @UNZ_OK, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %166
  %175 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %175, i32* %23, align 4
  br label %176

176:                                              ; preds = %174, %166
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 10
  %181 = call i32 @unzlocal_getShort(i32 %179, i32* %180)
  %182 = load i32, i32* @UNZ_OK, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %176
  %185 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %185, i32* %23, align 4
  br label %186

186:                                              ; preds = %184, %176
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 11
  %191 = call i32 @unzlocal_getShort(i32 %189, i32* %190)
  %192 = load i32, i32* @UNZ_OK, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %186
  %195 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %195, i32* %23, align 4
  br label %196

196:                                              ; preds = %194, %186
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 12
  %201 = call i32 @unzlocal_getShort(i32 %199, i32* %200)
  %202 = load i32, i32* @UNZ_OK, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %196
  %205 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %205, i32* %23, align 4
  br label %206

206:                                              ; preds = %204, %196
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 13
  %211 = call i32 @unzlocal_getLong(i32 %209, i32* %210)
  %212 = load i32, i32* @UNZ_OK, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %206
  %215 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %215, i32* %23, align 4
  br label %216

216:                                              ; preds = %214, %206
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %221 = call i32 @unzlocal_getLong(i32 %219, i32* %220)
  %222 = load i32, i32* @UNZ_OK, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %216
  %225 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %225, i32* %23, align 4
  br label %226

226:                                              ; preds = %224, %216
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 8
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = load i64, i64* %25, align 8
  %231 = add nsw i64 %230, %229
  store i64 %231, i64* %25, align 8
  %232 = load i32, i32* %23, align 4
  %233 = load i32, i32* @UNZ_OK, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %276

235:                                              ; preds = %226
  %236 = load i8*, i8** %14, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %276

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 8
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %15, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %251

243:                                              ; preds = %238
  %244 = load i8*, i8** %14, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 8
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %244, i64 %247
  store i8 0, i8* %248, align 1
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 8
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %26, align 4
  br label %253

251:                                              ; preds = %238
  %252 = load i32, i32* %15, align 4
  store i32 %252, i32* %26, align 4
  br label %253

253:                                              ; preds = %251, %243
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 8
  %255 = load i32, i32* %254, align 4
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %271

257:                                              ; preds = %253
  %258 = load i32, i32* %15, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %271

260:                                              ; preds = %257
  %261 = load i8*, i8** %14, align 8
  %262 = load i32, i32* %26, align 4
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @fread(i8* %261, i32 %262, i32 1, i32 %265)
  %267 = icmp ne i32 %266, 1
  br i1 %267, label %268, label %270

268:                                              ; preds = %260
  %269 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %269, i32* %23, align 4
  br label %270

270:                                              ; preds = %268, %260
  br label %271

271:                                              ; preds = %270, %257, %253
  %272 = load i32, i32* %26, align 4
  %273 = sext i32 %272 to i64
  %274 = load i64, i64* %25, align 8
  %275 = sub nsw i64 %274, %273
  store i64 %275, i64* %25, align 8
  br label %276

276:                                              ; preds = %271, %235, %226
  %277 = load i32, i32* %23, align 4
  %278 = load i32, i32* @UNZ_OK, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %334

280:                                              ; preds = %276
  %281 = load i8*, i8** %16, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %283, label %334

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 9
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %17, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 9
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %27, align 4
  br label %293

291:                                              ; preds = %283
  %292 = load i32, i32* %17, align 4
  store i32 %292, i32* %27, align 4
  br label %293

293:                                              ; preds = %291, %288
  %294 = load i64, i64* %25, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %308

296:                                              ; preds = %293
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = load i64, i64* %25, align 8
  %301 = load i32, i32* @SEEK_CUR, align 4
  %302 = call i64 @fseek(i32 %299, i64 %300, i32 %301)
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %296
  store i64 0, i64* %25, align 8
  br label %307

305:                                              ; preds = %296
  %306 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %306, i32* %23, align 4
  br label %307

307:                                              ; preds = %305, %304
  br label %308

308:                                              ; preds = %307, %293
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 9
  %310 = load i32, i32* %309, align 4
  %311 = icmp sgt i32 %310, 0
  br i1 %311, label %312, label %326

312:                                              ; preds = %308
  %313 = load i32, i32* %17, align 4
  %314 = icmp sgt i32 %313, 0
  br i1 %314, label %315, label %326

315:                                              ; preds = %312
  %316 = load i8*, i8** %16, align 8
  %317 = load i32, i32* %27, align 4
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @fread(i8* %316, i32 %317, i32 1, i32 %320)
  %322 = icmp ne i32 %321, 1
  br i1 %322, label %323, label %325

323:                                              ; preds = %315
  %324 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %324, i32* %23, align 4
  br label %325

325:                                              ; preds = %323, %315
  br label %326

326:                                              ; preds = %325, %312, %308
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 9
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %27, align 4
  %330 = sub nsw i32 %328, %329
  %331 = sext i32 %330 to i64
  %332 = load i64, i64* %25, align 8
  %333 = add nsw i64 %332, %331
  store i64 %333, i64* %25, align 8
  br label %340

334:                                              ; preds = %280, %276
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 9
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  %338 = load i64, i64* %25, align 8
  %339 = add nsw i64 %338, %337
  store i64 %339, i64* %25, align 8
  br label %340

340:                                              ; preds = %334, %326
  %341 = load i32, i32* %23, align 4
  %342 = load i32, i32* @UNZ_OK, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %403

344:                                              ; preds = %340
  %345 = load i8*, i8** %18, align 8
  %346 = icmp ne i8* %345, null
  br i1 %346, label %347, label %403

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 10
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* %19, align 4
  %351 = icmp slt i32 %349, %350
  br i1 %351, label %352, label %360

352:                                              ; preds = %347
  %353 = load i8*, i8** %18, align 8
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 10
  %355 = load i32, i32* %354, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %353, i64 %356
  store i8 0, i8* %357, align 1
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 10
  %359 = load i32, i32* %358, align 4
  store i32 %359, i32* %28, align 4
  br label %362

360:                                              ; preds = %347
  %361 = load i32, i32* %19, align 4
  store i32 %361, i32* %28, align 4
  br label %362

362:                                              ; preds = %360, %352
  %363 = load i64, i64* %25, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %377

365:                                              ; preds = %362
  %366 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = load i64, i64* %25, align 8
  %370 = load i32, i32* @SEEK_CUR, align 4
  %371 = call i64 @fseek(i32 %368, i64 %369, i32 %370)
  %372 = icmp eq i64 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %365
  store i64 0, i64* %25, align 8
  br label %376

374:                                              ; preds = %365
  %375 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %375, i32* %23, align 4
  br label %376

376:                                              ; preds = %374, %373
  br label %377

377:                                              ; preds = %376, %362
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 10
  %379 = load i32, i32* %378, align 4
  %380 = icmp sgt i32 %379, 0
  br i1 %380, label %381, label %395

381:                                              ; preds = %377
  %382 = load i32, i32* %19, align 4
  %383 = icmp sgt i32 %382, 0
  br i1 %383, label %384, label %395

384:                                              ; preds = %381
  %385 = load i8*, i8** %18, align 8
  %386 = load i32, i32* %28, align 4
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = call i32 @fread(i8* %385, i32 %386, i32 1, i32 %389)
  %391 = icmp ne i32 %390, 1
  br i1 %391, label %392, label %394

392:                                              ; preds = %384
  %393 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %393, i32* %23, align 4
  br label %394

394:                                              ; preds = %392, %384
  br label %395

395:                                              ; preds = %394, %381, %377
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 10
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* %28, align 4
  %399 = sub nsw i32 %397, %398
  %400 = sext i32 %399 to i64
  %401 = load i64, i64* %25, align 8
  %402 = add nsw i64 %401, %400
  store i64 %402, i64* %25, align 8
  br label %409

403:                                              ; preds = %344, %340
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 10
  %405 = load i32, i32* %404, align 4
  %406 = sext i32 %405 to i64
  %407 = load i64, i64* %25, align 8
  %408 = add nsw i64 %407, %406
  store i64 %408, i64* %25, align 8
  br label %409

409:                                              ; preds = %403, %395
  %410 = load i32, i32* %23, align 4
  %411 = load i32, i32* @UNZ_OK, align 4
  %412 = icmp eq i32 %410, %411
  br i1 %412, label %413, label %420

413:                                              ; preds = %409
  %414 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %415 = icmp ne %struct.TYPE_8__* %414, null
  br i1 %415, label %416, label %420

416:                                              ; preds = %413
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %418 = bitcast %struct.TYPE_8__* %417 to i8*
  %419 = bitcast %struct.TYPE_8__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %418, i8* align 4 %419, i64 60, i1 false)
  br label %420

420:                                              ; preds = %416, %413, %409
  %421 = load i32, i32* %23, align 4
  %422 = load i32, i32* @UNZ_OK, align 4
  %423 = icmp eq i32 %421, %422
  br i1 %423, label %424, label %431

424:                                              ; preds = %420
  %425 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %426 = icmp ne %struct.TYPE_7__* %425, null
  br i1 %426, label %427, label %431

427:                                              ; preds = %424
  %428 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %429 = bitcast %struct.TYPE_7__* %428 to i8*
  %430 = bitcast %struct.TYPE_7__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %429, i8* align 4 %430, i64 4, i1 false)
  br label %431

431:                                              ; preds = %427, %424, %420
  %432 = load i32, i32* %23, align 4
  store i32 %432, i32* %10, align 4
  br label %433

433:                                              ; preds = %431, %32
  %434 = load i32, i32* %10, align 4
  ret i32 %434
}

declare dso_local i64 @fseek(i32, i64, i32) #1

declare dso_local i32 @unzlocal_getLong(i32, i32*) #1

declare dso_local i32 @unzlocal_getShort(i32, i32*) #1

declare dso_local i32 @unzlocal_DosDateToTmuDate(i32, i32*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
