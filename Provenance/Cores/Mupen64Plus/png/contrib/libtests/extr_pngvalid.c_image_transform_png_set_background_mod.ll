; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_image_transform_png_set_background_mod.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_image_transform_png_set_background_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { double, double, double, double, double, double, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32, %struct.TYPE_13__*)* }
%struct.TYPE_15__ = type { i64, i32, double, double, double, double, double, double, i64, i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i32 }

@PNG_COLOR_TYPE_PALETTE = common dso_local global i64 0, align 8
@data = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@DBL_EPSILON = common dso_local global double 0.000000e+00, align 8
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_RGB = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_GRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*, i32, %struct.TYPE_13__*)* @image_transform_png_set_background_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_transform_png_set_background_mod(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca double, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 12
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = call i32 @image_pixel_add_alpha(%struct.TYPE_15__* %21, i32* %23, i32 1)
  br label %25

25:                                               ; preds = %20, %14, %4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %164

30:                                               ; preds = %25
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %30
  %36 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @data, i32 0, i32 0), align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  store double %36, double* %38, align 8
  %39 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @data, i32 0, i32 1), align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 3
  store double %39, double* %41, align 8
  %42 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @data, i32 0, i32 2), align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 4
  store double %42, double* %44, align 8
  %45 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @data, i32 0, i32 3), align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 5
  store double %45, double* %47, align 8
  %48 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @data, i32 0, i32 4), align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 6
  store double %48, double* %50, align 8
  %51 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @data, i32 0, i32 5), align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 7
  store double %51, double* %53, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @data, i32 0, i32 8), align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 11
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @data, i32 0, i32 7), align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 10
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @data, i32 0, i32 6), align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 8
  br label %159

63:                                               ; preds = %30
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 1, %66
  %68 = sitofp i32 %67 to double
  store double %68, double* %9, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = load double, double* %70, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sitofp i32 %74 to double
  %76 = fmul double %71, %75
  %77 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @data, i32 0, i32 0), align 8
  %78 = load double, double* %9, align 8
  %79 = fmul double %77, %78
  %80 = fadd double %76, %79
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 2
  store double %80, double* %82, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 5
  %85 = load double, double* %84, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sitofp i32 %88 to double
  %90 = fmul double %85, %89
  %91 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @data, i32 0, i32 3), align 8
  %92 = load double, double* %9, align 8
  %93 = fmul double %91, %92
  %94 = fadd double %90, %93
  %95 = load double, double* @DBL_EPSILON, align 8
  %96 = fadd double %94, %95
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 5
  store double %96, double* %98, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  %101 = load double, double* %100, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sitofp i32 %104 to double
  %106 = fmul double %101, %105
  %107 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @data, i32 0, i32 1), align 8
  %108 = load double, double* %9, align 8
  %109 = fmul double %107, %108
  %110 = fadd double %106, %109
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 3
  store double %110, double* %112, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 6
  %115 = load double, double* %114, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = sitofp i32 %118 to double
  %120 = fmul double %115, %119
  %121 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @data, i32 0, i32 4), align 8
  %122 = load double, double* %9, align 8
  %123 = fmul double %121, %122
  %124 = fadd double %120, %123
  %125 = load double, double* @DBL_EPSILON, align 8
  %126 = fadd double %124, %125
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 6
  store double %126, double* %128, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 4
  %131 = load double, double* %130, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sitofp i32 %134 to double
  %136 = fmul double %131, %135
  %137 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @data, i32 0, i32 2), align 8
  %138 = load double, double* %9, align 8
  %139 = fmul double %137, %138
  %140 = fadd double %136, %139
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 4
  store double %140, double* %142, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 7
  %145 = load double, double* %144, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = sitofp i32 %148 to double
  %150 = fmul double %145, %149
  %151 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @data, i32 0, i32 5), align 8
  %152 = load double, double* %9, align 8
  %153 = fmul double %151, %152
  %154 = fadd double %150, %153
  %155 = load double, double* @DBL_EPSILON, align 8
  %156 = fadd double %154, %155
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 7
  store double %156, double* %158, align 8
  br label %159

159:                                              ; preds = %63, %35
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  store i32 1, i32* %161, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 8
  store i64 0, i64* %163, align 8
  br label %164

164:                                              ; preds = %159, %25
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @PNG_COLOR_TYPE_RGB_ALPHA, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load i64, i64* @PNG_COLOR_TYPE_RGB, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  br label %185

174:                                              ; preds = %164
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @PNG_COLOR_TYPE_GRAY_ALPHA, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load i64, i64* @PNG_COLOR_TYPE_GRAY, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %180, %174
  br label %185

185:                                              ; preds = %184, %170
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32, %struct.TYPE_13__*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32, %struct.TYPE_13__*)** %189, align 8
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %192, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %197 = call i32 %190(%struct.TYPE_16__* %193, %struct.TYPE_15__* %194, i32 %195, %struct.TYPE_13__* %196)
  ret void
}

declare dso_local i32 @image_pixel_add_alpha(%struct.TYPE_15__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
