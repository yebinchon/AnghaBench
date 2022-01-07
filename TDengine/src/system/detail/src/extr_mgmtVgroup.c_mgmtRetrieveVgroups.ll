; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtVgroup.c_mgmtRetrieveVgroups.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtVgroup.c_mgmtRetrieveVgroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32*, i32, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_13__*, i64, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"updating\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"unsynced\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"null\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtRetrieveVgroups(%struct.TYPE_11__* %0, i8* %1, i32 %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [20 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %8, align 8
  store i32 0, i32* %9, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %10, align 8
  br label %22

22:                                               ; preds = %37, %4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %14, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  br label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %14, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %34, %31 ], [ %36, %35 ]
  store i32 %38, i32* %14, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %10, align 8
  br label %22

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %327, %42
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %330

47:                                               ; preds = %43
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = bitcast i8* %50 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %10, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %53 = icmp eq %struct.TYPE_10__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %330

55:                                               ; preds = %47
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = bitcast %struct.TYPE_10__* %58 to i8*
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  store i32 0, i32* %12, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %62, i64 %72
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %73, i64 %83
  store i8* %84, i8** %11, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %11, align 8
  %89 = bitcast i8* %88 to i32*
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  %92 = load i8*, i8** %6, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %92, i64 %102
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = mul nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %103, i64 %113
  store i8* %114, i8** %11, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = bitcast i8* %118 to i32*
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  %122 = load i8*, i8** %6, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %7, align 4
  %131 = mul nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %122, i64 %132
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %9, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %133, i64 %143
  store i8* %144, i8** %11, align 8
  %145 = load i8*, i8** %11, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %152 = call i32 @strcpy(i8* %145, i8* %151)
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %155

155:                                              ; preds = %324, %55
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %327

159:                                              ; preds = %155
  %160 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = load i32, i32* %15, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @tinet_ntoa(i8* %160, i64 %168)
  %170 = load i8*, i8** %6, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %7, align 4
  %179 = mul nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %170, i64 %180
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %9, align 4
  %190 = mul nsw i32 %188, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %181, i64 %191
  store i8* %192, i8** %11, align 8
  %193 = load i8*, i8** %11, align 8
  %194 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %195 = call i32 @strcpy(i8* %193, i8* %194)
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  %198 = load i8*, i8** %6, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %7, align 4
  %207 = mul nsw i32 %205, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %198, i64 %208
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %12, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %9, align 4
  %218 = mul nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %209, i64 %219
  store i8* %220, i8** %11, align 8
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %222, align 8
  %224 = load i32, i32* %15, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load i8*, i8** %11, align 8
  %230 = bitcast i8* %229 to i32*
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %12, align 4
  %233 = load i8*, i8** %6, align 8
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %12, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %7, align 4
  %242 = mul nsw i32 %240, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %233, i64 %243
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %9, align 4
  %253 = mul nsw i32 %251, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %244, i64 %254
  store i8* %255, i8** %11, align 8
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %257, align 8
  %259 = load i32, i32* %15, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %280

265:                                              ; preds = %159
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %268, align 8
  %270 = load i32, i32* %15, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i64 %271
  %273 = call i32 @mgmtCheckVnodeReady(i32* null, %struct.TYPE_10__* %266, %struct.TYPE_13__* %272)
  store i32 %273, i32* %16, align 4
  %274 = load i8*, i8** %11, align 8
  %275 = load i32, i32* %16, align 4
  %276 = icmp ne i32 %275, 0
  %277 = zext i1 %276 to i64
  %278 = select i1 %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %279 = call i32 @strcpy(i8* %274, i8* %278)
  br label %283

280:                                              ; preds = %159
  %281 = load i8*, i8** %11, align 8
  %282 = call i32 @strcpy(i8* %281, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %283

283:                                              ; preds = %280, %265
  %284 = load i32, i32* %12, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %12, align 4
  %286 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %288, align 8
  %290 = load i32, i32* %15, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = call i32 @tinet_ntoa(i8* %286, i64 %294)
  %296 = load i8*, i8** %6, align 8
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %12, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %7, align 4
  %305 = mul nsw i32 %303, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %296, i64 %306
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 1
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %12, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* %9, align 4
  %316 = mul nsw i32 %314, %315
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8, i8* %307, i64 %317
  store i8* %318, i8** %11, align 8
  %319 = load i8*, i8** %11, align 8
  %320 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %321 = call i32 @strcpy(i8* %319, i8* %320)
  %322 = load i32, i32* %12, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %12, align 4
  br label %324

324:                                              ; preds = %283
  %325 = load i32, i32* %15, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %15, align 4
  br label %155

327:                                              ; preds = %155
  %328 = load i32, i32* %9, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %9, align 4
  br label %43

330:                                              ; preds = %54, %43
  %331 = load i32, i32* %9, align 4
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = add nsw i32 %334, %331
  store i32 %335, i32* %333, align 8
  %336 = load i32, i32* %9, align 4
  ret i32 %336
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @tinet_ntoa(i8*, i64) #1

declare dso_local i32 @mgmtCheckVnodeReady(i32*, %struct.TYPE_10__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
