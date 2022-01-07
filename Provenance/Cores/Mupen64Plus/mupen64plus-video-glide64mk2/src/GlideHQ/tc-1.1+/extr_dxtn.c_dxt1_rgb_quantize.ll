; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_dxtn.c_dxt1_rgb_quantize.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_dxtn.c_dxt1_rgb_quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_COMP = common dso_local global i32 0, align 4
@N_TEXELS = common dso_local global i32 0, align 4
@dxtn_color_tlat = common dso_local global i32** null, align 8
@BCOMP = common dso_local global i64 0, align 8
@GCOMP = common dso_local global i64 0, align 8
@RCOMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i32)* @dxt1_rgb_quantize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dxt1_rgb_quantize(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  %29 = load i32, i32* @MAX_COMP, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %8, align 8
  %32 = alloca float, i64 %30, align 16
  store i64 %30, i64* %9, align 8
  store i32 3, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 2000, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %33 = load i32, i32* @N_TEXELS, align 4
  %34 = zext i32 %33 to i64
  %35 = load i32, i32* @MAX_COMP, align 4
  %36 = zext i32 %35 to i64
  %37 = mul nuw i64 %34, %36
  %38 = alloca i32, i64 %37, align 16
  store i64 %34, i64* %20, align 8
  store i64 %36, i64* %21, align 8
  store i32 0, i32* %24, align 4
  br label %39

39:                                               ; preds = %77, %3
  %40 = load i32, i32* %24, align 4
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %42, label %80

42:                                               ; preds = %39
  store i32 0, i32* %23, align 4
  br label %43

43:                                               ; preds = %73, %42
  %44 = load i32, i32* %23, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %76

46:                                               ; preds = %43
  store i32 0, i32* %22, align 4
  br label %47

47:                                               ; preds = %69, %46
  %48 = load i32, i32* %22, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %47
  %52 = load i32**, i32*** %5, align 8
  %53 = load i32, i32* %24, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %55, align 8
  %58 = load i32, i32* %56, align 4
  %59 = load i32, i32* %23, align 4
  %60 = load i32, i32* %24, align 4
  %61 = mul nsw i32 %60, 4
  %62 = add nsw i32 %59, %61
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %63, %36
  %65 = getelementptr inbounds i32, i32* %38, i64 %64
  %66 = load i32, i32* %22, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %58, i32* %68, align 4
  br label %69

69:                                               ; preds = %51
  %70 = load i32, i32* %22, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %22, align 4
  br label %47

72:                                               ; preds = %47
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %23, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %23, align 4
  br label %43

76:                                               ; preds = %43
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %24, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %24, align 4
  br label %39

80:                                               ; preds = %39
  store i32 0, i32* %23, align 4
  br label %81

81:                                               ; preds = %122, %80
  %82 = load i32, i32* %23, align 4
  %83 = load i32, i32* @N_TEXELS, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %125

85:                                               ; preds = %81
  store i32 0, i32* %25, align 4
  store i32 0, i32* %22, align 4
  br label %86

86:                                               ; preds = %100, %85
  %87 = load i32, i32* %22, align 4
  %88 = icmp slt i32 %87, 3
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load i32, i32* %23, align 4
  %91 = sext i32 %90 to i64
  %92 = mul nsw i64 %91, %36
  %93 = getelementptr inbounds i32, i32* %38, i64 %92
  %94 = load i32, i32* %22, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %25, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %25, align 4
  br label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %22, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %22, align 4
  br label %86

103:                                              ; preds = %86
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %25, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %25, align 4
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %23, align 4
  store i32 %109, i32* %18, align 4
  br label %110

110:                                              ; preds = %107, %103
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %25, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* %25, align 4
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %23, align 4
  store i32 %116, i32* %19, align 4
  br label %117

117:                                              ; preds = %114, %110
  %118 = load i32, i32* %25, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 1, i32* %15, align 4
  br label %121

121:                                              ; preds = %120, %117
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %23, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %23, align 4
  br label %81

125:                                              ; preds = %81
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = mul nsw i64 %127, %36
  %129 = getelementptr inbounds i32, i32* %38, i64 %128
  %130 = call i32 @COLOR565(i32* %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %19, align 4
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %132, %36
  %134 = getelementptr inbounds i32, i32* %38, i64 %133
  %135 = call i32 @COLOR565(i32* %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %125
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %12, align 4
  %142 = shl i32 %141, 16
  %143 = or i32 %140, %142
  %144 = load i32*, i32** %4, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %15, align 4
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 -1, i32 0
  store i32 %149, i32* %10, align 4
  br label %259

150:                                              ; preds = %125
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load i32, i32* %11, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %12, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156, %153
  store i32 0, i32* %15, align 4
  br label %160

160:                                              ; preds = %159, %156, %150
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp sle i32 %162, %163
  %165 = zext i1 %164 to i32
  %166 = xor i32 %161, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %160
  %169 = load i32, i32* %11, align 4
  store i32 %169, i32* %26, align 4
  %170 = load i32, i32* %12, align 4
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %26, align 4
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %18, align 4
  store i32 %172, i32* %26, align 4
  %173 = load i32, i32* %19, align 4
  store i32 %173, i32* %18, align 4
  %174 = load i32, i32* %26, align 4
  store i32 %174, i32* %19, align 4
  br label %175

175:                                              ; preds = %168, %160
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp sle i32 %176, %177
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i32 2, i32 3
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load float, float* %7, align 4
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = mul nsw i64 %184, %36
  %186 = getelementptr inbounds i32, i32* %38, i64 %185
  %187 = load i32, i32* %19, align 4
  %188 = sext i32 %187 to i64
  %189 = mul nsw i64 %188, %36
  %190 = getelementptr inbounds i32, i32* %38, i64 %189
  %191 = call i32 @MAKEIVEC(i32 %181, i32 3, float* %32, float %182, i32* %186, i32* %190)
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %12, align 4
  %194 = shl i32 %193, 16
  %195 = or i32 %192, %194
  %196 = load i32*, i32** %4, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  store i32 %195, i32* %197, align 4
  store i32 0, i32* %10, align 4
  %198 = load i32, i32* @N_TEXELS, align 4
  %199 = sub nsw i32 %198, 1
  store i32 %199, i32* %23, align 4
  br label %200

200:                                              ; preds = %255, %175
  %201 = load i32, i32* %23, align 4
  %202 = icmp sge i32 %201, 0
  br i1 %202, label %203, label %258

203:                                              ; preds = %200
  store i32 3, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %225

206:                                              ; preds = %203
  store i32 0, i32* %22, align 4
  br label %207

207:                                              ; preds = %221, %206
  %208 = load i32, i32* %22, align 4
  %209 = icmp slt i32 %208, 3
  br i1 %209, label %210, label %224

210:                                              ; preds = %207
  %211 = load i32, i32* %23, align 4
  %212 = sext i32 %211 to i64
  %213 = mul nsw i64 %212, %36
  %214 = getelementptr inbounds i32, i32* %38, i64 %213
  %215 = load i32, i32* %22, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %28, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %28, align 4
  br label %221

221:                                              ; preds = %210
  %222 = load i32, i32* %22, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %22, align 4
  br label %207

224:                                              ; preds = %207
  br label %225

225:                                              ; preds = %224, %203
  %226 = load i32, i32* %15, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load i32, i32* %28, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %249

231:                                              ; preds = %228, %225
  %232 = load i32, i32* %27, align 4
  %233 = load i32, i32* %13, align 4
  %234 = load float, float* %7, align 4
  %235 = load i32, i32* %23, align 4
  %236 = sext i32 %235 to i64
  %237 = mul nsw i64 %236, %36
  %238 = getelementptr inbounds i32, i32* %38, i64 %237
  %239 = call i32 @CALCCDOT(i32 %232, i32 %233, i32 3, float* %32, float %234, i32* %238)
  %240 = load i32**, i32*** @dxtn_color_tlat, align 8
  %241 = load i32, i32* %15, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32*, i32** %240, i64 %242
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %27, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %27, align 4
  br label %249

249:                                              ; preds = %231, %228
  %250 = load i32, i32* %10, align 4
  %251 = shl i32 %250, 2
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* %27, align 4
  %253 = load i32, i32* %10, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %10, align 4
  br label %255

255:                                              ; preds = %249
  %256 = load i32, i32* %23, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %23, align 4
  br label %200

258:                                              ; preds = %200
  br label %259

259:                                              ; preds = %258, %139
  %260 = load i32, i32* %10, align 4
  %261 = load i32*, i32** %4, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 1
  store i32 %260, i32* %262, align 4
  %263 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %263)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @COLOR565(i32*) #2

declare dso_local i32 @MAKEIVEC(i32, i32, float*, float, i32*, i32*) #2

declare dso_local i32 @CALCCDOT(i32, i32, i32, float*, float, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
