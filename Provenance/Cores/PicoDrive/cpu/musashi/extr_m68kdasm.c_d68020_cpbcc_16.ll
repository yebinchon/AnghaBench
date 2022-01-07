; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_d68020_cpbcc_16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_d68020_cpbcc_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_cpu_pc = common dso_local global i32 0, align 4
@M68020_PLUS = common dso_local global i32 0, align 4
@g_dasm_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%db%-4s  %s; %x (extension = %x) (2-3)\00", align 1
@g_cpu_ir = common dso_local global i32 0, align 4
@g_cpcc = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @d68020_cpbcc_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68020_cpbcc_16() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @g_cpu_pc, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @M68020_PLUS, align 4
  %5 = call i32 @LIMIT_CPU_TYPES(i32 %4)
  %6 = call i32 (...) @read_imm_16()
  store i32 %6, i32* %1, align 4
  %7 = call i32 (...) @read_imm_16()
  %8 = call i64 @make_int_16(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, %8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* @g_dasm_str, align 4
  %14 = load i32, i32* @g_cpu_ir, align 4
  %15 = ashr i32 %14, 9
  %16 = and i32 %15, 7
  %17 = load i8**, i8*** @g_cpcc, align 8
  %18 = load i32, i32* @g_cpu_ir, align 4
  %19 = and i32 %18, 63
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %17, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* (...) @get_imm_str_s16()
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @sprintf(i32 %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %22, i8* %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @LIMIT_CPU_TYPES(i32) #1

declare dso_local i32 @read_imm_16(...) #1

declare dso_local i64 @make_int_16(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i8*, i8*, i32, i32) #1

declare dso_local i8* @get_imm_str_s16(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
