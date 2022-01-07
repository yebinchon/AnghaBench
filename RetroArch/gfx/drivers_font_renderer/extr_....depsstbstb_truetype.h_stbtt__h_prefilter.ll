; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt__h_prefilter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt__h_prefilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STBTT_MAX_OVERSAMPLE = common dso_local global i32 0, align 4
@STBTT__OVER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32)* @stbtt__h_prefilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbtt__h_prefilter(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* @STBTT_MAX_OVERSAMPLE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sub i32 %21, %22
  store i32 %23, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %253, %5
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %256

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @memset(i8* %20, i32 0, i32 %29)
  store i32 0, i32* %16, align 4
  %31 = load i32, i32* %10, align 4
  switch i32 %31, label %167 [
    i32 2, label %32
    i32 3, label %77
    i32 4, label %122
  ]

32:                                               ; preds = %28
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %73, %32
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @STBTT__OVER_MASK, align 4
  %46 = and i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %20, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = sub nsw i32 %43, %50
  %52 = load i32, i32* %16, align 4
  %53 = add i32 %52, %51
  store i32 %53, i32* %16, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add i32 %59, %60
  %62 = load i32, i32* @STBTT__OVER_MASK, align 4
  %63 = and i32 %61, %62
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %20, i64 %64
  store i8 %58, i8* %65, align 1
  %66 = load i32, i32* %16, align 4
  %67 = udiv i32 %66, 2
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 %68, i8* %72, align 1
  br label %73

73:                                               ; preds = %37
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %33

76:                                               ; preds = %33
  br label %213

77:                                               ; preds = %28
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %118, %77
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %121

82:                                               ; preds = %78
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @STBTT__OVER_MASK, align 4
  %91 = and i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %20, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = sub nsw i32 %88, %95
  %97 = load i32, i32* %16, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %16, align 4
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %10, align 4
  %106 = add i32 %104, %105
  %107 = load i32, i32* @STBTT__OVER_MASK, align 4
  %108 = and i32 %106, %107
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %20, i64 %109
  store i8 %103, i8* %110, align 1
  %111 = load i32, i32* %16, align 4
  %112 = udiv i32 %111, 3
  %113 = trunc i32 %112 to i8
  %114 = load i8*, i8** %6, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 %113, i8* %117, align 1
  br label %118

118:                                              ; preds = %82
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %78

121:                                              ; preds = %78
  br label %213

122:                                              ; preds = %28
  store i32 0, i32* %15, align 4
  br label %123

123:                                              ; preds = %163, %122
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp sle i32 %124, %125
  br i1 %126, label %127, label %166

127:                                              ; preds = %123
  %128 = load i8*, i8** %6, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* @STBTT__OVER_MASK, align 4
  %136 = and i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %20, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = sub nsw i32 %133, %140
  %142 = load i32, i32* %16, align 4
  %143 = add i32 %142, %141
  store i32 %143, i32* %16, align 4
  %144 = load i8*, i8** %6, align 8
  %145 = load i32, i32* %15, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %10, align 4
  %151 = add i32 %149, %150
  %152 = load i32, i32* @STBTT__OVER_MASK, align 4
  %153 = and i32 %151, %152
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %20, i64 %154
  store i8 %148, i8* %155, align 1
  %156 = load i32, i32* %16, align 4
  %157 = udiv i32 %156, 4
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %6, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  store i8 %158, i8* %162, align 1
  br label %163

163:                                              ; preds = %127
  %164 = load i32, i32* %15, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %15, align 4
  br label %123

166:                                              ; preds = %123
  br label %213

167:                                              ; preds = %28
  store i32 0, i32* %15, align 4
  br label %168

168:                                              ; preds = %209, %167
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp sle i32 %169, %170
  br i1 %171, label %172, label %212

172:                                              ; preds = %168
  %173 = load i8*, i8** %6, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* @STBTT__OVER_MASK, align 4
  %181 = and i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %20, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = sub nsw i32 %178, %185
  %187 = load i32, i32* %16, align 4
  %188 = add i32 %187, %186
  store i32 %188, i32* %16, align 4
  %189 = load i8*, i8** %6, align 8
  %190 = load i32, i32* %15, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %10, align 4
  %196 = add i32 %194, %195
  %197 = load i32, i32* @STBTT__OVER_MASK, align 4
  %198 = and i32 %196, %197
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %20, i64 %199
  store i8 %193, i8* %200, align 1
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %10, align 4
  %203 = udiv i32 %201, %202
  %204 = trunc i32 %203 to i8
  %205 = load i8*, i8** %6, align 8
  %206 = load i32, i32* %15, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  store i8 %204, i8* %208, align 1
  br label %209

209:                                              ; preds = %172
  %210 = load i32, i32* %15, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %15, align 4
  br label %168

212:                                              ; preds = %168
  br label %213

213:                                              ; preds = %212, %166, %121, %76
  br label %214

214:                                              ; preds = %245, %213
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %248

218:                                              ; preds = %214
  %219 = load i8*, i8** %6, align 8
  %220 = load i32, i32* %15, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = icmp eq i32 %224, 0
  %226 = zext i1 %225 to i32
  %227 = call i32 @retro_assert(i32 %226)
  %228 = load i32, i32* %15, align 4
  %229 = load i32, i32* @STBTT__OVER_MASK, align 4
  %230 = and i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %20, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = load i32, i32* %16, align 4
  %236 = sub i32 %235, %234
  store i32 %236, i32* %16, align 4
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* %10, align 4
  %239 = udiv i32 %237, %238
  %240 = trunc i32 %239 to i8
  %241 = load i8*, i8** %6, align 8
  %242 = load i32, i32* %15, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %241, i64 %243
  store i8 %240, i8* %244, align 1
  br label %245

245:                                              ; preds = %218
  %246 = load i32, i32* %15, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %15, align 4
  br label %214

248:                                              ; preds = %214
  %249 = load i32, i32* %9, align 4
  %250 = load i8*, i8** %6, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i8, i8* %250, i64 %251
  store i8* %252, i8** %6, align 8
  br label %253

253:                                              ; preds = %248
  %254 = load i32, i32* %11, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %11, align 4
  br label %24

256:                                              ; preds = %24
  %257 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %257)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @retro_assert(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
