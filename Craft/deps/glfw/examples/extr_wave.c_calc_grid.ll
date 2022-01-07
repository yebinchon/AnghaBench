; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_wave.c_calc_grid.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_wave.c_calc_grid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dt = common dso_local global double 0.000000e+00, align 8
@ANIMATION_SPEED = common dso_local global double 0.000000e+00, align 8
@GRIDW = common dso_local global i32 0, align 4
@GRIDH = common dso_local global i32 0, align 4
@p = common dso_local global double** null, align 8
@ax = common dso_local global double** null, align 8
@ay = common dso_local global double** null, align 8
@vx = common dso_local global double** null, align 8
@vy = common dso_local global double** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_grid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = load double, double* @dt, align 8
  %7 = load double, double* @ANIMATION_SPEED, align 8
  %8 = fmul double %6, %7
  store double %8, double* %5, align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %54, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @GRIDW, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* @GRIDW, align 4
  %17 = srem i32 %15, %16
  store i32 %17, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %50, %13
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @GRIDH, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %18
  %23 = load double**, double*** @p, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double*, double** %23, i64 %25
  %27 = load double*, double** %26, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %27, i64 %29
  %31 = load double, double* %30, align 8
  %32 = load double**, double*** @p, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double*, double** %32, i64 %34
  %36 = load double*, double** %35, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %36, i64 %38
  %40 = load double, double* %39, align 8
  %41 = fsub double %31, %40
  %42 = load double**, double*** @ax, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double*, double** %42, i64 %44
  %46 = load double*, double** %45, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %46, i64 %48
  store double %41, double* %49, align 8
  br label %50

50:                                               ; preds = %22
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %18

53:                                               ; preds = %18
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %9

57:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %103, %57
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @GRIDH, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %106

62:                                               ; preds = %58
  %63 = load i32, i32* %2, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* @GRIDH, align 4
  %66 = srem i32 %64, %65
  store i32 %66, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %67

67:                                               ; preds = %99, %62
  %68 = load i32, i32* %1, align 4
  %69 = load i32, i32* @GRIDW, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %102

71:                                               ; preds = %67
  %72 = load double**, double*** @p, align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double*, double** %72, i64 %74
  %76 = load double*, double** %75, align 8
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %76, i64 %78
  %80 = load double, double* %79, align 8
  %81 = load double**, double*** @p, align 8
  %82 = load i32, i32* %1, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double*, double** %81, i64 %83
  %85 = load double*, double** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %85, i64 %87
  %89 = load double, double* %88, align 8
  %90 = fsub double %80, %89
  %91 = load double**, double*** @ay, align 8
  %92 = load i32, i32* %1, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double*, double** %91, i64 %93
  %95 = load double*, double** %94, align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %95, i64 %97
  store double %90, double* %98, align 8
  br label %99

99:                                               ; preds = %71
  %100 = load i32, i32* %1, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %1, align 4
  br label %67

102:                                              ; preds = %67
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %2, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %2, align 4
  br label %58

106:                                              ; preds = %58
  store i32 0, i32* %1, align 4
  br label %107

107:                                              ; preds = %179, %106
  %108 = load i32, i32* %1, align 4
  %109 = load i32, i32* @GRIDW, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %182

111:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %175, %111
  %113 = load i32, i32* %2, align 4
  %114 = load i32, i32* @GRIDH, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %178

116:                                              ; preds = %112
  %117 = load double**, double*** @vx, align 8
  %118 = load i32, i32* %1, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double*, double** %117, i64 %119
  %121 = load double*, double** %120, align 8
  %122 = load i32, i32* %2, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, double* %121, i64 %123
  %125 = load double, double* %124, align 8
  %126 = load double**, double*** @ax, align 8
  %127 = load i32, i32* %1, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double*, double** %126, i64 %128
  %130 = load double*, double** %129, align 8
  %131 = load i32, i32* %2, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds double, double* %130, i64 %132
  %134 = load double, double* %133, align 8
  %135 = load double, double* %5, align 8
  %136 = fmul double %134, %135
  %137 = fadd double %125, %136
  %138 = load double**, double*** @vx, align 8
  %139 = load i32, i32* %1, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds double*, double** %138, i64 %140
  %142 = load double*, double** %141, align 8
  %143 = load i32, i32* %2, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds double, double* %142, i64 %144
  store double %137, double* %145, align 8
  %146 = load double**, double*** @vy, align 8
  %147 = load i32, i32* %1, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double*, double** %146, i64 %148
  %150 = load double*, double** %149, align 8
  %151 = load i32, i32* %2, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds double, double* %150, i64 %152
  %154 = load double, double* %153, align 8
  %155 = load double**, double*** @ay, align 8
  %156 = load i32, i32* %1, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds double*, double** %155, i64 %157
  %159 = load double*, double** %158, align 8
  %160 = load i32, i32* %2, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds double, double* %159, i64 %161
  %163 = load double, double* %162, align 8
  %164 = load double, double* %5, align 8
  %165 = fmul double %163, %164
  %166 = fadd double %154, %165
  %167 = load double**, double*** @vy, align 8
  %168 = load i32, i32* %1, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds double*, double** %167, i64 %169
  %171 = load double*, double** %170, align 8
  %172 = load i32, i32* %2, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds double, double* %171, i64 %173
  store double %166, double* %174, align 8
  br label %175

175:                                              ; preds = %116
  %176 = load i32, i32* %2, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %2, align 4
  br label %112

178:                                              ; preds = %112
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %1, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %1, align 4
  br label %107

182:                                              ; preds = %107
  store i32 1, i32* %1, align 4
  br label %183

183:                                              ; preds = %260, %182
  %184 = load i32, i32* %1, align 4
  %185 = load i32, i32* @GRIDW, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %263

187:                                              ; preds = %183
  %188 = load i32, i32* %1, align 4
  %189 = sub nsw i32 %188, 1
  store i32 %189, i32* %3, align 4
  store i32 1, i32* %2, align 4
  br label %190

190:                                              ; preds = %256, %187
  %191 = load i32, i32* %2, align 4
  %192 = load i32, i32* @GRIDH, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %259

194:                                              ; preds = %190
  %195 = load i32, i32* %2, align 4
  %196 = sub nsw i32 %195, 1
  store i32 %196, i32* %4, align 4
  %197 = load double**, double*** @p, align 8
  %198 = load i32, i32* %1, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds double*, double** %197, i64 %199
  %201 = load double*, double** %200, align 8
  %202 = load i32, i32* %2, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds double, double* %201, i64 %203
  %205 = load double, double* %204, align 8
  %206 = load double**, double*** @vx, align 8
  %207 = load i32, i32* %3, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds double*, double** %206, i64 %208
  %210 = load double*, double** %209, align 8
  %211 = load i32, i32* %2, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds double, double* %210, i64 %212
  %214 = load double, double* %213, align 8
  %215 = load double**, double*** @vx, align 8
  %216 = load i32, i32* %1, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds double*, double** %215, i64 %217
  %219 = load double*, double** %218, align 8
  %220 = load i32, i32* %2, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds double, double* %219, i64 %221
  %223 = load double, double* %222, align 8
  %224 = fsub double %214, %223
  %225 = load double**, double*** @vy, align 8
  %226 = load i32, i32* %1, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds double*, double** %225, i64 %227
  %229 = load double*, double** %228, align 8
  %230 = load i32, i32* %4, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds double, double* %229, i64 %231
  %233 = load double, double* %232, align 8
  %234 = fadd double %224, %233
  %235 = load double**, double*** @vy, align 8
  %236 = load i32, i32* %1, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds double*, double** %235, i64 %237
  %239 = load double*, double** %238, align 8
  %240 = load i32, i32* %2, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds double, double* %239, i64 %241
  %243 = load double, double* %242, align 8
  %244 = fsub double %234, %243
  %245 = load double, double* %5, align 8
  %246 = fmul double %244, %245
  %247 = fadd double %205, %246
  %248 = load double**, double*** @p, align 8
  %249 = load i32, i32* %1, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds double*, double** %248, i64 %250
  %252 = load double*, double** %251, align 8
  %253 = load i32, i32* %2, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds double, double* %252, i64 %254
  store double %247, double* %255, align 8
  br label %256

256:                                              ; preds = %194
  %257 = load i32, i32* %2, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %2, align 4
  br label %190

259:                                              ; preds = %190
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %1, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %1, align 4
  br label %183

263:                                              ; preds = %183
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
