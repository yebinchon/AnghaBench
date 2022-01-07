; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2GetIP.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2GetIP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i8*, i8*, i32*, i8*, i32*, i32*, i32*, i8*, i8, i8, i8, i8, i8, i32 }
%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_9__**, i32 }
%struct.TYPE_9__ = type { i64, i64 }

@Cs2Area = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"SEGA SEGASATURN\00", align 1
@cdip = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%c%c/%c%c/%c%c%c%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Cs2GetIP(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  store i64 %9, i64* %11, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = call %struct.TYPE_7__* @Cs2ReadUnFilteredSector(i32 150)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %3, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %366

16:                                               ; preds = %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %19, i64 %24
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @memcmp(i8* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 15)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %321

33:                                               ; preds = %16
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @memcpy(i8* %36, i8* %37, i32 16)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 16
  store i8 0, i8* %42, align 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 16
  %48 = call i32 @memcpy(i8* %45, i8* %47, i32 16)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 16
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 32
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @sscanf(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 42
  %64 = call i32 @memcpy(i8* %61, i8* %63, i32 6)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 6
  store i8 0, i8* %68, align 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 52
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 53
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 54
  %80 = load i8, i8* %79, align 1
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 55
  %83 = load i8, i8* %82, align 1
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 48
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 49
  %89 = load i8, i8* %88, align 1
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 50
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 51
  %95 = load i8, i8* %94, align 1
  %96 = call i32 @sprintf(i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8 signext %74, i8 signext %77, i8 signext %80, i8 signext %83, i8 signext %86, i8 signext %89, i8 signext %92, i8 signext %95)
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 56
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @sscanf(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %101)
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 64
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @sscanf(i8* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %107)
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 80
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 6
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @sscanf(i8* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 7
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 96
  %120 = call i32 @memcpy(i8* %117, i8* %119, i32 112)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 7
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 112
  store i8 0, i8* %124, align 1
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 224
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = shl i32 %128, 24
  %130 = load i8*, i8** %5, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 225
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = shl i32 %133, 16
  %135 = or i32 %129, %134
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 226
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = shl i32 %139, 8
  %141 = or i32 %135, %140
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 227
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = or i32 %141, %145
  %147 = trunc i32 %146 to i8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 8
  store i8 %147, i8* %149, align 8
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 232
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = shl i32 %153, 24
  %155 = load i8*, i8** %5, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 233
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = shl i32 %158, 16
  %160 = or i32 %154, %159
  %161 = load i8*, i8** %5, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 234
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = shl i32 %164, 8
  %166 = or i32 %160, %165
  %167 = load i8*, i8** %5, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 235
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = or i32 %166, %170
  %172 = trunc i32 %171 to i8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 9
  store i8 %172, i8* %174, align 1
  %175 = load i8*, i8** %5, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 236
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = shl i32 %178, 24
  %180 = load i8*, i8** %5, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 237
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = shl i32 %183, 16
  %185 = or i32 %179, %184
  %186 = load i8*, i8** %5, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 238
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = shl i32 %189, 8
  %191 = or i32 %185, %190
  %192 = load i8*, i8** %5, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 239
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = or i32 %191, %195
  %197 = trunc i32 %196 to i8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 10
  store i8 %197, i8* %199, align 2
  %200 = load i8*, i8** %5, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 240
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = shl i32 %203, 24
  %205 = load i8*, i8** %5, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 241
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = shl i32 %208, 16
  %210 = or i32 %204, %209
  %211 = load i8*, i8** %5, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 242
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = shl i32 %214, 8
  %216 = or i32 %210, %215
  %217 = load i8*, i8** %5, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 243
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = or i32 %216, %220
  %222 = trunc i32 %221 to i8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 11
  store i8 %222, i8* %224, align 1
  %225 = load i8*, i8** %5, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 244
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = shl i32 %228, 24
  %230 = load i8*, i8** %5, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 245
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = shl i32 %233, 16
  %235 = or i32 %229, %234
  %236 = load i8*, i8** %5, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 246
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = shl i32 %239, 8
  %241 = or i32 %235, %240
  %242 = load i8*, i8** %5, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 247
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = or i32 %241, %245
  %247 = trunc i32 %246 to i8
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 12
  store i8 %247, i8* %249, align 4
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 9
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %33
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 9
  store i8 0, i8* %257, align 1
  br label %258

258:                                              ; preds = %255, %33
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 9
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = and i32 %262, -2147483648
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %275

265:                                              ; preds = %258
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 9
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = and i32 %269, 65535
  %271 = add nsw i32 100663296, %270
  %272 = trunc i32 %271 to i8
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 9
  store i8 %272, i8* %274, align 1
  br label %275

275:                                              ; preds = %265, %258
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 10
  %278 = load i8, i8* %277, align 2
  %279 = sext i8 %278 to i32
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %275
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 10
  store i8 0, i8* %283, align 2
  br label %284

284:                                              ; preds = %281, %275
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 10
  %287 = load i8, i8* %286, align 2
  %288 = sext i8 %287 to i32
  %289 = and i32 %288, -2147483648
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %301

291:                                              ; preds = %284
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 10
  %294 = load i8, i8* %293, align 2
  %295 = sext i8 %294 to i32
  %296 = and i32 %295, 65535
  %297 = add nsw i32 100663296, %296
  %298 = trunc i32 %297 to i8
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 10
  store i8 %298, i8* %300, align 2
  br label %301

301:                                              ; preds = %291, %284
  %302 = load i32, i32* %2, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %320

304:                                              ; preds = %301
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cdip, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 5
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  switch i32 %309, label %318 [
    i32 74, label %310
    i32 84, label %311
    i32 85, label %312
    i32 66, label %313
    i32 75, label %314
    i32 65, label %315
    i32 69, label %316
    i32 76, label %317
  ]

310:                                              ; preds = %304
  store i32 1, i32* %4, align 4
  br label %319

311:                                              ; preds = %304
  store i32 2, i32* %4, align 4
  br label %319

312:                                              ; preds = %304
  store i32 4, i32* %4, align 4
  br label %319

313:                                              ; preds = %304
  store i32 5, i32* %4, align 4
  br label %319

314:                                              ; preds = %304
  store i32 6, i32* %4, align 4
  br label %319

315:                                              ; preds = %304
  store i32 10, i32* %4, align 4
  br label %319

316:                                              ; preds = %304
  store i32 12, i32* %4, align 4
  br label %319

317:                                              ; preds = %304
  store i32 13, i32* %4, align 4
  br label %319

318:                                              ; preds = %304
  br label %319

319:                                              ; preds = %318, %317, %316, %315, %314, %313, %312, %311, %310
  br label %320

320:                                              ; preds = %319, %301
  br label %321

321:                                              ; preds = %320, %16
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 2
  %324 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %323, align 8
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = sub nsw i32 %327, 1
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %324, i64 %329
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 8
  %337 = sext i32 %336 to i64
  %338 = sub nsw i64 %337, %333
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* %335, align 8
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 2
  %342 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %341, align 8
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = sub nsw i32 %345, 1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %342, i64 %347
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %348, align 8
  %350 = call i32 @Cs2FreeBlock(%struct.TYPE_9__* %349)
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 1
  %353 = load i32*, i32** %352, align 8
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = sub nsw i32 %356, 1
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %353, i64 %358
  store i32 255, i32* %359, align 4
  %360 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %361 = call i32 @Cs2SortBlocks(%struct.TYPE_7__* %360)
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = sub nsw i32 %364, 1
  store i32 %365, i32* %363, align 8
  br label %366

366:                                              ; preds = %321, %1
  %367 = load i32, i32* %4, align 4
  ret i32 %367
}

declare dso_local %struct.TYPE_7__* @Cs2ReadUnFilteredSector(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @Cs2FreeBlock(%struct.TYPE_9__*) #1

declare dso_local i32 @Cs2SortBlocks(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
