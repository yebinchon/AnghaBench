; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/smooth/extr_ftgrays.c_gray_raster_render.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/smooth/extr_ftgrays.c_gray_raster_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i64, i32*, i8*, %struct.TYPE_10__, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i32, i64*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__, i32*, i64, %struct.TYPE_13__*, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i64, i64 }

@Invalid_Argument = common dso_local global i32 0, align 4
@FT_RASTER_FLAG_AA = common dso_local global i32 0, align 4
@Invalid_Mode = common dso_local global i32 0, align 4
@Invalid_Outline = common dso_local global i32 0, align 4
@ras = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@FT_RASTER_FLAG_DIRECT = common dso_local global i32 0, align 4
@FT_RASTER_FLAG_CLIP = common dso_local global i32 0, align 4
@RAS_VAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_11__*)* @gray_raster_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gray_raster_render(i32 %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__, align 4
  %9 = alloca %struct.TYPE_14__, align 4
  %10 = alloca [1 x i32], align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %6, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @Invalid_Argument, align 4
  %22 = call i32 @FT_THROW(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %286

23:                                               ; preds = %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FT_RASTER_FLAG_AA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @Invalid_Mode, align 4
  %32 = call i32 @FT_THROW(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %286

33:                                               ; preds = %23
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @Invalid_Outline, align 4
  %38 = call i32 @FT_THROW(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %286

39:                                               ; preds = %33
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %39
  store i32 0, i32* %3, align 4
  br label %286

50:                                               ; preds = %44
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* @Invalid_Outline, align 4
  %62 = call i32 @FT_THROW(i32 %61)
  store i32 %62, i32* %3, align 4
  br label %286

63:                                               ; preds = %55
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %69, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  %78 = icmp ne i64 %66, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %63
  %80 = load i32, i32* @Invalid_Outline, align 4
  %81 = call i32 @FT_THROW(i32 %80)
  store i32 %81, i32* %3, align 4
  br label %286

82:                                               ; preds = %63
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = bitcast %struct.TYPE_12__* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ras, i32 0, i32 7) to i8*), i8* align 8 %84, i64 32, i1 false)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @FT_RASTER_FLAG_DIRECT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %82
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %286

97:                                               ; preds = %91
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  store i8* %101, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ras, i32 0, i32 5), align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ras, i32 0, i32 4), align 8
  br label %158

105:                                              ; preds = %82
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %107 = icmp ne %struct.TYPE_13__* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* @Invalid_Argument, align 4
  %110 = call i32 @FT_THROW(i32 %109)
  store i32 %110, i32* %3, align 4
  br label %286

111:                                              ; preds = %105
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %116, %111
  store i32 0, i32* %3, align 4
  br label %286

122:                                              ; preds = %116
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* @Invalid_Argument, align 4
  %129 = call i32 @FT_THROW(i32 %128)
  store i32 %129, i32* %3, align 4
  br label %286

130:                                              ; preds = %122
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ras, i32 0, i32 6, i32 1), align 8
  br label %154

139:                                              ; preds = %130
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %145, 1
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = mul i32 %146, %150
  %152 = zext i32 %151 to i64
  %153 = add nsw i64 %142, %152
  store i64 %153, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ras, i32 0, i32 6, i32 1), align 8
  br label %154

154:                                              ; preds = %139, %135
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ras, i32 0, i32 6, i32 0), align 8
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ras, i32 0, i32 5), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ras, i32 0, i32 4), align 8
  br label %158

158:                                              ; preds = %154, %97
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %160 = call i32 @FT_Outline_Get_CBox(%struct.TYPE_12__* %159, %struct.TYPE_14__* %8)
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %163, -16777216
  br i1 %164, label %180, label %165

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = icmp sgt i64 %168, 16777216
  br i1 %169, label %180, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = icmp slt i64 %173, -16777216
  br i1 %174, label %180, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = icmp sgt i64 %178, 16777216
  br i1 %179, label %180, label %183

180:                                              ; preds = %175, %170, %165, %158
  %181 = load i32, i32* @Invalid_Outline, align 4
  %182 = call i32 @FT_THROW(i32 %181)
  store i32 %182, i32* %3, align 4
  br label %286

183:                                              ; preds = %175
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = ashr i32 %185, 6
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  store i32 %186, i32* %187, align 4
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = ashr i32 %189, 6
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  store i32 %190, i32* %191, align 4
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 63
  %195 = ashr i32 %194, 6
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  store i32 %195, i32* %196, align 4
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 63
  %200 = ashr i32 %199, 6
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 3
  store i32 %200, i32* %201, align 4
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @FT_RASTER_FLAG_DIRECT, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %224, label %208

208:                                              ; preds = %183
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i32 0, i32* %209, align 4
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  store i32 0, i32* %210, align 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = inttoptr i64 %213 to i8*
  %215 = ptrtoint i8* %214 to i32
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i32 %215, i32* %216, align 4
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = inttoptr i64 %220 to i8*
  %222 = ptrtoint i8* %221 to i32
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  store i32 %222, i32* %223, align 4
  br label %242

224:                                              ; preds = %183
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @FT_RASTER_FLAG_CLIP, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %224
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  %234 = bitcast %struct.TYPE_14__* %9 to i8*
  %235 = bitcast %struct.TYPE_14__* %233 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %234, i8* align 4 %235, i64 16, i1 false)
  br label %241

236:                                              ; preds = %224
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i32 -32768, i32* %237, align 4
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  store i32 -32768, i32* %238, align 4
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i32 32767, i32* %239, align 4
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  store i32 32767, i32* %240, align 4
  br label %241

241:                                              ; preds = %236, %231
  br label %242

242:                                              ; preds = %241, %208
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = call i8* @FT_MAX(i64 %245, i64 %248)
  %250 = ptrtoint i8* %249 to i64
  store i64 %250, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ras, i32 0, i32 0), align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = call i8* @FT_MAX(i64 %253, i64 %256)
  %258 = ptrtoint i8* %257 to i64
  store i64 %258, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ras, i32 0, i32 1), align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = call i8* @FT_MIN(i64 %261, i64 %264)
  %266 = ptrtoint i8* %265 to i64
  store i64 %266, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ras, i32 0, i32 2), align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = call i8* @FT_MIN(i64 %269, i64 %272)
  %274 = ptrtoint i8* %273 to i64
  store i64 %274, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ras, i32 0, i32 3), align 8
  %275 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ras, i32 0, i32 2), align 8
  %276 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ras, i32 0, i32 0), align 8
  %277 = icmp sle i64 %275, %276
  br i1 %277, label %282, label %278

278:                                              ; preds = %242
  %279 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ras, i32 0, i32 3), align 8
  %280 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ras, i32 0, i32 1), align 8
  %281 = icmp sle i64 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %278, %242
  store i32 0, i32* %3, align 4
  br label %286

283:                                              ; preds = %278
  %284 = load i32, i32* @RAS_VAR, align 4
  %285 = call i32 @gray_convert_glyph(i32 %284)
  store i32 %285, i32* %3, align 4
  br label %286

286:                                              ; preds = %283, %282, %180, %127, %121, %108, %96, %79, %60, %49, %36, %30, %20
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local i32 @FT_THROW(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FT_Outline_Get_CBox(%struct.TYPE_12__*, %struct.TYPE_14__*) #1

declare dso_local i8* @FT_MAX(i64, i64) #1

declare dso_local i8* @FT_MIN(i64, i64) #1

declare dso_local i32 @gray_convert_glyph(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
