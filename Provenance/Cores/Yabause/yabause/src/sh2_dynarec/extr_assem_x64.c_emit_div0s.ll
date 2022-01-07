; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_div0s.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_div0s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"bt %%%s,31\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"rcr %%%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"rcr %%%s,24\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_div0s(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @emit_shlimm(i32 %9, i32 24, i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @emit_mov(i32 %12, i32 %13)
  %15 = load i32*, i32** @regname, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @assem_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @output_byte(i32 15)
  %22 = call i32 @output_byte(i32 186)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @output_modrm(i32 3, i32 %23, i32 4)
  %25 = call i32 @output_byte(i32 31)
  %26 = load i32*, i32** @regname, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @assem_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = call i32 @output_byte(i32 209)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @output_modrm(i32 3, i32 %33, i32 3)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @emit_xor(i32 %35, i32 %36, i32 %37)
  %39 = load i32*, i32** @regname, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @assem_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = call i32 @output_byte(i32 15)
  %46 = call i32 @output_byte(i32 186)
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @output_modrm(i32 3, i32 %47, i32 4)
  %49 = call i32 @output_byte(i32 31)
  %50 = load i32*, i32** @regname, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @assem_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = call i32 @output_byte(i32 193)
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @output_modrm(i32 3, i32 %57, i32 3)
  %59 = call i32 @output_byte(i32 24)
  %60 = load i32*, i32** @regname, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @assem_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = call i32 @output_byte(i32 15)
  %67 = call i32 @output_byte(i32 186)
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @output_modrm(i32 3, i32 %68, i32 4)
  %70 = call i32 @output_byte(i32 31)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @emit_adc(i32 %71, i32 %72)
  ret void
}

declare dso_local i32 @emit_shlimm(i32, i32, i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

declare dso_local i32 @assem_debug(i8*, i32) #1

declare dso_local i32 @output_byte(i32) #1

declare dso_local i32 @output_modrm(i32, i32, i32) #1

declare dso_local i32 @emit_xor(i32, i32, i32) #1

declare dso_local i32 @emit_adc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
