; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_amenu_loop_options.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_amenu_loop_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@amenu_loop_options.menu_sel = internal global i32 0, align 4
@opt2_entries = common dso_local global i32 0, align 4
@OPT2_ENTRY_COUNT = common dso_local global i32 0, align 4
@PBTN_UP = common dso_local global i64 0, align 8
@PBTN_DOWN = common dso_local global i64 0, align 8
@PBTN_LEFT = common dso_local global i64 0, align 8
@PBTN_RIGHT = common dso_local global i64 0, align 8
@PBTN_X = common dso_local global i64 0, align 8
@PBTN_CIRCLE = common dso_local global i64 0, align 8
@MA_OPT2_GAMMA = common dso_local global i32 0, align 4
@MA_OPT2_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @amenu_loop_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amenu_loop_options() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 0, i64* %2, align 8
  %4 = load i32, i32* @opt2_entries, align 4
  %5 = load i32, i32* @OPT2_ENTRY_COUNT, align 4
  %6 = call i32 @me_count_enabled(i32 %4, i32 %5)
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %1, align 4
  br label %8

8:                                                ; preds = %100, %0
  %9 = load i32, i32* @amenu_loop_options.menu_sel, align 4
  %10 = call i32 @draw_amenu_options(i32 %9)
  %11 = load i64, i64* @PBTN_UP, align 8
  %12 = load i64, i64* @PBTN_DOWN, align 8
  %13 = or i64 %11, %12
  %14 = load i64, i64* @PBTN_LEFT, align 8
  %15 = or i64 %13, %14
  %16 = load i64, i64* @PBTN_RIGHT, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* @PBTN_X, align 8
  %19 = or i64 %17, %18
  %20 = load i64, i64* @PBTN_CIRCLE, align 8
  %21 = or i64 %19, %20
  %22 = call i64 @in_menu_wait(i64 %21, i32 0)
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @PBTN_UP, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %8
  %28 = load i32, i32* @amenu_loop_options.menu_sel, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* @amenu_loop_options.menu_sel, align 4
  %30 = load i32, i32* @amenu_loop_options.menu_sel, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %1, align 4
  store i32 %33, i32* @amenu_loop_options.menu_sel, align 4
  br label %34

34:                                               ; preds = %32, %27
  br label %35

35:                                               ; preds = %34, %8
  %36 = load i64, i64* %2, align 8
  %37 = load i64, i64* @PBTN_DOWN, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* @amenu_loop_options.menu_sel, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @amenu_loop_options.menu_sel, align 4
  %43 = load i32, i32* @amenu_loop_options.menu_sel, align 4
  %44 = load i32, i32* %1, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* @amenu_loop_options.menu_sel, align 4
  br label %47

47:                                               ; preds = %46, %40
  br label %48

48:                                               ; preds = %47, %35
  %49 = load i32, i32* @opt2_entries, align 4
  %50 = load i32, i32* @OPT2_ENTRY_COUNT, align 4
  %51 = load i32, i32* @amenu_loop_options.menu_sel, align 4
  %52 = call i32 @me_index2id(i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i64, i64* %2, align 8
  %54 = load i64, i64* @PBTN_LEFT, align 8
  %55 = load i64, i64* @PBTN_RIGHT, align 8
  %56 = or i64 %54, %55
  %57 = and i64 %53, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %48
  %60 = load i32, i32* @opt2_entries, align 4
  %61 = load i32, i32* @OPT2_ENTRY_COUNT, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i64, i64* %2, align 8
  %64 = load i64, i64* @PBTN_RIGHT, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = call i32 @me_process(i32 %60, i32 %61, i32 %62, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @MA_OPT2_GAMMA, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %71, %59
  br label %77

77:                                               ; preds = %76, %48
  %78 = load i64, i64* %2, align 8
  %79 = load i64, i64* @PBTN_CIRCLE, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load i32, i32* @opt2_entries, align 4
  %84 = load i32, i32* @OPT2_ENTRY_COUNT, align 4
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @me_process(i32 %83, i32 %84, i32 %85, i32 1)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @MA_OPT2_DONE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %101

93:                                               ; preds = %88, %82
  br label %94

94:                                               ; preds = %93, %77
  %95 = load i64, i64* %2, align 8
  %96 = load i64, i64* @PBTN_X, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %101

100:                                              ; preds = %94
  br label %8

101:                                              ; preds = %99, %92
  ret void
}

declare dso_local i32 @me_count_enabled(i32, i32) #1

declare dso_local i32 @draw_amenu_options(i32) #1

declare dso_local i64 @in_menu_wait(i64, i32) #1

declare dso_local i32 @me_index2id(i32, i32, i32) #1

declare dso_local i32 @me_process(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
