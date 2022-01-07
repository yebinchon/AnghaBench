; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_wndproc.c_MapKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_wndproc.c_MapKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@s_scantokey = common dso_local global i32* null, align 8
@K_KP_HOME = common dso_local global i32 0, align 4
@K_KP_UPARROW = common dso_local global i32 0, align 4
@K_KP_PGUP = common dso_local global i32 0, align 4
@K_KP_LEFTARROW = common dso_local global i32 0, align 4
@K_KP_RIGHTARROW = common dso_local global i32 0, align 4
@K_KP_END = common dso_local global i32 0, align 4
@K_KP_DOWNARROW = common dso_local global i32 0, align 4
@K_KP_PGDN = common dso_local global i32 0, align 4
@K_KP_INS = common dso_local global i32 0, align 4
@K_KP_DEL = common dso_local global i32 0, align 4
@K_KP_NUMLOCK = common dso_local global i32 0, align 4
@K_KP_ENTER = common dso_local global i32 0, align 4
@K_KP_SLASH = common dso_local global i32 0, align 4
@K_KP_PLUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @MapKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MapKey(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = ashr i32 %7, 16
  %9 = and i32 %8, 255
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 127
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 16777216
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @qtrue, align 4
  store i32 %18, i32* %6, align 4
  br label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @qfalse, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i32*, i32** @s_scantokey, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %51 [
    i32 135, label %31
    i32 128, label %33
    i32 130, label %35
    i32 133, label %37
    i32 129, label %39
    i32 136, label %41
    i32 137, label %43
    i32 131, label %45
    i32 134, label %47
    i32 138, label %49
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @K_KP_HOME, align 4
  store i32 %32, i32* %2, align 4
  br label %65

33:                                               ; preds = %29
  %34 = load i32, i32* @K_KP_UPARROW, align 4
  store i32 %34, i32* %2, align 4
  br label %65

35:                                               ; preds = %29
  %36 = load i32, i32* @K_KP_PGUP, align 4
  store i32 %36, i32* %2, align 4
  br label %65

37:                                               ; preds = %29
  %38 = load i32, i32* @K_KP_LEFTARROW, align 4
  store i32 %38, i32* %2, align 4
  br label %65

39:                                               ; preds = %29
  %40 = load i32, i32* @K_KP_RIGHTARROW, align 4
  store i32 %40, i32* %2, align 4
  br label %65

41:                                               ; preds = %29
  %42 = load i32, i32* @K_KP_END, align 4
  store i32 %42, i32* %2, align 4
  br label %65

43:                                               ; preds = %29
  %44 = load i32, i32* @K_KP_DOWNARROW, align 4
  store i32 %44, i32* %2, align 4
  br label %65

45:                                               ; preds = %29
  %46 = load i32, i32* @K_KP_PGDN, align 4
  store i32 %46, i32* %2, align 4
  br label %65

47:                                               ; preds = %29
  %48 = load i32, i32* @K_KP_INS, align 4
  store i32 %48, i32* %2, align 4
  br label %65

49:                                               ; preds = %29
  %50 = load i32, i32* @K_KP_DEL, align 4
  store i32 %50, i32* %2, align 4
  br label %65

51:                                               ; preds = %29
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %65

53:                                               ; preds = %21
  %54 = load i32, i32* %4, align 4
  switch i32 %54, label %63 [
    i32 132, label %55
    i32 13, label %57
    i32 47, label %59
    i32 175, label %61
  ]

55:                                               ; preds = %53
  %56 = load i32, i32* @K_KP_NUMLOCK, align 4
  store i32 %56, i32* %2, align 4
  br label %65

57:                                               ; preds = %53
  %58 = load i32, i32* @K_KP_ENTER, align 4
  store i32 %58, i32* %2, align 4
  br label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @K_KP_SLASH, align 4
  store i32 %60, i32* %2, align 4
  br label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @K_KP_PLUS, align 4
  store i32 %62, i32* %2, align 4
  br label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %61, %59, %57, %55, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
