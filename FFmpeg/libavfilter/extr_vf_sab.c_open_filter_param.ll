; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_sab.c_open_filter_param.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_sab.c_open_filter_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, double, i32*, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, double* }
%struct.TYPE_9__ = type { i32*, i32, %struct.TYPE_8__*, %struct.TYPE_8__* }

@ENOMEM = common dso_local global i32 0, align 4
@AV_PIX_FMT_GRAY8 = common dso_local global i32 0, align 4
@COLOR_DIFF_COEFF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32, i32)* @open_filter_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_filter_param(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i8* @FFALIGN(i32 %19, i32 8)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %22, %23
  %25 = call i32 @av_malloc(i32 %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = call i32 @AVERROR(i32 %33)
  store i32 %34, i32* %5, align 4
  br label %222

35:                                               ; preds = %4
  %36 = load i32, i32* %15, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = call %struct.TYPE_8__* @sws_getGaussianVec(i32 %41, double %44)
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %10, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i32 0, i32* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @AV_PIX_FMT_GRAY8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @AV_PIX_FMT_GRAY8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @sws_getContext(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, %struct.TYPE_9__* %11, i32* null, i32* null)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %62 = call i32 @sws_freeVec(%struct.TYPE_8__* %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_8__* @sws_getGaussianVec(i32 %65, double 5.000000e+00)
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %10, align 8
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %120, %35
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @COLOR_DIFF_COEFF_SIZE, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %123

71:                                               ; preds = %67
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @COLOR_DIFF_COEFF_SIZE, align 4
  %74 = sdiv i32 %73, 2
  %75 = sub nsw i32 %72, %74
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sdiv i32 %78, 2
  %80 = add nsw i32 %75, %79
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %17, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83, %71
  store double 0.000000e+00, double* %16, align 8
  br label %98

90:                                               ; preds = %83
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load double*, double** %92, align 8
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %93, i64 %95
  %97 = load double, double* %96, align 8
  store double %97, double* %16, align 8
  br label %98

98:                                               ; preds = %90, %89
  %99 = load double, double* %16, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load double*, double** %101, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sdiv i32 %105, 2
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, double* %102, i64 %107
  %109 = load double, double* %108, align 8
  %110 = fdiv double %99, %109
  %111 = fmul double %110, 4.096000e+03
  %112 = fadd double %111, 5.000000e-01
  %113 = fptosi double %112 to i32
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %113, i32* %119, align 4
  br label %120

120:                                              ; preds = %98
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %67

123:                                              ; preds = %67
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %125 = call i32 @sws_freeVec(%struct.TYPE_8__* %124)
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load double, double* %130, align 8
  %132 = call %struct.TYPE_8__* @sws_getGaussianVec(i32 %128, double %131)
  store %struct.TYPE_8__* %132, %struct.TYPE_8__** %10, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i8* @FFALIGN(i32 %140, i32 8)
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = mul i64 %151, 4
  %153 = trunc i64 %152 to i32
  %154 = call i32* @av_malloc_array(i32 %147, i32 %153)
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 5
  store i32* %154, i32** %156, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %166, label %161

161:                                              ; preds = %123
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %163 = call i32 @sws_freeVec(%struct.TYPE_8__* %162)
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = call i32 @AVERROR(i32 %164)
  store i32 %165, i32* %5, align 4
  br label %222

166:                                              ; preds = %123
  store i32 0, i32* %14, align 4
  br label %167

167:                                              ; preds = %216, %166
  %168 = load i32, i32* %14, align 4
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %219

173:                                              ; preds = %167
  store i32 0, i32* %13, align 4
  br label %174

174:                                              ; preds = %212, %173
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %215

180:                                              ; preds = %174
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load double*, double** %182, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds double, double* %183, i64 %185
  %187 = load double, double* %186, align 8
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = load double*, double** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds double, double* %190, i64 %192
  %194 = load double, double* %193, align 8
  %195 = fmul double %187, %194
  store double %195, double* %18, align 8
  %196 = load double, double* %18, align 8
  %197 = fmul double %196, 1.024000e+03
  %198 = fadd double %197, 5.000000e-01
  %199 = fptosi double %198 to i32
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 5
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %14, align 4
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = mul nsw i32 %204, %207
  %209 = add nsw i32 %203, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %202, i64 %210
  store i32 %199, i32* %211, align 4
  br label %212

212:                                              ; preds = %180
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %13, align 4
  br label %174

215:                                              ; preds = %174
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %14, align 4
  br label %167

219:                                              ; preds = %167
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %221 = call i32 @sws_freeVec(%struct.TYPE_8__* %220)
  store i32 0, i32* %5, align 4
  br label %222

222:                                              ; preds = %219, %161, %32
  %223 = load i32, i32* %5, align 4
  ret i32 %223
}

declare dso_local i8* @FFALIGN(i32, i32) #1

declare dso_local i32 @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_8__* @sws_getGaussianVec(i32, double) #1

declare dso_local i32 @sws_getContext(i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @sws_freeVec(%struct.TYPE_8__*) #1

declare dso_local i32* @av_malloc_array(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
