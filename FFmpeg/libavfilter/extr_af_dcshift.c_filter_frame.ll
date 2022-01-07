; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_dcshift.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_dcshift.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, %struct.TYPE_17__** }
%struct.TYPE_15__ = type { double, i64, double }
%struct.TYPE_16__ = type { i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double, align 8
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca double, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %6, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %24, i64 0
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %7, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %9, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load double, double* %31, align 8
  store double %32, double* %12, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = call i64 @av_frame_is_writable(%struct.TYPE_16__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %8, align 8
  br label %54

38:                                               ; preds = %2
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.TYPE_16__* @ff_get_audio_buffer(%struct.TYPE_17__* %39, i32 %42)
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %8, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = icmp ne %struct.TYPE_16__* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = call i32 @av_frame_free(%struct.TYPE_16__** %5)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = call i32 @AVERROR(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %246

50:                                               ; preds = %38
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = call i32 @av_frame_copy_props(%struct.TYPE_16__* %51, %struct.TYPE_16__* %52)
  br label %54

54:                                               ; preds = %50, %36
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %181

59:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %177, %59
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %180

66:                                               ; preds = %60
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to double*
  store double* %74, double** %13, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to double*
  store double* %82, double** %14, align 8
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %173, %66
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %176

89:                                               ; preds = %83
  %90 = load double*, double** %13, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %90, i64 %92
  %94 = load double, double* %93, align 8
  store double %94, double* %15, align 8
  %95 = load double, double* %15, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 2
  %98 = load double, double* %97, align 8
  %99 = fcmp ogt double %95, %98
  br i1 %99, label %100, label %126

100:                                              ; preds = %89
  %101 = load double, double* %12, align 8
  %102 = fcmp ogt double %101, 0.000000e+00
  br i1 %102, label %103, label %126

103:                                              ; preds = %100
  %104 = load double, double* %15, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  %107 = load double, double* %106, align 8
  %108 = fsub double %104, %107
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sitofp i64 %111 to double
  %113 = fmul double %108, %112
  %114 = load double, double* @INT32_MAX, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load double, double* %116, align 8
  %118 = fsub double %114, %117
  %119 = fdiv double %113, %118
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = load double, double* %121, align 8
  %123 = fadd double %119, %122
  %124 = load double, double* %12, align 8
  %125 = fadd double %123, %124
  store double %125, double* %15, align 8
  br label %166

126:                                              ; preds = %100, %89
  %127 = load double, double* %15, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  %130 = load double, double* %129, align 8
  %131 = fneg double %130
  %132 = fcmp olt double %127, %131
  br i1 %132, label %133, label %159

133:                                              ; preds = %126
  %134 = load double, double* %12, align 8
  %135 = fcmp olt double %134, 0.000000e+00
  br i1 %135, label %136, label %159

136:                                              ; preds = %133
  %137 = load double, double* %15, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 2
  %140 = load double, double* %139, align 8
  %141 = fadd double %137, %140
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = sitofp i64 %144 to double
  %146 = fmul double %141, %145
  %147 = load double, double* @INT32_MAX, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 2
  %150 = load double, double* %149, align 8
  %151 = fsub double %147, %150
  %152 = fdiv double %146, %151
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 2
  %155 = load double, double* %154, align 8
  %156 = fsub double %152, %155
  %157 = load double, double* %12, align 8
  %158 = fadd double %156, %157
  store double %158, double* %15, align 8
  br label %165

159:                                              ; preds = %133, %126
  %160 = load double, double* %12, align 8
  %161 = load double, double* @INT32_MAX, align 8
  %162 = fmul double %160, %161
  %163 = load double, double* %15, align 8
  %164 = fadd double %162, %163
  store double %164, double* %15, align 8
  br label %165

165:                                              ; preds = %159, %136
  br label %166

166:                                              ; preds = %165, %103
  %167 = load double, double* %15, align 8
  %168 = call double @av_clipl_int32(double %167)
  %169 = load double*, double** %14, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds double, double* %169, i64 %171
  store double %168, double* %172, align 8
  br label %173

173:                                              ; preds = %166
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %83

176:                                              ; preds = %83
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  br label %60

180:                                              ; preds = %60
  br label %236

181:                                              ; preds = %54
  store i32 0, i32* %10, align 4
  br label %182

182:                                              ; preds = %232, %181
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %235

188:                                              ; preds = %182
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 1
  %191 = load i64*, i64** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = inttoptr i64 %195 to double*
  store double* %196, double** %16, align 8
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 1
  %199 = load i64*, i64** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to double*
  store double* %204, double** %17, align 8
  store i32 0, i32* %11, align 4
  br label %205

205:                                              ; preds = %228, %188
  %206 = load i32, i32* %11, align 4
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %231

211:                                              ; preds = %205
  %212 = load double, double* %12, align 8
  %213 = load double, double* @INT32_MAX, align 8
  %214 = fadd double %213, 1.000000e+00
  %215 = fmul double %212, %214
  %216 = load double*, double** %16, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds double, double* %216, i64 %218
  %220 = load double, double* %219, align 8
  %221 = fadd double %215, %220
  store double %221, double* %18, align 8
  %222 = load double, double* %18, align 8
  %223 = call double @av_clipl_int32(double %222)
  %224 = load double*, double** %17, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds double, double* %224, i64 %226
  store double %223, double* %227, align 8
  br label %228

228:                                              ; preds = %211
  %229 = load i32, i32* %11, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %11, align 4
  br label %205

231:                                              ; preds = %205
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %10, align 4
  br label %182

235:                                              ; preds = %182
  br label %236

236:                                              ; preds = %235, %180
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %239 = icmp ne %struct.TYPE_16__* %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = call i32 @av_frame_free(%struct.TYPE_16__** %5)
  br label %242

242:                                              ; preds = %240, %236
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %245 = call i32 @ff_filter_frame(%struct.TYPE_17__* %243, %struct.TYPE_16__* %244)
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %242, %46
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @ff_get_audio_buffer(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_16__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local double @av_clipl_int32(double) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
