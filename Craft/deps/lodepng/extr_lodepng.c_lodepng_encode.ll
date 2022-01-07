; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_encode.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_44__ = type { i32, %struct.TYPE_46__, %struct.TYPE_41__, %struct.TYPE_39__ }
%struct.TYPE_46__ = type { %struct.TYPE_43__, i32, i64, i64, i32 }
%struct.TYPE_43__ = type { i32, i32 }
%struct.TYPE_41__ = type { i64, i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_45__ = type { i64, i8**, i64, i8**, i32*, i64*, i32*, i32*, i32*, i32*, i32, i64, i64, i64, %struct.TYPE_40__, i32 }
%struct.TYPE_40__ = type { i64, i32, i64, i32, i32 }
%struct.TYPE_42__ = type { i8*, i64 }

@LCT_PALETTE = common dso_local global i64 0, align 8
@LAC_NO = common dso_local global i32 0, align 4
@LCT_RGB = common dso_local global i64 0, align 8
@LCT_RGBA = common dso_local global i64 0, align 8
@LCT_GREY = common dso_local global i64 0, align 8
@VERSION_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lodepng_encode(i8** %0, i64* %1, i8* %2, i32 %3, i32 %4, %struct.TYPE_44__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_44__*, align 8
  %14 = alloca %struct.TYPE_45__, align 8
  %15 = alloca %struct.TYPE_42__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i8** %0, i8*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_44__* %5, %struct.TYPE_44__** %13, align 8
  store i8* null, i8** %16, align 8
  store i64 0, i64* %17, align 8
  %20 = load i8**, i8*** %8, align 8
  store i8* null, i8** %20, align 8
  %21 = load i64*, i64** %9, align 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = call i32 @lodepng_info_init(%struct.TYPE_45__* %14)
  %25 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %25, i32 0, i32 3
  %27 = call i32 @lodepng_info_copy(%struct.TYPE_45__* %14, %struct.TYPE_39__* %26)
  %28 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %29 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LCT_PALETTE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %6
  %34 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %33, %6
  %40 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %41 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %46 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 256
  br i1 %48, label %49, label %55

49:                                               ; preds = %44, %39
  %50 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %50, i32 0, i32 0
  store i32 68, i32* %51, align 8
  %52 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %7, align 4
  br label %342

55:                                               ; preds = %44, %33
  %56 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @LAC_NO, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @lodepng_auto_choose_color(%struct.TYPE_40__* %63, i8* %64, i32 %65, i32 %66, %struct.TYPE_41__* %68, i32 %72)
  %74 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %62, %55
  %77 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %7, align 4
  br label %342

85:                                               ; preds = %76
  %86 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sgt i32 %90, 32768
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @CERROR_RETURN_ERROR(i32 %95, i32 60)
  br label %97

97:                                               ; preds = %92, %85
  %98 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %102, 2
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @CERROR_RETURN_ERROR(i32 %107, i32 61)
  br label %109

109:                                              ; preds = %104, %97
  %110 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @CERROR_RETURN_ERROR(i32 %118, i32 71)
  br label %120

120:                                              ; preds = %115, %109
  %121 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %122 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %125 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @checkColorValidity(i64 %123, i32 %126)
  %128 = ptrtoint i8* %127 to i32
  %129 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %120
  %136 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %7, align 4
  br label %342

139:                                              ; preds = %120
  %140 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i8* @checkColorValidity(i64 %143, i32 %147)
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %139
  %157 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %7, align 4
  br label %342

160:                                              ; preds = %139
  %161 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %164 = call i32 @lodepng_color_mode_equal(%struct.TYPE_41__* %162, %struct.TYPE_40__* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %218, label %166

166:                                              ; preds = %160
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %12, align 4
  %169 = mul i32 %167, %168
  %170 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %171 = call i32 @lodepng_get_bpp(%struct.TYPE_40__* %170)
  %172 = mul i32 %169, %171
  %173 = add i32 %172, 7
  %174 = udiv i32 %173, 8
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %19, align 8
  %176 = load i64, i64* %19, align 8
  %177 = call i64 @lodepng_malloc(i64 %176)
  %178 = inttoptr i64 %177 to i8*
  store i8* %178, i8** %18, align 8
  %179 = load i8*, i8** %18, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %187, label %181

181:                                              ; preds = %166
  %182 = load i64, i64* %19, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %185, i32 0, i32 0
  store i32 83, i32* %186, align 8
  br label %187

187:                                              ; preds = %184, %181, %166
  %188 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %203, label %192

192:                                              ; preds = %187
  %193 = load i8*, i8** %18, align 8
  %194 = load i8*, i8** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %196 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %196, i32 0, i32 2
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @lodepng_convert(i8* %193, i8* %194, %struct.TYPE_40__* %195, %struct.TYPE_41__* %197, i32 %198, i32 %199, i32 0)
  %201 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %192, %187
  %204 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %203
  %209 = load i8*, i8** %18, align 8
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %12, align 4
  %212 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %212, i32 0, i32 1
  %214 = call i32 @preProcessScanlines(i8** %16, i64* %17, i8* %209, i32 %210, i32 %211, %struct.TYPE_45__* %14, %struct.TYPE_46__* %213)
  br label %215

215:                                              ; preds = %208, %203
  %216 = load i8*, i8** %18, align 8
  %217 = call i32 @lodepng_free(i8* %216)
  br label %225

218:                                              ; preds = %160
  %219 = load i8*, i8** %10, align 8
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %12, align 4
  %222 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %222, i32 0, i32 1
  %224 = call i32 @preProcessScanlines(i8** %16, i64* %17, i8* %219, i32 %220, i32 %221, %struct.TYPE_45__* %14, %struct.TYPE_46__* %223)
  br label %225

225:                                              ; preds = %218, %215
  %226 = call i32 @ucvector_init(%struct.TYPE_42__* %15)
  br label %227

227:                                              ; preds = %225
  %228 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  %232 = xor i1 %231, true
  br i1 %232, label %233, label %329

233:                                              ; preds = %227
  %234 = call i32 @writeSignature(%struct.TYPE_42__* %15)
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* %12, align 4
  %237 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %238 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %241 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 15
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @addChunk_IHDR(%struct.TYPE_42__* %15, i32 %235, i32 %236, i64 %239, i32 %242, i32 %244)
  %246 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %247 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @LCT_PALETTE, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %233
  %252 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %253 = call i32 @addChunk_PLTE(%struct.TYPE_42__* %15, %struct.TYPE_40__* %252)
  br label %254

254:                                              ; preds = %251, %233
  %255 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %256 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %275

260:                                              ; preds = %254
  %261 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %262 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @LCT_RGB, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %272, label %266

266:                                              ; preds = %260
  %267 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %268 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @LCT_RGBA, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %266, %260
  %273 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %274 = call i32 @addChunk_PLTE(%struct.TYPE_42__* %15, %struct.TYPE_40__* %273)
  br label %275

275:                                              ; preds = %272, %266, %254
  %276 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %277 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @LCT_PALETTE, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %293

281:                                              ; preds = %275
  %282 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %283 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %286 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = call i64 @getPaletteTranslucency(i32 %284, i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %281
  %291 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %292 = call i32 @addChunk_tRNS(%struct.TYPE_42__* %15, %struct.TYPE_40__* %291)
  br label %293

293:                                              ; preds = %290, %281, %275
  %294 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %295 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @LCT_GREY, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %305, label %299

299:                                              ; preds = %293
  %300 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %301 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @LCT_RGB, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %313

305:                                              ; preds = %299, %293
  %306 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %307 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %305
  %311 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 14
  %312 = call i32 @addChunk_tRNS(%struct.TYPE_42__* %15, %struct.TYPE_40__* %311)
  br label %313

313:                                              ; preds = %310, %305, %299
  %314 = load i8*, i8** %16, align 8
  %315 = load i64, i64* %17, align 8
  %316 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %317 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %317, i32 0, i32 0
  %319 = call i32 @addChunk_IDAT(%struct.TYPE_42__* %15, i8* %314, i64 %315, %struct.TYPE_43__* %318)
  %320 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %321 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %320, i32 0, i32 0
  store i32 %319, i32* %321, align 8
  %322 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %323 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %313
  br label %329

327:                                              ; preds = %313
  %328 = call i32 @addChunk_IEND(%struct.TYPE_42__* %15)
  br label %329

329:                                              ; preds = %327, %326, %227
  %330 = call i32 @lodepng_info_cleanup(%struct.TYPE_45__* %14)
  %331 = load i8*, i8** %16, align 8
  %332 = call i32 @lodepng_free(i8* %331)
  %333 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %15, i32 0, i32 0
  %334 = load i8*, i8** %333, align 8
  %335 = load i8**, i8*** %8, align 8
  store i8* %334, i8** %335, align 8
  %336 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %15, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = load i64*, i64** %9, align 8
  store i64 %337, i64* %338, align 8
  %339 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %340 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  store i32 %341, i32* %7, align 4
  br label %342

342:                                              ; preds = %329, %156, %135, %81, %49
  %343 = load i32, i32* %7, align 4
  ret i32 %343
}

declare dso_local i32 @lodepng_info_init(%struct.TYPE_45__*) #1

declare dso_local i32 @lodepng_info_copy(%struct.TYPE_45__*, %struct.TYPE_39__*) #1

declare dso_local i32 @lodepng_auto_choose_color(%struct.TYPE_40__*, i8*, i32, i32, %struct.TYPE_41__*, i32) #1

declare dso_local i32 @CERROR_RETURN_ERROR(i32, i32) #1

declare dso_local i8* @checkColorValidity(i64, i32) #1

declare dso_local i32 @lodepng_color_mode_equal(%struct.TYPE_41__*, %struct.TYPE_40__*) #1

declare dso_local i32 @lodepng_get_bpp(%struct.TYPE_40__*) #1

declare dso_local i64 @lodepng_malloc(i64) #1

declare dso_local i32 @lodepng_convert(i8*, i8*, %struct.TYPE_40__*, %struct.TYPE_41__*, i32, i32, i32) #1

declare dso_local i32 @preProcessScanlines(i8**, i64*, i8*, i32, i32, %struct.TYPE_45__*, %struct.TYPE_46__*) #1

declare dso_local i32 @lodepng_free(i8*) #1

declare dso_local i32 @ucvector_init(%struct.TYPE_42__*) #1

declare dso_local i32 @writeSignature(%struct.TYPE_42__*) #1

declare dso_local i32 @addChunk_IHDR(%struct.TYPE_42__*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @addChunk_PLTE(%struct.TYPE_42__*, %struct.TYPE_40__*) #1

declare dso_local i64 @getPaletteTranslucency(i32, i32) #1

declare dso_local i32 @addChunk_tRNS(%struct.TYPE_42__*, %struct.TYPE_40__*) #1

declare dso_local i32 @addChunk_IDAT(%struct.TYPE_42__*, i8*, i64, %struct.TYPE_43__*) #1

declare dso_local i32 @addChunk_IEND(%struct.TYPE_42__*) #1

declare dso_local i32 @lodepng_info_cleanup(%struct.TYPE_45__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
