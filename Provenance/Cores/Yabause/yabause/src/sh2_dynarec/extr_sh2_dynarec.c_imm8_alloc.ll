; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_imm8_alloc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_imm8_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i32 }

@rs1 = common dso_local global i64* null, align 8
@rt1 = common dso_local global i64* null, align 8
@TBIT = common dso_local global i64 0, align 8
@opcode = common dso_local global i32* null, align 8
@imm = common dso_local global i32* null, align 8
@SR = common dso_local global i64 0, align 8
@minimum_free_regs = common dso_local global i32* null, align 8
@opcode2 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imm8_alloc(%struct.regstat* %0, i32 %1) #0 {
  %3 = alloca %struct.regstat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regstat* %0, %struct.regstat** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.regstat*, %struct.regstat** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i64*, i64** @rs1, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @alloc_reg(%struct.regstat* %7, i32 %8, i64 %13)
  %15 = load i64*, i64** @rt1, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %2
  %22 = load i64*, i64** @rt1, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TBIT, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.regstat*, %struct.regstat** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i64*, i64** @rt1, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @alloc_reg(%struct.regstat* %30, i32 %31, i64 %36)
  br label %38

38:                                               ; preds = %29, %21, %2
  %39 = load i32*, i32** @opcode, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 7
  br i1 %44, label %45, label %85

45:                                               ; preds = %38
  %46 = load %struct.regstat*, %struct.regstat** %3, align 8
  %47 = load i64*, i64** @rs1, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @is_const(%struct.regstat* %46, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %45
  %55 = load %struct.regstat*, %struct.regstat** %3, align 8
  %56 = load i64*, i64** @rs1, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @get_const(%struct.regstat* %55, i64 %60)
  store i32 %61, i32* %5, align 4
  %62 = load %struct.regstat*, %struct.regstat** %3, align 8
  %63 = load i64*, i64** @rt1, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32*, i32** @imm, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %68, %73
  %75 = call i32 @set_const(%struct.regstat* %62, i64 %67, i32 %74)
  br label %84

76:                                               ; preds = %45
  %77 = load %struct.regstat*, %struct.regstat** %3, align 8
  %78 = load i64*, i64** @rt1, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @clear_const(%struct.regstat* %77, i64 %82)
  br label %84

84:                                               ; preds = %76, %54
  br label %252

85:                                               ; preds = %38
  %86 = load i32*, i32** @opcode, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 8
  br i1 %91, label %92, label %107

92:                                               ; preds = %85
  %93 = load %struct.regstat*, %struct.regstat** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i64, i64* @SR, align 8
  %96 = call i32 @alloc_reg(%struct.regstat* %93, i32 %94, i64 %95)
  %97 = load %struct.regstat*, %struct.regstat** %3, align 8
  %98 = load i64, i64* @SR, align 8
  %99 = call i32 @dirty_reg(%struct.regstat* %97, i64 %98)
  %100 = load %struct.regstat*, %struct.regstat** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @alloc_reg_temp(%struct.regstat* %100, i32 %101, i32 -1)
  %103 = load i32*, i32** @minimum_free_regs, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 1, i32* %106, align 4
  br label %251

107:                                              ; preds = %85
  %108 = load i32*, i32** @opcode, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 12
  br i1 %113, label %114, label %229

114:                                              ; preds = %107
  %115 = load i32*, i32** @opcode2, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 8
  br i1 %120, label %121, label %136

121:                                              ; preds = %114
  %122 = load %struct.regstat*, %struct.regstat** %3, align 8
  %123 = load i32, i32* %4, align 4
  %124 = load i64, i64* @SR, align 8
  %125 = call i32 @alloc_reg(%struct.regstat* %122, i32 %123, i64 %124)
  %126 = load %struct.regstat*, %struct.regstat** %3, align 8
  %127 = load i64, i64* @SR, align 8
  %128 = call i32 @dirty_reg(%struct.regstat* %126, i64 %127)
  %129 = load %struct.regstat*, %struct.regstat** %3, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @alloc_reg_temp(%struct.regstat* %129, i32 %130, i32 -1)
  %132 = load i32*, i32** @minimum_free_regs, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 1, i32* %135, align 4
  br label %228

136:                                              ; preds = %114
  %137 = load %struct.regstat*, %struct.regstat** %3, align 8
  %138 = load i64*, i64** @rs1, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @is_const(%struct.regstat* %137, i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %219

145:                                              ; preds = %136
  %146 = load %struct.regstat*, %struct.regstat** %3, align 8
  %147 = load i64*, i64** @rs1, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @get_const(%struct.regstat* %146, i64 %151)
  store i32 %152, i32* %6, align 4
  %153 = load i32*, i32** @opcode2, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 9
  br i1 %158, label %159, label %174

159:                                              ; preds = %145
  %160 = load %struct.regstat*, %struct.regstat** %3, align 8
  %161 = load i64*, i64** @rt1, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = load i32*, i32** @imm, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %166, %171
  %173 = call i32 @set_const(%struct.regstat* %160, i64 %165, i32 %172)
  br label %174

174:                                              ; preds = %159, %145
  %175 = load i32*, i32** @opcode2, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 10
  br i1 %180, label %181, label %196

181:                                              ; preds = %174
  %182 = load %struct.regstat*, %struct.regstat** %3, align 8
  %183 = load i64*, i64** @rt1, align 8
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = load i32*, i32** @imm, align 8
  %190 = load i32, i32* %4, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = xor i32 %188, %193
  %195 = call i32 @set_const(%struct.regstat* %182, i64 %187, i32 %194)
  br label %196

196:                                              ; preds = %181, %174
  %197 = load i32*, i32** @opcode2, align 8
  %198 = load i32, i32* %4, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 11
  br i1 %202, label %203, label %218

203:                                              ; preds = %196
  %204 = load %struct.regstat*, %struct.regstat** %3, align 8
  %205 = load i64*, i64** @rt1, align 8
  %206 = load i32, i32* %4, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* %6, align 4
  %211 = load i32*, i32** @imm, align 8
  %212 = load i32, i32* %4, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %210, %215
  %217 = call i32 @set_const(%struct.regstat* %204, i64 %209, i32 %216)
  br label %218

218:                                              ; preds = %203, %196
  br label %227

219:                                              ; preds = %136
  %220 = load %struct.regstat*, %struct.regstat** %3, align 8
  %221 = load i64*, i64** @rt1, align 8
  %222 = load i32, i32* %4, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %221, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = call i32 @clear_const(%struct.regstat* %220, i64 %225)
  br label %227

227:                                              ; preds = %219, %218
  br label %228

228:                                              ; preds = %227, %121
  br label %250

229:                                              ; preds = %107
  %230 = load i32*, i32** @opcode, align 8
  %231 = load i32, i32* %4, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 14
  %236 = zext i1 %235 to i32
  %237 = call i32 @assert(i32 %236)
  %238 = load %struct.regstat*, %struct.regstat** %3, align 8
  %239 = load i64*, i64** @rt1, align 8
  %240 = load i32, i32* %4, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %239, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = load i32*, i32** @imm, align 8
  %245 = load i32, i32* %4, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @set_const(%struct.regstat* %238, i64 %243, i32 %248)
  br label %250

250:                                              ; preds = %229, %228
  br label %251

251:                                              ; preds = %250, %92
  br label %252

252:                                              ; preds = %251, %84
  %253 = load i64*, i64** @rt1, align 8
  %254 = load i32, i32* %4, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i64, i64* %253, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = icmp sge i64 %257, 0
  br i1 %258, label %259, label %275

259:                                              ; preds = %252
  %260 = load i64*, i64** @rt1, align 8
  %261 = load i32, i32* %4, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %260, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @TBIT, align 8
  %266 = icmp ne i64 %264, %265
  br i1 %266, label %267, label %275

267:                                              ; preds = %259
  %268 = load %struct.regstat*, %struct.regstat** %3, align 8
  %269 = load i64*, i64** @rt1, align 8
  %270 = load i32, i32* %4, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i64, i64* %269, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @dirty_reg(%struct.regstat* %268, i64 %273)
  br label %275

275:                                              ; preds = %267, %259, %252
  ret void
}

declare dso_local i32 @alloc_reg(%struct.regstat*, i32, i64) #1

declare dso_local i64 @is_const(%struct.regstat*, i64) #1

declare dso_local i32 @get_const(%struct.regstat*, i64) #1

declare dso_local i32 @set_const(%struct.regstat*, i64, i32) #1

declare dso_local i32 @clear_const(%struct.regstat*, i64) #1

declare dso_local i32 @dirty_reg(%struct.regstat*, i64) #1

declare dso_local i32 @alloc_reg_temp(%struct.regstat*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
