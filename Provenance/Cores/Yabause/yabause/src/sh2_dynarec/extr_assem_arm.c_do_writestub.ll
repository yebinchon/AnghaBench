; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_do_writestub.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_do_writestub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i8* }

@.str = private unnamed_addr constant [17 x i8] c"do_writestub %x\0A\00", align 1
@start = common dso_local global i64 0, align 8
@stubs = common dso_local global i32** null, align 8
@out = common dso_local global i64 0, align 8
@AGEN1 = common dso_local global i32 0, align 4
@rs1 = common dso_local global i32* null, align 8
@STOREB_STUB = common dso_local global i32 0, align 4
@WriteInvalidateByteSwapped = common dso_local global i64 0, align 8
@STOREW_STUB = common dso_local global i32 0, align 4
@WriteInvalidateWord = common dso_local global i64 0, align 8
@STOREL_STUB = common dso_local global i32 0, align 4
@WriteInvalidateLong = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_writestub(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.regstat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
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
  %23 = call i32 @assem_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = call i32 @literal_pool(i32 256)
  %25 = load i32**, i32*** @stubs, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* @out, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @set_jump_target(i32 %31, i32 %33)
  %35 = load i32**, i32*** @stubs, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  %42 = load i32**, i32*** @stubs, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %5, align 4
  %49 = load i32**, i32*** @stubs, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32**, i32*** @stubs, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to %struct.regstat*
  store %struct.regstat* %64, %struct.regstat** %7, align 8
  %65 = load i32**, i32*** @stubs, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 7
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  %72 = load %struct.regstat*, %struct.regstat** %7, align 8
  %73 = getelementptr inbounds %struct.regstat, %struct.regstat* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* @AGEN1, align 4
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, 1
  %79 = add nsw i32 %76, %78
  %80 = call i32 @get_reg(i8* %75, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = load i32*, i32** @rs1, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @get_reg(i8* %81, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp sge i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i32, i32* %11, align 4
  %93 = icmp sge i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %1
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @get_reg(i8* %99, i32 -1)
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %98, %1
  %102 = load i32, i32* %10, align 4
  %103 = icmp sge i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @save_regs(i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %136

110:                                              ; preds = %101
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = call i32 @emit_mov(i32 0, i32 2)
  %118 = call i32 @emit_mov(i32 1, i32 0)
  %119 = call i32 @emit_mov(i32 2, i32 1)
  br label %125

120:                                              ; preds = %113
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @emit_mov(i32 %121, i32 1)
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @emit_mov(i32 %123, i32 0)
  br label %125

125:                                              ; preds = %120, %116
  br label %135

126:                                              ; preds = %110
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @emit_mov(i32 %127, i32 0)
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 1
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @emit_mov(i32 %132, i32 1)
  br label %134

134:                                              ; preds = %131, %126
  br label %135

135:                                              ; preds = %134, %125
  br label %143

136:                                              ; preds = %101
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 1
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @emit_mov(i32 %140, i32 1)
  br label %142

142:                                              ; preds = %139, %136
  br label %143

143:                                              ; preds = %142, %135
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @STOREB_STUB, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i64, i64* @WriteInvalidateByteSwapped, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 @emit_call(i32 %149)
  br label %151

151:                                              ; preds = %147, %143
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @STOREW_STUB, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i64, i64* @WriteInvalidateWord, align 8
  %157 = trunc i64 %156 to i32
  %158 = call i32 @emit_call(i32 %157)
  br label %159

159:                                              ; preds = %155, %151
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @STOREL_STUB, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i64, i64* @WriteInvalidateLong, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i32 @emit_call(i32 %165)
  br label %167

167:                                              ; preds = %163, %159
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @restore_regs(i32 %168)
  %170 = load i32**, i32*** @stubs, align 8
  %171 = load i32, i32* %3, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32*, i32** %170, i64 %172
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @emit_jmp(i32 %176)
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @assem_debug(i8*, i64) #1

declare dso_local i32 @literal_pool(i32) #1

declare dso_local i32 @set_jump_target(i32, i32) #1

declare dso_local i32 @get_reg(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @save_regs(i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

declare dso_local i32 @emit_call(i32) #1

declare dso_local i32 @restore_regs(i32) #1

declare dso_local i32 @emit_jmp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
