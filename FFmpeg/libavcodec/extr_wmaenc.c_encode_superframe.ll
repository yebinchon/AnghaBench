; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmaenc.c_encode_superframe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmaenc.c_encode_superframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, double**, %struct.TYPE_23__, i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64, i32 }
%struct.TYPE_21__ = type { i64 }

@MAX_CODED_SUPERFRAME_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Invalid input data or requested bitrate too low, cannot encode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_21__*, i32*)* @encode_superframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_superframe(%struct.TYPE_22__* %0, %struct.TYPE_20__* %1, %struct.TYPE_21__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %10, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 1, %28
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %34 = call i32 @apply_window_and_mdct(%struct.TYPE_22__* %32, %struct.TYPE_21__* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %5, align 4
  br label %247

39:                                               ; preds = %4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %102

44:                                               ; preds = %39
  store i32 0, i32* %17, align 4
  br label %45

45:                                               ; preds = %98, %44
  %46 = load i32, i32* %17, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %101

51:                                               ; preds = %45
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 3
  %54 = load double**, double*** %53, align 8
  %55 = getelementptr inbounds double*, double** %54, i64 0
  %56 = load double*, double** %55, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  %60 = load double, double* %59, align 8
  %61 = fmul double %60, 5.000000e-01
  %62 = fptrunc double %61 to float
  store float %62, float* %15, align 4
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 3
  %65 = load double**, double*** %64, align 8
  %66 = getelementptr inbounds double*, double** %65, i64 1
  %67 = load double*, double** %66, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %67, i64 %69
  %71 = load double, double* %70, align 8
  %72 = fmul double %71, 5.000000e-01
  %73 = fptrunc double %72 to float
  store float %73, float* %16, align 4
  %74 = load float, float* %15, align 4
  %75 = load float, float* %16, align 4
  %76 = fadd float %74, %75
  %77 = fpext float %76 to double
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 3
  %80 = load double**, double*** %79, align 8
  %81 = getelementptr inbounds double*, double** %80, i64 0
  %82 = load double*, double** %81, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %82, i64 %84
  store double %77, double* %85, align 8
  %86 = load float, float* %15, align 4
  %87 = load float, float* %16, align 4
  %88 = fsub float %86, %87
  %89 = fpext float %88 to double
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 3
  %92 = load double**, double*** %91, align 8
  %93 = getelementptr inbounds double*, double** %92, i64 1
  %94 = load double*, double** %93, align 8
  %95 = load i32, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %94, i64 %96
  store double %89, double* %97, align 8
  br label %98

98:                                               ; preds = %51
  %99 = load i32, i32* %17, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %17, align 4
  br label %45

101:                                              ; preds = %45
  br label %102

102:                                              ; preds = %101, %39
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %105 = load i32, i32* @MAX_CODED_SUPERFRAME_SIZE, align 4
  %106 = mul nsw i32 2, %105
  %107 = call i32 @ff_alloc_packet2(%struct.TYPE_22__* %103, %struct.TYPE_20__* %104, i32 %106, i32 0)
  store i32 %107, i32* %13, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %5, align 4
  br label %247

111:                                              ; preds = %102
  store i32 128, i32* %12, align 4
  store i32 64, i32* %11, align 4
  br label %112

112:                                              ; preds = %138, %111
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %141

115:                                              ; preds = %112
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 3
  %119 = load double**, double*** %118, align 8
  %120 = bitcast double** %119 to float**
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %11, align 4
  %129 = sub nsw i32 %127, %128
  %130 = call i32 @encode_frame(%struct.TYPE_19__* %116, float** %120, i32 %123, i32 %126, i32 %129)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp sle i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %115
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %12, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %12, align 4
  br label %137

137:                                              ; preds = %133, %115
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %11, align 4
  %140 = ashr i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %112

141:                                              ; preds = %112
  br label %142

142:                                              ; preds = %150, %141
  %143 = load i32, i32* %12, align 4
  %144 = icmp sle i32 %143, 128
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* %14, align 4
  %147 = icmp sgt i32 %146, 0
  br label %148

148:                                              ; preds = %145, %142
  %149 = phi i1 [ false, %142 ], [ %147, %145 ]
  br i1 %149, label %150, label %165

150:                                              ; preds = %148
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 3
  %154 = load double**, double*** %153, align 8
  %155 = bitcast double** %154 to float**
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %12, align 4
  %164 = call i32 @encode_frame(%struct.TYPE_19__* %151, float** %155, i32 %158, i32 %161, i32 %162)
  store i32 %164, i32* %14, align 4
  br label %142

165:                                              ; preds = %148
  %166 = load i32, i32* %14, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %165
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %170 = load i32, i32* @AV_LOG_ERROR, align 4
  %171 = call i32 @av_log(%struct.TYPE_22__* %169, i32 %170, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  store i32 0, i32* %173, align 8
  %174 = load i32, i32* @EINVAL, align 4
  %175 = call i32 @AVERROR(i32 %174)
  store i32 %175, i32* %5, align 4
  br label %247

176:                                              ; preds = %165
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 4
  %179 = call i32 @put_bits_count(%struct.TYPE_23__* %178)
  %180 = and i32 %179, 7
  %181 = icmp eq i32 %180, 0
  %182 = zext i1 %181 to i32
  %183 = call i32 @av_assert0(i32 %182)
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 4
  %189 = call i32 @put_bits_count(%struct.TYPE_23__* %188)
  %190 = add nsw i32 %189, 7
  %191 = sdiv i32 %190, 8
  %192 = sub nsw i32 %186, %191
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp sge i32 %193, 0
  %195 = zext i1 %194 to i32
  %196 = call i32 @av_assert0(i32 %195)
  br label %197

197:                                              ; preds = %201, %176
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %11, align 4
  %200 = icmp ne i32 %198, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 4
  %204 = call i32 @put_bits(%struct.TYPE_23__* %203, i32 8, i8 signext 78)
  br label %197

205:                                              ; preds = %197
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 4
  %208 = call i32 @flush_put_bits(%struct.TYPE_23__* %207)
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 4
  %211 = call i32 @put_bits_ptr(%struct.TYPE_23__* %210)
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sub nsw i32 %211, %215
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %216, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @av_assert0(i32 %221)
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %240

228:                                              ; preds = %205
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i64 @ff_samples_to_time_base(%struct.TYPE_22__* %232, i32 %235)
  %237 = sub nsw i64 %231, %236
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 1
  store i64 %237, i64* %239, align 8
  br label %240

240:                                              ; preds = %228, %205
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 8
  %246 = load i32*, i32** %9, align 8
  store i32 1, i32* %246, align 4
  store i32 0, i32* %5, align 4
  br label %247

247:                                              ; preds = %240, %168, %109, %37
  %248 = load i32, i32* %5, align 4
  ret i32 %248
}

declare dso_local i32 @apply_window_and_mdct(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_22__*, %struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @encode_frame(%struct.TYPE_19__*, float**, i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_22__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @put_bits_count(%struct.TYPE_23__*) #1

declare dso_local i32 @put_bits(%struct.TYPE_23__*, i32, i8 signext) #1

declare dso_local i32 @flush_put_bits(%struct.TYPE_23__*) #1

declare dso_local i32 @put_bits_ptr(%struct.TYPE_23__*) #1

declare dso_local i64 @ff_samples_to_time_base(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
