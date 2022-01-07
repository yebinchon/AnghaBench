; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmaprodec.c_inverse_channel_transform.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmaprodec.c_inverse_channel_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (float*, float*, double, i32)* }
%struct.TYPE_5__ = type { i32, float**, float*, i32*, i64 }

@WMAPRO_MAX_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @inverse_channel_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inverse_channel_transform(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca float**, align 8
  %8 = alloca float**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float**, align 8
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %236, %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %239

24:                                               ; preds = %18
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 6
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %235

34:                                               ; preds = %24
  %35 = load i32, i32* @WMAPRO_MAX_CHANNELS, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %4, align 8
  %38 = alloca float, i64 %36, align 16
  store i64 %36, i64* %5, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %6, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load float**, float*** %53, align 8
  store float** %54, float*** %7, align 8
  %55 = load float**, float*** %7, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float*, float** %55, i64 %57
  store float** %58, float*** %8, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %9, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %10, align 8
  br label %70

70:                                               ; preds = %230, %34
  %71 = load i32*, i32** %10, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = icmp ult i32* %71, %79
  br i1 %80, label %81, label %233

81:                                               ; preds = %70
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %9, align 8
  %84 = load i32, i32* %82, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %165

86:                                               ; preds = %81
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %161, %86
  %91 = load i32, i32* %11, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @FFMIN(i32 %94, i32 %97)
  %99 = icmp slt i32 %91, %98
  br i1 %99, label %100, label %164

100:                                              ; preds = %90
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 6
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load float*, float** %107, align 8
  store float* %108, float** %12, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %38, i64 %110
  store float* %111, float** %13, align 8
  store float* %38, float** %14, align 8
  %112 = load float**, float*** %7, align 8
  store float** %112, float*** %15, align 8
  br label %113

113:                                              ; preds = %126, %100
  %114 = load float**, float*** %15, align 8
  %115 = load float**, float*** %8, align 8
  %116 = icmp ult float** %114, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %113
  %118 = load float**, float*** %15, align 8
  %119 = load float*, float** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %119, i64 %121
  %123 = load float, float* %122, align 4
  %124 = load float*, float** %14, align 8
  %125 = getelementptr inbounds float, float* %124, i32 1
  store float* %125, float** %14, align 8
  store float %123, float* %124, align 4
  br label %126

126:                                              ; preds = %117
  %127 = load float**, float*** %15, align 8
  %128 = getelementptr inbounds float*, float** %127, i32 1
  store float** %128, float*** %15, align 8
  br label %113

129:                                              ; preds = %113
  %130 = load float**, float*** %7, align 8
  store float** %130, float*** %15, align 8
  br label %131

131:                                              ; preds = %157, %129
  %132 = load float**, float*** %15, align 8
  %133 = load float**, float*** %8, align 8
  %134 = icmp ult float** %132, %133
  br i1 %134, label %135, label %160

135:                                              ; preds = %131
  store float 0.000000e+00, float* %16, align 4
  store float* %38, float** %14, align 8
  br label %136

136:                                              ; preds = %140, %135
  %137 = load float*, float** %14, align 8
  %138 = load float*, float** %13, align 8
  %139 = icmp ult float* %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %136
  %141 = load float*, float** %14, align 8
  %142 = getelementptr inbounds float, float* %141, i32 1
  store float* %142, float** %14, align 8
  %143 = load float, float* %141, align 4
  %144 = load float*, float** %12, align 8
  %145 = getelementptr inbounds float, float* %144, i32 1
  store float* %145, float** %12, align 8
  %146 = load float, float* %144, align 4
  %147 = fmul float %143, %146
  %148 = load float, float* %16, align 4
  %149 = fadd float %148, %147
  store float %149, float* %16, align 4
  br label %136

150:                                              ; preds = %136
  %151 = load float, float* %16, align 4
  %152 = load float**, float*** %15, align 8
  %153 = load float*, float** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %153, i64 %155
  store float %151, float* %156, align 4
  br label %157

157:                                              ; preds = %150
  %158 = load float**, float*** %15, align 8
  %159 = getelementptr inbounds float*, float** %158, i32 1
  store float** %159, float*** %15, align 8
  br label %131

160:                                              ; preds = %131
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %90

164:                                              ; preds = %90
  br label %229

165:                                              ; preds = %81
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 2
  br i1 %169, label %170, label %228

170:                                              ; preds = %165
  %171 = load i32*, i32** %10, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @FFMIN(i32 %173, i32 %176)
  %178 = load i32*, i32** %10, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %177, %180
  store i32 %181, i32* %17, align 4
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 4
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32 (float*, float*, double, i32)*, i32 (float*, float*, double, i32)** %185, align 8
  %187 = load float**, float*** %7, align 8
  %188 = getelementptr inbounds float*, float** %187, i64 0
  %189 = load float*, float** %188, align 8
  %190 = load i32*, i32** %10, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %189, i64 %193
  %195 = load float**, float*** %7, align 8
  %196 = getelementptr inbounds float*, float** %195, i64 0
  %197 = load float*, float** %196, align 8
  %198 = load i32*, i32** %10, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %197, i64 %201
  %203 = load i32, i32* %17, align 4
  %204 = call i32 %186(float* %194, float* %202, double 0x3FF6A00000000000, i32 %203)
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 4
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i32 (float*, float*, double, i32)*, i32 (float*, float*, double, i32)** %208, align 8
  %210 = load float**, float*** %7, align 8
  %211 = getelementptr inbounds float*, float** %210, i64 1
  %212 = load float*, float** %211, align 8
  %213 = load i32*, i32** %10, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %212, i64 %216
  %218 = load float**, float*** %7, align 8
  %219 = getelementptr inbounds float*, float** %218, i64 1
  %220 = load float*, float** %219, align 8
  %221 = load i32*, i32** %10, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float, float* %220, i64 %224
  %226 = load i32, i32* %17, align 4
  %227 = call i32 %209(float* %217, float* %225, double 0x3FF6A00000000000, i32 %226)
  br label %228

228:                                              ; preds = %170, %165
  br label %229

229:                                              ; preds = %228, %164
  br label %230

230:                                              ; preds = %229
  %231 = load i32*, i32** %10, align 8
  %232 = getelementptr inbounds i32, i32* %231, i32 1
  store i32* %232, i32** %10, align 8
  br label %70

233:                                              ; preds = %70
  %234 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %234)
  br label %235

235:                                              ; preds = %233, %24
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %3, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %3, align 4
  br label %18

239:                                              ; preds = %18
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FFMIN(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
