; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_ComputeVideoArea.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_ComputeVideoArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, double }
%struct.TYPE_5__ = type { double, double }

@VIDEOMODE_keep_aspect = common dso_local global i64 0, align 8
@VIDEOMODE_KEEP_ASPECT_REAL = common dso_local global i64 0, align 8
@display_modes = common dso_local global %struct.TYPE_6__* null, align 8
@VIDEOMODE_host_aspect_ratio_h = common dso_local global double 0.000000e+00, align 8
@VIDEOMODE_host_aspect_ratio_w = common dso_local global double 0.000000e+00, align 8
@TRUE = common dso_local global i32 0, align 4
@VIDEOMODE_dest_width = common dso_local global double 0.000000e+00, align 8
@VIDEOMODE_dest_height = common dso_local global double 0.000000e+00, align 8
@VIDEOMODE_stretch = common dso_local global i32 0, align 4
@VIDEOMODE_custom_stretch = common dso_local global double 0.000000e+00, align 8
@VIDEOMODE_KEEP_ASPECT_NONE = common dso_local global i64 0, align 8
@VIDEOMODE_fit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_5__*, i64, i32, i32, double*, double*, i32)* @ComputeVideoArea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ComputeVideoArea(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, i64 %2, i32 %3, i32 %4, double* %5, double* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store double* %5, double** %14, align 8
  store double* %6, double** %15, align 8
  store i32 %7, i32* %16, align 4
  %22 = load i64, i64* @VIDEOMODE_keep_aspect, align 8
  %23 = load i64, i64* @VIDEOMODE_KEEP_ASPECT_REAL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %8
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @display_modes, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = fmul double %33, %36
  %38 = load double, double* @VIDEOMODE_host_aspect_ratio_h, align 8
  %39 = fdiv double %37, %38
  %40 = load double, double* @VIDEOMODE_host_aspect_ratio_w, align 8
  %41 = fmul double %39, %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = fdiv double %41, %44
  store double %45, double* %17, align 8
  br label %64

46:                                               ; preds = %25
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @display_modes, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load double, double* %50, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = fmul double %51, %54
  %56 = load double, double* @VIDEOMODE_host_aspect_ratio_w, align 8
  %57 = fdiv double %55, %56
  %58 = load double, double* @VIDEOMODE_host_aspect_ratio_h, align 8
  %59 = fmul double %57, %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load double, double* %61, align 8
  %63 = fdiv double %59, %62
  store double %63, double* %17, align 8
  br label %64

64:                                               ; preds = %46, %28
  br label %72

65:                                               ; preds = %8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @display_modes, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load double, double* %69, align 8
  %71 = fdiv double 1.000000e+00, %70
  store double %71, double* %17, align 8
  br label %72

72:                                               ; preds = %65, %64
  %73 = load i64, i64* %11, align 8
  %74 = load i32, i32* @TRUE, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @PLATFORM_SupportsVideomode(i64 %73, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %72
  %79 = load double*, double** %14, align 8
  store double 1.000000e+00, double* %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @display_modes, align 8
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load double, double* %83, align 8
  %85 = load double*, double** %15, align 8
  store double %84, double* %85, align 8
  %86 = load i32, i32* %12, align 4
  %87 = uitofp i32 %86 to double
  %88 = load double*, double** %14, align 8
  %89 = load double, double* %88, align 8
  %90 = fmul double %87, %89
  store double %90, double* @VIDEOMODE_dest_width, align 8
  %91 = load i32, i32* %13, align 4
  %92 = uitofp i32 %91 to double
  %93 = load double*, double** %15, align 8
  %94 = load double, double* %93, align 8
  %95 = fmul double %92, %94
  store double %95, double* @VIDEOMODE_dest_height, align 8
  br label %223

96:                                               ; preds = %72
  %97 = load i32, i32* @VIDEOMODE_stretch, align 4
  switch i32 %97, label %161 [
    i32 128, label %98
    i32 132, label %98
    i32 131, label %98
    i32 130, label %98
    i32 129, label %105
  ]

98:                                               ; preds = %96, %96, %96, %96
  %99 = load double, double* %17, align 8
  %100 = load double, double* @VIDEOMODE_custom_stretch, align 8
  %101 = fmul double %99, %100
  %102 = load double*, double** %14, align 8
  store double %101, double* %102, align 8
  %103 = load double, double* @VIDEOMODE_custom_stretch, align 8
  %104 = load double*, double** %15, align 8
  store double %103, double* %104, align 8
  br label %212

105:                                              ; preds = %96
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load double, double* %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = uitofp i32 %109 to double
  %111 = fdiv double %108, %110
  %112 = load double, double* %17, align 8
  %113 = fdiv double %111, %112
  %114 = fptoui double %113 to i32
  store i32 %114, i32* %18, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load double, double* %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = uitofp i32 %118 to double
  %120 = fdiv double %117, %119
  %121 = fptoui double %120 to i32
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %105
  store i32 1, i32* %18, align 4
  br label %125

125:                                              ; preds = %124, %105
  %126 = load i32, i32* %19, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 1, i32* %19, align 4
  br label %129

129:                                              ; preds = %128, %125
  %130 = load i64, i64* @VIDEOMODE_keep_aspect, align 8
  %131 = load i64, i64* @VIDEOMODE_KEEP_ASPECT_NONE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i32, i32* %18, align 4
  %135 = uitofp i32 %134 to double
  %136 = load double, double* %17, align 8
  %137 = fmul double %135, %136
  %138 = load double*, double** %14, align 8
  store double %137, double* %138, align 8
  br label %157

139:                                              ; preds = %129
  %140 = load i32, i32* @VIDEOMODE_fit, align 4
  switch i32 %140, label %144 [
    i32 133, label %141
    i32 134, label %143
  ]

141:                                              ; preds = %139
  %142 = load i32, i32* %18, align 4
  store i32 %142, i32* %19, align 4
  br label %151

143:                                              ; preds = %139
  br label %151

144:                                              ; preds = %139
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %19, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* %18, align 4
  store i32 %149, i32* %19, align 4
  br label %150

150:                                              ; preds = %148, %144
  br label %151

151:                                              ; preds = %150, %143, %141
  %152 = load i32, i32* %19, align 4
  %153 = uitofp i32 %152 to double
  %154 = load double, double* %17, align 8
  %155 = fmul double %153, %154
  %156 = load double*, double** %14, align 8
  store double %155, double* %156, align 8
  br label %157

157:                                              ; preds = %151, %133
  %158 = load i32, i32* %19, align 4
  %159 = uitofp i32 %158 to double
  %160 = load double*, double** %15, align 8
  store double %159, double* %160, align 8
  br label %212

161:                                              ; preds = %96
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load double, double* %163, align 8
  %165 = load i32, i32* %12, align 4
  %166 = uitofp i32 %165 to double
  %167 = fdiv double %164, %166
  %168 = load double, double* %17, align 8
  %169 = fdiv double %167, %168
  store double %169, double* %20, align 8
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load double, double* %171, align 8
  %173 = load i32, i32* %13, align 4
  %174 = uitofp i32 %173 to double
  %175 = fdiv double %172, %174
  store double %175, double* %21, align 8
  %176 = load double, double* %20, align 8
  %177 = fcmp olt double %176, 1.000000e+00
  br i1 %177, label %178, label %179

178:                                              ; preds = %161
  store double 1.000000e+00, double* %20, align 8
  br label %179

179:                                              ; preds = %178, %161
  %180 = load double, double* %21, align 8
  %181 = fcmp olt double %180, 1.000000e+00
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  store double 1.000000e+00, double* %21, align 8
  br label %183

183:                                              ; preds = %182, %179
  %184 = load i64, i64* @VIDEOMODE_keep_aspect, align 8
  %185 = load i64, i64* @VIDEOMODE_KEEP_ASPECT_NONE, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %183
  %188 = load double, double* %20, align 8
  %189 = load double, double* %17, align 8
  %190 = fmul double %188, %189
  %191 = load double*, double** %14, align 8
  store double %190, double* %191, align 8
  br label %209

192:                                              ; preds = %183
  %193 = load i32, i32* @VIDEOMODE_fit, align 4
  switch i32 %193, label %197 [
    i32 133, label %194
    i32 134, label %196
  ]

194:                                              ; preds = %192
  %195 = load double, double* %20, align 8
  store double %195, double* %21, align 8
  br label %204

196:                                              ; preds = %192
  br label %204

197:                                              ; preds = %192
  %198 = load double, double* %20, align 8
  %199 = load double, double* %21, align 8
  %200 = fcmp olt double %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load double, double* %20, align 8
  store double %202, double* %21, align 8
  br label %203

203:                                              ; preds = %201, %197
  br label %204

204:                                              ; preds = %203, %196, %194
  %205 = load double, double* %21, align 8
  %206 = load double, double* %17, align 8
  %207 = fmul double %205, %206
  %208 = load double*, double** %14, align 8
  store double %207, double* %208, align 8
  br label %209

209:                                              ; preds = %204, %187
  %210 = load double, double* %21, align 8
  %211 = load double*, double** %15, align 8
  store double %210, double* %211, align 8
  br label %212

212:                                              ; preds = %209, %157, %98
  %213 = load double*, double** %14, align 8
  %214 = load double, double* %213, align 8
  %215 = load i32, i32* %12, align 4
  %216 = uitofp i32 %215 to double
  %217 = fmul double %214, %216
  store double %217, double* @VIDEOMODE_dest_width, align 8
  %218 = load double*, double** %15, align 8
  %219 = load double, double* %218, align 8
  %220 = load i32, i32* %13, align 4
  %221 = uitofp i32 %220 to double
  %222 = fmul double %219, %221
  store double %222, double* @VIDEOMODE_dest_height, align 8
  br label %223

223:                                              ; preds = %212, %78
  ret void
}

declare dso_local i32 @PLATFORM_SupportsVideomode(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
