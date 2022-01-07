; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c__gen_sign_buffer.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c__gen_sign_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_gen_sign_buffer.glyph_dx = internal constant [8 x i32] [i32 0, i32 0, i32 -1, i32 1, i32 1, i32 0, i32 -1, i32 0], align 16
@_gen_sign_buffer.glyph_dz = internal constant [8 x i32] [i32 1, i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 1], align 16
@_gen_sign_buffer.line_dx = internal constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 -1], align 16
@_gen_sign_buffer.line_dy = internal constant [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0], align 16
@_gen_sign_buffer.line_dz = internal constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 -1, i32 0], align 16
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_gen_sign_buffer(i32* %0, float %1, float %2, float %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca [1024 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %6
  %40 = load i32, i32* %12, align 4
  %41 = icmp sge i32 %40, 8
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %6
  store i32 0, i32* %7, align 4
  br label %265

43:                                               ; preds = %39
  store i32 0, i32* %14, align 4
  store float 6.400000e+01, float* %15, align 4
  store float 1.250000e+00, float* %16, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = load float, float* %15, align 4
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %47 = call i32 @wrap(i8* %44, float %45, i8* %46, i32 1024)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = call i32 @MIN(i32 %48, float 5.000000e+00)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* @_gen_sign_buffer.glyph_dx, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* @_gen_sign_buffer.glyph_dz, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* @_gen_sign_buffer.line_dx, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %21, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* @_gen_sign_buffer.line_dy, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* @_gen_sign_buffer.line_dz, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %23, align 4
  %70 = load float, float* %15, align 4
  %71 = fdiv float %70, 1.000000e+01
  %72 = fpext float %71 to double
  %73 = fdiv double 1.000000e+00, %72
  %74 = fptrunc double %73 to float
  store float %74, float* %24, align 4
  %75 = load float, float* %9, align 4
  %76 = load float, float* %24, align 4
  %77 = load i32, i32* %18, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sitofp i32 %78 to float
  %80 = fmul float %76, %79
  %81 = load float, float* %16, align 4
  %82 = fdiv float %81, 2.000000e+00
  %83 = fmul float %80, %82
  %84 = load i32, i32* %21, align 4
  %85 = sitofp i32 %84 to float
  %86 = fmul float %83, %85
  %87 = fsub float %75, %86
  store float %87, float* %25, align 4
  %88 = load float, float* %10, align 4
  %89 = load float, float* %24, align 4
  %90 = load i32, i32* %18, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sitofp i32 %91 to float
  %93 = fmul float %89, %92
  %94 = load float, float* %16, align 4
  %95 = fdiv float %94, 2.000000e+00
  %96 = fmul float %93, %95
  %97 = load i32, i32* %22, align 4
  %98 = sitofp i32 %97 to float
  %99 = fmul float %96, %98
  %100 = fsub float %88, %99
  store float %100, float* %26, align 4
  %101 = load float, float* %11, align 4
  %102 = load float, float* %24, align 4
  %103 = load i32, i32* %18, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sitofp i32 %104 to float
  %106 = fmul float %102, %105
  %107 = load float, float* %16, align 4
  %108 = fdiv float %107, 2.000000e+00
  %109 = fmul float %106, %108
  %110 = load i32, i32* %23, align 4
  %111 = sitofp i32 %110 to float
  %112 = fmul float %109, %111
  %113 = fsub float %101, %112
  store float %113, float* %27, align 4
  %114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %115 = call i8* @tokenize(i8* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %28)
  store i8* %115, i8** %29, align 8
  br label %116

116:                                              ; preds = %262, %43
  %117 = load i8*, i8** %29, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %263

119:                                              ; preds = %116
  %120 = load i8*, i8** %29, align 8
  %121 = call i32 @strlen(i8* %120)
  store i32 %121, i32* %30, align 4
  %122 = load i8*, i8** %29, align 8
  %123 = call i32 @string_width(i8* %122)
  store i32 %123, i32* %31, align 4
  %124 = load i32, i32* %31, align 4
  %125 = load float, float* %15, align 4
  %126 = call i32 @MIN(i32 %124, float %125)
  store i32 %126, i32* %31, align 4
  %127 = load float, float* %25, align 4
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %31, align 4
  %130 = mul nsw i32 %128, %129
  %131 = sitofp i32 %130 to float
  %132 = load float, float* %15, align 4
  %133 = fdiv float %131, %132
  %134 = fdiv float %133, 2.000000e+00
  %135 = fsub float %127, %134
  store float %135, float* %32, align 4
  %136 = load float, float* %26, align 4
  store float %136, float* %33, align 4
  %137 = load float, float* %27, align 4
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %31, align 4
  %140 = mul nsw i32 %138, %139
  %141 = sitofp i32 %140 to float
  %142 = load float, float* %15, align 4
  %143 = fdiv float %141, %142
  %144 = fdiv float %143, 2.000000e+00
  %145 = fsub float %137, %144
  store float %145, float* %34, align 4
  store i32 0, i32* %35, align 4
  br label %146

146:                                              ; preds = %228, %119
  %147 = load i32, i32* %35, align 4
  %148 = load i32, i32* %30, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %231

150:                                              ; preds = %146
  %151 = load i8*, i8** %29, align 8
  %152 = load i32, i32* %35, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = call i32 @char_width(i8 signext %155)
  store i32 %156, i32* %36, align 4
  %157 = load i32, i32* %36, align 4
  %158 = load i32, i32* %31, align 4
  %159 = sub nsw i32 %158, %157
  store i32 %159, i32* %31, align 4
  %160 = load i32, i32* %31, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %150
  br label %231

163:                                              ; preds = %150
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %36, align 4
  %166 = mul nsw i32 %164, %165
  %167 = sitofp i32 %166 to float
  %168 = load float, float* %15, align 4
  %169 = fdiv float %167, %168
  %170 = fdiv float %169, 2.000000e+00
  %171 = load float, float* %32, align 4
  %172 = fadd float %171, %170
  store float %172, float* %32, align 4
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %36, align 4
  %175 = mul nsw i32 %173, %174
  %176 = sitofp i32 %175 to float
  %177 = load float, float* %15, align 4
  %178 = fdiv float %176, %177
  %179 = fdiv float %178, 2.000000e+00
  %180 = load float, float* %34, align 4
  %181 = fadd float %180, %179
  store float %181, float* %34, align 4
  %182 = load i8*, i8** %29, align 8
  %183 = load i32, i32* %35, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 32
  br i1 %188, label %189, label %209

189:                                              ; preds = %163
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* %14, align 4
  %192 = mul nsw i32 %191, 30
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load float, float* %32, align 4
  %196 = load float, float* %33, align 4
  %197 = load float, float* %34, align 4
  %198 = load float, float* %24, align 4
  %199 = fdiv float %198, 2.000000e+00
  %200 = load i32, i32* %12, align 4
  %201 = load i8*, i8** %29, align 8
  %202 = load i32, i32* %35, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = call i32 @make_character_3d(i32* %194, float %195, float %196, float %197, float %199, i32 %200, i8 signext %205)
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %14, align 4
  br label %209

209:                                              ; preds = %189, %163
  %210 = load i32, i32* %19, align 4
  %211 = load i32, i32* %36, align 4
  %212 = mul nsw i32 %210, %211
  %213 = sitofp i32 %212 to float
  %214 = load float, float* %15, align 4
  %215 = fdiv float %213, %214
  %216 = fdiv float %215, 2.000000e+00
  %217 = load float, float* %32, align 4
  %218 = fadd float %217, %216
  store float %218, float* %32, align 4
  %219 = load i32, i32* %20, align 4
  %220 = load i32, i32* %36, align 4
  %221 = mul nsw i32 %219, %220
  %222 = sitofp i32 %221 to float
  %223 = load float, float* %15, align 4
  %224 = fdiv float %222, %223
  %225 = fdiv float %224, 2.000000e+00
  %226 = load float, float* %34, align 4
  %227 = fadd float %226, %225
  store float %227, float* %34, align 4
  br label %228

228:                                              ; preds = %209
  %229 = load i32, i32* %35, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %35, align 4
  br label %146

231:                                              ; preds = %162, %146
  %232 = load float, float* %24, align 4
  %233 = load float, float* %16, align 4
  %234 = fmul float %232, %233
  %235 = load i32, i32* %21, align 4
  %236 = sitofp i32 %235 to float
  %237 = fmul float %234, %236
  %238 = load float, float* %25, align 4
  %239 = fadd float %238, %237
  store float %239, float* %25, align 4
  %240 = load float, float* %24, align 4
  %241 = load float, float* %16, align 4
  %242 = fmul float %240, %241
  %243 = load i32, i32* %22, align 4
  %244 = sitofp i32 %243 to float
  %245 = fmul float %242, %244
  %246 = load float, float* %26, align 4
  %247 = fadd float %246, %245
  store float %247, float* %26, align 4
  %248 = load float, float* %24, align 4
  %249 = load float, float* %16, align 4
  %250 = fmul float %248, %249
  %251 = load i32, i32* %23, align 4
  %252 = sitofp i32 %251 to float
  %253 = fmul float %250, %252
  %254 = load float, float* %27, align 4
  %255 = fadd float %254, %253
  store float %255, float* %27, align 4
  %256 = call i8* @tokenize(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %28)
  store i8* %256, i8** %29, align 8
  %257 = load i32, i32* %18, align 4
  %258 = add nsw i32 %257, -1
  store i32 %258, i32* %18, align 4
  %259 = load i32, i32* %18, align 4
  %260 = icmp sle i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %231
  br label %263

262:                                              ; preds = %231
  br label %116

263:                                              ; preds = %261, %116
  %264 = load i32, i32* %14, align 4
  store i32 %264, i32* %7, align 4
  br label %265

265:                                              ; preds = %263, %42
  %266 = load i32, i32* %7, align 4
  ret i32 %266
}

declare dso_local i32 @wrap(i8*, float, i8*, i32) #1

declare dso_local i32 @MIN(i32, float) #1

declare dso_local i8* @tokenize(i8*, i8*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @string_width(i8*) #1

declare dso_local i32 @char_width(i8 signext) #1

declare dso_local i32 @make_character_3d(i32*, float, float, float, float, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
