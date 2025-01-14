; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_d68040_cinv.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_d68040_cinv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M68040_PLUS = common dso_local global i32 0, align 4
@g_cpu_ir = common dso_local global i32 0, align 4
@g_dasm_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cinv (illegal scope); (4)\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"cinvl   %d, (A%d); (4)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cinvp   %d, (A%d); (4)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"cinva   %d; (4)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @d68040_cinv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68040_cinv() #0 {
  %1 = load i32, i32* @M68040_PLUS, align 4
  %2 = call i32 @LIMIT_CPU_TYPES(i32 %1)
  %3 = load i32, i32* @g_cpu_ir, align 4
  %4 = ashr i32 %3, 3
  %5 = and i32 %4, 3
  switch i32 %5, label %31 [
    i32 0, label %6
    i32 1, label %9
    i32 2, label %17
    i32 3, label %25
  ]

6:                                                ; preds = %0
  %7 = load i32, i32* @g_dasm_str, align 4
  %8 = call i32 (i32, i8*, ...) @sprintf(i32 %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %31

9:                                                ; preds = %0
  %10 = load i32, i32* @g_dasm_str, align 4
  %11 = load i32, i32* @g_cpu_ir, align 4
  %12 = ashr i32 %11, 6
  %13 = and i32 %12, 3
  %14 = load i32, i32* @g_cpu_ir, align 4
  %15 = and i32 %14, 7
  %16 = call i32 (i32, i8*, ...) @sprintf(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %15)
  br label %31

17:                                               ; preds = %0
  %18 = load i32, i32* @g_dasm_str, align 4
  %19 = load i32, i32* @g_cpu_ir, align 4
  %20 = ashr i32 %19, 6
  %21 = and i32 %20, 3
  %22 = load i32, i32* @g_cpu_ir, align 4
  %23 = and i32 %22, 7
  %24 = call i32 (i32, i8*, ...) @sprintf(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %23)
  br label %31

25:                                               ; preds = %0
  %26 = load i32, i32* @g_dasm_str, align 4
  %27 = load i32, i32* @g_cpu_ir, align 4
  %28 = ashr i32 %27, 6
  %29 = and i32 %28, 3
  %30 = call i32 (i32, i8*, ...) @sprintf(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %0, %25, %17, %9, %6
  ret void
}

declare dso_local i32 @LIMIT_CPU_TYPES(i32) #1

declare dso_local i32 @sprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
