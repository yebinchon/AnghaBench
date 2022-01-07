; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_analyze_mono.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_analyze_mono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, double, %struct.TYPE_19__*, %struct.TYPE_19__*** }
%struct.TYPE_19__ = type { double, i64 }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_19__* }

@MAG_MASK = common dso_local global i32 0, align 4
@MAG_LSB = common dso_local global i32 0, align 4
@EXTRA_BRANCHES = common dso_local global i32 0, align 4
@EXTRA_SORT_FIRST = common dso_local global i32 0, align 4
@EXTRA_TRY_DELTAS = common dso_local global i32 0, align 4
@EXTRA_ADJUST_DELTAS = common dso_local global i32 0, align 4
@EXTRA_SORT_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_19__*, i32)* @analyze_mono to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_mono(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MAG_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @MAG_LSB, align 4
  %15 = ashr i32 %13, %14
  %16 = add nsw i32 %15, 4
  %17 = mul nsw i32 %16, 256
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @FFMIN(i32 6912, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @allocate_buffers2(%struct.TYPE_21__* %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %281

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = call i32 @memcpy(%struct.TYPE_19__* %36, %struct.TYPE_19__* %39, i32 8)
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 6
  %43 = load %struct.TYPE_19__***, %struct.TYPE_19__**** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %43, i64 0
  %45 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %45, i64 0
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %51, 4
  %53 = call i32 @memcpy(%struct.TYPE_19__* %47, %struct.TYPE_19__* %48, i32 %52)
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %99, %34
  %55 = load i32, i32* %8, align 4
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %59, %54
  %69 = phi i1 [ false, %54 ], [ %67, %59 ]
  br i1 %69, label %70, label %102

70:                                               ; preds = %68
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 6
  %73 = load %struct.TYPE_19__***, %struct.TYPE_19__**** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %73, i64 %75
  %77 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %77, i64 0
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 6
  %82 = load %struct.TYPE_19__***, %struct.TYPE_19__**** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %82, i64 %85
  %87 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %87, i64 0
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i64 %96
  %98 = call i32 @decorr_mono(%struct.TYPE_19__* %79, %struct.TYPE_19__* %89, i32 %92, %struct.TYPE_19__* %97, i32 1)
  br label %99

99:                                               ; preds = %70
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %54

102:                                              ; preds = %68
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 6
  %105 = load %struct.TYPE_19__***, %struct.TYPE_19__**** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %105, i64 %108
  %110 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %110, i64 0
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @log2mono(%struct.TYPE_19__* %112, i32 %115, i32 0)
  %117 = mul nsw i32 %116, 1
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  store i32 %117, i32* %118, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 6
  %121 = load %struct.TYPE_19__***, %struct.TYPE_19__**** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %121, i64 %125
  %127 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %127, i64 0
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %128, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 6
  %132 = load %struct.TYPE_19__***, %struct.TYPE_19__**** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %132, i64 %134
  %136 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %136, i64 0
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %137, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = mul nsw i32 %141, 4
  %143 = call i32 @memcpy(%struct.TYPE_19__* %129, %struct.TYPE_19__* %138, i32 %142)
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @EXTRA_BRANCHES, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %170

150:                                              ; preds = %102
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 4
  %154 = load double, double* %153, align 8
  %155 = fadd double %154, 5.000000e-01
  %156 = call i64 @floor(double %155)
  %157 = trunc i64 %156 to i32
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 6
  %160 = load %struct.TYPE_19__***, %struct.TYPE_19__**** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %160, i64 0
  %162 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %162, i64 0
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %163, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @log2mono(%struct.TYPE_19__* %164, i32 %167, i32 0)
  %169 = call i32 @recurse_mono(%struct.TYPE_21__* %151, %struct.TYPE_20__* %7, i32 0, i32 %157, i32 %168)
  br label %170

170:                                              ; preds = %150, %102
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @EXTRA_SORT_FIRST, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %179 = call i32 @sort_mono(%struct.TYPE_21__* %178, %struct.TYPE_20__* %7)
  br label %180

180:                                              ; preds = %177, %170
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @EXTRA_TRY_DELTAS, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %225

187:                                              ; preds = %180
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %189 = call i32 @delta_mono(%struct.TYPE_21__* %188, %struct.TYPE_20__* %7)
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @EXTRA_ADJUST_DELTAS, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %221

196:                                              ; preds = %187
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 5
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %221

204:                                              ; preds = %196
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 4
  %207 = load double, double* %206, align 8
  %208 = fmul double %207, 2.000000e+00
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 5
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i64 0
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 0
  %214 = load double, double* %213, align 8
  %215 = fadd double %208, %214
  %216 = fdiv double %215, 3.000000e+00
  %217 = fptrunc double %216 to float
  %218 = fpext float %217 to double
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 4
  store double %218, double* %220, align 8
  br label %224

221:                                              ; preds = %196, %187
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 4
  store double 2.000000e+00, double* %223, align 8
  br label %224

224:                                              ; preds = %221, %204
  br label %225

225:                                              ; preds = %224, %180
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @EXTRA_SORT_LAST, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %225
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %234 = call i32 @sort_mono(%struct.TYPE_21__* %233, %struct.TYPE_20__* %7)
  br label %235

235:                                              ; preds = %232, %225
  %236 = load i32, i32* %6, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %256

238:                                              ; preds = %235
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 6
  %242 = load %struct.TYPE_19__***, %struct.TYPE_19__**** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_19__**, %struct.TYPE_19__*** %242, i64 %246
  %248 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %248, i64 0
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %249, align 8
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = mul nsw i32 %253, 4
  %255 = call i32 @memcpy(%struct.TYPE_19__* %239, %struct.TYPE_19__* %250, i32 %254)
  br label %256

256:                                              ; preds = %238, %235
  store i32 0, i32* %8, align 4
  br label %257

257:                                              ; preds = %274, %256
  %258 = load i32, i32* %8, align 4
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = icmp slt i32 %258, %260
  br i1 %261, label %262, label %277

262:                                              ; preds = %257
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 5
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %264, align 8
  %266 = load i32, i32* %8, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %262
  br label %277

273:                                              ; preds = %262
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %8, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %8, align 4
  br label %257

277:                                              ; preds = %272, %257
  %278 = load i32, i32* %8, align 4
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 4
  br label %281

281:                                              ; preds = %277, %33
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i64 @allocate_buffers2(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @decorr_mono(%struct.TYPE_19__*, %struct.TYPE_19__*, i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @log2mono(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @recurse_mono(%struct.TYPE_21__*, %struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i64 @floor(double) #1

declare dso_local i32 @sort_mono(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @delta_mono(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
