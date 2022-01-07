; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_decode_1ALPHA.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_decode_1ALPHA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BCOMP = common dso_local global i64 0, align 8
@GCOMP = common dso_local global i64 0, align 8
@RCOMP = common dso_local global i64 0, align 8
@ACOMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @fxt1_decode_1ALPHA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxt1_decode_1ALPHA(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @CC_SEL(i32* %11, i32 124)
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %182

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 15
  store i32 %21, i32* %5, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %25, 2
  %27 = ashr i32 %24, %26
  %28 = and i32 %27, 3
  store i32 %28, i32* %5, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 11
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 6
  %33 = load i64, i64* @BCOMP, align 8
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %33
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @CC_SEL(i32* %35, i32 99)
  %37 = load i64, i64* @GCOMP, align 8
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %37
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @CC_SEL(i32* %39, i32 104)
  %41 = load i64, i64* @RCOMP, align 8
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %41
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @CC_SEL(i32* %43, i32 119)
  %45 = load i64, i64* @ACOMP, align 8
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %45
  store i32 %44, i32* %46, align 4
  br label %71

47:                                               ; preds = %15
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = mul nsw i32 %51, 2
  %53 = ashr i32 %50, %52
  %54 = and i32 %53, 3
  store i32 %54, i32* %5, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @CC_SEL(i32* %55, i32 64)
  %57 = load i64, i64* @BCOMP, align 8
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %57
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @CC_SEL(i32* %59, i32 69)
  %61 = load i64, i64* @GCOMP, align 8
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %61
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @CC_SEL(i32* %63, i32 74)
  %65 = load i64, i64* @RCOMP, align 8
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %65
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @CC_SEL(i32* %67, i32 109)
  %69 = load i64, i64* @ACOMP, align 8
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %69
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %47, %19
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %71
  %75 = load i64, i64* @BCOMP, align 8
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @UP5(i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load i64, i64* @BCOMP, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %78, i32* %81, align 4
  %82 = load i64, i64* @GCOMP, align 8
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @UP5(i32 %84)
  %86 = load i32*, i32** %6, align 8
  %87 = load i64, i64* @GCOMP, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %85, i32* %88, align 4
  %89 = load i64, i64* @RCOMP, align 8
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @UP5(i32 %91)
  %93 = load i32*, i32** %6, align 8
  %94 = load i64, i64* @RCOMP, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 %92, i32* %95, align 4
  %96 = load i64, i64* @ACOMP, align 8
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @UP5(i32 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = load i64, i64* @ACOMP, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32 %99, i32* %102, align 4
  br label %181

103:                                              ; preds = %71
  %104 = load i32, i32* %5, align 4
  %105 = icmp eq i32 %104, 3
  br i1 %105, label %106, label %131

106:                                              ; preds = %103
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @CC_SEL(i32* %107, i32 79)
  %109 = call i32 @UP5(i32 %108)
  %110 = load i32*, i32** %6, align 8
  %111 = load i64, i64* @BCOMP, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32 %109, i32* %112, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @CC_SEL(i32* %113, i32 84)
  %115 = call i32 @UP5(i32 %114)
  %116 = load i32*, i32** %6, align 8
  %117 = load i64, i64* @GCOMP, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32 %115, i32* %118, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @CC_SEL(i32* %119, i32 89)
  %121 = call i32 @UP5(i32 %120)
  %122 = load i32*, i32** %6, align 8
  %123 = load i64, i64* @RCOMP, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 %121, i32* %124, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @CC_SEL(i32* %125, i32 114)
  %127 = call i32 @UP5(i32 %126)
  %128 = load i32*, i32** %6, align 8
  %129 = load i64, i64* @ACOMP, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 %127, i32* %130, align 4
  br label %180

131:                                              ; preds = %103
  %132 = load i32, i32* %5, align 4
  %133 = load i64, i64* @BCOMP, align 8
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @UP5(i32 %135)
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @CC_SEL(i32* %137, i32 79)
  %139 = call i32 @UP5(i32 %138)
  %140 = call i32 @LERP(i32 3, i32 %132, i32 %136, i32 %139)
  %141 = load i32*, i32** %6, align 8
  %142 = load i64, i64* @BCOMP, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32 %140, i32* %143, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load i64, i64* @GCOMP, align 8
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @UP5(i32 %147)
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @CC_SEL(i32* %149, i32 84)
  %151 = call i32 @UP5(i32 %150)
  %152 = call i32 @LERP(i32 3, i32 %144, i32 %148, i32 %151)
  %153 = load i32*, i32** %6, align 8
  %154 = load i64, i64* @GCOMP, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* %5, align 4
  %157 = load i64, i64* @RCOMP, align 8
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @UP5(i32 %159)
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @CC_SEL(i32* %161, i32 89)
  %163 = call i32 @UP5(i32 %162)
  %164 = call i32 @LERP(i32 3, i32 %156, i32 %160, i32 %163)
  %165 = load i32*, i32** %6, align 8
  %166 = load i64, i64* @RCOMP, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32 %164, i32* %167, align 4
  %168 = load i32, i32* %5, align 4
  %169 = load i64, i64* @ACOMP, align 8
  %170 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @UP5(i32 %171)
  %173 = load i32*, i32** %7, align 8
  %174 = call i32 @CC_SEL(i32* %173, i32 114)
  %175 = call i32 @UP5(i32 %174)
  %176 = call i32 @LERP(i32 3, i32 %168, i32 %172, i32 %175)
  %177 = load i32*, i32** %6, align 8
  %178 = load i64, i64* @ACOMP, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  store i32 %176, i32* %179, align 4
  br label %180

180:                                              ; preds = %131, %106
  br label %181

181:                                              ; preds = %180, %74
  br label %249

182:                                              ; preds = %3
  %183 = load i32, i32* %5, align 4
  %184 = and i32 %183, 16
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %182
  %187 = load i32*, i32** %7, align 8
  %188 = getelementptr inbounds i32, i32* %187, i32 1
  store i32* %188, i32** %7, align 8
  %189 = load i32, i32* %5, align 4
  %190 = and i32 %189, 15
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %186, %182
  %192 = load i32*, i32** %7, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %5, align 4
  %196 = mul nsw i32 %195, 2
  %197 = ashr i32 %194, %196
  %198 = and i32 %197, 3
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* %5, align 4
  %200 = icmp eq i32 %199, 3
  br i1 %200, label %201, label %204

201:                                              ; preds = %191
  %202 = load i32*, i32** %6, align 8
  %203 = call i32 @ZERO_4UBV(i32* %202)
  br label %248

204:                                              ; preds = %191
  %205 = load i32*, i32** %4, align 8
  store i32* %205, i32** %7, align 8
  %206 = load i32*, i32** %7, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 3
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %5, align 4
  %210 = mul nsw i32 %209, 5
  %211 = add nsw i32 %210, 13
  %212 = ashr i32 %208, %211
  %213 = call i32 @UP5(i32 %212)
  %214 = load i32*, i32** %6, align 8
  %215 = load i64, i64* @ACOMP, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32 %213, i32* %216, align 4
  %217 = load i32, i32* %5, align 4
  %218 = mul nsw i32 %217, 15
  store i32 %218, i32* %5, align 4
  %219 = load i32*, i32** %4, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 8
  %221 = load i32, i32* %5, align 4
  %222 = sdiv i32 %221, 8
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  store i32* %224, i32** %7, align 8
  %225 = load i32*, i32** %7, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %5, align 4
  %229 = and i32 %228, 7
  %230 = ashr i32 %227, %229
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = call i32 @UP5(i32 %231)
  %233 = load i32*, i32** %6, align 8
  %234 = load i64, i64* @BCOMP, align 8
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  store i32 %232, i32* %235, align 4
  %236 = load i32, i32* %9, align 4
  %237 = ashr i32 %236, 5
  %238 = call i32 @UP5(i32 %237)
  %239 = load i32*, i32** %6, align 8
  %240 = load i64, i64* @GCOMP, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32 %238, i32* %241, align 4
  %242 = load i32, i32* %9, align 4
  %243 = ashr i32 %242, 10
  %244 = call i32 @UP5(i32 %243)
  %245 = load i32*, i32** %6, align 8
  %246 = load i64, i64* @RCOMP, align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  store i32 %244, i32* %247, align 4
  br label %248

248:                                              ; preds = %204, %201
  br label %249

249:                                              ; preds = %248, %181
  ret void
}

declare dso_local i32 @CC_SEL(i32*, i32) #1

declare dso_local i32 @UP5(i32) #1

declare dso_local i32 @LERP(i32, i32, i32, i32) #1

declare dso_local i32 @ZERO_4UBV(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
