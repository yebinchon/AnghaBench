; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_plot_gamuts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_plot_gamuts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ColorSystem = type { i32, i32, i32, i32, i32, i32 }

@NB_CS = common dso_local global i32 0, align 4
@color_systems = common dso_local global %struct.ColorSystem* null, align 8
@LUV = common dso_local global i32 0, align 4
@UCS = common dso_local global i32 0, align 4
@XYY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32)* @plot_gamuts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plot_gamuts(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ColorSystem*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %264, %6
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @NB_CS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %267

29:                                               ; preds = %25
  %30 = load %struct.ColorSystem*, %struct.ColorSystem** @color_systems, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %30, i64 %32
  store %struct.ColorSystem* %33, %struct.ColorSystem** %14, align 8
  %34 = load i32, i32* %13, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* %12, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %264

40:                                               ; preds = %29
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @LUV, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %111

44:                                               ; preds = %40
  %45 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %46 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %49 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @xy_to_upvp(i32 %47, i32 %50, double* %21, double* %22)
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sitofp i32 %53 to double
  %55 = load double, double* %21, align 8
  %56 = fmul double %54, %55
  %57 = fptosi double %56 to i32
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sitofp i32 %61 to double
  %63 = load double, double* %22, align 8
  %64 = fmul double %62, %63
  %65 = fptosi double %64 to i32
  %66 = sub nsw i32 %59, %65
  store i32 %66, i32* %16, align 4
  %67 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %68 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %71 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @xy_to_upvp(i32 %69, i32 %72, double* %21, double* %22)
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sitofp i32 %75 to double
  %77 = load double, double* %21, align 8
  %78 = fmul double %76, %77
  %79 = fptosi double %78 to i32
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sitofp i32 %83 to double
  %85 = load double, double* %22, align 8
  %86 = fmul double %84, %85
  %87 = fptosi double %86 to i32
  %88 = sub nsw i32 %81, %87
  store i32 %88, i32* %18, align 4
  %89 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %90 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %93 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @xy_to_upvp(i32 %91, i32 %94, double* %21, double* %22)
  %96 = load i32, i32* %9, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sitofp i32 %97 to double
  %99 = load double, double* %21, align 8
  %100 = fmul double %98, %99
  %101 = fptosi double %100 to i32
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sitofp i32 %105 to double
  %107 = load double, double* %22, align 8
  %108 = fmul double %106, %107
  %109 = fptosi double %108 to i32
  %110 = sub nsw i32 %103, %109
  store i32 %110, i32* %20, align 4
  br label %236

111:                                              ; preds = %40
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @UCS, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %182

115:                                              ; preds = %111
  %116 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %117 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %120 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @xy_to_uv(i32 %118, i32 %121, double* %23, double* %24)
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sitofp i32 %124 to double
  %126 = load double, double* %23, align 8
  %127 = fmul double %125, %126
  %128 = fptosi double %127 to i32
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %10, align 4
  %130 = sub nsw i32 %129, 1
  %131 = load i32, i32* %10, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sitofp i32 %132 to double
  %134 = load double, double* %24, align 8
  %135 = fmul double %133, %134
  %136 = fptosi double %135 to i32
  %137 = sub nsw i32 %130, %136
  store i32 %137, i32* %16, align 4
  %138 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %139 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %142 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @xy_to_uv(i32 %140, i32 %143, double* %23, double* %24)
  %145 = load i32, i32* %9, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sitofp i32 %146 to double
  %148 = load double, double* %23, align 8
  %149 = fmul double %147, %148
  %150 = fptosi double %149 to i32
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %10, align 4
  %152 = sub nsw i32 %151, 1
  %153 = load i32, i32* %10, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sitofp i32 %154 to double
  %156 = load double, double* %24, align 8
  %157 = fmul double %155, %156
  %158 = fptosi double %157 to i32
  %159 = sub nsw i32 %152, %158
  store i32 %159, i32* %18, align 4
  %160 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %161 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %164 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @xy_to_uv(i32 %162, i32 %165, double* %23, double* %24)
  %167 = load i32, i32* %9, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sitofp i32 %168 to double
  %170 = load double, double* %23, align 8
  %171 = fmul double %169, %170
  %172 = fptosi double %171 to i32
  store i32 %172, i32* %19, align 4
  %173 = load i32, i32* %10, align 4
  %174 = sub nsw i32 %173, 1
  %175 = load i32, i32* %10, align 4
  %176 = sub nsw i32 %175, 1
  %177 = sitofp i32 %176 to double
  %178 = load double, double* %24, align 8
  %179 = fmul double %177, %178
  %180 = fptosi double %179 to i32
  %181 = sub nsw i32 %174, %180
  store i32 %181, i32* %20, align 4
  br label %235

182:                                              ; preds = %111
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* @XYY, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %232

186:                                              ; preds = %182
  %187 = load i32, i32* %9, align 4
  %188 = sub nsw i32 %187, 1
  %189 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %190 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = mul nsw i32 %188, %191
  store i32 %192, i32* %15, align 4
  %193 = load i32, i32* %10, align 4
  %194 = sub nsw i32 %193, 1
  %195 = load i32, i32* %10, align 4
  %196 = sub nsw i32 %195, 1
  %197 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %198 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %196, %199
  %201 = sub nsw i32 %194, %200
  store i32 %201, i32* %16, align 4
  %202 = load i32, i32* %9, align 4
  %203 = sub nsw i32 %202, 1
  %204 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %205 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %203, %206
  store i32 %207, i32* %17, align 4
  %208 = load i32, i32* %10, align 4
  %209 = sub nsw i32 %208, 1
  %210 = load i32, i32* %10, align 4
  %211 = sub nsw i32 %210, 1
  %212 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %213 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = mul nsw i32 %211, %214
  %216 = sub nsw i32 %209, %215
  store i32 %216, i32* %18, align 4
  %217 = load i32, i32* %9, align 4
  %218 = sub nsw i32 %217, 1
  %219 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %220 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = mul nsw i32 %218, %221
  store i32 %222, i32* %19, align 4
  %223 = load i32, i32* %10, align 4
  %224 = sub nsw i32 %223, 1
  %225 = load i32, i32* %10, align 4
  %226 = sub nsw i32 %225, 1
  %227 = load %struct.ColorSystem*, %struct.ColorSystem** %14, align 8
  %228 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = mul nsw i32 %226, %229
  %231 = sub nsw i32 %224, %230
  store i32 %231, i32* %20, align 4
  br label %234

232:                                              ; preds = %182
  %233 = call i32 @av_assert0(i32 0)
  br label %234

234:                                              ; preds = %232, %186
  br label %235

235:                                              ; preds = %234, %115
  br label %236

236:                                              ; preds = %235, %44
  %237 = load i32*, i32** %7, align 8
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* %15, align 4
  %240 = load i32, i32* %16, align 4
  %241 = load i32, i32* %17, align 4
  %242 = load i32, i32* %18, align 4
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* %10, align 4
  %245 = call i32 @draw_rline(i32* %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244)
  %246 = load i32*, i32** %7, align 8
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* %17, align 4
  %249 = load i32, i32* %18, align 4
  %250 = load i32, i32* %19, align 4
  %251 = load i32, i32* %20, align 4
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* %10, align 4
  %254 = call i32 @draw_rline(i32* %246, i32 %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252, i32 %253)
  %255 = load i32*, i32** %7, align 8
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* %19, align 4
  %258 = load i32, i32* %20, align 4
  %259 = load i32, i32* %15, align 4
  %260 = load i32, i32* %16, align 4
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @draw_rline(i32* %255, i32 %256, i32 %257, i32 %258, i32 %259, i32 %260, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %236, %39
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %13, align 4
  br label %25

267:                                              ; preds = %25
  ret void
}

declare dso_local i32 @xy_to_upvp(i32, i32, double*, double*) #1

declare dso_local i32 @xy_to_uv(i32, i32, double*, double*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @draw_rline(i32*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
