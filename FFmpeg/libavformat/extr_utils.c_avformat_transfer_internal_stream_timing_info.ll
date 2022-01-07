; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_avformat_transfer_internal_stream_timing_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_avformat_transfer_internal_stream_timing_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_15__, %struct.TYPE_11__*, %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_15__ }

@.str = private unnamed_addr constant [4 x i8] c"avi\00", align 1
@AVFMT_TBCF_AUTO = common dso_local global i32 0, align 4
@AVFMT_TBCF_DECODER = common dso_local global i32 0, align 4
@AVFMT_VARIABLE_FPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"mov,mp4,3gp,3g2,psp,ipod,ismv,f4v\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"tmcd\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@AVFMT_TBCF_R_FRAMERATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avformat_transfer_internal_stream_timing_info(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %9, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %10, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = bitcast %struct.TYPE_15__* %19 to i8*
  %23 = bitcast %struct.TYPE_15__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcmp(i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %85, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @AVFMT_TBCF_AUTO, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = bitcast %struct.TYPE_15__* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = call double @av_q2d(i64 %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sitofp i32 %41 to double
  %43 = fmul double %38, %42
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = bitcast %struct.TYPE_15__* %45 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = call double @av_q2d(i64 %47)
  %49 = fmul double 2.000000e+00, %48
  %50 = fcmp ogt double %43, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %33
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = bitcast %struct.TYPE_15__* %53 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = call double @av_q2d(i64 %55)
  %57 = fcmp olt double %56, 2.000000e-03
  br i1 %57, label %62, label %58

58:                                               ; preds = %51, %33, %29
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @AVFMT_TBCF_DECODER, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %58, %51
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = bitcast %struct.TYPE_15__* %64 to i8*
  %68 = bitcast %struct.TYPE_15__* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 8, i1 false)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %75, %71
  store i32 %76, i32* %74, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 2
  store i32 %81, i32* %79, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store i32 2, i32* %83, align 8
  br label %84

84:                                               ; preds = %62, %58
  br label %153

85:                                               ; preds = %4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @AVFMT_VARIABLE_FPS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %152, label %92

92:                                               ; preds = %85
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @av_match_name(i32 %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %152, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @AVFMT_TBCF_AUTO, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %132

102:                                              ; preds = %98
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %132

108:                                              ; preds = %102
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = bitcast %struct.TYPE_15__* %110 to i64*
  %112 = load i64, i64* %111, align 8
  %113 = call double @av_q2d(i64 %112)
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sitofp i32 %116 to double
  %118 = fmul double %113, %117
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  %121 = bitcast %struct.TYPE_15__* %120 to i64*
  %122 = load i64, i64* %121, align 8
  %123 = call double @av_q2d(i64 %122)
  %124 = fcmp ogt double %118, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %108
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = bitcast %struct.TYPE_15__* %127 to i64*
  %129 = load i64, i64* %128, align 8
  %130 = call double @av_q2d(i64 %129)
  %131 = fcmp olt double %130, 2.000000e-03
  br i1 %131, label %136, label %132

132:                                              ; preds = %125, %108, %102, %98
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @AVFMT_TBCF_DECODER, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %151

136:                                              ; preds = %132, %125
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  %141 = bitcast %struct.TYPE_15__* %138 to i8*
  %142 = bitcast %struct.TYPE_15__* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %141, i8* align 8 %142, i64 8, i1 false)
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = mul nsw i32 %149, %145
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %136, %132
  br label %152

152:                                              ; preds = %151, %92, %85
  br label %153

153:                                              ; preds = %152, %84
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %167, label %159

159:                                              ; preds = %153
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %203

167:                                              ; preds = %159, %153
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %171, %175
  br i1 %176, label %177, label %203

177:                                              ; preds = %167
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %203

183:                                              ; preds = %177
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = mul nsw i64 121, %188
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = icmp sgt i64 %189, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %183
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 2
  %201 = bitcast %struct.TYPE_15__* %198 to i8*
  %202 = bitcast %struct.TYPE_15__* %200 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %201, i8* align 8 %202, i64 8, i1 false)
  br label %203

203:                                              ; preds = %196, %183, %177, %167, %159
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %220

209:                                              ; preds = %203
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = bitcast %struct.TYPE_15__* %213 to i64*
  %215 = load i64, i64* %214, align 8
  %216 = call i64 @av_inv_q(i64 %215)
  %217 = bitcast %struct.TYPE_15__* %11 to i64*
  store i64 %216, i64* %217, align 4
  %218 = bitcast %struct.TYPE_15__* %211 to i8*
  %219 = bitcast %struct.TYPE_15__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %218, i8* align 4 %219, i64 8, i1 false)
  br label %220

220:                                              ; preds = %209, %203
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = bitcast i32* %223 to i64*
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 1
  %228 = bitcast i32* %227 to i64*
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = load i32, i32* @INT_MAX, align 4
  %240 = call i32 @av_reduce(i64* %224, i64* %228, i64 %233, i64 %238, i32 %239)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local double @av_q2d(i64) #2

declare dso_local i32 @av_match_name(i32, i8*) #2

declare dso_local i64 @AV_RL32(i8*) #2

declare dso_local i64 @av_inv_q(i64) #2

declare dso_local i32 @av_reduce(i64*, i64*, i64, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
