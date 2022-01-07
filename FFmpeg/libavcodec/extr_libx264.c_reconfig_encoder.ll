; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libx264.c_reconfig_encoder.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libx264.c_reconfig_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i64, i64, i64, %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_17__, %struct.TYPE_15__, i64 }
%struct.TYPE_17__ = type { i32, i32, i64, i32, i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32 }

@X264_RC_ABR = common dso_local global i64 0, align 8
@X264_RC_CRF = common dso_local global i64 0, align 8
@X264_RC_CQP = common dso_local global i64 0, align 8
@AV_FRAME_DATA_STEREO3D = common dso_local global i32 0, align 4
@AV_STEREO3D_FLAG_INVERT = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Ignoring unsupported inverted stereo value %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_21__*)* @reconfig_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reconfig_encoder(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %5, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %272

16:                                               ; preds = %2
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %22
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 4
  %43 = call i32 @x264_encoder_reconfig(i32 %40, %struct.TYPE_23__* %42)
  br label %44

44:                                               ; preds = %31, %22, %16
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %49, %53
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %58, %63
  %65 = icmp ne i32 %54, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %44
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 4
  %88 = call i32 @x264_encoder_reconfig(i32 %85, %struct.TYPE_23__* %87)
  br label %89

89:                                               ; preds = %66, %44
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sdiv i32 %97, 1000
  %99 = icmp ne i32 %94, %98
  br i1 %99, label %111, label %100

100:                                              ; preds = %89
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 %108, 1000
  %110 = icmp ne i32 %105, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %100, %89
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sdiv i32 %114, 1000
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sdiv i32 %122, 1000
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  store i32 %123, i32* %127, align 4
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 4
  %133 = call i32 @x264_encoder_reconfig(i32 %130, %struct.TYPE_23__* %132)
  br label %134

134:                                              ; preds = %111, %100
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @X264_RC_ABR, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %168

142:                                              ; preds = %134
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = sdiv i32 %150, 1000
  %152 = icmp ne i32 %147, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %142
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = sdiv i32 %156, 1000
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 3
  store i32 %157, i32* %161, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 4
  %167 = call i32 @x264_encoder_reconfig(i32 %164, %struct.TYPE_23__* %166)
  br label %168

168:                                              ; preds = %153, %142, %134
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp sge i64 %171, 0
  br i1 %172, label %173, label %205

173:                                              ; preds = %168
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @X264_RC_CRF, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %205

181:                                              ; preds = %173
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %186, %189
  br i1 %190, label %191, label %205

191:                                              ; preds = %181
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 4
  store i64 %194, i64* %198, align 8
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 4
  %204 = call i32 @x264_encoder_reconfig(i32 %201, %struct.TYPE_23__* %203)
  br label %205

205:                                              ; preds = %191, %181, %173, %168
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @X264_RC_CQP, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %242

213:                                              ; preds = %205
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = icmp sge i64 %216, 0
  br i1 %217, label %218, label %242

218:                                              ; preds = %213
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 5
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %223, %226
  br i1 %227, label %228, label %242

228:                                              ; preds = %218
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 5
  store i64 %231, i64* %235, align 8
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 4
  %241 = call i32 @x264_encoder_reconfig(i32 %238, %struct.TYPE_23__* %240)
  br label %242

242:                                              ; preds = %228, %218, %213, %205
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = icmp sge i64 %245, 0
  br i1 %246, label %247, label %271

247:                                              ; preds = %242
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 6
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %252, %255
  br i1 %256, label %257, label %271

257:                                              ; preds = %247
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 6
  store i64 %260, i64* %264, align 8
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 4
  %270 = call i32 @x264_encoder_reconfig(i32 %267, %struct.TYPE_23__* %269)
  br label %271

271:                                              ; preds = %257, %247, %242
  br label %272

272:                                              ; preds = %271, %2
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %274 = load i32, i32* @AV_FRAME_DATA_STEREO3D, align 4
  %275 = call %struct.TYPE_20__* @av_frame_get_side_data(%struct.TYPE_21__* %273, i32 %274)
  store %struct.TYPE_20__* %275, %struct.TYPE_20__** %6, align 8
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %277 = icmp ne %struct.TYPE_20__* %276, null
  br i1 %277, label %278, label %324

278:                                              ; preds = %272
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = inttoptr i64 %281 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %282, %struct.TYPE_19__** %7, align 8
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  switch i32 %285, label %292 [
    i32 133, label %286
    i32 132, label %287
    i32 130, label %288
    i32 129, label %289
    i32 128, label %290
    i32 131, label %291
  ]

286:                                              ; preds = %278
  store i32 0, i32* %8, align 4
  br label %293

287:                                              ; preds = %278
  store i32 1, i32* %8, align 4
  br label %293

288:                                              ; preds = %278
  store i32 2, i32* %8, align 4
  br label %293

289:                                              ; preds = %278
  store i32 3, i32* %8, align 4
  br label %293

290:                                              ; preds = %278
  store i32 4, i32* %8, align 4
  br label %293

291:                                              ; preds = %278
  store i32 5, i32* %8, align 4
  br label %293

292:                                              ; preds = %278
  store i32 -1, i32* %8, align 4
  br label %293

293:                                              ; preds = %292, %291, %290, %289, %288, %287, %286
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @AV_STEREO3D_FLAG_INVERT, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %293
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %302 = load i32, i32* @AV_LOG_WARNING, align 4
  %303 = load i32, i32* %8, align 4
  %304 = call i32 @av_log(%struct.TYPE_22__* %301, i32 %302, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %303)
  store i32 -1, i32* %8, align 4
  br label %305

305:                                              ; preds = %300, %293
  %306 = load i32, i32* %8, align 4
  %307 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %307, i32 0, i32 4
  %309 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = icmp ne i32 %306, %310
  br i1 %311, label %312, label %323

312:                                              ; preds = %305
  %313 = load i32, i32* %8, align 4
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 4
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 1
  store i32 %313, i32* %316, align 8
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 4
  %322 = call i32 @x264_encoder_reconfig(i32 %319, %struct.TYPE_23__* %321)
  br label %323

323:                                              ; preds = %312, %305
  br label %324

324:                                              ; preds = %323, %272
  ret void
}

declare dso_local i32 @x264_encoder_reconfig(i32, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_20__* @av_frame_get_side_data(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_22__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
