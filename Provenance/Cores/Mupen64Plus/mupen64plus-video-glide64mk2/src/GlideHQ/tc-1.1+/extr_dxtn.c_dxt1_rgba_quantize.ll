; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_dxtn.c_dxt1_rgba_quantize.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_dxtn.c_dxt1_rgba_quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_COMP = common dso_local global i32 0, align 4
@N_TEXELS = common dso_local global i32 0, align 4
@ACOMP = common dso_local global i64 0, align 8
@dxtn_color_tlat = common dso_local global i32** null, align 8
@BCOMP = common dso_local global i64 0, align 8
@GCOMP = common dso_local global i64 0, align 8
@RCOMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i32)* @dxt1_rgba_quantize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dxt1_rgba_quantize(i32* %0, i32** %1, i32 %2) #0 {
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
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  %28 = load i32, i32* @MAX_COMP, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %8, align 8
  %31 = alloca float, i64 %29, align 16
  store i64 %29, i64* %9, align 8
  store i32 3, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 2000, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %32 = load i32, i32* @N_TEXELS, align 4
  %33 = zext i32 %32 to i64
  %34 = load i32, i32* @MAX_COMP, align 4
  %35 = zext i32 %34 to i64
  %36 = mul nuw i64 %33, %35
  %37 = alloca i32, i64 %36, align 16
  store i64 %33, i64* %20, align 8
  store i64 %35, i64* %21, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %46

40:                                               ; preds = %3
  %41 = bitcast i32* %37 to i32**
  %42 = mul nuw i64 %33, %35
  %43 = mul nuw i64 4, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memset(i32** %41, i32 -1, i32 %44)
  br label %46

46:                                               ; preds = %40, %3
  store i32 0, i32* %24, align 4
  br label %47

47:                                               ; preds = %85, %46
  %48 = load i32, i32* %24, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %88

50:                                               ; preds = %47
  store i32 0, i32* %23, align 4
  br label %51

51:                                               ; preds = %81, %50
  %52 = load i32, i32* %23, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %84

54:                                               ; preds = %51
  store i32 0, i32* %22, align 4
  br label %55

55:                                               ; preds = %77, %54
  %56 = load i32, i32* %22, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load i32**, i32*** %5, align 8
  %61 = load i32, i32* %24, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %63, align 8
  %66 = load i32, i32* %64, align 4
  %67 = load i32, i32* %23, align 4
  %68 = load i32, i32* %24, align 4
  %69 = mul nsw i32 %68, 4
  %70 = add nsw i32 %67, %69
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 %71, %35
  %73 = getelementptr inbounds i32, i32* %37, i64 %72
  %74 = load i32, i32* %22, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %66, i32* %76, align 4
  br label %77

77:                                               ; preds = %59
  %78 = load i32, i32* %22, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %22, align 4
  br label %55

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %23, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %23, align 4
  br label %51

84:                                               ; preds = %51
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %24, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %24, align 4
  br label %47

88:                                               ; preds = %47
  store i32 0, i32* %23, align 4
  br label %89

89:                                               ; preds = %136, %88
  %90 = load i32, i32* %23, align 4
  %91 = load i32, i32* @N_TEXELS, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %139

93:                                               ; preds = %89
  store i32 0, i32* %25, align 4
  store i32 0, i32* %22, align 4
  br label %94

94:                                               ; preds = %108, %93
  %95 = load i32, i32* %22, align 4
  %96 = icmp slt i32 %95, 3
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load i32, i32* %23, align 4
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %99, %35
  %101 = getelementptr inbounds i32, i32* %37, i64 %100
  %102 = load i32, i32* %22, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %25, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %25, align 4
  br label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %22, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %22, align 4
  br label %94

111:                                              ; preds = %94
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %25, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32, i32* %25, align 4
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %23, align 4
  store i32 %117, i32* %18, align 4
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %25, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* %25, align 4
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %23, align 4
  store i32 %124, i32* %19, align 4
  br label %125

125:                                              ; preds = %122, %118
  %126 = load i32, i32* %23, align 4
  %127 = sext i32 %126 to i64
  %128 = mul nsw i64 %127, %35
  %129 = getelementptr inbounds i32, i32* %37, i64 %128
  %130 = load i64, i64* @ACOMP, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 128
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  store i32 1, i32* %15, align 4
  br label %135

135:                                              ; preds = %134, %125
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %23, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %23, align 4
  br label %89

139:                                              ; preds = %89
  %140 = load i32, i32* %18, align 4
  %141 = sext i32 %140 to i64
  %142 = mul nsw i64 %141, %35
  %143 = getelementptr inbounds i32, i32* %37, i64 %142
  %144 = call i32 @COLOR565(i32* %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = mul nsw i64 %146, %35
  %148 = getelementptr inbounds i32, i32* %37, i64 %147
  %149 = call i32 @COLOR565(i32* %148)
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %139
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %12, align 4
  %156 = shl i32 %155, 16
  %157 = or i32 %154, %156
  %158 = load i32*, i32** %4, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %15, align 4
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 -1, i32 0
  store i32 %163, i32* %10, align 4
  br label %244

164:                                              ; preds = %139
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp sle i32 %166, %167
  %169 = zext i1 %168 to i32
  %170 = xor i32 %165, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %164
  %173 = load i32, i32* %11, align 4
  store i32 %173, i32* %26, align 4
  %174 = load i32, i32* %12, align 4
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %26, align 4
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %18, align 4
  store i32 %176, i32* %26, align 4
  %177 = load i32, i32* %19, align 4
  store i32 %177, i32* %18, align 4
  %178 = load i32, i32* %26, align 4
  store i32 %178, i32* %19, align 4
  br label %179

179:                                              ; preds = %172, %164
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %12, align 4
  %182 = icmp sle i32 %180, %181
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 2, i32 3
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %13, align 4
  %186 = load float, float* %7, align 4
  %187 = load i32, i32* %18, align 4
  %188 = sext i32 %187 to i64
  %189 = mul nsw i64 %188, %35
  %190 = getelementptr inbounds i32, i32* %37, i64 %189
  %191 = load i32, i32* %19, align 4
  %192 = sext i32 %191 to i64
  %193 = mul nsw i64 %192, %35
  %194 = getelementptr inbounds i32, i32* %37, i64 %193
  %195 = call i32 @MAKEIVEC(i32 %185, i32 3, float* %31, float %186, i32* %190, i32* %194)
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %12, align 4
  %198 = shl i32 %197, 16
  %199 = or i32 %196, %198
  %200 = load i32*, i32** %4, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  store i32 %199, i32* %201, align 4
  store i32 0, i32* %10, align 4
  %202 = load i32, i32* @N_TEXELS, align 4
  %203 = sub nsw i32 %202, 1
  store i32 %203, i32* %23, align 4
  br label %204

204:                                              ; preds = %240, %179
  %205 = load i32, i32* %23, align 4
  %206 = icmp sge i32 %205, 0
  br i1 %206, label %207, label %243

207:                                              ; preds = %204
  store i32 3, i32* %27, align 4
  %208 = load i32, i32* %23, align 4
  %209 = sext i32 %208 to i64
  %210 = mul nsw i64 %209, %35
  %211 = getelementptr inbounds i32, i32* %37, i64 %210
  %212 = load i64, i64* @ACOMP, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp sge i32 %214, 128
  br i1 %215, label %216, label %234

216:                                              ; preds = %207
  %217 = load i32, i32* %27, align 4
  %218 = load i32, i32* %13, align 4
  %219 = load float, float* %7, align 4
  %220 = load i32, i32* %23, align 4
  %221 = sext i32 %220 to i64
  %222 = mul nsw i64 %221, %35
  %223 = getelementptr inbounds i32, i32* %37, i64 %222
  %224 = call i32 @CALCCDOT(i32 %217, i32 %218, i32 3, float* %31, float %219, i32* %223)
  %225 = load i32**, i32*** @dxtn_color_tlat, align 8
  %226 = load i32, i32* %15, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %27, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %27, align 4
  br label %234

234:                                              ; preds = %216, %207
  %235 = load i32, i32* %10, align 4
  %236 = shl i32 %235, 2
  store i32 %236, i32* %10, align 4
  %237 = load i32, i32* %27, align 4
  %238 = load i32, i32* %10, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %10, align 4
  br label %240

240:                                              ; preds = %234
  %241 = load i32, i32* %23, align 4
  %242 = add nsw i32 %241, -1
  store i32 %242, i32* %23, align 4
  br label %204

243:                                              ; preds = %204
  br label %244

244:                                              ; preds = %243, %153
  %245 = load i32, i32* %10, align 4
  %246 = load i32*, i32** %4, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  store i32 %245, i32* %247, align 4
  %248 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %248)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32**, i32, i32) #2

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
