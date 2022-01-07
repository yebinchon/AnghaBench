; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_d68020_divl.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_d68020_divl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M68020_PLUS = common dso_local global i32 0, align 4
@g_dasm_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"div%c.l  %s, D%d:D%d; (2+)\00", align 1
@g_cpu_ir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"div%c.l  %s, D%d; (2+)\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"div%cl.l %s, D%d:D%d; (2+)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @d68020_divl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68020_divl() #0 {
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
  %23 = call i32 (i32, i8*, i8, i8*, i32, ...) @sprintf(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8 signext %15, i8* %17, i32 %19, i32 %22)
  br label %62

24:                                               ; preds = %0
  %25 = load i32, i32* %1, align 4
  %26 = and i32 %25, 7
  %27 = load i32, i32* %1, align 4
  %28 = ashr i32 %27, 12
  %29 = and i32 %28, 7
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load i32, i32* @g_dasm_str, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i64 @BIT_B(i32 %33)
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 115, i32 117
  %38 = trunc i32 %37 to i8
  %39 = load i32, i32* @g_cpu_ir, align 4
  %40 = call i8* @get_ea_mode_str_32(i32 %39)
  %41 = load i32, i32* %1, align 4
  %42 = ashr i32 %41, 12
  %43 = and i32 %42, 7
  %44 = call i32 (i32, i8*, i8, i8*, i32, ...) @sprintf(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8 signext %38, i8* %40, i32 %43)
  br label %61

45:                                               ; preds = %24
  %46 = load i32, i32* @g_dasm_str, align 4
  %47 = load i32, i32* %1, align 4
  %48 = call i64 @BIT_B(i32 %47)
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 115, i32 117
  %52 = trunc i32 %51 to i8
  %53 = load i32, i32* @g_cpu_ir, align 4
  %54 = call i8* @get_ea_mode_str_32(i32 %53)
  %55 = load i32, i32* %1, align 4
  %56 = and i32 %55, 7
  %57 = load i32, i32* %1, align 4
  %58 = ashr i32 %57, 12
  %59 = and i32 %58, 7
  %60 = call i32 (i32, i8*, i8, i8*, i32, ...) @sprintf(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8 signext %52, i8* %54, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %45, %31
  br label %62

62:                                               ; preds = %61, %8
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
