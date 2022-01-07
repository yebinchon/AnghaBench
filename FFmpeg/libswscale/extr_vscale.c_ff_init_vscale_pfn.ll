; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_vscale.c_ff_init_vscale_pfn.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_vscale.c_ff_init_vscale_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64, i64, i32, i32*, i32, i32*, %struct.TYPE_5__*, i64, i64, i64, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i8*, i64, i32, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_init_vscale_pfn(%struct.TYPE_7__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i64 %6, i8* %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 14
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 2, i32 1
  %31 = sub nsw i32 %24, %30
  store i32 %31, i32* %21, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @isPlanarYUV(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %9
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 13
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @isGray(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %186

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 13
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @isALPHA(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %186, label %49

49:                                               ; preds = %43, %9
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 13
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @isGray(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %117, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 9
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %21, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %20, align 8
  %64 = load i32, i32* %18, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %55
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 12
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i32*
  br label %75

71:                                               ; preds = %55
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 6
  %74 = load i32*, i32** %73, align 8
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i32* [ %70, %66 ], [ %74, %71 ]
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 5
  %79 = load i32**, i32*** %78, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 0
  store i32* %76, i32** %80, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %18, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %21, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %21, align 4
  %96 = load i8*, i8** %13, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %75
  %99 = load i8*, i8** %13, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  br label %116

102:                                              ; preds = %75
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i8*, i8** %11, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  br label %115

111:                                              ; preds = %102
  %112 = load i8*, i8** %12, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %111, %107
  br label %116

116:                                              ; preds = %115, %98
  br label %117

117:                                              ; preds = %116, %49
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 9
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load i32, i32* %21, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  store %struct.TYPE_6__* %125, %struct.TYPE_6__** %19, align 8
  %126 = load i32, i32* %18, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %117
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 11
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i32*
  br label %137

133:                                              ; preds = %117
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 8
  %136 = load i32*, i32** %135, align 8
  br label %137

137:                                              ; preds = %133, %128
  %138 = phi i32* [ %132, %128 ], [ %136, %133 ]
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 5
  %141 = load i32**, i32*** %140, align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 0
  store i32* %138, i32** %142, align 8
  %143 = load i32, i32* %18, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 10
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to i32*
  br label %154

150:                                              ; preds = %137
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 8
  %153 = load i32*, i32** %152, align 8
  br label %154

154:                                              ; preds = %150, %145
  %155 = phi i32* [ %149, %145 ], [ %153, %150 ]
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 5
  %158 = load i32**, i32*** %157, align 8
  %159 = getelementptr inbounds i32*, i32** %158, i64 1
  store i32* %155, i32** %159, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %18, align 4
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %181

177:                                              ; preds = %154
  %178 = load i8*, i8** %11, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  store i8* %178, i8** %180, align 8
  br label %185

181:                                              ; preds = %154
  %182 = load i8*, i8** %12, align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  store i8* %182, i8** %184, align 8
  br label %185

185:                                              ; preds = %181, %177
  br label %287

186:                                              ; preds = %43, %37
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 9
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = load i32, i32* %21, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  store %struct.TYPE_6__* %194, %struct.TYPE_6__** %19, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i64 1
  store %struct.TYPE_6__* %196, %struct.TYPE_6__** %20, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 8
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 5
  %202 = load i32**, i32*** %201, align 8
  %203 = getelementptr inbounds i32*, i32** %202, i64 0
  store i32* %199, i32** %203, align 8
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 4
  store i32 %211, i32* %213, align 8
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 6
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 5
  %219 = load i32**, i32*** %218, align 8
  %220 = getelementptr inbounds i32*, i32** %219, i64 0
  store i32* %216, i32** %220, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 4
  store i32 %228, i32* %230, align 8
  %231 = load i32, i32* %18, align 4
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* %18, align 4
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load i64, i64* %16, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %282

239:                                              ; preds = %186
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %258

244:                                              ; preds = %239
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %258

249:                                              ; preds = %244
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = icmp sle i32 %252, 2
  br i1 %253, label %254, label %258

254:                                              ; preds = %249
  %255 = load i8*, i8** %14, align 8
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 2
  store i8* %255, i8** %257, align 8
  br label %278

258:                                              ; preds = %249, %244, %239
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %277

263:                                              ; preds = %258
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %266, 2
  br i1 %267, label %268, label %277

268:                                              ; preds = %263
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = icmp eq i32 %271, 2
  br i1 %272, label %273, label %277

273:                                              ; preds = %268
  %274 = load i8*, i8** %15, align 8
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 2
  store i8* %274, i8** %276, align 8
  br label %277

277:                                              ; preds = %273, %268, %263, %258
  br label %278

278:                                              ; preds = %277, %254
  %279 = load i64, i64* %16, align 8
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 3
  store i64 %279, i64* %281, align 8
  br label %286

282:                                              ; preds = %186
  %283 = load i8*, i8** %17, align 8
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 2
  store i8* %283, i8** %285, align 8
  br label %286

286:                                              ; preds = %282, %278
  br label %287

287:                                              ; preds = %286, %185
  ret void
}

declare dso_local i64 @isPlanarYUV(i32) #1

declare dso_local i64 @isGray(i32) #1

declare dso_local i32 @isALPHA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
