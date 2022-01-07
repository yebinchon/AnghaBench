; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_qsvvpp.c_ff_qsvvpp_create.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_qsvvpp.c_ff_qsvvpp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32*, i32* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_16__, i32, i32, i32, i32**, i32, %struct.TYPE_22__*, i32, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32**, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_22__, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32**, %struct.TYPE_19__*, i32, i64 }
%struct.TYPE_19__ = type { i64, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ff_filter_frame = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Fail to get frame info from link.\0A\00", align 1
@MFX_IOPATTERN_IN_SYSTEM_MEMORY = common dso_local global i32 0, align 4
@MFX_IOPATTERN_IN_VIDEO_MEMORY = common dso_local global i32 0, align 4
@MFX_IOPATTERN_IN_OPAQUE_MEMORY = common dso_local global i32 0, align 4
@MFX_IOPATTERN_OUT_SYSTEM_MEMORY = common dso_local global i32 0, align 4
@MFX_IOPATTERN_OUT_VIDEO_MEMORY = common dso_local global i32 0, align 4
@MFX_IOPATTERN_OUT_OPAQUE_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to create a qsvvpp, ret = %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_qsvvpp_create(%struct.TYPE_21__* %0, %struct.TYPE_20__** %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__**, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_20__** %1, %struct.TYPE_20__*** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %12 = call %struct.TYPE_20__* @av_mallocz(i32 120)
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %10, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %14 = icmp ne %struct.TYPE_20__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = call i32 @AVERROR(i32 %16)
  store i32 %17, i32* %4, align 4
  br label %383

18:                                               ; preds = %3
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 9
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = load i64, i64* @ff_filter_frame, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 9
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %18
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %40 = call i32 @init_vpp_session(%struct.TYPE_21__* %38, %struct.TYPE_20__* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %380

44:                                               ; preds = %32
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @av_mallocz_array(i32 %47, i32 16)
  %49 = bitcast i8* %48 to %struct.TYPE_22__*
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 7
  store %struct.TYPE_22__* %49, %struct.TYPE_22__** %51, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 7
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %53, align 8
  %55 = icmp ne %struct.TYPE_22__* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %44
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = call i32 @AVERROR(i32 %57)
  store i32 %58, i32* %9, align 4
  br label %380

59:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %85, %59
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %60
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 7
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i64 %71
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @fill_frameinfo_by_link(%struct.TYPE_22__* %72, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %66
  br label %380

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %60

88:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %158, %88
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %161

95:                                               ; preds = %89
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i64 %100
  store %struct.TYPE_19__* %101, %struct.TYPE_19__** %11, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = icmp ugt i64 %104, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %95
  %111 = load i32, i32* @EINVAL, align 4
  %112 = call i32 @AVERROR(i32 %111)
  store i32 %112, i32* %9, align 4
  br label %380

113:                                              ; preds = %95
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 7
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %118, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 3
  store i32 %116, i32* %124, align 4
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 7
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %129, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 2
  store i32 %127, i32* %135, align 4
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 7
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %140, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 1
  store i32 %138, i32* %146, align 4
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 7
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %151, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  store i32 %149, i32* %157, align 4
  br label %158

158:                                              ; preds = %113
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %89

161:                                              ; preds = %89
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 7
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i64 0
  %170 = bitcast %struct.TYPE_22__* %165 to i8*
  %171 = bitcast %struct.TYPE_22__* %169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %170, i8* align 4 %171, i64 16, i1 false)
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @fill_frameinfo_by_link(%struct.TYPE_22__* %175, i32 %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %161
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %186 = load i32, i32* @AV_LOG_ERROR, align 4
  %187 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %185, i32 %186, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %380

188:                                              ; preds = %161
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @IS_OPAQUE_MEMORY(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %188
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @IS_OPAQUE_MEMORY(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %265

200:                                              ; preds = %194, %188
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i8* @av_mallocz_array(i32 %209, i32 8)
  %211 = bitcast i8* %210 to i32**
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 5
  store i32** %211, i32*** %213, align 8
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 5
  %216 = load i32**, i32*** %215, align 8
  %217 = icmp ne i32** %216, null
  br i1 %217, label %221, label %218

218:                                              ; preds = %200
  %219 = load i32, i32* @ENOMEM, align 4
  %220 = call i32 @AVERROR(i32 %219)
  store i32 %220, i32* %9, align 4
  br label %380

221:                                              ; preds = %200
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 6
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 5
  %226 = load i32**, i32*** %225, align 8
  %227 = getelementptr inbounds i32*, i32** %226, i64 0
  store i32* %223, i32** %227, align 8
  store i32 1, i32* %8, align 4
  br label %228

228:                                              ; preds = %249, %221
  %229 = load i32, i32* %8, align 4
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %252

234:                                              ; preds = %228
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 2
  %237 = load i32**, i32*** %236, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32*, i32** %237, i64 %240
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 5
  %245 = load i32**, i32*** %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32*, i32** %245, i64 %247
  store i32* %242, i32** %248, align 8
  br label %249

249:                                              ; preds = %234
  %250 = load i32, i32* %8, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %8, align 4
  br label %228

252:                                              ; preds = %228
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 5
  %255 = load i32**, i32*** %254, align 8
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 3
  store i32** %255, i32*** %258, align 8
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 0
  store i32 %261, i32* %264, align 8
  br label %278

265:                                              ; preds = %194
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 0
  store i32 %268, i32* %271, align 8
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 2
  %274 = load i32**, i32*** %273, align 8
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 3
  store i32** %274, i32*** %277, align 8
  br label %278

278:                                              ; preds = %265, %252
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 1
  store i32 1, i32* %281, align 4
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = call i64 @IS_SYSTEM_MEMORY(i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %278
  %288 = load i32, i32* @MFX_IOPATTERN_IN_SYSTEM_MEMORY, align 4
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = or i32 %292, %288
  store i32 %293, i32* %291, align 8
  br label %322

294:                                              ; preds = %278
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = call i64 @IS_VIDEO_MEMORY(i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %307

300:                                              ; preds = %294
  %301 = load i32, i32* @MFX_IOPATTERN_IN_VIDEO_MEMORY, align 4
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = or i32 %305, %301
  store i32 %306, i32* %304, align 8
  br label %321

307:                                              ; preds = %294
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 8
  %311 = call i64 @IS_OPAQUE_MEMORY(i32 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %307
  %314 = load i32, i32* @MFX_IOPATTERN_IN_OPAQUE_MEMORY, align 4
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = or i32 %318, %314
  store i32 %319, i32* %317, align 8
  br label %320

320:                                              ; preds = %313, %307
  br label %321

321:                                              ; preds = %320, %300
  br label %322

322:                                              ; preds = %321, %287
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = call i64 @IS_SYSTEM_MEMORY(i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %335

328:                                              ; preds = %322
  %329 = load i32, i32* @MFX_IOPATTERN_OUT_SYSTEM_MEMORY, align 4
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = or i32 %333, %329
  store i32 %334, i32* %332, align 8
  br label %363

335:                                              ; preds = %322
  %336 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = call i64 @IS_VIDEO_MEMORY(i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %348

341:                                              ; preds = %335
  %342 = load i32, i32* @MFX_IOPATTERN_OUT_VIDEO_MEMORY, align 4
  %343 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = or i32 %346, %342
  store i32 %347, i32* %345, align 8
  br label %362

348:                                              ; preds = %335
  %349 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %350 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 4
  %352 = call i64 @IS_OPAQUE_MEMORY(i32 %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %361

354:                                              ; preds = %348
  %355 = load i32, i32* @MFX_IOPATTERN_OUT_OPAQUE_MEMORY, align 4
  %356 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %357 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = or i32 %359, %355
  store i32 %360, i32* %358, align 8
  br label %361

361:                                              ; preds = %354, %348
  br label %362

362:                                              ; preds = %361, %341
  br label %363

363:                                              ; preds = %362, %328
  %364 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %365 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %368 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %367, i32 0, i32 1
  %369 = call i32 @MFXVideoVPP_Init(i32 %366, %struct.TYPE_16__* %368)
  store i32 %369, i32* %9, align 4
  %370 = load i32, i32* %9, align 4
  %371 = icmp slt i32 %370, 0
  br i1 %371, label %372, label %377

372:                                              ; preds = %363
  %373 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %374 = load i32, i32* @AV_LOG_ERROR, align 4
  %375 = load i32, i32* %9, align 4
  %376 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %373, i32 %374, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %375)
  br label %380

377:                                              ; preds = %363
  %378 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %379 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  store %struct.TYPE_20__* %378, %struct.TYPE_20__** %379, align 8
  store i32 0, i32* %4, align 4
  br label %383

380:                                              ; preds = %372, %218, %184, %110, %83, %56, %43
  %381 = call i32 @ff_qsvvpp_free(%struct.TYPE_20__** %10)
  %382 = load i32, i32* %9, align 4
  store i32 %382, i32* %4, align 4
  br label %383

383:                                              ; preds = %380, %377, %15
  %384 = load i32, i32* %4, align 4
  ret i32 %384
}

declare dso_local %struct.TYPE_20__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @init_vpp_session(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i8* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @fill_frameinfo_by_link(%struct.TYPE_22__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local i64 @IS_OPAQUE_MEMORY(i32) #1

declare dso_local i64 @IS_SYSTEM_MEMORY(i32) #1

declare dso_local i64 @IS_VIDEO_MEMORY(i32) #1

declare dso_local i32 @MFXVideoVPP_Init(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @ff_qsvvpp_free(%struct.TYPE_20__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
