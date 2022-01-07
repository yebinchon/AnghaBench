; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_swresample.c_resample.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_swresample.c_resample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, i32, i32, %struct.TYPE_20__, i32, %struct.TYPE_18__*, i64 }
%struct.TYPE_20__ = type { i64, i64, i64, i32 }
%struct.TYPE_18__ = type { i32 (i32, %struct.TYPE_20__*, %struct.TYPE_20__*, i32, i32*, i32*)*, i32 (i32, %struct.TYPE_20__*, i32, %struct.TYPE_20__*, i32, i32*)* }

@ARCH_X86 = common dso_local global i64 0, align 8
@SWR_ENGINE_SWR = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32, %struct.TYPE_20__*, i32)* @resample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resample(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i32 %2, %struct.TYPE_20__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__, align 8
  %13 = alloca %struct.TYPE_20__, align 8
  %14 = alloca %struct.TYPE_20__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load i64, i64* @ARCH_X86, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SWR_ENGINE_SWR, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %24, %5
  %31 = phi i1 [ false, %5 ], [ %29, %24 ]
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 7, i32 0
  store i32 %33, i32* %17, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @av_assert1(i32 %42)
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @av_assert1(i32 %52)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @av_assert1(i32 %62)
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %65 = bitcast %struct.TYPE_20__* %13 to i8*
  %66 = bitcast %struct.TYPE_20__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 32, i1 false)
  %67 = bitcast %struct.TYPE_20__* %14 to i8*
  %68 = bitcast %struct.TYPE_20__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 32, i1 false)
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %70 = bitcast %struct.TYPE_20__* %12 to i8*
  %71 = bitcast %struct.TYPE_20__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 32, i1 false)
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 6
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32 (i32, %struct.TYPE_20__*, %struct.TYPE_20__*, i32, i32*, i32*)*, i32 (i32, %struct.TYPE_20__*, %struct.TYPE_20__*, i32, i32*, i32*)** %75, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 4
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 2
  %87 = call i32 %76(i32 %79, %struct.TYPE_20__* %81, %struct.TYPE_20__* %12, i32 %82, i32* %84, i32* %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* @INT_MAX, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %355

92:                                               ; preds = %30
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %6, align 4
  br label %355

97:                                               ; preds = %92
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @buf_set(%struct.TYPE_20__* %12, %struct.TYPE_20__* %12, i32 %101)
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %11, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 3
  store i32 0, i32* %107, align 8
  br label %108

108:                                              ; preds = %100, %97
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %345, %110
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %184, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %184

121:                                              ; preds = %116
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @buf_set(%struct.TYPE_20__* %14, %struct.TYPE_20__* %123, i32 %126)
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 6
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  %132 = load i32 (i32, %struct.TYPE_20__*, i32, %struct.TYPE_20__*, i32, i32*)*, i32 (i32, %struct.TYPE_20__*, i32, %struct.TYPE_20__*, i32, i32*)** %131, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 %132(i32 %135, %struct.TYPE_20__* %13, i32 %136, %struct.TYPE_20__* %14, i32 %139, i32* %20)
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* %9, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %15, align 4
  %147 = load i32, i32* %18, align 4
  %148 = call i32 @buf_set(%struct.TYPE_20__* %13, %struct.TYPE_20__* %13, i32 %147)
  %149 = load i32, i32* %20, align 4
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load i32, i32* %20, align 4
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, %154
  store i32 %158, i32* %156, align 8
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %121
  br label %346

162:                                              ; preds = %121
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %16, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %183

168:                                              ; preds = %162
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 0, %171
  %173 = call i32 @buf_set(%struct.TYPE_20__* %12, %struct.TYPE_20__* %12, i32 %172)
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %11, align 4
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 2
  store i32 0, i32* %180, align 4
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  store i32 0, i32* %182, align 8
  store i32 0, i32* %16, align 4
  br label %183

183:                                              ; preds = %168, %162
  br label %184

184:                                              ; preds = %183, %116, %111
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 7
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %184
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %17, align 4
  %192 = icmp sgt i32 %190, %191
  br i1 %192, label %193, label %228

193:                                              ; preds = %189, %184
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %228, label %198

198:                                              ; preds = %193
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 1
  store i32 0, i32* %200, align 8
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 6
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = load i32 (i32, %struct.TYPE_20__*, i32, %struct.TYPE_20__*, i32, i32*)*, i32 (i32, %struct.TYPE_20__*, i32, %struct.TYPE_20__*, i32, i32*)** %204, align 8
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %17, align 4
  %212 = sub nsw i32 %210, %211
  %213 = call i32 @FFMAX(i32 %212, i32 0)
  %214 = call i32 %205(i32 %208, %struct.TYPE_20__* %13, i32 %209, %struct.TYPE_20__* %12, i32 %213, i32* %20)
  store i32 %214, i32* %18, align 4
  %215 = load i32, i32* %18, align 4
  %216 = load i32, i32* %9, align 4
  %217 = sub nsw i32 %216, %215
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %18, align 4
  %219 = load i32, i32* %15, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %15, align 4
  %221 = load i32, i32* %18, align 4
  %222 = call i32 @buf_set(%struct.TYPE_20__* %13, %struct.TYPE_20__* %13, i32 %221)
  %223 = load i32, i32* %20, align 4
  %224 = load i32, i32* %11, align 4
  %225 = sub nsw i32 %224, %223
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* %20, align 4
  %227 = call i32 @buf_set(%struct.TYPE_20__* %12, %struct.TYPE_20__* %12, i32 %226)
  br label %228

228:                                              ; preds = %198, %193, %189
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %231, %234
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %235, %236
  store i32 %237, i32* %19, align 4
  %238 = load i32, i32* %19, align 4
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = icmp sgt i32 %238, %242
  br i1 %243, label %244, label %269

244:                                              ; preds = %228
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %11, align 4
  %249 = add nsw i32 %247, %248
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = icmp sle i32 %249, %252
  br i1 %253, label %254, label %269

254:                                              ; preds = %244
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 4
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @buf_set(%struct.TYPE_20__* %14, %struct.TYPE_20__* %256, i32 %259)
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 4
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @copy(%struct.TYPE_20__* %262, %struct.TYPE_20__* %14, i32 %265)
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 1
  store i32 0, i32* %268, align 8
  br label %278

269:                                              ; preds = %244, %228
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 4
  %272 = load i32, i32* %19, align 4
  %273 = call i32 @swri_realloc_audio(%struct.TYPE_20__* %271, i32 %272)
  store i32 %273, i32* %18, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %269
  %276 = load i32, i32* %18, align 4
  store i32 %276, i32* %6, align 4
  br label %355

277:                                              ; preds = %269
  br label %278

278:                                              ; preds = %277, %254
  %279 = load i32, i32* %11, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %344

281:                                              ; preds = %278
  %282 = load i32, i32* %11, align 4
  store i32 %282, i32* %21, align 4
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %302

287:                                              ; preds = %281
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, 2
  %292 = load i32, i32* %21, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %302

294:                                              ; preds = %287
  %295 = load i32, i32* %9, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %294
  %298 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = add nsw i32 %300, 2
  store i32 %301, i32* %21, align 4
  br label %302

302:                                              ; preds = %297, %294, %287, %281
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 4
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %307, %310
  %312 = call i32 @buf_set(%struct.TYPE_20__* %14, %struct.TYPE_20__* %304, i32 %311)
  %313 = load i32, i32* %21, align 4
  %314 = call i32 @copy(%struct.TYPE_20__* %14, %struct.TYPE_20__* %12, i32 %313)
  %315 = load i32, i32* %21, align 4
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %318, %315
  store i32 %319, i32* %317, align 4
  %320 = load i32, i32* %21, align 4
  %321 = load i32, i32* %11, align 4
  %322 = sub nsw i32 %321, %320
  store i32 %322, i32* %11, align 4
  %323 = load i32, i32* %21, align 4
  %324 = load i32, i32* %16, align 4
  %325 = add nsw i32 %324, %323
  store i32 %325, i32* %16, align 4
  %326 = load i32, i32* %21, align 4
  %327 = call i32 @buf_set(%struct.TYPE_20__* %12, %struct.TYPE_20__* %12, i32 %326)
  %328 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %328, i32 0, i32 3
  store i32 0, i32* %329, align 8
  %330 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* %21, align 4
  %334 = icmp ne i32 %332, %333
  br i1 %334, label %338, label %335

335:                                              ; preds = %302
  %336 = load i32, i32* %11, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %335, %302
  br label %345

339:                                              ; preds = %335
  %340 = load i32, i32* %17, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %339
  store i32 0, i32* %17, align 4
  br label %345

343:                                              ; preds = %339
  br label %344

344:                                              ; preds = %343, %278
  br label %346

345:                                              ; preds = %342, %338
  br i1 true, label %111, label %346

346:                                              ; preds = %345, %344, %161
  %347 = load i32, i32* %9, align 4
  %348 = icmp ne i32 %347, 0
  %349 = xor i1 %348, true
  %350 = xor i1 %349, true
  %351 = zext i1 %350 to i32
  %352 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %352, i32 0, i32 3
  store i32 %351, i32* %353, align 8
  %354 = load i32, i32* %15, align 4
  store i32 %354, i32* %6, align 4
  br label %355

355:                                              ; preds = %346, %275, %95, %91
  %356 = load i32, i32* %6, align 4
  ret i32 %356
}

declare dso_local i32 @av_assert1(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @buf_set(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @copy(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @swri_realloc_audio(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
