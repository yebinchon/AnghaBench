; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngstest.c_transform_from_formats.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngstest.c_transform_from_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32*, i32*, %struct.TYPE_12__, %struct.TYPE_12__*, i32*, i8*, i8*, i8*, i64, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i64 }

@PNG_FORMAT_FLAG_LINEAR = common dso_local global i32 0, align 4
@ACCUMULATE = common dso_local global i32 0, align 4
@BASE_FORMATS = common dso_local global i32 0, align 4
@PNG_FORMAT_FLAG_COLORMAP = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"internal transform via linear error 0x%x->0x%x\0A\00", align 1
@gpc_fn = common dso_local global i8*** null, align 8
@gpc_error_via_linear = common dso_local global i32*** null, align 8
@gpc_error_to_colormap = common dso_local global i32*** null, align 8
@gpc_fn_colormapped = common dso_local global i8*** null, align 8
@gpc_error = common dso_local global i32*** null, align 8
@PNG_FORMAT_FLAG_ALPHA = common dso_local global i32 0, align 4
@BUFFER_INIT8 = common dso_local global i32 0, align 4
@PNG_FORMAT_FLAG_COLOR = common dso_local global i32 0, align 4
@sRGB_to_d = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_13__*, i32)* @transform_from_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transform_from_formats(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2, %struct.TYPE_13__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = call i32 @memset(%struct.TYPE_14__* %15, i32 0, i32 120)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 13
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %19, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 12
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %22, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @PNG_FORMAT_FLAG_LINEAR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  store i32 65535, i32* %37, align 8
  br label %41

38:                                               ; preds = %5
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i32 255, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @PNG_FORMAT_FLAG_LINEAR, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 11
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ACCUMULATE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i8* @get_pixel(i32 %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 10
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i8* @get_pixel(i32 %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 9
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @BASE_FORMATS, align 4
  %69 = load i32, i32* @PNG_FORMAT_FLAG_COLORMAP, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @BASE_FORMATS, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* @BASE_FORMATS, align 4
  %77 = load i32, i32* @PNG_FORMAT_FLAG_COLORMAP, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @BASE_FORMATS, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %138

86:                                               ; preds = %41
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @PNG_FORMAT_FLAG_LINEAR, align 4
  %89 = load i32, i32* @PNG_FORMAT_FLAG_COLORMAP, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32, i32* @stderr, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @fprintf(i32 %94, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96)
  %98 = call i32 @exit(i32 1) #3
  unreachable

99:                                               ; preds = %86
  %100 = load i8***, i8**** @gpc_fn, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8**, i8*** %100, i64 %102
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @PNG_FORMAT_FLAG_LINEAR, align 4
  %107 = or i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %104, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 8
  store i8* %110, i8** %112, align 8
  %113 = load i8***, i8**** @gpc_fn, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @PNG_FORMAT_FLAG_LINEAR, align 4
  %116 = or i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8**, i8*** %113, i64 %117
  %119 = load i8**, i8*** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 7
  store i32* %124, i32** %126, align 8
  %127 = load i32***, i32**** @gpc_error_via_linear, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32**, i32*** %127, i64 %129
  %131 = load i32**, i32*** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 3
  store i32* %135, i32** %137, align 8
  br label %217

138:                                              ; preds = %41
  %139 = load i32, i32* %11, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %12, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* @PNG_FORMAT_FLAG_COLORMAP, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %171

146:                                              ; preds = %138
  %147 = load i8***, i8**** @gpc_fn, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8**, i8*** %147, i64 %149
  %151 = load i8**, i8*** %150, align 8
  %152 = load i32, i32* %14, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 8
  store i8* %155, i8** %157, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 7
  store i32* null, i32** %159, align 8
  %160 = load i32***, i32**** @gpc_error_to_colormap, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32**, i32*** %160, i64 %162
  %164 = load i32**, i32*** %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32*, i32** %164, i64 %166
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 3
  store i32* %168, i32** %170, align 8
  br label %216

171:                                              ; preds = %138
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %12, align 4
  %174 = and i32 %172, %173
  %175 = load i32, i32* @PNG_FORMAT_FLAG_COLORMAP, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %171
  %179 = load i8***, i8**** @gpc_fn_colormapped, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8**, i8*** %179, i64 %181
  %183 = load i8**, i8*** %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %183, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 8
  store i8* %187, i8** %189, align 8
  br label %202

190:                                              ; preds = %171
  %191 = load i8***, i8**** @gpc_fn, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8**, i8*** %191, i64 %193
  %195 = load i8**, i8*** %194, align 8
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %195, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 8
  store i8* %199, i8** %201, align 8
  br label %202

202:                                              ; preds = %190, %178
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 7
  store i32* null, i32** %204, align 8
  %205 = load i32***, i32**** @gpc_error, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32**, i32*** %205, i64 %207
  %209 = load i32**, i32*** %208, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32*, i32** %209, i64 %211
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 3
  store i32* %213, i32** %215, align 8
  br label %216

216:                                              ; preds = %202, %146
  br label %217

217:                                              ; preds = %216, %99
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 6
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %219, align 8
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %12, align 4
  %222 = xor i32 %221, -1
  %223 = and i32 %220, %222
  %224 = load i32, i32* @PNG_FORMAT_FLAG_ALPHA, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %413

227:                                              ; preds = %217
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 5
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 6
  store %struct.TYPE_12__* %229, %struct.TYPE_12__** %231, align 8
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* @PNG_FORMAT_FLAG_LINEAR, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %227
  %237 = load i32, i32* %10, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %285

239:                                              ; preds = %236, %227
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* @PNG_FORMAT_FLAG_COLORMAP, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %263

244:                                              ; preds = %239
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 2
  store i32 0, i32* %247, align 8
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 5
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 1
  store i32 0, i32* %250, align 4
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 5
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  store i32 0, i32* %253, align 8
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 5
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 5
  store i32 0, i32* %256, align 4
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 5
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 4
  store i32 0, i32* %259, align 8
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 5
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 3
  store i32 0, i32* %262, align 4
  br label %284

263:                                              ; preds = %239
  %264 = load i32, i32* @BUFFER_INIT8, align 4
  %265 = mul nsw i32 %264, 257
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 2
  store i32 %265, i32* %268, align 8
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 5
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 1
  store i32 %265, i32* %271, align 4
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 5
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  store i32 %265, i32* %274, align 8
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 5
  store i32 0, i32* %277, align 4
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 5
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 4
  store i32 0, i32* %280, align 8
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 5
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 3
  store i32 0, i32* %283, align 4
  br label %284

284:                                              ; preds = %263, %244
  br label %412

285:                                              ; preds = %236
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %287 = icmp ne %struct.TYPE_13__* %286, null
  br i1 %287, label %288, label %376

288:                                              ; preds = %285
  %289 = load i32, i32* %12, align 4
  %290 = load i32, i32* @PNG_FORMAT_FLAG_COLOR, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %345

293:                                              ; preds = %288
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = trunc i64 %296 to i32
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 5
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 0
  store i32 %297, i32* %300, align 8
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = trunc i64 %303 to i32
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 5
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 1
  store i32 %304, i32* %307, align 4
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = trunc i64 %310 to i32
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 5
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 2
  store i32 %311, i32* %314, align 8
  %315 = load i8**, i8*** @sRGB_to_d, align 8
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = getelementptr inbounds i8*, i8** %315, i64 %318
  %320 = load i8*, i8** %319, align 8
  %321 = ptrtoint i8* %320 to i32
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 5
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 3
  store i32 %321, i32* %324, align 4
  %325 = load i8**, i8*** @sRGB_to_d, align 8
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = getelementptr inbounds i8*, i8** %325, i64 %328
  %330 = load i8*, i8** %329, align 8
  %331 = ptrtoint i8* %330 to i32
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 5
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 4
  store i32 %331, i32* %334, align 8
  %335 = load i8**, i8*** @sRGB_to_d, align 8
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = getelementptr inbounds i8*, i8** %335, i64 %338
  %340 = load i8*, i8** %339, align 8
  %341 = ptrtoint i8* %340 to i32
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 5
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 5
  store i32 %341, i32* %344, align 4
  br label %375

345:                                              ; preds = %288
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = trunc i64 %348 to i32
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 5
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 2
  store i32 %349, i32* %352, align 8
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 5
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 1
  store i32 %349, i32* %355, align 4
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 5
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 0
  store i32 %349, i32* %358, align 8
  %359 = load i8**, i8*** @sRGB_to_d, align 8
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = getelementptr inbounds i8*, i8** %359, i64 %362
  %364 = load i8*, i8** %363, align 8
  %365 = ptrtoint i8* %364 to i32
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 5
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 5
  store i32 %365, i32* %368, align 4
  %369 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 5
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 4
  store i32 %365, i32* %371, align 8
  %372 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 5
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 3
  store i32 %365, i32* %374, align 4
  br label %375

375:                                              ; preds = %345, %293
  br label %411

376:                                              ; preds = %285
  %377 = load i32, i32* %12, align 4
  %378 = load i32, i32* @PNG_FORMAT_FLAG_COLORMAP, align 4
  %379 = and i32 %377, %378
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %407

381:                                              ; preds = %376
  %382 = load i32, i32* @BUFFER_INIT8, align 4
  %383 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %383, i32 0, i32 5
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 2
  store i32 %382, i32* %385, align 8
  %386 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %386, i32 0, i32 5
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 1
  store i32 %382, i32* %388, align 4
  %389 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 5
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %390, i32 0, i32 0
  store i32 %382, i32* %391, align 8
  %392 = load i8**, i8*** @sRGB_to_d, align 8
  %393 = load i32, i32* @BUFFER_INIT8, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8*, i8** %392, i64 %394
  %396 = load i8*, i8** %395, align 8
  %397 = ptrtoint i8* %396 to i32
  %398 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %398, i32 0, i32 5
  %400 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %399, i32 0, i32 5
  store i32 %397, i32* %400, align 4
  %401 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %401, i32 0, i32 5
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 4
  store i32 %397, i32* %403, align 8
  %404 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 5
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %405, i32 0, i32 3
  store i32 %397, i32* %406, align 4
  br label %410

407:                                              ; preds = %376
  %408 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %408, i32 0, i32 6
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %409, align 8
  br label %410

410:                                              ; preds = %407, %381
  br label %411

411:                                              ; preds = %410, %375
  br label %412

412:                                              ; preds = %411, %284
  br label %413

413:                                              ; preds = %412, %217
  %414 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i32 0, i32 6
  %416 = load %struct.TYPE_12__*, %struct.TYPE_12__** %415, align 8
  %417 = icmp eq %struct.TYPE_12__* %416, null
  br i1 %417, label %418, label %437

418:                                              ; preds = %413
  %419 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %419, i32 0, i32 5
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 2
  store i32 -1, i32* %421, align 8
  %422 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %422, i32 0, i32 5
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %423, i32 0, i32 1
  store i32 -1, i32* %424, align 4
  %425 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %425, i32 0, i32 5
  %427 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %426, i32 0, i32 0
  store i32 -1, i32* %427, align 8
  %428 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %429 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %428, i32 0, i32 5
  %430 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %429, i32 0, i32 5
  store i32 undef, i32* %430, align 4
  %431 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %431, i32 0, i32 5
  %433 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %432, i32 0, i32 4
  store i32 undef, i32* %433, align 8
  %434 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %434, i32 0, i32 5
  %436 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %435, i32 0, i32 3
  store i32 undef, i32* %436, align 4
  br label %437

437:                                              ; preds = %418, %413
  %438 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %438, i32 0, i32 3
  %440 = load i32*, i32** %439, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 0
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %444 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %443, i32 0, i32 4
  %445 = load i32*, i32** %444, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 0
  store i32 %442, i32* %446, align 4
  %447 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %448 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %447, i32 0, i32 3
  %449 = load i32*, i32** %448, align 8
  %450 = getelementptr inbounds i32, i32* %449, i64 1
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %453 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %452, i32 0, i32 4
  %454 = load i32*, i32** %453, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 1
  store i32 %451, i32* %455, align 4
  %456 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %456, i32 0, i32 3
  %458 = load i32*, i32** %457, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 2
  %460 = load i32, i32* %459, align 4
  %461 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %462 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %461, i32 0, i32 4
  %463 = load i32*, i32** %462, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 2
  store i32 %460, i32* %464, align 4
  %465 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %466 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %465, i32 0, i32 3
  %467 = load i32*, i32** %466, align 8
  %468 = getelementptr inbounds i32, i32* %467, i64 3
  %469 = load i32, i32* %468, align 4
  %470 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %471 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %470, i32 0, i32 4
  %472 = load i32*, i32** %471, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 3
  store i32 %469, i32* %473, align 4
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i8* @get_pixel(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
