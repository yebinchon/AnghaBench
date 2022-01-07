; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_d68020_mull.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_d68020_mull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M68020_PLUS = common dso_local global i32 0, align 4
@g_dasm_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"mul%c.l %s, D%d-D%d; (2+)\00", align 1
@g_cpu_ir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"mul%c.l  %s, D%d; (2+)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @d68020_mull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68020_mull() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @M68020_PLUS, align 4
  %3 = call i32 @LIMIT_CPU_TYPES(i32 %2)
  %4 = call i32 (...) @read_imm_16()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i64 @BIT_A(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %0
  %9 = load i32, i32* @g_dasm_str, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i64 @BIT_B(i32 %10)
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 115, i32 117
  %15 = trunc i32 %14 to i8
  %16 = load i32, i32* @g_cpu_ir, align 4
  %17 = call i8* @get_ea_mode_str_32(i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = and i32 %18, 7
  %20 = load i32, i32* %1, align 4
  %21 = ashr i32 %20, 12
  %22 = and i32 %21, 7
  %23 = call i32 (i32, i8*, i8, i8*, i32, ...) @sprintf(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8 signext %15, i8* %17, i32 %19, i32 %22)
  br label %38

24:                                               ; preds = %0
  %25 = load i32, i32* @g_dasm_str, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i64 @BIT_B(i32 %26)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 115, i32 117
  %31 = trunc i32 %30 to i8
  %32 = load i32, i32* @g_cpu_ir, align 4
  %33 = call i8* @get_ea_mode_str_32(i32 %32)
  %34 = load i32, i32* %1, align 4
  %35 = ashr i32 %34, 12
  %36 = and i32 %35, 7
  %37 = call i32 (i32, i8*, i8, i8*, i32, ...) @sprintf(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8 signext %31, i8* %33, i32 %36)
  br label %38

38:                                               ; preds = %24, %8
  ret void
}

declare dso_local i32 @LIMIT_CPU_TYPES(i32) #1

declare dso_local i32 @read_imm_16(...) #1

declare dso_local i64 @BIT_A(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8 signext, i8*, i32, ...) #1

declare dso_local i64 @BIT_B(i32) #1

declare dso_local i8* @get_ea_mode_str_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
