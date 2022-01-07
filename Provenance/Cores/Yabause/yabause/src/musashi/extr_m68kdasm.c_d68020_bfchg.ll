; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kdasm.c_d68020_bfchg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kdasm.c_d68020_bfchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M68020_PLUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"D%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@g_5bit_data_table = common dso_local global i32* null, align 8
@g_dasm_str = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"bfchg   %s {%s:%s}; (2+)\00", align 1
@g_cpu_ir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @d68020_bfchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68020_bfchg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x i8], align 1
  %3 = alloca [3 x i8], align 1
  %4 = load i32, i32* @M68020_PLUS, align 4
  %5 = call i32 @LIMIT_CPU_TYPES(i32 %4)
  %6 = call i32 (...) @read_imm_16()
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i64 @BIT_B(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 0
  %12 = load i32, i32* %1, align 4
  %13 = ashr i32 %12, 6
  %14 = and i32 %13, 7
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %22

16:                                               ; preds = %0
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 0
  %18 = load i32, i32* %1, align 4
  %19 = ashr i32 %18, 6
  %20 = and i32 %19, 31
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %16, %10
  %23 = load i32, i32* %1, align 4
  %24 = call i64 @BIT_5(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %28 = load i32, i32* %1, align 4
  %29 = and i32 %28, 7
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %40

31:                                               ; preds = %22
  %32 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %33 = load i32*, i32** @g_5bit_data_table, align 8
  %34 = load i32, i32* %1, align 4
  %35 = and i32 %34, 31
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %31, %26
  %41 = load i32, i32* @g_dasm_str, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load i32, i32* @g_cpu_ir, align 4
  %45 = call i8* @get_ea_mode_str_8(i32 %44)
  %46 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 0
  %47 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %48 = call i32 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* %46, i8* %47)
  ret void
}

declare dso_local i32 @LIMIT_CPU_TYPES(i32) #1

declare dso_local i32 @read_imm_16(...) #1

declare dso_local i64 @BIT_B(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @BIT_5(i32) #1

declare dso_local i8* @get_ea_mode_str_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
