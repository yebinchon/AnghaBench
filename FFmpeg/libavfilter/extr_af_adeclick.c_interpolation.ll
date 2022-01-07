; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adeclick.c_interpolation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adeclick.c_interpolation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double*, double*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, double*, i32, double*, i32*, i32, double*, double*)* @interpolation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpolation(%struct.TYPE_4__* %0, double* %1, i32 %2, double* %3, i32* %4, i32 %5, double* %6, double* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %10, align 8
  store double* %1, double** %11, align 8
  store i32 %2, i32* %12, align 4
  store double* %3, double** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store double* %6, double** %16, align 8
  store double* %7, double** %17, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @av_fast_malloc(double** %25, i32* %27, i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load double*, double** %36, align 8
  store double* %37, double** %19, align 8
  %38 = load double*, double** %19, align 8
  %39 = icmp ne double* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %8
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = call i32 @AVERROR(i32 %41)
  store i32 %42, i32* %9, align 4
  br label %214

43:                                               ; preds = %8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @av_fast_malloc(double** %45, i32* %47, i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load double*, double** %54, align 8
  store double* %55, double** %18, align 8
  %56 = load double*, double** %18, align 8
  %57 = icmp ne double* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %43
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %9, align 4
  br label %214

61:                                               ; preds = %43
  %62 = load double*, double** %13, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  %66 = load double*, double** %16, align 8
  %67 = call i32 @autocorrelation(double* %62, i32 %63, i32 %65, double* %66, i32 1)
  store i32 0, i32* %20, align 4
  br label %68

68:                                               ; preds = %147, %61
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %150

72:                                               ; preds = %68
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %15, align 4
  %75 = mul nsw i32 %73, %74
  store i32 %75, i32* %22, align 4
  %76 = load i32, i32* %20, align 4
  store i32 %76, i32* %21, align 4
  br label %77

77:                                               ; preds = %143, %72
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %146

81:                                               ; preds = %77
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %21, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %14, align 8
  %88 = load i32, i32* %20, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %86, %91
  %93 = call i64 @abs(i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp ule i64 %93, %95
  br i1 %96, label %97, label %127

97:                                               ; preds = %81
  %98 = load double*, double** %16, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = load i32, i32* %21, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %14, align 8
  %105 = load i32, i32* %20, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %103, %108
  %110 = call i64 @abs(i32 %109)
  %111 = getelementptr inbounds double, double* %98, i64 %110
  %112 = load double, double* %111, align 8
  %113 = load double*, double** %19, align 8
  %114 = load i32, i32* %22, align 4
  %115 = load i32, i32* %21, align 4
  %116 = add nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds double, double* %113, i64 %117
  store double %112, double* %118, align 8
  %119 = load double*, double** %19, align 8
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* %15, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* %20, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, double* %119, i64 %125
  store double %112, double* %126, align 8
  br label %142

127:                                              ; preds = %81
  %128 = load double*, double** %19, align 8
  %129 = load i32, i32* %22, align 4
  %130 = load i32, i32* %21, align 4
  %131 = add nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds double, double* %128, i64 %132
  store double 0.000000e+00, double* %133, align 8
  %134 = load double*, double** %19, align 8
  %135 = load i32, i32* %21, align 4
  %136 = load i32, i32* %15, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load i32, i32* %20, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds double, double* %134, i64 %140
  store double 0.000000e+00, double* %141, align 8
  br label %142

142:                                              ; preds = %127, %97
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %21, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %21, align 4
  br label %77

146:                                              ; preds = %77
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %20, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %20, align 4
  br label %68

150:                                              ; preds = %68
  store i32 0, i32* %20, align 4
  br label %151

151:                                              ; preds = %204, %150
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %207

155:                                              ; preds = %151
  store double 0.000000e+00, double* %23, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %21, align 4
  br label %158

158:                                              ; preds = %195, %155
  %159 = load i32, i32* %21, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp sle i32 %159, %160
  br i1 %161, label %162, label %198

162:                                              ; preds = %158
  %163 = load i32*, i32** %14, align 8
  %164 = load i32*, i32** %14, align 8
  %165 = load i32, i32* %20, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %21, align 4
  %170 = sub nsw i32 %168, %169
  %171 = load i32, i32* %15, align 4
  %172 = call i64 @find_index(i32* %163, i32 %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %194

174:                                              ; preds = %162
  %175 = load double*, double** %11, align 8
  %176 = load i32*, i32** %14, align 8
  %177 = load i32, i32* %20, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %21, align 4
  %182 = sub nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds double, double* %175, i64 %183
  %185 = load double, double* %184, align 8
  %186 = load double*, double** %16, align 8
  %187 = load i32, i32* %21, align 4
  %188 = call i64 @abs(i32 %187)
  %189 = getelementptr inbounds double, double* %186, i64 %188
  %190 = load double, double* %189, align 8
  %191 = fmul double %185, %190
  %192 = load double, double* %23, align 8
  %193 = fsub double %192, %191
  store double %193, double* %23, align 8
  br label %194

194:                                              ; preds = %174, %162
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %21, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %21, align 4
  br label %158

198:                                              ; preds = %158
  %199 = load double, double* %23, align 8
  %200 = load double*, double** %18, align 8
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds double, double* %200, i64 %202
  store double %199, double* %203, align 8
  br label %204

204:                                              ; preds = %198
  %205 = load i32, i32* %20, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %20, align 4
  br label %151

207:                                              ; preds = %151
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %209 = load double*, double** %19, align 8
  %210 = load double*, double** %18, align 8
  %211 = load i32, i32* %15, align 4
  %212 = load double*, double** %17, align 8
  %213 = call i32 @do_interpolation(%struct.TYPE_4__* %208, double* %209, double* %210, i32 %211, double* %212)
  store i32 %213, i32* %9, align 4
  br label %214

214:                                              ; preds = %207, %58, %40
  %215 = load i32, i32* %9, align 4
  ret i32 %215
}

declare dso_local i32 @av_fast_malloc(double**, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @autocorrelation(double*, i32, i32, double*, i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i64 @find_index(i32*, i32, i32) #1

declare dso_local i32 @do_interpolation(%struct.TYPE_4__*, double*, double*, i32, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
