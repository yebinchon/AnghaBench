; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h261dec.c_h261_decode_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h261dec.c_h261_decode_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32***, i32, i32*, i32*, %struct.TYPE_14__, i64, %struct.TYPE_15__, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 (i32)* }
%struct.TYPE_15__ = type { i32*, i32*** }

@h261_mba_vlc = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@H261_MBA_VLC_BITS = common dso_local global i32 0, align 4
@MBA_STARTCODE = common dso_local global i32 0, align 4
@SLICE_END = common dso_local global i32 0, align 4
@MBA_STUFFING = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"illegal mba at %d %d\0A\00", align 1
@SLICE_ERROR = common dso_local global i32 0, align 4
@h261_mtype_vlc = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@H261_MTYPE_VLC_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid mtype index %d\0A\00", align 1
@ff_h261_mtype_map = common dso_local global i32* null, align 8
@h261_cbp_vlc = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@H261_CBP_VLC_BITS = common dso_local global i32 0, align 4
@MB_TYPE_INTRA = common dso_local global i32 0, align 4
@MV_DIR_FORWARD = common dso_local global i32 0, align 4
@MV_TYPE_16X16 = common dso_local global i32 0, align 4
@MB_TYPE_16x16 = common dso_local global i32 0, align 4
@MB_TYPE_L0 = common dso_local global i32 0, align 4
@SLICE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @h261_decode_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h261_decode_mb(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 7
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %4, align 8
  store i32 63, i32* %6, align 4
  br label %12

12:                                               ; preds = %30, %1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 12
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @h261_mba_vlc, i32 0, i32 0), align 4
  %16 = load i32, i32* @H261_MBA_VLC_BITS, align 4
  %17 = call i32 @get_vlc2(i32* %14, i32 %15, i32 %16, i32 2)
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MBA_STARTCODE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %12
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* @SLICE_END, align 4
  store i32 %28, i32* %2, align 4
  br label %444

29:                                               ; preds = %12
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MBA_STUFFING, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %12, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 12
  %44 = call i32 @get_bits_left(i32* %43)
  %45 = icmp sle i32 %44, 7
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @SLICE_END, align 4
  store i32 %47, i32* %2, align 4
  br label %444

48:                                               ; preds = %41
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i32, i8*, i32, ...) @av_log(i32 %51, i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load i32, i32* @SLICE_ERROR, align 4
  store i32 %60, i32* %2, align 4
  br label %444

61:                                               ; preds = %36
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MBA_STUFFING, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %61
  %79 = load i32, i32* @SLICE_ERROR, align 4
  store i32 %79, i32* %2, align 4
  br label %444

80:                                               ; preds = %61
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = srem i32 %84, 2
  %86 = mul nsw i32 %85, 11
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, 1
  %91 = srem i32 %90, 11
  %92 = add nsw i32 %86, %91
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sdiv i32 %98, 2
  %100 = mul nsw i32 %99, 3
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 1
  %105 = sdiv i32 %104, 11
  %106 = add nsw i32 %100, %105
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %114, %117
  %119 = add nsw i32 %111, %118
  store i32 %119, i32* %7, align 4
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %121 = call i32 @ff_init_block_index(%struct.TYPE_16__* %120)
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %123 = call i32 @ff_update_block_index(%struct.TYPE_16__* %122)
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 12
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @h261_mtype_vlc, i32 0, i32 0), align 4
  %127 = load i32, i32* @H261_MTYPE_VLC_BITS, align 4
  %128 = call i32 @get_vlc2(i32* %125, i32 %126, i32 %127, i32 2)
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %80
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 13
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @AV_LOG_ERROR, align 4
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (i32, i32, i8*, i32, ...) @av_log(i32 %138, i32 %139, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @SLICE_ERROR, align 4
  store i32 %144, i32* %2, align 4
  br label %444

145:                                              ; preds = %80
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load i32*, i32** @ff_h261_mtype_map, align 8
  %150 = call i32 @FF_ARRAY_ELEMS(i32* %149)
  %151 = icmp slt i32 %148, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @av_assert0(i32 %152)
  %154 = load i32*, i32** @ff_h261_mtype_map, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %154, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = call i64 @IS_QUANT(i64 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %145
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 12
  %173 = call i32 @get_bits(i32* %172, i32 5)
  %174 = call i32 @ff_set_qscale(%struct.TYPE_16__* %170, i32 %173)
  br label %175

175:                                              ; preds = %169, %145
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = call i64 @IS_INTRA4x4(i64 %179)
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 8
  store i64 %180, i64* %182, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = call i64 @IS_16X16(i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %233

189:                                              ; preds = %175
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %209, label %194

194:                                              ; preds = %189
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 12
  br i1 %198, label %209, label %199

199:                                              ; preds = %194
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %202, 23
  br i1 %203, label %209, label %204

204:                                              ; preds = %199
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 1
  br i1 %208, label %209, label %214

209:                                              ; preds = %204, %199, %194, %189
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 5
  store i32 0, i32* %211, align 4
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 6
  store i32 0, i32* %213, align 8
  br label %214

214:                                              ; preds = %209, %204
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 12
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = call i8* @decode_mv_component(i32* %216, i32 %219)
  %221 = ptrtoint i8* %220 to i32
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 5
  store i32 %221, i32* %223, align 4
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 12
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 8
  %229 = call i8* @decode_mv_component(i32* %225, i32 %228)
  %230 = ptrtoint i8* %229 to i32
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 6
  store i32 %230, i32* %232, align 8
  br label %238

233:                                              ; preds = %175
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 5
  store i32 0, i32* %235, align 4
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 6
  store i32 0, i32* %237, align 8
  br label %238

238:                                              ; preds = %233, %214
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = call i64 @HAS_CBP(i64 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %238
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 12
  %248 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @h261_cbp_vlc, i32 0, i32 0), align 4
  %249 = load i32, i32* @H261_CBP_VLC_BITS, align 4
  %250 = call i32 @get_vlc2(i32* %247, i32 %248, i32 %249, i32 2)
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %6, align 4
  br label %252

252:                                              ; preds = %245, %238
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 8
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %252
  %258 = load i32, i32* @MB_TYPE_INTRA, align 4
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 9
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %7, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  store i32 %258, i32* %265, align 4
  br label %372

266:                                              ; preds = %252
  %267 = load i32, i32* @MV_DIR_FORWARD, align 4
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 11
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* @MV_TYPE_16X16, align 4
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 10
  store i32 %270, i32* %272, align 8
  %273 = load i32, i32* @MB_TYPE_16x16, align 4
  %274 = load i32, i32* @MB_TYPE_L0, align 4
  %275 = or i32 %273, %274
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 9
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  store i32 %275, i32* %282, align 4
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = mul nsw i32 %285, 2
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 3
  %289 = load i32***, i32**** %288, align 8
  %290 = getelementptr inbounds i32**, i32*** %289, i64 0
  %291 = load i32**, i32*** %290, align 8
  %292 = getelementptr inbounds i32*, i32** %291, i64 0
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 0
  store i32 %286, i32* %294, align 4
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 6
  %297 = load i32, i32* %296, align 8
  %298 = mul nsw i32 %297, 2
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 3
  %301 = load i32***, i32**** %300, align 8
  %302 = getelementptr inbounds i32**, i32*** %301, i64 0
  %303 = load i32**, i32*** %302, align 8
  %304 = getelementptr inbounds i32*, i32** %303, i64 0
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 1
  store i32 %298, i32* %306, align 4
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 9
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 1
  %310 = load i32***, i32**** %309, align 8
  %311 = getelementptr inbounds i32**, i32*** %310, i64 0
  %312 = load i32**, i32*** %311, align 8
  %313 = icmp ne i32** %312, null
  br i1 %313, label %314, label %371

314:                                              ; preds = %266
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = mul nsw i32 2, %317
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %8, align 4
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = mul nsw i32 2, %322
  %324 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = mul nsw i32 2, %326
  %328 = load i32, i32* %8, align 4
  %329 = mul nsw i32 %327, %328
  %330 = add nsw i32 %323, %329
  store i32 %330, i32* %9, align 4
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 3
  %333 = load i32***, i32**** %332, align 8
  %334 = getelementptr inbounds i32**, i32*** %333, i64 0
  %335 = load i32**, i32*** %334, align 8
  %336 = getelementptr inbounds i32*, i32** %335, i64 0
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 0
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 9
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 1
  %343 = load i32***, i32**** %342, align 8
  %344 = getelementptr inbounds i32**, i32*** %343, i64 0
  %345 = load i32**, i32*** %344, align 8
  %346 = load i32, i32* %9, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32*, i32** %345, i64 %347
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 0
  store i32 %339, i32* %350, align 4
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 3
  %353 = load i32***, i32**** %352, align 8
  %354 = getelementptr inbounds i32**, i32*** %353, i64 0
  %355 = load i32**, i32*** %354, align 8
  %356 = getelementptr inbounds i32*, i32** %355, i64 0
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 1
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 9
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 1
  %363 = load i32***, i32**** %362, align 8
  %364 = getelementptr inbounds i32**, i32*** %363, i64 0
  %365 = load i32**, i32*** %364, align 8
  %366 = load i32, i32* %9, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32*, i32** %365, i64 %367
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 1
  store i32 %359, i32* %370, align 4
  br label %371

371:                                              ; preds = %314, %266
  br label %372

372:                                              ; preds = %371, %257
  %373 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %373, i32 0, i32 8
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %384, label %377

377:                                              ; preds = %372
  %378 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 8
  %381 = sext i32 %380 to i64
  %382 = call i64 @HAS_CBP(i64 %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %422

384:                                              ; preds = %377, %372
  %385 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 7
  %387 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %386, i32 0, i32 0
  %388 = load i32 (i32)*, i32 (i32)** %387, align 8
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 6
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 0
  %393 = load i32, i32* %392, align 4
  %394 = call i32 %388(i32 %393)
  store i32 0, i32* %5, align 4
  br label %395

395:                                              ; preds = %418, %384
  %396 = load i32, i32* %5, align 4
  %397 = icmp slt i32 %396, 6
  br i1 %397, label %398, label %421

398:                                              ; preds = %395
  %399 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %400 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %400, i32 0, i32 6
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %5, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* %5, align 4
  %408 = load i32, i32* %6, align 4
  %409 = and i32 %408, 32
  %410 = call i64 @h261_decode_block(%struct.TYPE_17__* %399, i32 %406, i32 %407, i32 %409)
  %411 = icmp slt i64 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %398
  %413 = load i32, i32* @SLICE_ERROR, align 4
  store i32 %413, i32* %2, align 4
  br label %444

414:                                              ; preds = %398
  %415 = load i32, i32* %6, align 4
  %416 = load i32, i32* %6, align 4
  %417 = add nsw i32 %416, %415
  store i32 %417, i32* %6, align 4
  br label %418

418:                                              ; preds = %414
  %419 = load i32, i32* %5, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %5, align 4
  br label %395

421:                                              ; preds = %395
  br label %437

422:                                              ; preds = %377
  store i32 0, i32* %5, align 4
  br label %423

423:                                              ; preds = %433, %422
  %424 = load i32, i32* %5, align 4
  %425 = icmp slt i32 %424, 6
  br i1 %425, label %426, label %436

426:                                              ; preds = %423
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %427, i32 0, i32 5
  %429 = load i32*, i32** %428, align 8
  %430 = load i32, i32* %5, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %429, i64 %431
  store i32 -1, i32* %432, align 4
  br label %433

433:                                              ; preds = %426
  %434 = load i32, i32* %5, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %5, align 4
  br label %423

436:                                              ; preds = %423
  br label %437

437:                                              ; preds = %436, %421
  %438 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %439 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %439, i32 0, i32 6
  %441 = load i32*, i32** %440, align 8
  %442 = call i32 @ff_mpv_reconstruct_mb(%struct.TYPE_16__* %438, i32* %441)
  %443 = load i32, i32* @SLICE_OK, align 4
  store i32 %443, i32* %2, align 4
  br label %444

444:                                              ; preds = %437, %412, %135, %78, %48, %46, %25
  %445 = load i32, i32* %2, align 4
  ret i32 %445
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @ff_init_block_index(%struct.TYPE_16__*) #1

declare dso_local i32 @ff_update_block_index(%struct.TYPE_16__*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i64 @IS_QUANT(i64) #1

declare dso_local i32 @ff_set_qscale(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i64 @IS_INTRA4x4(i64) #1

declare dso_local i64 @IS_16X16(i64) #1

declare dso_local i8* @decode_mv_component(i32*, i32) #1

declare dso_local i64 @HAS_CBP(i64) #1

declare dso_local i64 @h261_decode_block(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @ff_mpv_reconstruct_mb(%struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
