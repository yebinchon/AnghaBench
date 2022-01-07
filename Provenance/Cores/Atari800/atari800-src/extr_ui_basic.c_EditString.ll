; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_EditString.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_EditString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILENAME_MAX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*, i32, i32, i32, i32, i8*, i32)* @EditString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EditString(i32 %0, i32 %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i32 %9, i32* %21, align 4
  %28 = load i32, i32* @FILENAME_MAX, align 4
  %29 = zext i32 %28 to i64
  %30 = load i8*, i8** %15, align 8
  %31 = call i32 @strlen(i8* %30)
  store i32 %31, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %32

32:                                               ; preds = %282, %10
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* %17, align 4
  %38 = add nsw i32 %37, 1
  %39 = load i32, i32* %19, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %18, align 4
  %42 = add nsw i32 %41, 2
  %43 = call i32 @Box(i32 %33, i32 %34, i32 %35, i32 %36, i32 %40, i32 %42)
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i8*, i8** %14, align 8
  %47 = load i32, i32* %17, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %19, align 4
  %51 = call i32 @Print(i32 %44, i32 %45, i8* %46, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %22, align 4
  %53 = load i32, i32* %23, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* %19, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %32
  %58 = load i32, i32* %22, align 4
  %59 = load i32, i32* %19, align 4
  %60 = sub nsw i32 %58, %59
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %23, align 4
  br label %69

62:                                               ; preds = %32
  %63 = load i32, i32* %22, align 4
  %64 = load i32, i32* %23, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* %22, align 4
  store i32 %67, i32* %23, align 4
  br label %68

68:                                               ; preds = %66, %62
  br label %69

69:                                               ; preds = %68, %57
  %70 = load i8*, i8** %15, align 8
  %71 = load i32, i32* %23, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8* %73, i8** %25, align 8
  store i32 0, i32* %24, align 4
  br label %74

74:                                               ; preds = %131, %69
  %75 = load i32, i32* %24, align 4
  %76 = load i32, i32* %19, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %134

78:                                               ; preds = %74
  %79 = load i32, i32* %23, align 4
  %80 = load i32, i32* %24, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %22, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %78
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i8*, i8** %25, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load i8*, i8** %25, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %25, align 8
  %94 = load i8, i8* %92, align 1
  %95 = sext i8 %94 to i32
  br label %97

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %91
  %98 = phi i32 [ %95, %91 ], [ 32, %96 ]
  %99 = trunc i32 %98 to i8
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* %24, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 %104, 1
  %106 = call i32 @Plot(i32 %85, i32 %86, i8 signext %99, i32 %103, i32 %105)
  br label %130

107:                                              ; preds = %78
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i8*, i8** %25, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load i8*, i8** %25, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %25, align 8
  %117 = load i8, i8* %115, align 1
  %118 = sext i8 %117 to i32
  br label %120

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119, %114
  %121 = phi i32 [ %118, %114 ], [ 32, %119 ]
  %122 = trunc i32 %121 to i8
  %123 = load i32, i32* %17, align 4
  %124 = add nsw i32 %123, 1
  %125 = load i32, i32* %24, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %127, 1
  %129 = call i32 @Plot(i32 %108, i32 %109, i8 signext %122, i32 %126, i32 %128)
  br label %130

130:                                              ; preds = %120, %97
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %24, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %24, align 4
  br label %74

134:                                              ; preds = %74
  %135 = call i32 (...) @GetKeyPress()
  store i32 %135, i32* %26, align 4
  %136 = load i32, i32* %26, align 4
  switch i32 %136, label %243 [
    i32 30, label %137
    i32 31, label %144
    i32 126, label %156
    i32 254, label %180
    i32 125, label %207
    i32 156, label %207
    i32 155, label %210
    i32 27, label %241
  ]

137:                                              ; preds = %134
  %138 = load i32, i32* %22, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* %22, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %22, align 4
  br label %143

143:                                              ; preds = %140, %137
  br label %282

144:                                              ; preds = %134
  %145 = load i8*, i8** %15, align 8
  %146 = load i32, i32* %22, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %144
  %153 = load i32, i32* %22, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %22, align 4
  br label %155

155:                                              ; preds = %152, %144
  br label %282

156:                                              ; preds = %134
  %157 = load i32, i32* %22, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %156
  %160 = load i32, i32* %22, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %22, align 4
  %162 = load i8*, i8** %15, align 8
  %163 = load i32, i32* %22, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  store i8* %165, i8** %25, align 8
  br label %166

166:                                              ; preds = %172, %159
  %167 = load i8*, i8** %25, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  %169 = load i8, i8* %168, align 1
  %170 = load i8*, i8** %25, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 0
  store i8 %169, i8* %171, align 1
  br label %172

172:                                              ; preds = %166
  %173 = load i8*, i8** %25, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %25, align 8
  %175 = load i8, i8* %173, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %166, label %178

178:                                              ; preds = %172
  br label %179

179:                                              ; preds = %178, %156
  br label %282

180:                                              ; preds = %134
  %181 = load i8*, i8** %15, align 8
  %182 = load i32, i32* %22, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %206

188:                                              ; preds = %180
  %189 = load i8*, i8** %15, align 8
  %190 = load i32, i32* %22, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  store i8* %192, i8** %25, align 8
  br label %193

193:                                              ; preds = %199, %188
  %194 = load i8*, i8** %25, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  %196 = load i8, i8* %195, align 1
  %197 = load i8*, i8** %25, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  store i8 %196, i8* %198, align 1
  br label %199

199:                                              ; preds = %193
  %200 = load i8*, i8** %25, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %25, align 8
  %202 = load i8, i8* %200, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %193, label %205

205:                                              ; preds = %199
  br label %206

206:                                              ; preds = %205, %180
  br label %282

207:                                              ; preds = %134, %134
  store i32 0, i32* %22, align 4
  %208 = load i8*, i8** %15, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 0
  store i8 0, i8* %209, align 1
  br label %282

210:                                              ; preds = %134
  %211 = load i32, i32* %21, align 4
  %212 = icmp sge i32 %211, 0
  br i1 %212, label %213, label %239

213:                                              ; preds = %210
  %214 = load i8*, i8** %15, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 0
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %213
  %220 = load i32, i32* @FALSE, align 4
  store i32 %220, i32* %11, align 4
  br label %283

221:                                              ; preds = %213
  %222 = load i8*, i8** %15, align 8
  %223 = load i8*, i8** %15, align 8
  %224 = call i32 @strlen(i8* %223)
  %225 = sub nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %222, i64 %226
  %228 = load i8, i8* %227, align 1
  store i8 %228, i8* %27, align 1
  %229 = load i8, i8* %27, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp ne i32 %230, 47
  br i1 %231, label %232, label %236

232:                                              ; preds = %221
  %233 = load i8, i8* %27, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp ne i32 %234, 92
  br label %236

236:                                              ; preds = %232, %221
  %237 = phi i1 [ false, %221 ], [ %235, %232 ]
  %238 = zext i1 %237 to i32
  store i32 %238, i32* %11, align 4
  br label %283

239:                                              ; preds = %210
  %240 = load i32, i32* @TRUE, align 4
  store i32 %240, i32* %11, align 4
  br label %283

241:                                              ; preds = %134
  %242 = load i32, i32* @FALSE, align 4
  store i32 %242, i32* %11, align 4
  br label %283

243:                                              ; preds = %134
  %244 = load i8*, i8** %15, align 8
  %245 = call i32 @strlen(i8* %244)
  store i32 %245, i32* %24, align 4
  %246 = load i32, i32* %24, align 4
  %247 = add nsw i32 %246, 1
  %248 = load i32, i32* %16, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %281

250:                                              ; preds = %243
  %251 = load i32, i32* %26, align 4
  %252 = icmp sge i32 %251, 32
  br i1 %252, label %253, label %281

253:                                              ; preds = %250
  %254 = load i32, i32* %26, align 4
  %255 = icmp slt i32 %254, 127
  br i1 %255, label %256, label %281

256:                                              ; preds = %253
  br label %257

257:                                              ; preds = %268, %256
  %258 = load i8*, i8** %15, align 8
  %259 = load i32, i32* %24, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = load i8*, i8** %15, align 8
  %264 = load i32, i32* %24, align 4
  %265 = add nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %263, i64 %266
  store i8 %262, i8* %267, align 1
  br label %268

268:                                              ; preds = %257
  %269 = load i32, i32* %24, align 4
  %270 = add nsw i32 %269, -1
  store i32 %270, i32* %24, align 4
  %271 = load i32, i32* %22, align 4
  %272 = icmp sge i32 %270, %271
  br i1 %272, label %257, label %273

273:                                              ; preds = %268
  %274 = load i32, i32* %26, align 4
  %275 = trunc i32 %274 to i8
  %276 = load i8*, i8** %15, align 8
  %277 = load i32, i32* %22, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %22, align 4
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i8, i8* %276, i64 %279
  store i8 %275, i8* %280, align 1
  br label %281

281:                                              ; preds = %273, %253, %250, %243
  br label %282

282:                                              ; preds = %281, %207, %206, %179, %155, %143
  br label %32

283:                                              ; preds = %241, %239, %236, %219
  %284 = load i32, i32* %11, align 4
  ret i32 %284
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Box(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Print(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @Plot(i32, i32, i8 signext, i32, i32) #1

declare dso_local i32 @GetKeyPress(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
