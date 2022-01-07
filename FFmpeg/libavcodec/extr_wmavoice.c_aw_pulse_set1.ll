; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_aw_pulse_set1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_aw_pulse_set1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i32, i64*, i64 }
%struct.TYPE_6__ = type { double*, i64, i64*, i64, i32 }

@MAX_FRAMESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, %struct.TYPE_6__*)* @aw_pulse_set1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_pulse_set1(%struct.TYPE_5__* %0, i32* %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %4
  %29 = phi i1 [ false, %4 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = mul nsw i32 2, %30
  %32 = sub nsw i32 12, %31
  %33 = call i32 @get_bits(i32* %19, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %141

42:                                               ; preds = %28
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 24
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 3, i32* %15, align 4
  store i32 8, i32* %12, align 4
  store i32 7, i32* %13, align 4
  store i32 4, i32* %14, align 4
  br label %49

48:                                               ; preds = %42
  store i32 4, i32* %15, align 4
  store i32 4, i32* %12, align 4
  store i32 3, i32* %13, align 4
  store i32 3, i32* %14, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, i32* %15, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %134, %49
  %53 = load i32, i32* %11, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %140

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %12, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, double -1.000000e+00, double 1.000000e+00
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load double*, double** %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds double, double* %64, i64 %67
  store double %61, double* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %13, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* %15, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %76, %83
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  store i64 %84, i64* %91, align 8
  br label %92

92:                                               ; preds = %102, %55
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i64*, i64** %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %92
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i64*, i64** %107, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i64, i64* %108, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %105
  store i64 %114, i64* %112, align 8
  br label %92

115:                                              ; preds = %92
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i64*, i64** %117, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i64, i64* %118, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @MAX_FRAMESIZE, align 4
  %125 = sdiv i32 %124, 2
  %126 = sext i32 %125 to i64
  %127 = icmp slt i64 %123, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %115
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %130, align 8
  br label %133

133:                                              ; preds = %128, %115
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %9, align 4
  %139 = ashr i32 %138, %137
  store i32 %139, i32* %9, align 4
  br label %52

140:                                              ; preds = %52
  br label %239

141:                                              ; preds = %28
  %142 = load i32, i32* %9, align 4
  %143 = and i32 %142, 511
  %144 = ashr i32 %143, 1
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %16, align 4
  %146 = icmp slt i32 %145, 79
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  store i32 1, i32* %17, align 4
  %148 = load i32, i32* %16, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %18, align 4
  br label %170

150:                                              ; preds = %141
  %151 = load i32, i32* %16, align 4
  %152 = icmp slt i32 %151, 156
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  store i32 3, i32* %17, align 4
  %154 = load i32, i32* %16, align 4
  %155 = add nsw i32 %154, 1
  %156 = sub nsw i32 %155, 77
  store i32 %156, i32* %18, align 4
  br label %169

157:                                              ; preds = %150
  %158 = load i32, i32* %16, align 4
  %159 = icmp slt i32 %158, 231
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  store i32 5, i32* %17, align 4
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, 1
  %163 = sub nsw i32 %162, 152
  store i32 %163, i32* %18, align 4
  br label %168

164:                                              ; preds = %157
  store i32 7, i32* %17, align 4
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, 1
  %167 = sub nsw i32 %166, 225
  store i32 %167, i32* %18, align 4
  br label %168

168:                                              ; preds = %164, %160
  br label %169

169:                                              ; preds = %168, %153
  br label %170

170:                                              ; preds = %169, %147
  %171 = load i32, i32* %9, align 4
  %172 = and i32 %171, 512
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, double -1.000000e+00, double 1.000000e+00
  %176 = fptrunc double %175 to float
  store float %176, float* %10, align 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = shl i32 3, %180
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %17, align 4
  %188 = sub nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = load i64*, i64** %191, align 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i64, i64* %192, i64 %195
  store i64 %189, i64* %196, align 8
  %197 = load float, float* %10, align 4
  %198 = fpext float %197 to double
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load double*, double** %200, align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds double, double* %201, i64 %204
  store double %198, double* %205, align 8
  %206 = load i32, i32* %18, align 4
  %207 = sext i32 %206 to i64
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load i64*, i64** %209, align 8
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = add i64 %213, 1
  %215 = getelementptr inbounds i64, i64* %210, i64 %214
  store i64 %207, i64* %215, align 8
  %216 = load i32, i32* %9, align 4
  %217 = and i32 %216, 1
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %170
  %220 = load float, float* %10, align 4
  %221 = fneg float %220
  br label %224

222:                                              ; preds = %170
  %223 = load float, float* %10, align 4
  br label %224

224:                                              ; preds = %222, %219
  %225 = phi float [ %221, %219 ], [ %223, %222 ]
  %226 = fpext float %225 to double
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load double*, double** %228, align 8
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = add i64 %232, 1
  %234 = getelementptr inbounds double, double* %229, i64 %233
  store double %226, double* %234, align 8
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = add i64 %237, 2
  store i64 %238, i64* %236, align 8
  br label %239

239:                                              ; preds = %224, %140
  ret void
}

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
