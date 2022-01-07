; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_dxtn.c_dxt3_rgba_quantize.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_dxtn.c_dxt3_rgba_quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_COMP = common dso_local global i32 0, align 4
@N_TEXELS = common dso_local global i32 0, align 4
@ACOMP = common dso_local global i64 0, align 8
@dxtn_color_tlat = common dso_local global i32** null, align 8
@BCOMP = common dso_local global i64 0, align 8
@GCOMP = common dso_local global i64 0, align 8
@RCOMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i32)* @dxt3_rgba_quantize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dxt3_rgba_quantize(i32* %0, i32** %1, i32 %2) #0 {
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
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
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
  store i32 3, i32* %15, align 4
  store i32 3, i32* %16, align 4
  store i32 2000, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %32 = load i32, i32* @N_TEXELS, align 4
  %33 = zext i32 %32 to i64
  %34 = load i32, i32* @MAX_COMP, align 4
  %35 = zext i32 %34 to i64
  %36 = mul nuw i64 %33, %35
  %37 = alloca i32, i64 %36, align 16
  store i64 %33, i64* %21, align 8
  store i64 %35, i64* %22, align 8
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
  store i32 0, i32* %25, align 4
  br label %47

47:                                               ; preds = %85, %46
  %48 = load i32, i32* %25, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %88

50:                                               ; preds = %47
  store i32 0, i32* %24, align 4
  br label %51

51:                                               ; preds = %81, %50
  %52 = load i32, i32* %24, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %84

54:                                               ; preds = %51
  store i32 0, i32* %23, align 4
  br label %55

55:                                               ; preds = %77, %54
  %56 = load i32, i32* %23, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load i32**, i32*** %5, align 8
  %61 = load i32, i32* %25, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %63, align 8
  %66 = load i32, i32* %64, align 4
  %67 = load i32, i32* %24, align 4
  %68 = load i32, i32* %25, align 4
  %69 = mul nsw i32 %68, 4
  %70 = add nsw i32 %67, %69
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 %71, %35
  %73 = getelementptr inbounds i32, i32* %37, i64 %72
  %74 = load i32, i32* %23, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %66, i32* %76, align 4
  br label %77

77:                                               ; preds = %59
  %78 = load i32, i32* %23, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %23, align 4
  br label %55

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %24, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %24, align 4
  br label %51

84:                                               ; preds = %51
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %25, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %25, align 4
  br label %47

88:                                               ; preds = %47
  store i32 0, i32* %24, align 4
  br label %89

89:                                               ; preds = %126, %88
  %90 = load i32, i32* %24, align 4
  %91 = load i32, i32* @N_TEXELS, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %129

93:                                               ; preds = %89
  store i32 0, i32* %26, align 4
  store i32 0, i32* %23, align 4
  br label %94

94:                                               ; preds = %108, %93
  %95 = load i32, i32* %23, align 4
  %96 = icmp slt i32 %95, 3
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load i32, i32* %24, align 4
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %99, %35
  %101 = getelementptr inbounds i32, i32* %37, i64 %100
  %102 = load i32, i32* %23, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %26, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %26, align 4
  br label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %23, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %23, align 4
  br label %94

111:                                              ; preds = %94
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %26, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32, i32* %26, align 4
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %24, align 4
  store i32 %117, i32* %19, align 4
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %26, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* %26, align 4
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %24, align 4
  store i32 %124, i32* %20, align 4
  br label %125

125:                                              ; preds = %122, %118
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %24, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %24, align 4
  br label %89

129:                                              ; preds = %89
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %130 = load i32, i32* @N_TEXELS, align 4
  %131 = sub nsw i32 %130, 1
  store i32 %131, i32* %24, align 4
  br label %132

132:                                              ; preds = %150, %129
  %133 = load i32, i32* %24, align 4
  %134 = load i32, i32* @N_TEXELS, align 4
  %135 = sdiv i32 %134, 2
  %136 = icmp sge i32 %133, %135
  br i1 %136, label %137, label %153

137:                                              ; preds = %132
  %138 = load i32, i32* %11, align 4
  %139 = shl i32 %138, 4
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %24, align 4
  %141 = sext i32 %140 to i64
  %142 = mul nsw i64 %141, %35
  %143 = getelementptr inbounds i32, i32* %37, i64 %142
  %144 = load i64, i64* @ACOMP, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = ashr i32 %146, 4
  %148 = load i32, i32* %11, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %137
  %151 = load i32, i32* %24, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %24, align 4
  br label %132

153:                                              ; preds = %132
  %154 = load i32, i32* %11, align 4
  %155 = load i32*, i32** %4, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %173, %153
  %158 = load i32, i32* %24, align 4
  %159 = icmp sge i32 %158, 0
  br i1 %159, label %160, label %176

160:                                              ; preds = %157
  %161 = load i32, i32* %10, align 4
  %162 = shl i32 %161, 4
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %24, align 4
  %164 = sext i32 %163 to i64
  %165 = mul nsw i64 %164, %35
  %166 = getelementptr inbounds i32, i32* %37, i64 %165
  %167 = load i64, i64* @ACOMP, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = ashr i32 %169, 4
  %171 = load i32, i32* %10, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %10, align 4
  br label %173

173:                                              ; preds = %160
  %174 = load i32, i32* %24, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %24, align 4
  br label %157

176:                                              ; preds = %157
  %177 = load i32, i32* %10, align 4
  %178 = load i32*, i32** %4, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %19, align 4
  %181 = sext i32 %180 to i64
  %182 = mul nsw i64 %181, %35
  %183 = getelementptr inbounds i32, i32* %37, i64 %182
  %184 = call i32 @COLOR565(i32* %183)
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %20, align 4
  %186 = sext i32 %185 to i64
  %187 = mul nsw i64 %186, %35
  %188 = getelementptr inbounds i32, i32* %37, i64 %187
  %189 = call i32 @COLOR565(i32* %188)
  store i32 %189, i32* %14, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %14, align 4
  %192 = shl i32 %191, 16
  %193 = or i32 %190, %192
  %194 = load i32*, i32** %4, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  store i32 %193, i32* %195, align 4
  store i32 0, i32* %12, align 4
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %14, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %239

199:                                              ; preds = %176
  %200 = load float, float* %7, align 4
  %201 = load i32, i32* %19, align 4
  %202 = sext i32 %201 to i64
  %203 = mul nsw i64 %202, %35
  %204 = getelementptr inbounds i32, i32* %37, i64 %203
  %205 = load i32, i32* %20, align 4
  %206 = sext i32 %205 to i64
  %207 = mul nsw i64 %206, %35
  %208 = getelementptr inbounds i32, i32* %37, i64 %207
  %209 = call i32 @MAKEIVEC(i32 3, i32 3, float* %31, float %200, i32* %204, i32* %208)
  %210 = load i32, i32* @N_TEXELS, align 4
  %211 = sub nsw i32 %210, 1
  store i32 %211, i32* %24, align 4
  br label %212

212:                                              ; preds = %235, %199
  %213 = load i32, i32* %24, align 4
  %214 = icmp sge i32 %213, 0
  br i1 %214, label %215, label %238

215:                                              ; preds = %212
  %216 = load i32, i32* %27, align 4
  %217 = load float, float* %7, align 4
  %218 = load i32, i32* %24, align 4
  %219 = sext i32 %218 to i64
  %220 = mul nsw i64 %219, %35
  %221 = getelementptr inbounds i32, i32* %37, i64 %220
  %222 = call i32 @CALCCDOT(i32 %216, i32 3, i32 3, float* %31, float %217, i32* %221)
  %223 = load i32**, i32*** @dxtn_color_tlat, align 8
  %224 = getelementptr inbounds i32*, i32** %223, i64 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %27, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %27, align 4
  %230 = load i32, i32* %12, align 4
  %231 = shl i32 %230, 2
  store i32 %231, i32* %12, align 4
  %232 = load i32, i32* %27, align 4
  %233 = load i32, i32* %12, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %12, align 4
  br label %235

235:                                              ; preds = %215
  %236 = load i32, i32* %24, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %24, align 4
  br label %212

238:                                              ; preds = %212
  br label %239

239:                                              ; preds = %238, %176
  %240 = load i32, i32* %12, align 4
  %241 = load i32*, i32** %4, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 3
  store i32 %240, i32* %242, align 4
  %243 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %243)
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
