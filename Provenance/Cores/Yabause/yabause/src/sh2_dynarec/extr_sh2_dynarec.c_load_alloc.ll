; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_load_alloc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_load_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i64* }

@rt1 = common dso_local global i64* null, align 8
@rs1 = common dso_local global i64* null, align 8
@TBIT = common dso_local global i64 0, align 8
@SR = common dso_local global i64 0, align 8
@addrmode = common dso_local global i64* null, align 8
@DUALIND = common dso_local global i64 0, align 8
@GBRIND = common dso_local global i64 0, align 8
@rs2 = common dso_local global i64* null, align 8
@POSTINC = common dso_local global i64 0, align 8
@rt2 = common dso_local global i64* null, align 8
@opcode = common dso_local global i32* null, align 8
@opcode2 = common dso_local global i32* null, align 8
@MOREG = common dso_local global i64 0, align 8
@minimum_free_regs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_alloc(%struct.regstat* %0, i32 %1) #0 {
  %3 = alloca %struct.regstat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regstat* %0, %struct.regstat** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.regstat*, %struct.regstat** %3, align 8
  %8 = load i64*, i64** @rt1, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @clear_const(%struct.regstat* %7, i64 %12)
  %14 = load i64*, i64** @rs1, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @needed_again(i64 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.regstat*, %struct.regstat** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i64*, i64** @rs1, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @alloc_reg(%struct.regstat* %23, i32 %24, i64 %29)
  br label %31

31:                                               ; preds = %22, %2
  %32 = load %struct.regstat*, %struct.regstat** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i64*, i64** @rt1, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TBIT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i64, i64* @SR, align 8
  br label %49

43:                                               ; preds = %31
  %44 = load i64*, i64** @rt1, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  br label %49

49:                                               ; preds = %43, %41
  %50 = phi i64 [ %42, %41 ], [ %48, %43 ]
  %51 = call i32 @alloc_reg(%struct.regstat* %32, i32 %33, i64 %50)
  %52 = load i64*, i64** @addrmode, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DUALIND, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %49
  %60 = load i64*, i64** @addrmode, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @GBRIND, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %117

67:                                               ; preds = %59, %49
  %68 = load %struct.regstat*, %struct.regstat** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i64*, i64** @rs1, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @alloc_reg(%struct.regstat* %68, i32 %69, i64 %74)
  %76 = load %struct.regstat*, %struct.regstat** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i64*, i64** @rs2, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @alloc_reg(%struct.regstat* %76, i32 %77, i64 %82)
  %84 = load %struct.regstat*, %struct.regstat** %3, align 8
  %85 = load i64*, i64** @rs1, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @is_const(%struct.regstat* %84, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %67
  %93 = load %struct.regstat*, %struct.regstat** %3, align 8
  %94 = load i64*, i64** @rs2, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @is_const(%struct.regstat* %93, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %116, label %101

101:                                              ; preds = %92, %67
  %102 = load %struct.regstat*, %struct.regstat** %3, align 8
  %103 = load i64*, i64** @rs1, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @clear_const(%struct.regstat* %102, i64 %107)
  %109 = load %struct.regstat*, %struct.regstat** %3, align 8
  %110 = load i64*, i64** @rs2, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @clear_const(%struct.regstat* %109, i64 %114)
  br label %116

116:                                              ; preds = %101, %92
  br label %186

117:                                              ; preds = %59
  %118 = load i64*, i64** @addrmode, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @POSTINC, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %185

125:                                              ; preds = %117
  %126 = load %struct.regstat*, %struct.regstat** %3, align 8
  %127 = load i64*, i64** @rt2, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @is_const(%struct.regstat* %126, i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %168

134:                                              ; preds = %125
  %135 = load %struct.regstat*, %struct.regstat** %3, align 8
  %136 = load i64*, i64** @rt2, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @get_const(%struct.regstat* %135, i64 %140)
  store i32 %141, i32* %6, align 4
  %142 = load %struct.regstat*, %struct.regstat** %3, align 8
  %143 = load i64*, i64** @rt2, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i32*, i32** @opcode, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 4
  br i1 %154, label %155, label %156

155:                                              ; preds = %134
  br label %163

156:                                              ; preds = %134
  %157 = load i32*, i32** @opcode2, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 3
  br label %163

163:                                              ; preds = %156, %155
  %164 = phi i32 [ 2, %155 ], [ %162, %156 ]
  %165 = shl i32 1, %164
  %166 = add nsw i32 %148, %165
  %167 = call i32 @set_const(%struct.regstat* %142, i64 %147, i32 %166)
  br label %184

168:                                              ; preds = %125
  %169 = load %struct.regstat*, %struct.regstat** %3, align 8
  %170 = load i32, i32* %4, align 4
  %171 = load i64*, i64** @rt2, align 8
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @alloc_reg(%struct.regstat* %169, i32 %170, i64 %175)
  %177 = load %struct.regstat*, %struct.regstat** %3, align 8
  %178 = load i64*, i64** @rt2, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @dirty_reg(%struct.regstat* %177, i64 %182)
  br label %184

184:                                              ; preds = %168, %163
  br label %185

185:                                              ; preds = %184, %117
  br label %186

186:                                              ; preds = %185, %116
  %187 = load %struct.regstat*, %struct.regstat** %3, align 8
  %188 = load i32, i32* %4, align 4
  %189 = load i64, i64* @MOREG, align 8
  %190 = call i32 @alloc_reg(%struct.regstat* %187, i32 %188, i64 %189)
  %191 = load i64*, i64** @rt1, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @TBIT, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %209, label %198

198:                                              ; preds = %186
  %199 = load %struct.regstat*, %struct.regstat** %3, align 8
  %200 = getelementptr inbounds %struct.regstat, %struct.regstat* %199, i32 0, i32 0
  %201 = load i64*, i64** %200, align 8
  %202 = load i64*, i64** @rt1, align 8
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = call i64 @get_reg(i64* %201, i64 %206)
  %208 = icmp slt i64 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %198, %186
  %210 = load %struct.regstat*, %struct.regstat** %3, align 8
  %211 = load i32, i32* %4, align 4
  %212 = call i32 @alloc_reg_temp(%struct.regstat* %210, i32 %211, i32 -1)
  %213 = load i32*, i32** @minimum_free_regs, align 8
  %214 = load i32, i32* %4, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 1, i32* %216, align 4
  br label %217

217:                                              ; preds = %209, %198
  %218 = load i64*, i64** @rt1, align 8
  %219 = load i32, i32* %4, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @TBIT, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %217
  %226 = load %struct.regstat*, %struct.regstat** %3, align 8
  %227 = load i64, i64* @SR, align 8
  %228 = call i32 @dirty_reg(%struct.regstat* %226, i64 %227)
  br label %237

229:                                              ; preds = %217
  %230 = load %struct.regstat*, %struct.regstat** %3, align 8
  %231 = load i64*, i64** @rt1, align 8
  %232 = load i32, i32* %4, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @dirty_reg(%struct.regstat* %230, i64 %235)
  br label %237

237:                                              ; preds = %229, %225
  %238 = load %struct.regstat*, %struct.regstat** %3, align 8
  %239 = getelementptr inbounds %struct.regstat, %struct.regstat* %238, i32 0, i32 0
  %240 = load i64*, i64** %239, align 8
  %241 = load i64, i64* @MOREG, align 8
  %242 = call i64 @get_reg(i64* %240, i64 %241)
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %5, align 4
  %244 = load i32, i32* %5, align 4
  %245 = icmp sge i32 %244, 0
  %246 = zext i1 %245 to i32
  %247 = call i32 @assert(i32 %246)
  %248 = load %struct.regstat*, %struct.regstat** %3, align 8
  %249 = getelementptr inbounds %struct.regstat, %struct.regstat* %248, i32 0, i32 0
  %250 = load i64*, i64** %249, align 8
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @MOREG, align 8
  %256 = icmp eq i64 %254, %255
  %257 = zext i1 %256 to i32
  %258 = call i32 @assert(i32 %257)
  %259 = load %struct.regstat*, %struct.regstat** %3, align 8
  %260 = getelementptr inbounds %struct.regstat, %struct.regstat* %259, i32 0, i32 0
  %261 = load i64*, i64** %260, align 8
  %262 = load i32, i32* %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i64, i64* %261, i64 %263
  store i64 -1, i64* %264, align 8
  %265 = load i32*, i32** @minimum_free_regs, align 8
  %266 = load i32, i32* %4, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 4
  ret void
}

declare dso_local i32 @clear_const(%struct.regstat*, i64) #1

declare dso_local i64 @needed_again(i64, i32) #1

declare dso_local i32 @alloc_reg(%struct.regstat*, i32, i64) #1

declare dso_local i64 @is_const(%struct.regstat*, i64) #1

declare dso_local i32 @get_const(%struct.regstat*, i64) #1

declare dso_local i32 @set_const(%struct.regstat*, i64, i32) #1

declare dso_local i32 @dirty_reg(%struct.regstat*, i64) #1

declare dso_local i64 @get_reg(i64*, i64) #1

declare dso_local i32 @alloc_reg_temp(%struct.regstat*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
