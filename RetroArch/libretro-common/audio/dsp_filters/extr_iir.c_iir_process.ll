; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_iir.c_iir_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_iir.c_iir_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dspfilter_output = type { float*, i32 }
%struct.dspfilter_input = type { float*, i32 }
%struct.iir_data = type { float, float, float, float, float, float, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { float, float, float, float }
%struct.TYPE_3__ = type { float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dspfilter_output*, %struct.dspfilter_input*)* @iir_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iir_process(i8* %0, %struct.dspfilter_output* %1, %struct.dspfilter_input* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dspfilter_output*, align 8
  %6 = alloca %struct.dspfilter_input*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iir_data*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  store i8* %0, i8** %4, align 8
  store %struct.dspfilter_output* %1, %struct.dspfilter_output** %5, align 8
  store %struct.dspfilter_input* %2, %struct.dspfilter_input** %6, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = bitcast i8* %28 to %struct.iir_data*
  store %struct.iir_data* %29, %struct.iir_data** %8, align 8
  %30 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %31 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %30, i32 0, i32 0
  %32 = load float*, float** %31, align 8
  store float* %32, float** %9, align 8
  %33 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %34 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %33, i32 0, i32 0
  %35 = load float, float* %34, align 4
  store float %35, float* %10, align 4
  %36 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %37 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %36, i32 0, i32 1
  %38 = load float, float* %37, align 4
  store float %38, float* %11, align 4
  %39 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %40 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %39, i32 0, i32 2
  %41 = load float, float* %40, align 4
  store float %41, float* %12, align 4
  %42 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %43 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %42, i32 0, i32 3
  %44 = load float, float* %43, align 4
  store float %44, float* %13, align 4
  %45 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %46 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %45, i32 0, i32 4
  %47 = load float, float* %46, align 4
  store float %47, float* %14, align 4
  %48 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %49 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %48, i32 0, i32 5
  %50 = load float, float* %49, align 4
  store float %50, float* %15, align 4
  %51 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %52 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load float, float* %53, align 4
  store float %54, float* %16, align 4
  %55 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %56 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %55, i32 0, i32 7
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load float, float* %57, align 4
  store float %58, float* %17, align 4
  %59 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %60 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load float, float* %61, align 4
  store float %62, float* %18, align 4
  %63 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %64 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load float, float* %65, align 4
  store float %66, float* %19, align 4
  %67 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %68 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load float, float* %69, align 4
  store float %70, float* %20, align 4
  %71 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %72 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load float, float* %73, align 4
  store float %74, float* %21, align 4
  %75 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %76 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load float, float* %77, align 4
  store float %78, float* %22, align 4
  %79 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %80 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load float, float* %81, align 4
  store float %82, float* %23, align 4
  %83 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %84 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %83, i32 0, i32 0
  %85 = load float*, float** %84, align 8
  %86 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %87 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %86, i32 0, i32 0
  store float* %85, float** %87, align 8
  %88 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %89 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %92 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %162, %3
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %96 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp ult i32 %94, %97
  br i1 %98, label %99, label %167

99:                                               ; preds = %93
  %100 = load float*, float** %9, align 8
  %101 = getelementptr inbounds float, float* %100, i64 0
  %102 = load float, float* %101, align 4
  store float %102, float* %24, align 4
  %103 = load float*, float** %9, align 8
  %104 = getelementptr inbounds float, float* %103, i64 1
  %105 = load float, float* %104, align 4
  store float %105, float* %25, align 4
  %106 = load float, float* %10, align 4
  %107 = load float, float* %24, align 4
  %108 = fmul float %106, %107
  %109 = load float, float* %11, align 4
  %110 = load float, float* %16, align 4
  %111 = fmul float %109, %110
  %112 = fadd float %108, %111
  %113 = load float, float* %12, align 4
  %114 = load float, float* %17, align 4
  %115 = fmul float %113, %114
  %116 = fadd float %112, %115
  %117 = load float, float* %14, align 4
  %118 = load float, float* %18, align 4
  %119 = fmul float %117, %118
  %120 = fsub float %116, %119
  %121 = load float, float* %15, align 4
  %122 = load float, float* %19, align 4
  %123 = fmul float %121, %122
  %124 = fsub float %120, %123
  %125 = load float, float* %13, align 4
  %126 = fdiv float %124, %125
  store float %126, float* %26, align 4
  %127 = load float, float* %10, align 4
  %128 = load float, float* %25, align 4
  %129 = fmul float %127, %128
  %130 = load float, float* %11, align 4
  %131 = load float, float* %20, align 4
  %132 = fmul float %130, %131
  %133 = fadd float %129, %132
  %134 = load float, float* %12, align 4
  %135 = load float, float* %21, align 4
  %136 = fmul float %134, %135
  %137 = fadd float %133, %136
  %138 = load float, float* %14, align 4
  %139 = load float, float* %22, align 4
  %140 = fmul float %138, %139
  %141 = fsub float %137, %140
  %142 = load float, float* %15, align 4
  %143 = load float, float* %23, align 4
  %144 = fmul float %142, %143
  %145 = fsub float %141, %144
  %146 = load float, float* %13, align 4
  %147 = fdiv float %145, %146
  store float %147, float* %27, align 4
  %148 = load float, float* %16, align 4
  store float %148, float* %17, align 4
  %149 = load float, float* %24, align 4
  store float %149, float* %16, align 4
  %150 = load float, float* %18, align 4
  store float %150, float* %19, align 4
  %151 = load float, float* %26, align 4
  store float %151, float* %18, align 4
  %152 = load float, float* %20, align 4
  store float %152, float* %21, align 4
  %153 = load float, float* %25, align 4
  store float %153, float* %20, align 4
  %154 = load float, float* %22, align 4
  store float %154, float* %23, align 4
  %155 = load float, float* %27, align 4
  store float %155, float* %22, align 4
  %156 = load float, float* %26, align 4
  %157 = load float*, float** %9, align 8
  %158 = getelementptr inbounds float, float* %157, i64 0
  store float %156, float* %158, align 4
  %159 = load float, float* %27, align 4
  %160 = load float*, float** %9, align 8
  %161 = getelementptr inbounds float, float* %160, i64 1
  store float %159, float* %161, align 4
  br label %162

162:                                              ; preds = %99
  %163 = load i32, i32* %7, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %7, align 4
  %165 = load float*, float** %9, align 8
  %166 = getelementptr inbounds float, float* %165, i64 2
  store float* %166, float** %9, align 8
  br label %93

167:                                              ; preds = %93
  %168 = load float, float* %16, align 4
  %169 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %170 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %169, i32 0, i32 7
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  store float %168, float* %171, align 4
  %172 = load float, float* %17, align 4
  %173 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %174 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %173, i32 0, i32 7
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  store float %172, float* %175, align 4
  %176 = load float, float* %18, align 4
  %177 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %178 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %177, i32 0, i32 7
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 2
  store float %176, float* %179, align 4
  %180 = load float, float* %19, align 4
  %181 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %182 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %181, i32 0, i32 7
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 3
  store float %180, float* %183, align 4
  %184 = load float, float* %20, align 4
  %185 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %186 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %185, i32 0, i32 6
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  store float %184, float* %187, align 4
  %188 = load float, float* %21, align 4
  %189 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %190 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %189, i32 0, i32 6
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  store float %188, float* %191, align 4
  %192 = load float, float* %22, align 4
  %193 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %194 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %193, i32 0, i32 6
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 2
  store float %192, float* %195, align 4
  %196 = load float, float* %23, align 4
  %197 = load %struct.iir_data*, %struct.iir_data** %8, align 8
  %198 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %197, i32 0, i32 6
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 3
  store float %196, float* %199, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
