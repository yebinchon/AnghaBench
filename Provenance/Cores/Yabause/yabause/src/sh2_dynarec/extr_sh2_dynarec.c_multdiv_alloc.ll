; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_multdiv_alloc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_multdiv_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i64 }

@opcode = common dso_local global i32* null, align 8
@opcode2 = common dso_local global i32* null, align 8
@rs1 = common dso_local global i64* null, align 8
@rs2 = common dso_local global i64* null, align 8
@MACL = common dso_local global i64 0, align 8
@MACH = common dso_local global i64 0, align 8
@SR = common dso_local global i64 0, align 8
@minimum_free_regs = common dso_local global i32* null, align 8
@EDX = common dso_local global i32 0, align 4
@EAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @multdiv_alloc(%struct.regstat* %0, i32 %1) #0 {
  %3 = alloca %struct.regstat*, align 8
  %4 = alloca i32, align 4
  store %struct.regstat* %0, %struct.regstat** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** @opcode, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %103

11:                                               ; preds = %2
  %12 = load i32*, i32** @opcode2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 7
  br i1 %17, label %18, label %59

18:                                               ; preds = %11
  %19 = load %struct.regstat*, %struct.regstat** %3, align 8
  %20 = load i64*, i64** @rs1, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @clear_const(%struct.regstat* %19, i64 %24)
  %26 = load %struct.regstat*, %struct.regstat** %3, align 8
  %27 = load i64*, i64** @rs2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @clear_const(%struct.regstat* %26, i64 %31)
  %33 = load %struct.regstat*, %struct.regstat** %3, align 8
  %34 = load i64, i64* @MACL, align 8
  %35 = call i32 @clear_const(%struct.regstat* %33, i64 %34)
  %36 = load %struct.regstat*, %struct.regstat** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i64*, i64** @rs1, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @alloc_reg(%struct.regstat* %36, i32 %37, i64 %42)
  %44 = load %struct.regstat*, %struct.regstat** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i64*, i64** @rs2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @alloc_reg(%struct.regstat* %44, i32 %45, i64 %50)
  %52 = load %struct.regstat*, %struct.regstat** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i64, i64* @MACL, align 8
  %55 = call i32 @alloc_reg(%struct.regstat* %52, i32 %53, i64 %54)
  %56 = load %struct.regstat*, %struct.regstat** %3, align 8
  %57 = load i64, i64* @MACL, align 8
  %58 = call i32 @dirty_reg(%struct.regstat* %56, i64 %57)
  br label %59

59:                                               ; preds = %18, %11
  %60 = load i32*, i32** @opcode2, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 8
  br i1 %65, label %66, label %87

66:                                               ; preds = %59
  %67 = load %struct.regstat*, %struct.regstat** %3, align 8
  %68 = load i64, i64* @MACH, align 8
  %69 = call i32 @clear_const(%struct.regstat* %67, i64 %68)
  %70 = load %struct.regstat*, %struct.regstat** %3, align 8
  %71 = load i64, i64* @MACL, align 8
  %72 = call i32 @clear_const(%struct.regstat* %70, i64 %71)
  %73 = load %struct.regstat*, %struct.regstat** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i64, i64* @MACH, align 8
  %76 = call i32 @alloc_reg(%struct.regstat* %73, i32 %74, i64 %75)
  %77 = load %struct.regstat*, %struct.regstat** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i64, i64* @MACL, align 8
  %80 = call i32 @alloc_reg(%struct.regstat* %77, i32 %78, i64 %79)
  %81 = load %struct.regstat*, %struct.regstat** %3, align 8
  %82 = load i64, i64* @MACH, align 8
  %83 = call i32 @dirty_reg(%struct.regstat* %81, i64 %82)
  %84 = load %struct.regstat*, %struct.regstat** %3, align 8
  %85 = load i64, i64* @MACL, align 8
  %86 = call i32 @dirty_reg(%struct.regstat* %84, i64 %85)
  br label %87

87:                                               ; preds = %66, %59
  %88 = load i32*, i32** @opcode2, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 9
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load %struct.regstat*, %struct.regstat** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = load i64, i64* @SR, align 8
  %98 = call i32 @alloc_reg(%struct.regstat* %95, i32 %96, i64 %97)
  %99 = load %struct.regstat*, %struct.regstat** %3, align 8
  %100 = load i64, i64* @SR, align 8
  %101 = call i32 @dirty_reg(%struct.regstat* %99, i64 %100)
  br label %102

102:                                              ; preds = %94, %87
  br label %103

103:                                              ; preds = %102, %2
  %104 = load i32*, i32** @opcode, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %225

110:                                              ; preds = %103
  %111 = load i32*, i32** @opcode2, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 7
  br i1 %116, label %117, label %162

117:                                              ; preds = %110
  %118 = load %struct.regstat*, %struct.regstat** %3, align 8
  %119 = load i64*, i64** @rs1, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @clear_const(%struct.regstat* %118, i64 %123)
  %125 = load %struct.regstat*, %struct.regstat** %3, align 8
  %126 = load i64*, i64** @rs2, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @clear_const(%struct.regstat* %125, i64 %130)
  %132 = load %struct.regstat*, %struct.regstat** %3, align 8
  %133 = load i32, i32* %4, align 4
  %134 = load i64*, i64** @rs1, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @alloc_reg(%struct.regstat* %132, i32 %133, i64 %138)
  %140 = load %struct.regstat*, %struct.regstat** %3, align 8
  %141 = load i32, i32* %4, align 4
  %142 = load i64*, i64** @rs2, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @alloc_reg(%struct.regstat* %140, i32 %141, i64 %146)
  %148 = load %struct.regstat*, %struct.regstat** %3, align 8
  %149 = load i32, i32* %4, align 4
  %150 = load i64, i64* @SR, align 8
  %151 = call i32 @alloc_reg(%struct.regstat* %148, i32 %149, i64 %150)
  %152 = load %struct.regstat*, %struct.regstat** %3, align 8
  %153 = load i64, i64* @SR, align 8
  %154 = call i32 @dirty_reg(%struct.regstat* %152, i64 %153)
  %155 = load %struct.regstat*, %struct.regstat** %3, align 8
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @alloc_reg_temp(%struct.regstat* %155, i32 %156, i32 -1)
  %158 = load i32*, i32** @minimum_free_regs, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 1, i32* %161, align 4
  br label %162

162:                                              ; preds = %117, %110
  %163 = load i32*, i32** @opcode2, align 8
  %164 = load i32, i32* %4, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 14
  br i1 %168, label %176, label %169

169:                                              ; preds = %162
  %170 = load i32*, i32** @opcode2, align 8
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 15
  br i1 %175, label %176, label %224

176:                                              ; preds = %169, %162
  %177 = load %struct.regstat*, %struct.regstat** %3, align 8
  %178 = load i64*, i64** @rs1, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @clear_const(%struct.regstat* %177, i64 %182)
  %184 = load %struct.regstat*, %struct.regstat** %3, align 8
  %185 = load i64*, i64** @rs2, align 8
  %186 = load i32, i32* %4, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @clear_const(%struct.regstat* %184, i64 %189)
  %191 = load %struct.regstat*, %struct.regstat** %3, align 8
  %192 = load i64, i64* @MACL, align 8
  %193 = call i32 @clear_const(%struct.regstat* %191, i64 %192)
  %194 = load %struct.regstat*, %struct.regstat** %3, align 8
  %195 = load i32, i32* %4, align 4
  %196 = load i64*, i64** @rs1, align 8
  %197 = load i32, i32* %4, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @alloc_reg(%struct.regstat* %194, i32 %195, i64 %200)
  %202 = load %struct.regstat*, %struct.regstat** %3, align 8
  %203 = load i32, i32* %4, align 4
  %204 = load i64*, i64** @rs2, align 8
  %205 = load i32, i32* %4, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @alloc_reg(%struct.regstat* %202, i32 %203, i64 %208)
  %210 = load %struct.regstat*, %struct.regstat** %3, align 8
  %211 = load i32, i32* %4, align 4
  %212 = load i64, i64* @MACL, align 8
  %213 = call i32 @alloc_reg(%struct.regstat* %210, i32 %211, i64 %212)
  %214 = load %struct.regstat*, %struct.regstat** %3, align 8
  %215 = load i64, i64* @MACL, align 8
  %216 = call i32 @dirty_reg(%struct.regstat* %214, i64 %215)
  %217 = load %struct.regstat*, %struct.regstat** %3, align 8
  %218 = load i32, i32* %4, align 4
  %219 = call i32 @alloc_reg_temp(%struct.regstat* %217, i32 %218, i32 -1)
  %220 = load i32*, i32** @minimum_free_regs, align 8
  %221 = load i32, i32* %4, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  store i32 1, i32* %223, align 4
  br label %224

224:                                              ; preds = %176, %169
  br label %225

225:                                              ; preds = %224, %103
  %226 = load i32*, i32** @opcode, align 8
  %227 = load i32, i32* %4, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %230, 3
  br i1 %231, label %232, label %301

232:                                              ; preds = %225
  %233 = load %struct.regstat*, %struct.regstat** %3, align 8
  %234 = getelementptr inbounds %struct.regstat, %struct.regstat* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @MACH, align 8
  %237 = shl i64 1, %236
  %238 = and i64 %235, %237
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %253, label %240

240:                                              ; preds = %232
  %241 = load %struct.regstat*, %struct.regstat** %3, align 8
  %242 = load i32, i32* %4, align 4
  %243 = load i64, i64* @MACH, align 8
  %244 = load i32, i32* @EDX, align 4
  %245 = call i32 @alloc_x86_reg(%struct.regstat* %241, i32 %242, i64 %243, i32 %244)
  %246 = load i64, i64* @MACL, align 8
  %247 = shl i64 1, %246
  %248 = xor i64 %247, -1
  %249 = load %struct.regstat*, %struct.regstat** %3, align 8
  %250 = getelementptr inbounds %struct.regstat, %struct.regstat* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = and i64 %251, %248
  store i64 %252, i64* %250, align 8
  br label %253

253:                                              ; preds = %240, %232
  %254 = load %struct.regstat*, %struct.regstat** %3, align 8
  %255 = load i32, i32* %4, align 4
  %256 = load i64, i64* @MACL, align 8
  %257 = load i32, i32* @EAX, align 4
  %258 = call i32 @alloc_x86_reg(%struct.regstat* %254, i32 %255, i64 %256, i32 %257)
  %259 = load %struct.regstat*, %struct.regstat** %3, align 8
  %260 = load i64*, i64** @rs1, align 8
  %261 = load i32, i32* %4, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %260, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @clear_const(%struct.regstat* %259, i64 %264)
  %266 = load %struct.regstat*, %struct.regstat** %3, align 8
  %267 = load i64*, i64** @rs2, align 8
  %268 = load i32, i32* %4, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i64, i64* %267, i64 %269
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @clear_const(%struct.regstat* %266, i64 %271)
  %273 = load %struct.regstat*, %struct.regstat** %3, align 8
  %274 = load i64, i64* @MACH, align 8
  %275 = call i32 @clear_const(%struct.regstat* %273, i64 %274)
  %276 = load %struct.regstat*, %struct.regstat** %3, align 8
  %277 = load i64, i64* @MACL, align 8
  %278 = call i32 @clear_const(%struct.regstat* %276, i64 %277)
  %279 = load %struct.regstat*, %struct.regstat** %3, align 8
  %280 = load i32, i32* %4, align 4
  %281 = load i64*, i64** @rs1, align 8
  %282 = load i32, i32* %4, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i64, i64* %281, i64 %283
  %285 = load i64, i64* %284, align 8
  %286 = call i32 @alloc_reg(%struct.regstat* %279, i32 %280, i64 %285)
  %287 = load %struct.regstat*, %struct.regstat** %3, align 8
  %288 = load i32, i32* %4, align 4
  %289 = load i64*, i64** @rs2, align 8
  %290 = load i32, i32* %4, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i64, i64* %289, i64 %291
  %293 = load i64, i64* %292, align 8
  %294 = call i32 @alloc_reg(%struct.regstat* %287, i32 %288, i64 %293)
  %295 = load %struct.regstat*, %struct.regstat** %3, align 8
  %296 = load i64, i64* @MACH, align 8
  %297 = call i32 @dirty_reg(%struct.regstat* %295, i64 %296)
  %298 = load %struct.regstat*, %struct.regstat** %3, align 8
  %299 = load i64, i64* @MACL, align 8
  %300 = call i32 @dirty_reg(%struct.regstat* %298, i64 %299)
  br label %301

301:                                              ; preds = %253, %225
  ret void
}

declare dso_local i32 @clear_const(%struct.regstat*, i64) #1

declare dso_local i32 @alloc_reg(%struct.regstat*, i32, i64) #1

declare dso_local i32 @dirty_reg(%struct.regstat*, i64) #1

declare dso_local i32 @alloc_reg_temp(%struct.regstat*, i32, i32) #1

declare dso_local i32 @alloc_x86_reg(%struct.regstat*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
