; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_ladspa.c_set_default_ctl_value.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_ladspa.c_set_default_ctl_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { double, double, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i64*, double*)* @set_default_ctl_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_default_ctl_value(%struct.TYPE_7__* %0, i32 %1, i64* %2, double* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca double*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store double* %3, double** %8, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %21
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %9, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  store double %25, double* %10, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load double, double* %27, align 8
  store double %28, double* %11, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @LADSPA_IS_HINT_DEFAULT_MINIMUM(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %4
  %35 = load double, double* %10, align 8
  %36 = load double*, double** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %36, i64 %38
  store double %35, double* %39, align 8
  br label %212

40:                                               ; preds = %4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @LADSPA_IS_HINT_DEFAULT_MAXIMUM(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load double, double* %11, align 8
  %48 = load double*, double** %8, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  store double %47, double* %51, align 8
  br label %211

52:                                               ; preds = %40
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @LADSPA_IS_HINT_DEFAULT_0(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load double*, double** %8, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  store double 0.000000e+00, double* %62, align 8
  br label %210

63:                                               ; preds = %52
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @LADSPA_IS_HINT_DEFAULT_1(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load double*, double** %8, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %70, i64 %72
  store double 1.000000e+00, double* %73, align 8
  br label %209

74:                                               ; preds = %63
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @LADSPA_IS_HINT_DEFAULT_100(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load double*, double** %8, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, double* %81, i64 %83
  store double 1.000000e+02, double* %84, align 8
  br label %208

85:                                               ; preds = %74
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @LADSPA_IS_HINT_DEFAULT_440(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load double*, double** %8, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double, double* %92, i64 %94
  store double 4.400000e+02, double* %95, align 8
  br label %207

96:                                               ; preds = %85
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @LADSPA_IS_HINT_DEFAULT_LOW(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %132

102:                                              ; preds = %96
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @LADSPA_IS_HINT_LOGARITHMIC(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %102
  %109 = load double, double* %10, align 8
  %110 = call double @log(double %109) #3
  %111 = fmul double %110, 7.500000e-01
  %112 = load double, double* %11, align 8
  %113 = call double @log(double %112) #3
  %114 = fmul double %113, 2.500000e-01
  %115 = fadd double %111, %114
  %116 = call double @exp(double %115) #3
  %117 = load double*, double** %8, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %117, i64 %119
  store double %116, double* %120, align 8
  br label %131

121:                                              ; preds = %102
  %122 = load double, double* %10, align 8
  %123 = fmul double %122, 7.500000e-01
  %124 = load double, double* %11, align 8
  %125 = fmul double %124, 2.500000e-01
  %126 = fadd double %123, %125
  %127 = load double*, double** %8, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, double* %127, i64 %129
  store double %126, double* %130, align 8
  br label %131

131:                                              ; preds = %121, %108
  br label %206

132:                                              ; preds = %96
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @LADSPA_IS_HINT_DEFAULT_MIDDLE(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %168

138:                                              ; preds = %132
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @LADSPA_IS_HINT_LOGARITHMIC(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %138
  %145 = load double, double* %10, align 8
  %146 = call double @log(double %145) #3
  %147 = fmul double %146, 5.000000e-01
  %148 = load double, double* %11, align 8
  %149 = call double @log(double %148) #3
  %150 = fmul double %149, 5.000000e-01
  %151 = fadd double %147, %150
  %152 = call double @exp(double %151) #3
  %153 = load double*, double** %8, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds double, double* %153, i64 %155
  store double %152, double* %156, align 8
  br label %167

157:                                              ; preds = %138
  %158 = load double, double* %10, align 8
  %159 = fmul double %158, 5.000000e-01
  %160 = load double, double* %11, align 8
  %161 = fmul double %160, 5.000000e-01
  %162 = fadd double %159, %161
  %163 = load double*, double** %8, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, double* %163, i64 %165
  store double %162, double* %166, align 8
  br label %167

167:                                              ; preds = %157, %144
  br label %205

168:                                              ; preds = %132
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i64 @LADSPA_IS_HINT_DEFAULT_HIGH(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %204

174:                                              ; preds = %168
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @LADSPA_IS_HINT_LOGARITHMIC(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %174
  %181 = load double, double* %10, align 8
  %182 = call double @log(double %181) #3
  %183 = fmul double %182, 2.500000e-01
  %184 = load double, double* %11, align 8
  %185 = call double @log(double %184) #3
  %186 = fmul double %185, 7.500000e-01
  %187 = fadd double %183, %186
  %188 = call double @exp(double %187) #3
  %189 = load double*, double** %8, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds double, double* %189, i64 %191
  store double %188, double* %192, align 8
  br label %203

193:                                              ; preds = %174
  %194 = load double, double* %10, align 8
  %195 = fmul double %194, 2.500000e-01
  %196 = load double, double* %11, align 8
  %197 = fmul double %196, 7.500000e-01
  %198 = fadd double %195, %197
  %199 = load double*, double** %8, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds double, double* %199, i64 %201
  store double %198, double* %202, align 8
  br label %203

203:                                              ; preds = %193, %180
  br label %204

204:                                              ; preds = %203, %168
  br label %205

205:                                              ; preds = %204, %167
  br label %206

206:                                              ; preds = %205, %131
  br label %207

207:                                              ; preds = %206, %91
  br label %208

208:                                              ; preds = %207, %80
  br label %209

209:                                              ; preds = %208, %69
  br label %210

210:                                              ; preds = %209, %58
  br label %211

211:                                              ; preds = %210, %46
  br label %212

212:                                              ; preds = %211, %34
  ret void
}

declare dso_local i64 @LADSPA_IS_HINT_DEFAULT_MINIMUM(i32) #1

declare dso_local i64 @LADSPA_IS_HINT_DEFAULT_MAXIMUM(i32) #1

declare dso_local i64 @LADSPA_IS_HINT_DEFAULT_0(i32) #1

declare dso_local i64 @LADSPA_IS_HINT_DEFAULT_1(i32) #1

declare dso_local i64 @LADSPA_IS_HINT_DEFAULT_100(i32) #1

declare dso_local i64 @LADSPA_IS_HINT_DEFAULT_440(i32) #1

declare dso_local i64 @LADSPA_IS_HINT_DEFAULT_LOW(i32) #1

declare dso_local i64 @LADSPA_IS_HINT_LOGARITHMIC(i32) #1

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

; Function Attrs: nounwind
declare dso_local double @log(double) #2

declare dso_local i64 @LADSPA_IS_HINT_DEFAULT_MIDDLE(i32) #1

declare dso_local i64 @LADSPA_IS_HINT_DEFAULT_HIGH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
