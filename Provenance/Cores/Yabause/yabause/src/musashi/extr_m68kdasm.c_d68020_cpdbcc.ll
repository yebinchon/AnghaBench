; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kdasm.c_d68020_cpdbcc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kdasm.c_d68020_cpdbcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_cpu_pc = common dso_local global i32 0, align 4
@M68020_PLUS = common dso_local global i32 0, align 4
@g_dasm_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%ddb%-4s D%d,%s; %x (extension = %x) (2-3)\00", align 1
@g_cpu_ir = common dso_local global i32 0, align 4
@g_cpcc = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @d68020_cpdbcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68020_cpdbcc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @g_cpu_pc, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @M68020_PLUS, align 4
  %6 = call i32 @LIMIT_CPU_TYPES(i32 %5)
  %7 = call i32 (...) @read_imm_16()
  store i32 %7, i32* %1, align 4
  %8 = call i32 (...) @read_imm_16()
  store i32 %8, i32* %2, align 4
  %9 = call i32 (...) @peek_imm_16()
  %10 = call i64 @make_int_16(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %10
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @g_dasm_str, align 4
  %16 = load i32, i32* @g_cpu_ir, align 4
  %17 = ashr i32 %16, 9
  %18 = and i32 %17, 7
  %19 = load i8**, i8*** @g_cpcc, align 8
  %20 = load i32, i32* %1, align 4
  %21 = and i32 %20, 63
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %19, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @g_cpu_ir, align 4
  %26 = and i32 %25, 7
  %27 = call i8* (...) @get_imm_str_s16()
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @sprintf(i32 %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %24, i32 %26, i8* %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @LIMIT_CPU_TYPES(i32) #1

declare dso_local i32 @read_imm_16(...) #1

declare dso_local i64 @make_int_16(i32) #1

declare dso_local i32 @peek_imm_16(...) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i8* @get_imm_str_s16(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
