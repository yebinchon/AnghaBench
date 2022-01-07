; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_echo.c_echo_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_echo.c_echo_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dspfilter_output = type { float*, i32 }
%struct.dspfilter_input = type { float*, i32 }
%struct.echo_data = type { i32, float, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { float*, i32, float, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dspfilter_output*, %struct.dspfilter_input*)* @echo_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @echo_process(i8* %0, %struct.dspfilter_output* %1, %struct.dspfilter_input* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dspfilter_output*, align 8
  %6 = alloca %struct.dspfilter_input*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca %struct.echo_data*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store i8* %0, i8** %4, align 8
  store %struct.dspfilter_output* %1, %struct.dspfilter_output** %5, align 8
  store %struct.dspfilter_input* %2, %struct.dspfilter_input** %6, align 8
  store float* null, float** %9, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.echo_data*
  store %struct.echo_data* %18, %struct.echo_data** %10, align 8
  %19 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %20 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %19, i32 0, i32 0
  %21 = load float*, float** %20, align 8
  %22 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %23 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %22, i32 0, i32 0
  store float* %21, float** %23, align 8
  %24 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %25 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %28 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %30 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %29, i32 0, i32 0
  %31 = load float*, float** %30, align 8
  store float* %31, float** %9, align 8
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %228, %3
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %35 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %233

38:                                               ; preds = %32
  store float 0.000000e+00, float* %13, align 4
  store float 0.000000e+00, float* %14, align 4
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %92, %38
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.echo_data*, %struct.echo_data** %10, align 8
  %42 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %95

45:                                               ; preds = %39
  %46 = load %struct.echo_data*, %struct.echo_data** %10, align 8
  %47 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load float*, float** %52, align 8
  %54 = load %struct.echo_data*, %struct.echo_data** %10, align 8
  %55 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, 1
  %63 = add nsw i32 %62, 0
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %53, i64 %64
  %66 = load float, float* %65, align 4
  %67 = load float, float* %13, align 4
  %68 = fadd float %67, %66
  store float %68, float* %13, align 4
  %69 = load %struct.echo_data*, %struct.echo_data** %10, align 8
  %70 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load float*, float** %75, align 8
  %77 = load %struct.echo_data*, %struct.echo_data** %10, align 8
  %78 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = shl i32 %84, 1
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %76, i64 %87
  %89 = load float, float* %88, align 4
  %90 = load float, float* %14, align 4
  %91 = fadd float %90, %89
  store float %91, float* %14, align 4
  br label %92

92:                                               ; preds = %45
  %93 = load i32, i32* %8, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %39

95:                                               ; preds = %39
  %96 = load %struct.echo_data*, %struct.echo_data** %10, align 8
  %97 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %96, i32 0, i32 1
  %98 = load float, float* %97, align 4
  %99 = load float, float* %13, align 4
  %100 = fmul float %99, %98
  store float %100, float* %13, align 4
  %101 = load %struct.echo_data*, %struct.echo_data** %10, align 8
  %102 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %101, i32 0, i32 1
  %103 = load float, float* %102, align 4
  %104 = load float, float* %14, align 4
  %105 = fmul float %104, %103
  store float %105, float* %14, align 4
  %106 = load float*, float** %9, align 8
  %107 = getelementptr inbounds float, float* %106, i64 0
  %108 = load float, float* %107, align 4
  %109 = load float, float* %13, align 4
  %110 = fadd float %108, %109
  store float %110, float* %11, align 4
  %111 = load float*, float** %9, align 8
  %112 = getelementptr inbounds float, float* %111, i64 1
  %113 = load float, float* %112, align 4
  %114 = load float, float* %14, align 4
  %115 = fadd float %113, %114
  store float %115, float* %12, align 4
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %218, %95
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.echo_data*, %struct.echo_data** %10, align 8
  %119 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ult i32 %117, %120
  br i1 %121, label %122, label %221

122:                                              ; preds = %116
  %123 = load float*, float** %9, align 8
  %124 = getelementptr inbounds float, float* %123, i64 0
  %125 = load float, float* %124, align 4
  %126 = load %struct.echo_data*, %struct.echo_data** %10, align 8
  %127 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load float, float* %132, align 4
  %134 = load float, float* %13, align 4
  %135 = fmul float %133, %134
  %136 = fadd float %125, %135
  store float %136, float* %15, align 4
  %137 = load float*, float** %9, align 8
  %138 = getelementptr inbounds float, float* %137, i64 1
  %139 = load float, float* %138, align 4
  %140 = load %struct.echo_data*, %struct.echo_data** %10, align 8
  %141 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %140, i32 0, i32 2
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load float, float* %146, align 4
  %148 = load float, float* %14, align 4
  %149 = fmul float %147, %148
  %150 = fadd float %139, %149
  store float %150, float* %16, align 4
  %151 = load float, float* %15, align 4
  %152 = load %struct.echo_data*, %struct.echo_data** %10, align 8
  %153 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %152, i32 0, i32 2
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load float*, float** %158, align 8
  %160 = load %struct.echo_data*, %struct.echo_data** %10, align 8
  %161 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %160, i32 0, i32 2
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = shl i32 %167, 1
  %169 = add nsw i32 %168, 0
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %159, i64 %170
  store float %151, float* %171, align 4
  %172 = load float, float* %16, align 4
  %173 = load %struct.echo_data*, %struct.echo_data** %10, align 8
  %174 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %173, i32 0, i32 2
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load float*, float** %179, align 8
  %181 = load %struct.echo_data*, %struct.echo_data** %10, align 8
  %182 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %181, i32 0, i32 2
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = shl i32 %188, 1
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float* %180, i64 %191
  store float %172, float* %192, align 4
  %193 = load %struct.echo_data*, %struct.echo_data** %10, align 8
  %194 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %193, i32 0, i32 2
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  %202 = load %struct.echo_data*, %struct.echo_data** %10, align 8
  %203 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %202, i32 0, i32 2
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = srem i32 %201, %209
  %211 = load %struct.echo_data*, %struct.echo_data** %10, align 8
  %212 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %211, i32 0, i32 2
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  store i32 %210, i32* %217, align 8
  br label %218

218:                                              ; preds = %122
  %219 = load i32, i32* %8, align 4
  %220 = add i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %116

221:                                              ; preds = %116
  %222 = load float, float* %11, align 4
  %223 = load float*, float** %9, align 8
  %224 = getelementptr inbounds float, float* %223, i64 0
  store float %222, float* %224, align 4
  %225 = load float, float* %12, align 4
  %226 = load float*, float** %9, align 8
  %227 = getelementptr inbounds float, float* %226, i64 1
  store float %225, float* %227, align 4
  br label %228

228:                                              ; preds = %221
  %229 = load i32, i32* %7, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %7, align 4
  %231 = load float*, float** %9, align 8
  %232 = getelementptr inbounds float, float* %231, i64 2
  store float* %232, float** %9, align 8
  br label %32

233:                                              ; preds = %32
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
