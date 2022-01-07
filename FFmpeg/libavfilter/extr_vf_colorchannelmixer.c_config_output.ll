; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorchannelmixer.c_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorchannelmixer.c_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@R = common dso_local global i64 0, align 8
@G = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8
@A = common dso_local global i64 0, align 8
@filter_slice_rgb24 = common dso_local global i32 0, align 4
@filter_slice_rgb0 = common dso_local global i32 0, align 4
@filter_slice_rgba = common dso_local global i32 0, align 4
@filter_slice_rgb48 = common dso_local global i32 0, align 4
@filter_slice_rgba64 = common dso_local global i32 0, align 4
@filter_slice_gbrp = common dso_local global i32 0, align 4
@filter_slice_gbrap = common dso_local global i32 0, align 4
@filter_slice_gbrp9 = common dso_local global i32 0, align 4
@filter_slice_gbrp10 = common dso_local global i32 0, align 4
@filter_slice_gbrap10 = common dso_local global i32 0, align 4
@filter_slice_gbrp12 = common dso_local global i32 0, align 4
@filter_slice_gbrap12 = common dso_local global i32 0, align 4
@filter_slice_gbrp14 = common dso_local global i32 0, align 4
@filter_slice_gbrp16 = common dso_local global i32 0, align 4
@filter_slice_gbrap16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @config_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_output(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %4, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %5, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_10__* @av_pix_fmt_desc_get(i32 %20)
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %6, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %11, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 19
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ff_fill_rgba_map(i32 %33, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = shl i32 1, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %92, label %44

44:                                               ; preds = %1
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 16, %45
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i32* @av_malloc(i32 %49)
  store i32* %50, i32** %11, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = call i32 @AVERROR(i32 %58)
  store i32 %59, i32* %2, align 4
  br label %470

60:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %88, %60
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %64, label %91

64:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %80, %64
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 4
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load i32*, i32** %11, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32***, i32**** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32**, i32*** %72, i64 %74
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  store i32* %69, i32** %79, align 8
  br label %80

80:                                               ; preds = %68
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %11, align 8
  br label %65

87:                                               ; preds = %65
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %61

91:                                               ; preds = %61
  br label %92

92:                                               ; preds = %91, %1
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %402, %92
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %405

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %98, %101
  %103 = call i8* @lrint(i32 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32***, i32**** %106, align 8
  %108 = load i64, i64* @R, align 8
  %109 = getelementptr inbounds i32**, i32*** %107, i64 %108
  %110 = load i32**, i32*** %109, align 8
  %111 = load i64, i64* @R, align 8
  %112 = getelementptr inbounds i32*, i32** %110, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %104, i32* %116, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %117, %120
  %122 = call i8* @lrint(i32 %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32***, i32**** %125, align 8
  %127 = load i64, i64* @R, align 8
  %128 = getelementptr inbounds i32**, i32*** %126, i64 %127
  %129 = load i32**, i32*** %128, align 8
  %130 = load i64, i64* @G, align 8
  %131 = getelementptr inbounds i32*, i32** %129, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %123, i32* %135, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = mul nsw i32 %136, %139
  %141 = call i8* @lrint(i32 %140)
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i32***, i32**** %144, align 8
  %146 = load i64, i64* @R, align 8
  %147 = getelementptr inbounds i32**, i32*** %145, i64 %146
  %148 = load i32**, i32*** %147, align 8
  %149 = load i64, i64* @B, align 8
  %150 = getelementptr inbounds i32*, i32** %148, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %142, i32* %154, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %155, %158
  %160 = call i8* @lrint(i32 %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i32***, i32**** %163, align 8
  %165 = load i64, i64* @R, align 8
  %166 = getelementptr inbounds i32**, i32*** %164, i64 %165
  %167 = load i32**, i32*** %166, align 8
  %168 = load i64, i64* @A, align 8
  %169 = getelementptr inbounds i32*, i32** %167, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %161, i32* %173, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = mul nsw i32 %174, %177
  %179 = call i8* @lrint(i32 %178)
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i32***, i32**** %182, align 8
  %184 = load i64, i64* @G, align 8
  %185 = getelementptr inbounds i32**, i32*** %183, i64 %184
  %186 = load i32**, i32*** %185, align 8
  %187 = load i64, i64* @R, align 8
  %188 = getelementptr inbounds i32*, i32** %186, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %180, i32* %192, align 4
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %193, %196
  %198 = call i8* @lrint(i32 %197)
  %199 = ptrtoint i8* %198 to i32
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = load i32***, i32**** %201, align 8
  %203 = load i64, i64* @G, align 8
  %204 = getelementptr inbounds i32**, i32*** %202, i64 %203
  %205 = load i32**, i32*** %204, align 8
  %206 = load i64, i64* @G, align 8
  %207 = getelementptr inbounds i32*, i32** %205, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 %199, i32* %211, align 4
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 8
  %215 = load i32, i32* %214, align 8
  %216 = mul nsw i32 %212, %215
  %217 = call i8* @lrint(i32 %216)
  %218 = ptrtoint i8* %217 to i32
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = load i32***, i32**** %220, align 8
  %222 = load i64, i64* @G, align 8
  %223 = getelementptr inbounds i32**, i32*** %221, i64 %222
  %224 = load i32**, i32*** %223, align 8
  %225 = load i64, i64* @B, align 8
  %226 = getelementptr inbounds i32*, i32** %224, i64 %225
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 %218, i32* %230, align 4
  %231 = load i32, i32* %8, align 4
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 9
  %234 = load i32, i32* %233, align 4
  %235 = mul nsw i32 %231, %234
  %236 = call i8* @lrint(i32 %235)
  %237 = ptrtoint i8* %236 to i32
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  %240 = load i32***, i32**** %239, align 8
  %241 = load i64, i64* @G, align 8
  %242 = getelementptr inbounds i32**, i32*** %240, i64 %241
  %243 = load i32**, i32*** %242, align 8
  %244 = load i64, i64* @A, align 8
  %245 = getelementptr inbounds i32*, i32** %243, i64 %244
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  store i32 %237, i32* %249, align 4
  %250 = load i32, i32* %8, align 4
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 10
  %253 = load i32, i32* %252, align 8
  %254 = mul nsw i32 %250, %253
  %255 = call i8* @lrint(i32 %254)
  %256 = ptrtoint i8* %255 to i32
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 1
  %259 = load i32***, i32**** %258, align 8
  %260 = load i64, i64* @B, align 8
  %261 = getelementptr inbounds i32**, i32*** %259, i64 %260
  %262 = load i32**, i32*** %261, align 8
  %263 = load i64, i64* @R, align 8
  %264 = getelementptr inbounds i32*, i32** %262, i64 %263
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %8, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  store i32 %256, i32* %268, align 4
  %269 = load i32, i32* %8, align 4
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 11
  %272 = load i32, i32* %271, align 4
  %273 = mul nsw i32 %269, %272
  %274 = call i8* @lrint(i32 %273)
  %275 = ptrtoint i8* %274 to i32
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 1
  %278 = load i32***, i32**** %277, align 8
  %279 = load i64, i64* @B, align 8
  %280 = getelementptr inbounds i32**, i32*** %278, i64 %279
  %281 = load i32**, i32*** %280, align 8
  %282 = load i64, i64* @G, align 8
  %283 = getelementptr inbounds i32*, i32** %281, i64 %282
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %8, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  store i32 %275, i32* %287, align 4
  %288 = load i32, i32* %8, align 4
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 12
  %291 = load i32, i32* %290, align 8
  %292 = mul nsw i32 %288, %291
  %293 = call i8* @lrint(i32 %292)
  %294 = ptrtoint i8* %293 to i32
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 1
  %297 = load i32***, i32**** %296, align 8
  %298 = load i64, i64* @B, align 8
  %299 = getelementptr inbounds i32**, i32*** %297, i64 %298
  %300 = load i32**, i32*** %299, align 8
  %301 = load i64, i64* @B, align 8
  %302 = getelementptr inbounds i32*, i32** %300, i64 %301
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %8, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  store i32 %294, i32* %306, align 4
  %307 = load i32, i32* %8, align 4
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 13
  %310 = load i32, i32* %309, align 4
  %311 = mul nsw i32 %307, %310
  %312 = call i8* @lrint(i32 %311)
  %313 = ptrtoint i8* %312 to i32
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 1
  %316 = load i32***, i32**** %315, align 8
  %317 = load i64, i64* @B, align 8
  %318 = getelementptr inbounds i32**, i32*** %316, i64 %317
  %319 = load i32**, i32*** %318, align 8
  %320 = load i64, i64* @A, align 8
  %321 = getelementptr inbounds i32*, i32** %319, i64 %320
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %8, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  store i32 %313, i32* %325, align 4
  %326 = load i32, i32* %8, align 4
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 14
  %329 = load i32, i32* %328, align 8
  %330 = mul nsw i32 %326, %329
  %331 = call i8* @lrint(i32 %330)
  %332 = ptrtoint i8* %331 to i32
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 1
  %335 = load i32***, i32**** %334, align 8
  %336 = load i64, i64* @A, align 8
  %337 = getelementptr inbounds i32**, i32*** %335, i64 %336
  %338 = load i32**, i32*** %337, align 8
  %339 = load i64, i64* @R, align 8
  %340 = getelementptr inbounds i32*, i32** %338, i64 %339
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* %8, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  store i32 %332, i32* %344, align 4
  %345 = load i32, i32* %8, align 4
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 15
  %348 = load i32, i32* %347, align 4
  %349 = mul nsw i32 %345, %348
  %350 = call i8* @lrint(i32 %349)
  %351 = ptrtoint i8* %350 to i32
  %352 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 1
  %354 = load i32***, i32**** %353, align 8
  %355 = load i64, i64* @A, align 8
  %356 = getelementptr inbounds i32**, i32*** %354, i64 %355
  %357 = load i32**, i32*** %356, align 8
  %358 = load i64, i64* @G, align 8
  %359 = getelementptr inbounds i32*, i32** %357, i64 %358
  %360 = load i32*, i32** %359, align 8
  %361 = load i32, i32* %8, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  store i32 %351, i32* %363, align 4
  %364 = load i32, i32* %8, align 4
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 16
  %367 = load i32, i32* %366, align 8
  %368 = mul nsw i32 %364, %367
  %369 = call i8* @lrint(i32 %368)
  %370 = ptrtoint i8* %369 to i32
  %371 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 1
  %373 = load i32***, i32**** %372, align 8
  %374 = load i64, i64* @A, align 8
  %375 = getelementptr inbounds i32**, i32*** %373, i64 %374
  %376 = load i32**, i32*** %375, align 8
  %377 = load i64, i64* @B, align 8
  %378 = getelementptr inbounds i32*, i32** %376, i64 %377
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %8, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  store i32 %370, i32* %382, align 4
  %383 = load i32, i32* %8, align 4
  %384 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 17
  %386 = load i32, i32* %385, align 4
  %387 = mul nsw i32 %383, %386
  %388 = call i8* @lrint(i32 %387)
  %389 = ptrtoint i8* %388 to i32
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 1
  %392 = load i32***, i32**** %391, align 8
  %393 = load i64, i64* @A, align 8
  %394 = getelementptr inbounds i32**, i32*** %392, i64 %393
  %395 = load i32**, i32*** %394, align 8
  %396 = load i64, i64* @A, align 8
  %397 = getelementptr inbounds i32*, i32** %395, i64 %396
  %398 = load i32*, i32** %397, align 8
  %399 = load i32, i32* %8, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  store i32 %389, i32* %401, align 4
  br label %402

402:                                              ; preds = %97
  %403 = load i32, i32* %8, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %8, align 4
  br label %93

405:                                              ; preds = %93
  %406 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  switch i32 %408, label %469 [
    i32 146, label %409
    i32 131, label %409
    i32 151, label %413
    i32 150, label %413
    i32 147, label %413
    i32 132, label %413
    i32 149, label %417
    i32 148, label %417
    i32 144, label %417
    i32 129, label %417
    i32 145, label %421
    i32 130, label %421
    i32 143, label %425
    i32 128, label %425
    i32 138, label %429
    i32 142, label %433
    i32 133, label %437
    i32 137, label %441
    i32 141, label %445
    i32 136, label %449
    i32 140, label %453
    i32 135, label %457
    i32 134, label %461
    i32 139, label %465
  ]

409:                                              ; preds = %405, %405
  %410 = load i32, i32* @filter_slice_rgb24, align 4
  %411 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 18
  store i32 %410, i32* %412, align 8
  br label %469

413:                                              ; preds = %405, %405, %405, %405
  %414 = load i32, i32* @filter_slice_rgb0, align 4
  %415 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %415, i32 0, i32 18
  store i32 %414, i32* %416, align 8
  br label %469

417:                                              ; preds = %405, %405, %405, %405
  %418 = load i32, i32* @filter_slice_rgba, align 4
  %419 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %419, i32 0, i32 18
  store i32 %418, i32* %420, align 8
  br label %469

421:                                              ; preds = %405, %405
  %422 = load i32, i32* @filter_slice_rgb48, align 4
  %423 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %423, i32 0, i32 18
  store i32 %422, i32* %424, align 8
  br label %469

425:                                              ; preds = %405, %405
  %426 = load i32, i32* @filter_slice_rgba64, align 4
  %427 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %427, i32 0, i32 18
  store i32 %426, i32* %428, align 8
  br label %469

429:                                              ; preds = %405
  %430 = load i32, i32* @filter_slice_gbrp, align 4
  %431 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %431, i32 0, i32 18
  store i32 %430, i32* %432, align 8
  br label %469

433:                                              ; preds = %405
  %434 = load i32, i32* @filter_slice_gbrap, align 4
  %435 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i32 0, i32 18
  store i32 %434, i32* %436, align 8
  br label %469

437:                                              ; preds = %405
  %438 = load i32, i32* @filter_slice_gbrp9, align 4
  %439 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %439, i32 0, i32 18
  store i32 %438, i32* %440, align 8
  br label %469

441:                                              ; preds = %405
  %442 = load i32, i32* @filter_slice_gbrp10, align 4
  %443 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %443, i32 0, i32 18
  store i32 %442, i32* %444, align 8
  br label %469

445:                                              ; preds = %405
  %446 = load i32, i32* @filter_slice_gbrap10, align 4
  %447 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %448 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %447, i32 0, i32 18
  store i32 %446, i32* %448, align 8
  br label %469

449:                                              ; preds = %405
  %450 = load i32, i32* @filter_slice_gbrp12, align 4
  %451 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %451, i32 0, i32 18
  store i32 %450, i32* %452, align 8
  br label %469

453:                                              ; preds = %405
  %454 = load i32, i32* @filter_slice_gbrap12, align 4
  %455 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %456 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %455, i32 0, i32 18
  store i32 %454, i32* %456, align 8
  br label %469

457:                                              ; preds = %405
  %458 = load i32, i32* @filter_slice_gbrp14, align 4
  %459 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %459, i32 0, i32 18
  store i32 %458, i32* %460, align 8
  br label %469

461:                                              ; preds = %405
  %462 = load i32, i32* @filter_slice_gbrp16, align 4
  %463 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %464 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %463, i32 0, i32 18
  store i32 %462, i32* %464, align 8
  br label %469

465:                                              ; preds = %405
  %466 = load i32, i32* @filter_slice_gbrap16, align 4
  %467 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %468 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %467, i32 0, i32 18
  store i32 %466, i32* %468, align 8
  br label %469

469:                                              ; preds = %405, %465, %461, %457, %453, %449, %445, %441, %437, %433, %429, %425, %421, %417, %413, %409
  store i32 0, i32* %2, align 4
  br label %470

470:                                              ; preds = %469, %57
  %471 = load i32, i32* %2, align 4
  ret i32 %471
}

declare dso_local %struct.TYPE_10__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @ff_fill_rgba_map(i32, i32) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @lrint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
