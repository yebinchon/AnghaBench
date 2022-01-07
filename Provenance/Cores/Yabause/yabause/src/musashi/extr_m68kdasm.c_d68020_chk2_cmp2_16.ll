; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kdasm.c_d68020_chk2_cmp2_16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kdasm.c_d68020_chk2_cmp2_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M68020_PLUS = common dso_local global i32 0, align 4
@g_dasm_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s.w  %s, %c%d; (2+)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"chk2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"cmp2\00", align 1
@g_cpu_ir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @d68020_chk2_cmp2_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68020_chk2_cmp2_16() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @M68020_PLUS, align 4
  %3 = call i32 @LIMIT_CPU_TYPES(i32 %2)
  %4 = call i32 (...) @read_imm_16()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @g_dasm_str, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i64 @BIT_B(i32 %6)
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %11 = load i32, i32* @g_cpu_ir, align 4
  %12 = call i8* @get_ea_mode_str_16(i32 %11)
  %13 = load i32, i32* %1, align 4
  %14 = call i64 @BIT_F(i32 %13)
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 65, i32 68
  %18 = trunc i32 %17 to i8
  %19 = load i32, i32* %1, align 4
  %20 = ashr i32 %19, 12
  %21 = and i32 %20, 7
  %22 = call i32 @sprintf(i32 %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %12, i8 signext %18, i32 %21)
  ret void
}

declare dso_local i32 @LIMIT_CPU_TYPES(i32) #1

declare dso_local i32 @read_imm_16(...) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*, i8 signext, i32) #1

declare dso_local i64 @BIT_B(i32) #1

declare dso_local i8* @get_ea_mode_str_16(i32) #1

declare dso_local i64 @BIT_F(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
