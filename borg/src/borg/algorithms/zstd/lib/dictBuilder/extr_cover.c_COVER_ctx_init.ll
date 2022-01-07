; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_cover.c_COVER_ctx_init.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_cover.c_COVER_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i32, i32, i32, i64, i32*, i32*, i64*, i32*, i32, i32* }

@COVER_MAX_SAMPLES_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Total samples size is too large (%u MB), maximum size is %u MB\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Total number of training samples is %u and is invalid.\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Total number of testing samples is %u and is invalid.\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Training on %u samples of total size %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Testing on %u samples of total size %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to allocate scratch buffers\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Constructing partial suffix array\0A\00", align 1
@g_ctx = common dso_local global %struct.TYPE_7__* null, align 8
@COVER_strict_cmp8 = common dso_local global i32 0, align 4
@COVER_strict_cmp = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Computing frequencies\0A\00", align 1
@COVER_cmp8 = common dso_local global i32 0, align 4
@COVER_cmp = common dso_local global i32 0, align 4
@COVER_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i64*, i32, i32, double)* @COVER_ctx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COVER_ctx_init(%struct.TYPE_7__* %0, i8* %1, i64* %2, i32 %3, i32 %4, double %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store double %5, double* %13, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %14, align 8
  %24 = load i64*, i64** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @COVER_sum(i64* %24, i32 %25)
  store i64 %26, i64* %15, align 8
  %27 = load double, double* %13, align 8
  %28 = fcmp olt double %27, 1.000000e+00
  br i1 %28, label %29, label %35

29:                                               ; preds = %6
  %30 = load i32, i32* %11, align 4
  %31 = uitofp i32 %30 to double
  %32 = load double, double* %13, align 8
  %33 = fmul double %31, %32
  %34 = fptoui double %33 to i32
  br label %37

35:                                               ; preds = %6
  %36 = load i32, i32* %11, align 4
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi i32 [ %34, %29 ], [ %36, %35 ]
  store i32 %38, i32* %16, align 4
  %39 = load double, double* %13, align 8
  %40 = fcmp olt double %39, 1.000000e+00
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %16, align 4
  %44 = sub i32 %42, %43
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %11, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %44, %41 ], [ %46, %45 ]
  store i32 %48, i32* %17, align 4
  %49 = load double, double* %13, align 8
  %50 = fcmp olt double %49, 1.000000e+00
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i64*, i64** %10, align 8
  %53 = load i32, i32* %16, align 4
  %54 = call i64 @COVER_sum(i64* %52, i32 %53)
  br label %57

55:                                               ; preds = %47
  %56 = load i64, i64* %15, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi i64 [ %54, %51 ], [ %56, %55 ]
  store i64 %58, i64* %18, align 8
  %59 = load double, double* %13, align 8
  %60 = fcmp olt double %59, 1.000000e+00
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i64*, i64** %10, align 8
  %63 = load i32, i32* %16, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i32, i32* %17, align 4
  %67 = call i64 @COVER_sum(i64* %65, i32 %66)
  br label %70

68:                                               ; preds = %57
  %69 = load i64, i64* %15, align 8
  br label %70

70:                                               ; preds = %68, %61
  %71 = phi i64 [ %67, %61 ], [ %69, %68 ]
  store i64 %71, i64* %19, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i64 @MAX(i32 %73, i32 4)
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = load i64, i64* %15, align 8
  %78 = load i32, i32* @COVER_MAX_SAMPLES_SIZE, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp uge i64 %77, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %76, %70
  %82 = load i64, i64* %15, align 8
  %83 = lshr i64 %82, 20
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @COVER_MAX_SAMPLES_SIZE, align 4
  %86 = ashr i32 %85, 20
  %87 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %86)
  store i32 0, i32* %7, align 4
  br label %276

88:                                               ; preds = %76
  %89 = load i32, i32* %16, align 4
  %90 = icmp ult i32 %89, 5
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %16, align 4
  %93 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  store i32 0, i32* %7, align 4
  br label %276

94:                                               ; preds = %88
  %95 = load i32, i32* %17, align 4
  %96 = icmp ult i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %17, align 4
  %99 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  store i32 0, i32* %7, align 4
  br label %276

100:                                              ; preds = %94
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = call i32 @memset(%struct.TYPE_7__* %101, i32 0, i32 80)
  %103 = load i32, i32* %16, align 4
  %104 = load i64, i64* %18, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %103, i32 %105)
  %107 = load i32, i32* %17, align 4
  %108 = load i64, i64* %19, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %109)
  %111 = load i32*, i32** %14, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 10
  store i32* %111, i32** %113, align 8
  %114 = load i64*, i64** %10, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i64* %114, i64** %116, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %16, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  %126 = load i64, i64* %18, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i64 @MAX(i32 %127, i32 4)
  %129 = sub i64 %126, %128
  %130 = add i64 %129, 1
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 4
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = mul i64 %135, 4
  %137 = trunc i64 %136 to i32
  %138 = call i64 @malloc(i32 %137)
  %139 = inttoptr i64 %138 to i32*
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 5
  store i32* %139, i32** %141, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = mul i64 %144, 4
  %146 = trunc i64 %145 to i32
  %147 = call i64 @malloc(i32 %146)
  %148 = inttoptr i64 %147 to i32*
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 6
  store i32* %148, i32** %150, align 8
  %151 = load i32, i32* %11, align 4
  %152 = add i32 %151, 1
  %153 = zext i32 %152 to i64
  %154 = mul i64 %153, 8
  %155 = trunc i64 %154 to i32
  %156 = call i64 @malloc(i32 %155)
  %157 = inttoptr i64 %156 to i64*
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 7
  store i64* %157, i64** %159, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 5
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %174

164:                                              ; preds = %100
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 6
  %167 = load i32*, i32** %166, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 7
  %172 = load i64*, i64** %171, align 8
  %173 = icmp ne i64* %172, null
  br i1 %173, label %178, label %174

174:                                              ; preds = %169, %164, %100
  %175 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %177 = call i32 @COVER_ctx_destroy(%struct.TYPE_7__* %176)
  store i32 0, i32* %7, align 4
  br label %276

178:                                              ; preds = %169
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 8
  store i32* null, i32** %180, align 8
  %181 = load i32, i32* %12, align 4
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 9
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 7
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 0
  store i64 0, i64* %187, align 8
  store i32 1, i32* %20, align 4
  br label %188

188:                                              ; preds = %214, %178
  %189 = load i32, i32* %20, align 4
  %190 = load i32, i32* %11, align 4
  %191 = icmp ule i32 %189, %190
  br i1 %191, label %192, label %217

192:                                              ; preds = %188
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 7
  %195 = load i64*, i64** %194, align 8
  %196 = load i32, i32* %20, align 4
  %197 = sub i32 %196, 1
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %195, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = load i64*, i64** %10, align 8
  %202 = load i32, i32* %20, align 4
  %203 = sub i32 %202, 1
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %201, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = add i64 %200, %206
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 7
  %210 = load i64*, i64** %209, align 8
  %211 = load i32, i32* %20, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  store i64 %207, i64* %213, align 8
  br label %214

214:                                              ; preds = %192
  %215 = load i32, i32* %20, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %20, align 4
  br label %188

217:                                              ; preds = %188
  %218 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %21, align 4
  br label %219

219:                                              ; preds = %234, %217
  %220 = load i32, i32* %21, align 4
  %221 = zext i32 %220 to i64
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = icmp ult i64 %221, %224
  br i1 %225, label %226, label %237

226:                                              ; preds = %219
  %227 = load i32, i32* %21, align 4
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 5
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %21, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  store i32 %227, i32* %233, align 4
  br label %234

234:                                              ; preds = %226
  %235 = load i32, i32* %21, align 4
  %236 = add i32 %235, 1
  store i32 %236, i32* %21, align 4
  br label %219

237:                                              ; preds = %219
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %238, %struct.TYPE_7__** @g_ctx, align 8
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 5
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = trunc i64 %244 to i32
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 9
  %248 = load i32, i32* %247, align 8
  %249 = icmp ule i32 %248, 8
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i32* @COVER_strict_cmp8, i32* @COVER_strict_cmp
  %252 = call i32 @qsort(i32* %241, i32 %245, i32 4, i32* %251)
  %253 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 5
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = trunc i64 %259 to i32
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 9
  %264 = load i32, i32* %263, align 8
  %265 = icmp ule i32 %264, 8
  %266 = zext i1 %265 to i64
  %267 = select i1 %265, i32* @COVER_cmp8, i32* @COVER_cmp
  %268 = call i32 @COVER_groupBy(i32* %256, i32 %260, i32 4, %struct.TYPE_7__* %261, i32* %267, i32* @COVER_group)
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 5
  %271 = load i32*, i32** %270, align 8
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 8
  store i32* %271, i32** %273, align 8
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 5
  store i32* null, i32** %275, align 8
  store i32 1, i32* %7, align 4
  br label %276

276:                                              ; preds = %237, %174, %97, %91, %81
  %277 = load i32, i32* %7, align 4
  ret i32 %277
}

declare dso_local i64 @COVER_sum(i64*, i32) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @COVER_ctx_destroy(%struct.TYPE_7__*) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32*) #1

declare dso_local i32 @COVER_groupBy(i32*, i32, i32, %struct.TYPE_7__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
