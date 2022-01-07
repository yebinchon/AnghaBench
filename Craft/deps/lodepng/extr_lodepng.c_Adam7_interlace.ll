; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_Adam7_interlace.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_Adam7_interlace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADAM7_IY = common dso_local global i32* null, align 8
@ADAM7_DY = common dso_local global i32* null, align 8
@ADAM7_IX = common dso_local global i32* null, align 8
@ADAM7_DX = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32)* @Adam7_interlace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Adam7_interlace(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [7 x i32], align 16
  %12 = alloca [7 x i32], align 16
  %13 = alloca [8 x i64], align 16
  %14 = alloca [8 x i64], align 16
  %15 = alloca [8 x i64], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %31 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %32 = getelementptr inbounds [7 x i32], [7 x i32]* %12, i64 0, i64 0
  %33 = getelementptr inbounds [8 x i64], [8 x i64]* %13, i64 0, i64 0
  %34 = getelementptr inbounds [8 x i64], [8 x i64]* %14, i64 0, i64 0
  %35 = getelementptr inbounds [8 x i64], [8 x i64]* %15, i64 0, i64 0
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @Adam7_getpassvalues(i32* %31, i32* %32, i64* %33, i64* %34, i64* %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = icmp uge i32 %40, 8
  br i1 %41, label %42, label %149

42:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  br label %43

43:                                               ; preds = %145, %42
  %44 = load i32, i32* %16, align 4
  %45 = icmp ult i32 %44, 7
  br i1 %45, label %46, label %148

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = udiv i32 %47, 8
  %49 = zext i32 %48 to i64
  store i64 %49, i64* %20, align 8
  store i32 0, i32* %18, align 4
  br label %50

50:                                               ; preds = %141, %46
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %16, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [7 x i32], [7 x i32]* %12, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ult i32 %51, %55
  br i1 %56, label %57, label %144

57:                                               ; preds = %50
  store i32 0, i32* %17, align 4
  br label %58

58:                                               ; preds = %137, %57
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %16, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp ult i32 %59, %63
  br i1 %64, label %65, label %140

65:                                               ; preds = %58
  %66 = load i32*, i32** @ADAM7_IY, align 8
  %67 = load i32, i32* %16, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32*, i32** @ADAM7_DY, align 8
  %73 = load i32, i32* %16, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = mul i32 %71, %76
  %78 = add i32 %70, %77
  %79 = load i32, i32* %8, align 4
  %80 = mul i32 %78, %79
  %81 = load i32*, i32** @ADAM7_IX, align 8
  %82 = load i32, i32* %16, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add i32 %80, %85
  %87 = load i32, i32* %17, align 4
  %88 = load i32*, i32** @ADAM7_DX, align 8
  %89 = load i32, i32* %16, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = mul i32 %87, %92
  %94 = add i32 %86, %93
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %20, align 8
  %97 = mul i64 %95, %96
  store i64 %97, i64* %21, align 8
  %98 = load i32, i32* %16, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [8 x i64], [8 x i64]* %15, i64 0, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %16, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = mul i32 %102, %106
  %108 = load i32, i32* %17, align 4
  %109 = add i32 %107, %108
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %20, align 8
  %112 = mul i64 %110, %111
  %113 = add i64 %101, %112
  store i64 %113, i64* %22, align 8
  store i32 0, i32* %19, align 4
  br label %114

114:                                              ; preds = %133, %65
  %115 = load i32, i32* %19, align 4
  %116 = zext i32 %115 to i64
  %117 = load i64, i64* %20, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %114
  %120 = load i8*, i8** %7, align 8
  %121 = load i64, i64* %21, align 8
  %122 = load i32, i32* %19, align 4
  %123 = zext i32 %122 to i64
  %124 = add i64 %121, %123
  %125 = getelementptr inbounds i8, i8* %120, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = load i8*, i8** %6, align 8
  %128 = load i64, i64* %22, align 8
  %129 = load i32, i32* %19, align 4
  %130 = zext i32 %129 to i64
  %131 = add i64 %128, %130
  %132 = getelementptr inbounds i8, i8* %127, i64 %131
  store i8 %126, i8* %132, align 1
  br label %133

133:                                              ; preds = %119
  %134 = load i32, i32* %19, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %19, align 4
  br label %114

136:                                              ; preds = %114
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %17, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %17, align 4
  br label %58

140:                                              ; preds = %58
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %18, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %18, align 4
  br label %50

144:                                              ; preds = %50
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %16, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %16, align 4
  br label %43

148:                                              ; preds = %43
  br label %251

149:                                              ; preds = %5
  store i32 0, i32* %16, align 4
  br label %150

150:                                              ; preds = %247, %149
  %151 = load i32, i32* %16, align 4
  %152 = icmp ult i32 %151, 7
  br i1 %152, label %153, label %250

153:                                              ; preds = %150
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %16, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = mul i32 %154, %158
  store i32 %159, i32* %26, align 4
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %8, align 4
  %162 = mul i32 %160, %161
  store i32 %162, i32* %27, align 4
  store i32 0, i32* %24, align 4
  br label %163

163:                                              ; preds = %243, %153
  %164 = load i32, i32* %24, align 4
  %165 = load i32, i32* %16, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds [7 x i32], [7 x i32]* %12, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp ult i32 %164, %168
  br i1 %169, label %170, label %246

170:                                              ; preds = %163
  store i32 0, i32* %23, align 4
  br label %171

171:                                              ; preds = %239, %170
  %172 = load i32, i32* %23, align 4
  %173 = load i32, i32* %16, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = icmp ult i32 %172, %176
  br i1 %177, label %178, label %242

178:                                              ; preds = %171
  %179 = load i32*, i32** @ADAM7_IY, align 8
  %180 = load i32, i32* %16, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %24, align 4
  %185 = load i32*, i32** @ADAM7_DY, align 8
  %186 = load i32, i32* %16, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = mul i32 %184, %189
  %191 = add i32 %183, %190
  %192 = load i32, i32* %27, align 4
  %193 = mul i32 %191, %192
  %194 = load i32*, i32** @ADAM7_IX, align 8
  %195 = load i32, i32* %16, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %23, align 4
  %200 = load i32*, i32** @ADAM7_DX, align 8
  %201 = load i32, i32* %16, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = mul i32 %199, %204
  %206 = add i32 %198, %205
  %207 = load i32, i32* %10, align 4
  %208 = mul i32 %206, %207
  %209 = add i32 %193, %208
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %29, align 8
  %211 = load i32, i32* %16, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [8 x i64], [8 x i64]* %15, i64 0, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = mul i64 8, %214
  %216 = load i32, i32* %24, align 4
  %217 = load i32, i32* %26, align 4
  %218 = mul i32 %216, %217
  %219 = load i32, i32* %23, align 4
  %220 = load i32, i32* %10, align 4
  %221 = mul i32 %219, %220
  %222 = add i32 %218, %221
  %223 = zext i32 %222 to i64
  %224 = add i64 %215, %223
  store i64 %224, i64* %28, align 8
  store i32 0, i32* %25, align 4
  br label %225

225:                                              ; preds = %235, %178
  %226 = load i32, i32* %25, align 4
  %227 = load i32, i32* %10, align 4
  %228 = icmp ult i32 %226, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %225
  %230 = load i8*, i8** %7, align 8
  %231 = call zeroext i8 @readBitFromReversedStream(i64* %29, i8* %230)
  store i8 %231, i8* %30, align 1
  %232 = load i8*, i8** %6, align 8
  %233 = load i8, i8* %30, align 1
  %234 = call i32 @setBitOfReversedStream(i64* %28, i8* %232, i8 zeroext %233)
  br label %235

235:                                              ; preds = %229
  %236 = load i32, i32* %25, align 4
  %237 = add i32 %236, 1
  store i32 %237, i32* %25, align 4
  br label %225

238:                                              ; preds = %225
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %23, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %23, align 4
  br label %171

242:                                              ; preds = %171
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %24, align 4
  %245 = add i32 %244, 1
  store i32 %245, i32* %24, align 4
  br label %163

246:                                              ; preds = %163
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %16, align 4
  %249 = add i32 %248, 1
  store i32 %249, i32* %16, align 4
  br label %150

250:                                              ; preds = %150
  br label %251

251:                                              ; preds = %250, %148
  ret void
}

declare dso_local i32 @Adam7_getpassvalues(i32*, i32*, i64*, i64*, i64*, i32, i32, i32) #1

declare dso_local zeroext i8 @readBitFromReversedStream(i64*, i8*) #1

declare dso_local i32 @setBitOfReversedStream(i64*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
