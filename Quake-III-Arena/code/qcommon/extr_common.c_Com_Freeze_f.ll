; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_Freeze_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_Freeze_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"freeze <seconds>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Com_Freeze_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Com_Freeze_f() #0 {
  %1 = alloca float, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @Cmd_Argc()
  %5 = icmp ne i32 %4, 2
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @Com_Printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %24

8:                                                ; preds = %0
  %9 = call i32 @Cmd_Argv(i32 1)
  %10 = call float @atof(i32 %9)
  store float %10, float* %1, align 4
  %11 = call i32 (...) @Com_Milliseconds()
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %8, %23
  %13 = call i32 (...) @Com_Milliseconds()
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = sub nsw i32 %14, %15
  %17 = sitofp i32 %16 to double
  %18 = fmul double %17, 1.000000e-03
  %19 = load float, float* %1, align 4
  %20 = fpext float %19 to double
  %21 = fcmp ogt double %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %24

23:                                               ; preds = %12
  br label %12

24:                                               ; preds = %6, %22
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local float @atof(i32) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i32 @Com_Milliseconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
