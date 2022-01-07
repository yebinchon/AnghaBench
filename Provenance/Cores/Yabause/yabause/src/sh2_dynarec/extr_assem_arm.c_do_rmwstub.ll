; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_do_rmwstub.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_do_rmwstub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"do_rmwstub %x\0A\00", align 1
@start = common dso_local global i64 0, align 8
@stubs = common dso_local global i32** null, align 8
@out = common dso_local global i64 0, align 8
@AGEN1 = common dso_local global i32 0, align 4
@dynarec_local = common dso_local global i32 0, align 4
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
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @emit_mov(i32 %104, i32 0)
  br label %106

106:                                              ; preds = %103, %91
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 4
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %110, 12
  br i1 %111, label %112, label %114

112:                                              ; preds = %109, %106
  %113 = call i32 @emit_writeword(i32 0, i32 add nsw (i32 ptrtoint (i32* @dynarec_local to i32), i32 24))
  br label %114

114:                                              ; preds = %112, %109
  %115 = load i64, i64* @MappedMemoryReadByte, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @emit_call(i32 %116)
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @RMWA_STUB, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = load i32*, i32** @imm, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @emit_andimm(i8 signext 0, i32 %126, i8 signext 1)
  br label %128

128:                                              ; preds = %121, %114
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @RMWX_STUB, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load i32*, i32** @imm, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @emit_xorimm(i32 0, i32 %137, i32 1)
  br label %139

139:                                              ; preds = %132, %128
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @RMWO_STUB, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load i32*, i32** @imm, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @emit_orimm(i32 0, i32 %148, i32 1)
  br label %150

150:                                              ; preds = %143, %139
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @RMWT_STUB, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = call i32 @emit_writeword(i32 0, i32 add nsw (i32 ptrtoint (i32* @dynarec_local to i32), i32 20))
  %156 = call i32 @emit_orimm(i32 0, i32 128, i32 1)
  br label %157

157:                                              ; preds = %154, %150
  %158 = load i32, i32* %6, align 4
  %159 = icmp slt i32 %158, 4
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %6, align 4
  %162 = icmp eq i32 %161, 12
  br i1 %162, label %163, label %165

163:                                              ; preds = %160, %157
  %164 = call i32 @emit_readword(i32 add nsw (i32 ptrtoint (i32* @dynarec_local to i32), i32 24), i32 0)
  br label %168

165:                                              ; preds = %160
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @emit_mov(i32 %166, i32 0)
  br label %168

168:                                              ; preds = %165, %163
  %169 = load i64, i64* @WriteInvalidateByte, align 8
  %170 = trunc i64 %169 to i32
  %171 = call i32 @emit_call(i32 %170)
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @restore_regs(i32 %172)
  %174 = load i32*, i32** @opcode2, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 11
  br i1 %179, label %180, label %200

180:                                              ; preds = %168
  %181 = call i32 @emit_readword(i32 add nsw (i32 ptrtoint (i32* @dynarec_local to i32), i32 20), i32 14)
  %182 = load %struct.regstat*, %struct.regstat** %7, align 8
  %183 = getelementptr inbounds %struct.regstat, %struct.regstat* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i32, i32* @SR, align 4
  %186 = call i8* @get_reg(i8* %184, i32 %185)
  %187 = ptrtoint i8* %186 to i8
  store i8 %187, i8* %11, align 1
  %188 = load i8, i8* %11, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp sge i32 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load i8, i8* %11, align 1
  %194 = load i8, i8* %11, align 1
  %195 = call i32 @emit_andimm(i8 signext %193, i32 -2, i8 signext %194)
  %196 = call i32 @emit_testimm(i32 14, i32 255)
  %197 = load i8, i8* %11, align 1
  %198 = load i8, i8* %11, align 1
  %199 = call i32 @emit_orreq_imm(i8 signext %197, i32 1, i8 signext %198)
  br label %200

200:                                              ; preds = %180, %168
  %201 = load i32**, i32*** @stubs, align 8
  %202 = load i32, i32* %3, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @emit_jmp(i32 %207)
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32 @assem_debug(i8*, i64) #1

declare dso_local i32 @set_jump_target(i32, i32) #1

declare dso_local i8* @get_reg(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @save_regs(i32) #1

declare dso_local i32 @emit_xorimm(i32, i32, i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

declare dso_local i32 @emit_writeword(i32, i32) #1

declare dso_local i32 @emit_call(i32) #1

declare dso_local i32 @emit_andimm(i8 signext, i32, i8 signext) #1

declare dso_local i32 @emit_orimm(i32, i32, i32) #1

declare dso_local i32 @emit_readword(i32, i32) #1

declare dso_local i32 @restore_regs(i32) #1

declare dso_local i32 @emit_testimm(i32, i32) #1

declare dso_local i32 @emit_orreq_imm(i8 signext, i32, i8 signext) #1

declare dso_local i32 @emit_jmp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
