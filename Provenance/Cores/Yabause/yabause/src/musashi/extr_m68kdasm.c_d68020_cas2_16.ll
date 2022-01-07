; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kdasm.c_d68020_cas2_16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kdasm.c_d68020_cas2_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M68020_PLUS = common dso_local global i32 0, align 4
@g_dasm_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"cas2.w  D%d:D%d, D%d:D%d, (%c%d):(%c%d); (2+)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @d68020_cas2_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68020_cas2_16() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @M68020_PLUS, align 4
  %3 = call i32 @LIMIT_CPU_TYPES(i32 %2)
  %4 = call i32 (...) @read_imm_32()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @g_dasm_str, align 4
  %6 = load i32, i32* %1, align 4
  %7 = ashr i32 %6, 16
  %8 = and i32 %7, 7
  %9 = load i32, i32* %1, align 4
  %10 = and i32 %9, 7
  %11 = load i32, i32* %1, align 4
  %12 = ashr i32 %11, 22
  %13 = and i32 %12, 7
  %14 = load i32, i32* %1, align 4
  %15 = ashr i32 %14, 6
  %16 = and i32 %15, 7
  %17 = load i32, i32* %1, align 4
  %18 = call i64 @BIT_1F(i32 %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 65, i32 68
  %22 = trunc i32 %21 to i8
  %23 = load i32, i32* %1, align 4
  %24 = ashr i32 %23, 28
  %25 = and i32 %24, 7
  %26 = load i32, i32* %1, align 4
  %27 = call i64 @BIT_F(i32 %26)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 65, i32 68
  %31 = trunc i32 %30 to i8
  %32 = load i32, i32* %1, align 4
  %33 = ashr i32 %32, 12
  %34 = and i32 %33, 7
  %35 = call i32 @sprintf(i32 %5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %10, i32 %13, i32 %16, i8 signext %22, i32 %25, i8 signext %31, i32 %34)
  ret void
}

declare dso_local i32 @LIMIT_CPU_TYPES(i32) #1

declare dso_local i32 @read_imm_32(...) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32, i32, i8 signext, i32, i8 signext, i32) #1

declare dso_local i64 @BIT_1F(i32) #1

declare dso_local i64 @BIT_F(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
