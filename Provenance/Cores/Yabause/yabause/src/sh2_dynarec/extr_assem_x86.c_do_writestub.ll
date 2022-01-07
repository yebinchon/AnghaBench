; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_do_writestub.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_do_writestub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i8* }

@.str = private unnamed_addr constant [17 x i8] c"do_writestub %x\0A\00", align 1
@start = common dso_local global i64 0, align 8
@stubs = common dso_local global i32** null, align 8
@out = common dso_local global i64 0, align 8
@AGEN1 = common dso_local global i32 0, align 4
@rs1 = common dso_local global i32* null, align 8
@EAX = common dso_local global i32 0, align 4
@EDX = common dso_local global i32 0, align 4
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
  %79 = call i32 @get_reg(i8* %74, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = load i32*, i32** @rs1, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @get_reg(i8* %80, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp sge i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i32, i32* %11, align 4
  %92 = icmp sge i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %1
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @get_reg(i8* %98, i32 -1)
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %97, %1
  %101 = load i32, i32* %10, align 4
  %102 = icmp sge i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @save_regs(i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @EAX, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %143

110:                                              ; preds = %100
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @EAX, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %110
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @EDX, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32, i32* @EAX, align 4
  %120 = load i32, i32* @EDX, align 4
  %121 = call i32 @emit_xchg(i32 %119, i32 %120)
  br label %129

122:                                              ; preds = %114
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @EDX, align 4
  %125 = call i32 @emit_mov(i32 %123, i32 %124)
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @EAX, align 4
  %128 = call i32 @emit_mov(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %122, %118
  br label %142

130:                                              ; preds = %110
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @EAX, align 4
  %133 = call i32 @emit_mov(i32 %131, i32 %132)
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @EDX, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @EDX, align 4
  %140 = call i32 @emit_mov(i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %130
  br label %142

142:                                              ; preds = %141, %129
  br label %152

143:                                              ; preds = %100
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @EDX, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @EDX, align 4
  %150 = call i32 @emit_mov(i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %143
  br label %152

152:                                              ; preds = %151, %142
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @STOREB_STUB, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i64, i64* @WriteInvalidateByteSwapped, align 8
  %158 = trunc i64 %157 to i32
  %159 = call i32 @emit_call(i32 %158)
  br label %160

160:                                              ; preds = %156, %152
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @STOREW_STUB, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i64, i64* @WriteInvalidateWord, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 @emit_call(i32 %166)
  br label %168

168:                                              ; preds = %164, %160
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @STOREL_STUB, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i64, i64* @WriteInvalidateLong, align 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 @emit_call(i32 %174)
  br label %176

176:                                              ; preds = %172, %168
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @restore_regs(i32 %177)
  %179 = load i32**, i32*** @stubs, align 8
  %180 = load i32, i32* %3, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32*, i32** %179, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @emit_jmp(i32 %185)
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @assem_debug(i8*, i64) #1

declare dso_local i32 @set_jump_target(i32, i32) #1

declare dso_local i32 @get_reg(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @save_regs(i32) #1

declare dso_local i32 @emit_xchg(i32, i32) #1

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
