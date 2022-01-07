; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sofalizer.c_get_speaker_pos.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sofalizer.c_get_speaker_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__**, %struct.SOFAlizerContext* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.SOFAlizerContext = type { i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { float, float, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, float*, float*)* @get_speaker_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_speaker_pos(%struct.TYPE_8__* %0, float* %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca %struct.SOFAlizerContext*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [16 x float], align 16
  %11 = alloca [16 x float], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %17, align 8
  store %struct.SOFAlizerContext* %18, %struct.SOFAlizerContext** %8, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %21, i64 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = bitcast [16 x float]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 64, i1 false)
  %27 = bitcast [16 x float]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 64, i1 false)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %30, i64 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp sgt i32 %35, 16
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %4, align 4
  br label %247

40:                                               ; preds = %3
  %41 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %8, align 8
  %42 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 8
  %43 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %8, align 8
  %44 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @parse_speaker_pos(%struct.TYPE_8__* %48, i64 %49)
  br label %51

51:                                               ; preds = %47, %40
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %229, %51
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 64
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i1 [ false, %52 ], [ %58, %56 ]
  br i1 %60, label %61, label %232

61:                                               ; preds = %59
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 1, %64
  %66 = and i64 %62, %65
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* %15, align 8
  switch i64 %67, label %186 [
    i64 148, label %68
    i64 146, label %72
    i64 149, label %76
    i64 144, label %80
    i64 143, label %80
    i64 151, label %84
    i64 150, label %88
    i64 152, label %92
    i64 142, label %96
    i64 141, label %100
    i64 147, label %104
    i64 145, label %108
    i64 133, label %112
    i64 131, label %119
    i64 132, label %126
    i64 130, label %133
    i64 135, label %140
    i64 134, label %147
    i64 136, label %154
    i64 129, label %161
    i64 128, label %165
    i64 138, label %169
    i64 137, label %173
    i64 140, label %177
    i64 139, label %181
    i64 0, label %185
  ]

68:                                               ; preds = %61
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %70
  store float 3.000000e+01, float* %71, align 4
  br label %189

72:                                               ; preds = %61
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %74
  store float 3.300000e+02, float* %75, align 4
  br label %189

76:                                               ; preds = %61
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %78
  store float 0.000000e+00, float* %79, align 4
  br label %189

80:                                               ; preds = %61, %61
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %8, align 8
  %83 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %189

84:                                               ; preds = %61
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %86
  store float 1.500000e+02, float* %87, align 4
  br label %189

88:                                               ; preds = %61
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %90
  store float 2.100000e+02, float* %91, align 4
  br label %189

92:                                               ; preds = %61
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %94
  store float 1.800000e+02, float* %95, align 4
  br label %189

96:                                               ; preds = %61
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %98
  store float 9.000000e+01, float* %99, align 4
  br label %189

100:                                              ; preds = %61
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %102
  store float 2.700000e+02, float* %103, align 4
  br label %189

104:                                              ; preds = %61
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %106
  store float 1.500000e+01, float* %107, align 4
  br label %189

108:                                              ; preds = %61
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %110
  store float 3.450000e+02, float* %111, align 4
  br label %189

112:                                              ; preds = %61
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %114
  store float 0.000000e+00, float* %115, align 4
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [16 x float], [16 x float]* %11, i64 0, i64 %117
  store float 9.000000e+01, float* %118, align 4
  br label %189

119:                                              ; preds = %61
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %121
  store float 3.000000e+01, float* %122, align 4
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [16 x float], [16 x float]* %11, i64 0, i64 %124
  store float 4.500000e+01, float* %125, align 4
  br label %189

126:                                              ; preds = %61
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %128
  store float 0.000000e+00, float* %129, align 4
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [16 x float], [16 x float]* %11, i64 0, i64 %131
  store float 4.500000e+01, float* %132, align 4
  br label %189

133:                                              ; preds = %61
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %135
  store float 3.300000e+02, float* %136, align 4
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [16 x float], [16 x float]* %11, i64 0, i64 %138
  store float 4.500000e+01, float* %139, align 4
  br label %189

140:                                              ; preds = %61
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %142
  store float 1.500000e+02, float* %143, align 4
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [16 x float], [16 x float]* %11, i64 0, i64 %145
  store float 4.500000e+01, float* %146, align 4
  br label %189

147:                                              ; preds = %61
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %149
  store float 2.100000e+02, float* %150, align 4
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [16 x float], [16 x float]* %11, i64 0, i64 %152
  store float 4.500000e+01, float* %153, align 4
  br label %189

154:                                              ; preds = %61
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %156
  store float 1.800000e+02, float* %157, align 4
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [16 x float], [16 x float]* %11, i64 0, i64 %159
  store float 4.500000e+01, float* %160, align 4
  br label %189

161:                                              ; preds = %61
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %163
  store float 9.000000e+01, float* %164, align 4
  br label %189

165:                                              ; preds = %61
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %167
  store float 2.700000e+02, float* %168, align 4
  br label %189

169:                                              ; preds = %61
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %171
  store float 9.000000e+01, float* %172, align 4
  br label %189

173:                                              ; preds = %61
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %175
  store float 2.700000e+02, float* %176, align 4
  br label %189

177:                                              ; preds = %61
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %179
  store float 9.000000e+01, float* %180, align 4
  br label %189

181:                                              ; preds = %61
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %183
  store float 2.700000e+02, float* %184, align 4
  br label %189

185:                                              ; preds = %61
  br label %189

186:                                              ; preds = %61
  %187 = load i32, i32* @EINVAL, align 4
  %188 = call i32 @AVERROR(i32 %187)
  store i32 %188, i32* %4, align 4
  br label %247

189:                                              ; preds = %185, %181, %177, %173, %169, %165, %161, %154, %147, %140, %133, %126, %119, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68
  %190 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %8, align 8
  %191 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %190, i32 0, i32 1
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %222

199:                                              ; preds = %189
  %200 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %8, align 8
  %201 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %200, i32 0, i32 1
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load float, float* %206, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 %209
  store float %207, float* %210, align 4
  %211 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %8, align 8
  %212 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %211, i32 0, i32 1
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %212, align 8
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 1
  %218 = load float, float* %217, align 4
  %219 = load i32, i32* %13, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [16 x float], [16 x float]* %11, i64 0, i64 %220
  store float %218, float* %221, align 4
  br label %222

222:                                              ; preds = %199, %189
  %223 = load i64, i64* %15, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i32, i32* %13, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %13, align 4
  br label %228

228:                                              ; preds = %225, %222
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %12, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %12, align 4
  br label %52

232:                                              ; preds = %59
  %233 = load float*, float** %6, align 8
  %234 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 0
  %235 = load i32, i32* %14, align 4
  %236 = sext i32 %235 to i64
  %237 = mul i64 %236, 4
  %238 = trunc i64 %237 to i32
  %239 = call i32 @memcpy(float* %233, float* %234, i32 %238)
  %240 = load float*, float** %7, align 8
  %241 = getelementptr inbounds [16 x float], [16 x float]* %11, i64 0, i64 0
  %242 = load i32, i32* %14, align 4
  %243 = sext i32 %242 to i64
  %244 = mul i64 %243, 4
  %245 = trunc i64 %244 to i32
  %246 = call i32 @memcpy(float* %240, float* %241, i32 %245)
  store i32 0, i32* %4, align 4
  br label %247

247:                                              ; preds = %232, %186, %37
  %248 = load i32, i32* %4, align 4
  ret i32 %248
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @parse_speaker_pos(%struct.TYPE_8__*, i64) #2

declare dso_local i32 @memcpy(float*, float*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
