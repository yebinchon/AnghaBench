; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_do_rmwstub.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_do_rmwstub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"do_rmwstub %x\0A\00", align 1
@start = common dso_local global i64 0, align 8
@stubs = common dso_local global i32** null, align 8
@out = common dso_local global i64 0, align 8
@AGEN1 = common dso_local global i32 0, align 4
@EDI = common dso_local global i32 0, align 4
@EAX = common dso_local global i32 0, align 4
@ECX = common dso_local global i32 0, align 4
@EDX = common dso_local global i32 0, align 4
@ESI = common dso_local global i32 0, align 4
@MappedMemoryReadByte = common dso_local global i64 0, align 8
@RMWA_STUB = common dso_local global i32 0, align 4
@imm = common dso_local global i32* null, align 8
@RMWX_STUB = common dso_local global i32 0, align 4
@RMWO_STUB = common dso_local global i32 0, align 4
@RMWT_STUB = common dso_local global i32 0, align 4
@WriteInvalidateByte = common dso_local global i64 0, align 8
@opcode2 = common dso_local global i32* null, align 8
@SR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_rmwstub(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.regstat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  %12 = load i64, i64* @start, align 8
  %13 = load i32**, i32*** @stubs, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %12, %21
  %23 = call i32 @assem_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32**, i32*** @stubs, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @out, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @set_jump_target(i32 %30, i32 %32)
  %34 = load i32**, i32*** @stubs, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  %41 = load i32**, i32*** @stubs, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  %48 = load i32**, i32*** @stubs, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  %55 = load i32**, i32*** @stubs, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to %struct.regstat*
  store %struct.regstat* %63, %struct.regstat** %7, align 8
  %64 = load i32**, i32*** @stubs, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  %71 = load %struct.regstat*, %struct.regstat** %7, align 8
  %72 = getelementptr inbounds %struct.regstat, %struct.regstat* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %9, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* @AGEN1, align 4
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, 1
  %78 = add nsw i32 %75, %77
  %79 = call i8* @get_reg(i8* %74, i32 %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp sge i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %1
  %88 = load i8*, i8** %9, align 8
  %89 = call i8* @get_reg(i8* %88, i32 -1)
  %90 = ptrtoint i8* %89 to i32
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %87, %1
  %92 = load i32, i32* %10, align 4
  %93 = icmp sge i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @save_regs(i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @emit_xorimm(i32 %98, i32 1, i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @EDI, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %91
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @EDI, align 4
  %107 = call i32 @emit_mov(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %91
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @EAX, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %128, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @ECX, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %128, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @EDX, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @ESI, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @EDI, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124, %120, %116, %112, %108
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @emit_mov(i32 %129, i32 12)
  br label %131

131:                                              ; preds = %128, %124
  %132 = load i64, i64* @MappedMemoryReadByte, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 @emit_call(i32 %133)
  %135 = load i32, i32* @EAX, align 4
  %136 = load i32, i32* @ESI, align 4
  %137 = call i32 @emit_mov(i32 %135, i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @EAX, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %157, label %141

141:                                              ; preds = %131
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @ECX, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %157, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @EDX, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %157, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @ESI, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @EDI, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153, %149, %145, %141, %131
  %158 = load i32, i32* @EDI, align 4
  %159 = call i32 @emit_mov(i32 12, i32 %158)
  br label %164

160:                                              ; preds = %153
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @EDI, align 4
  %163 = call i32 @emit_mov(i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %157
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @RMWA_STUB, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %164
  %169 = load i32, i32* @ESI, align 4
  %170 = trunc i32 %169 to i8
  %171 = load i32*, i32** @imm, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @ESI, align 4
  %177 = trunc i32 %176 to i8
  %178 = call i32 @emit_andimm(i8 signext %170, i32 %175, i8 signext %177)
  br label %179

179:                                              ; preds = %168, %164
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* @RMWX_STUB, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %192

183:                                              ; preds = %179
  %184 = load i32, i32* @ESI, align 4
  %185 = load i32*, i32** @imm, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @ESI, align 4
  %191 = call i32 @emit_xorimm(i32 %184, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %183, %179
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* @RMWO_STUB, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %205

196:                                              ; preds = %192
  %197 = load i32, i32* @ESI, align 4
  %198 = load i32*, i32** @imm, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @ESI, align 4
  %204 = call i32 @emit_orimm(i32 %197, i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %196, %192
  %206 = load i32, i32* %4, align 4
  %207 = load i32, i32* @RMWT_STUB, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = load i32, i32* @ESI, align 4
  %211 = call i32 @emit_mov(i32 %210, i32 12)
  %212 = load i32, i32* @ESI, align 4
  %213 = load i32, i32* @ESI, align 4
  %214 = call i32 @emit_orimm(i32 %212, i32 128, i32 %213)
  br label %215

215:                                              ; preds = %209, %205
  %216 = load i64, i64* @WriteInvalidateByte, align 8
  %217 = trunc i64 %216 to i32
  %218 = call i32 @emit_call(i32 %217)
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @restore_regs(i32 %219)
  %221 = load i32*, i32** @opcode2, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 11
  br i1 %226, label %227, label %245

227:                                              ; preds = %215
  %228 = load %struct.regstat*, %struct.regstat** %7, align 8
  %229 = getelementptr inbounds %struct.regstat, %struct.regstat* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = load i32, i32* @SR, align 4
  %232 = call i8* @get_reg(i8* %230, i32 %231)
  %233 = ptrtoint i8* %232 to i8
  store i8 %233, i8* %11, align 1
  %234 = load i8, i8* %11, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp sge i32 %235, 0
  %237 = zext i1 %236 to i32
  %238 = call i32 @assert(i32 %237)
  %239 = load i8, i8* %11, align 1
  %240 = load i8, i8* %11, align 1
  %241 = call i32 @emit_andimm(i8 signext %239, i32 -2, i8 signext %240)
  %242 = call i32 @emit_cmpimm(i32 12, i32 1)
  %243 = load i8, i8* %11, align 1
  %244 = call i32 @emit_adcimm(i32 0, i8 signext %243)
  br label %245

245:                                              ; preds = %227, %215
  %246 = load i32**, i32*** @stubs, align 8
  %247 = load i32, i32* %3, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32*, i32** %246, i64 %248
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 2
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @emit_jmp(i32 %252)
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local i32 @assem_debug(i8*, i64) #1

declare dso_local i32 @set_jump_target(i32, i32) #1

declare dso_local i8* @get_reg(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @save_regs(i32) #1

declare dso_local i32 @emit_xorimm(i32, i32, i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

declare dso_local i32 @emit_call(i32) #1

declare dso_local i32 @emit_andimm(i8 signext, i32, i8 signext) #1

declare dso_local i32 @emit_orimm(i32, i32, i32) #1

declare dso_local i32 @restore_regs(i32) #1

declare dso_local i32 @emit_cmpimm(i32, i32) #1

declare dso_local i32 @emit_adcimm(i32, i8 signext) #1

declare dso_local i32 @emit_jmp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
