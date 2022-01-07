; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_eq.c_eq_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_eq.c_eq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dspfilter_output = type { float*, i64 }
%struct.dspfilter_input = type { float*, i32 }
%struct.eq_data = type { float*, i32, i32, i64*, i32*, i32, i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dspfilter_output*, %struct.dspfilter_input*)* @eq_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eq_process(i8* %0, %struct.dspfilter_output* %1, %struct.dspfilter_input* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dspfilter_output*, align 8
  %6 = alloca %struct.dspfilter_input*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.eq_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.dspfilter_output* %1, %struct.dspfilter_output** %5, align 8
  store %struct.dspfilter_input* %2, %struct.dspfilter_input** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.eq_data*
  store %struct.eq_data* %15, %struct.eq_data** %10, align 8
  %16 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %17 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %16, i32 0, i32 0
  %18 = load float*, float** %17, align 8
  %19 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %20 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %19, i32 0, i32 0
  store float* %18, float** %20, align 8
  %21 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %22 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %24 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %23, i32 0, i32 0
  %25 = load float*, float** %24, align 8
  store float* %25, float** %7, align 8
  %26 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %27 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %26, i32 0, i32 0
  %28 = load float*, float** %27, align 8
  store float* %28, float** %8, align 8
  %29 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %30 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %212, %3
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %213

35:                                               ; preds = %32
  %36 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %37 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %40 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = sub i32 %38, %41
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %46, %35
  %49 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %50 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %49, i32 0, i32 7
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %53 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = mul i32 %54, 2
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %51, i64 %56
  %58 = load float*, float** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = mul i32 %59, 2
  %61 = zext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memcpy(i64* %57, float* %58, i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = mul i32 %65, 2
  %67 = load float*, float** %8, align 8
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds float, float* %67, i64 %68
  store float* %69, float** %8, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %9, align 4
  %72 = sub i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %75 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %79 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %82 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %212

85:                                               ; preds = %48
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %147, %85
  %87 = load i32, i32* %13, align 4
  %88 = icmp ult i32 %87, 2
  br i1 %88, label %89, label %150

89:                                               ; preds = %86
  %90 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %91 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %94 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %97 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %96, i32 0, i32 7
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = call i32 @fft_process_forward(i32 %92, i32* %95, i64* %101, i32 2)
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %132, %89
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %106 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = mul i32 2, %107
  %109 = icmp ult i32 %104, %108
  br i1 %109, label %110, label %135

110:                                              ; preds = %103
  %111 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %112 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %119 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %118, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @fft_complex_mul(i32 %117, i32 %124)
  %126 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %127 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %125, i32* %131, align 4
  br label %132

132:                                              ; preds = %110
  %133 = load i32, i32* %12, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %103

135:                                              ; preds = %103
  %136 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %137 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = load float*, float** %7, align 8
  %140 = load i32, i32* %13, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %139, i64 %141
  %143 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %144 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @fft_process_inverse(i32 %138, float* %142, i32* %145, i32 2)
  br label %147

147:                                              ; preds = %135
  %148 = load i32, i32* %13, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %86

150:                                              ; preds = %86
  store i32 0, i32* %12, align 4
  br label %151

151:                                              ; preds = %173, %150
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %154 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = mul i32 2, %155
  %157 = icmp ult i32 %152, %156
  br i1 %157, label %158, label %176

158:                                              ; preds = %151
  %159 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %160 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %159, i32 0, i32 3
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %12, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = sitofp i64 %165 to float
  %167 = load float*, float** %7, align 8
  %168 = load i32, i32* %12, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %167, i64 %169
  %171 = load float, float* %170, align 4
  %172 = fadd float %171, %166
  store float %172, float* %170, align 4
  br label %173

173:                                              ; preds = %158
  %174 = load i32, i32* %12, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %12, align 4
  br label %151

176:                                              ; preds = %151
  %177 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %178 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %177, i32 0, i32 3
  %179 = load i64*, i64** %178, align 8
  %180 = load float*, float** %7, align 8
  %181 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %182 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = mul i32 2, %183
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %180, i64 %185
  %187 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %188 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = mul i32 2, %189
  %191 = zext i32 %190 to i64
  %192 = mul i64 %191, 4
  %193 = trunc i64 %192 to i32
  %194 = call i32 @memcpy(i64* %179, float* %186, i32 %193)
  %195 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %196 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = mul i32 %197, 2
  %199 = load float*, float** %7, align 8
  %200 = zext i32 %198 to i64
  %201 = getelementptr inbounds float, float* %199, i64 %200
  store float* %201, float** %7, align 8
  %202 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %203 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = zext i32 %204 to i64
  %206 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %207 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %208, %205
  store i64 %209, i64* %207, align 8
  %210 = load %struct.eq_data*, %struct.eq_data** %10, align 8
  %211 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %210, i32 0, i32 2
  store i32 0, i32* %211, align 4
  br label %212

212:                                              ; preds = %176, %48
  br label %32

213:                                              ; preds = %32
  ret void
}

declare dso_local i32 @memcpy(i64*, float*, i32) #1

declare dso_local i32 @fft_process_forward(i32, i32*, i64*, i32) #1

declare dso_local i32 @fft_complex_mul(i32, i32) #1

declare dso_local i32 @fft_process_inverse(i32, float*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
