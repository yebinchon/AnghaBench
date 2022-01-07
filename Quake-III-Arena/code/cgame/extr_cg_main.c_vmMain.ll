; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_main.c_vmMain.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_main.c_vmMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"vmMain: unknown command %i\00", align 1
@cgDC = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@cgs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmMain(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %15, align 4
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  %28 = load i32, i32* %15, align 4
  switch i32 %28, label %58 [
    i32 132, label %29
    i32 128, label %34
    i32 136, label %36
    i32 134, label %38
    i32 135, label %43
    i32 130, label %45
    i32 131, label %47
    i32 129, label %51
    i32 133, label %55
  ]

29:                                               ; preds = %13
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %18, align 4
  %33 = call i32 @CG_Init(i32 %30, i32 %31, i32 %32)
  store i32 0, i32* %14, align 4
  br label %62

34:                                               ; preds = %13
  %35 = call i32 (...) @CG_Shutdown()
  store i32 0, i32* %14, align 4
  br label %62

36:                                               ; preds = %13
  %37 = call i32 (...) @CG_ConsoleCommand()
  store i32 %37, i32* %14, align 4
  br label %62

38:                                               ; preds = %13
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %18, align 4
  %42 = call i32 @CG_DrawActiveFrame(i32 %39, i32 %40, i32 %41)
  store i32 0, i32* %14, align 4
  br label %62

43:                                               ; preds = %13
  %44 = call i32 (...) @CG_CrosshairPlayer()
  store i32 %44, i32* %14, align 4
  br label %62

45:                                               ; preds = %13
  %46 = call i32 (...) @CG_LastAttacker()
  store i32 %46, i32* %14, align 4
  br label %62

47:                                               ; preds = %13
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @CG_KeyEvent(i32 %48, i32 %49)
  store i32 0, i32* %14, align 4
  br label %62

51:                                               ; preds = %13
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @CG_MouseEvent(i32 %52, i32 %53)
  store i32 0, i32* %14, align 4
  br label %62

55:                                               ; preds = %13
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @CG_EventHandling(i32 %56)
  store i32 0, i32* %14, align 4
  br label %62

58:                                               ; preds = %13
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @CG_Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58
  store i32 -1, i32* %14, align 4
  br label %62

62:                                               ; preds = %61, %55, %51, %47, %45, %43, %38, %36, %34, %29
  %63 = load i32, i32* %14, align 4
  ret i32 %63
}

declare dso_local i32 @CG_Init(i32, i32, i32) #1

declare dso_local i32 @CG_Shutdown(...) #1

declare dso_local i32 @CG_ConsoleCommand(...) #1

declare dso_local i32 @CG_DrawActiveFrame(i32, i32, i32) #1

declare dso_local i32 @CG_CrosshairPlayer(...) #1

declare dso_local i32 @CG_LastAttacker(...) #1

declare dso_local i32 @CG_KeyEvent(i32, i32) #1

declare dso_local i32 @CG_MouseEvent(i32, i32) #1

declare dso_local i32 @CG_EventHandling(i32) #1

declare dso_local i32 @CG_Error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
