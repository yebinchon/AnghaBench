; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_savestate_menu_loop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_savestate_menu_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@savestate_menu_loop.menu_sel = internal global i32 10, align 4
@PBTN_UP = common dso_local global i64 0, align 8
@PBTN_DOWN = common dso_local global i64 0, align 8
@PBTN_X = common dso_local global i64 0, align 8
@PBTN_CIRCLE = common dso_local global i64 0, align 8
@state_slot_flags = common dso_local global i32 0, align 4
@state_slot = common dso_local global i32 0, align 4
@emu_msg_cb = common dso_local global i32 0, align 4
@PicoStateProgressCB = common dso_local global i32 0, align 4
@menuErrorMsg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Load failed\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Save failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @savestate_menu_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savestate_menu_loop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 10, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %6 = call i32 (...) @state_check_slots()
  br label %7

7:                                                ; preds = %107, %1
  %8 = load i32, i32* @savestate_menu_loop.menu_sel, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @draw_savestate_menu(i32 %8, i32 %9)
  %11 = load i64, i64* @PBTN_UP, align 8
  %12 = load i64, i64* @PBTN_DOWN, align 8
  %13 = or i64 %11, %12
  %14 = load i64, i64* @PBTN_X, align 8
  %15 = or i64 %13, %14
  %16 = load i64, i64* @PBTN_CIRCLE, align 8
  %17 = or i64 %15, %16
  %18 = call i64 @in_menu_wait(i64 %17, i32 0)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @PBTN_UP, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %7
  br label %24

24:                                               ; preds = %45, %23
  %25 = load i32, i32* @savestate_menu_loop.menu_sel, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @savestate_menu_loop.menu_sel, align 4
  %27 = load i32, i32* @savestate_menu_loop.menu_sel, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* @savestate_menu_loop.menu_sel, align 4
  br label %31

31:                                               ; preds = %29, %24
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* @state_slot_flags, align 4
  %34 = load i32, i32* @savestate_menu_loop.menu_sel, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @savestate_menu_loop.menu_sel, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %42, %38, %32
  %46 = phi i1 [ false, %38 ], [ false, %32 ], [ %44, %42 ]
  br i1 %46, label %24, label %47

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47, %7
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @PBTN_DOWN, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %75, %53
  %55 = load i32, i32* @savestate_menu_loop.menu_sel, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @savestate_menu_loop.menu_sel, align 4
  %57 = load i32, i32* @savestate_menu_loop.menu_sel, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* @savestate_menu_loop.menu_sel, align 4
  br label %61

61:                                               ; preds = %60, %54
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* @state_slot_flags, align 4
  %64 = load i32, i32* @savestate_menu_loop.menu_sel, align 4
  %65 = shl i32 1, %64
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @savestate_menu_loop.menu_sel, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %72, %68, %62
  %76 = phi i1 [ false, %68 ], [ false, %62 ], [ %74, %72 ]
  br i1 %76, label %54, label %77

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %77, %48
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* @PBTN_CIRCLE, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %78
  %84 = load i32, i32* @savestate_menu_loop.menu_sel, align 4
  %85 = icmp slt i32 %84, 10
  br i1 %85, label %86, label %100

86:                                               ; preds = %83
  %87 = load i32, i32* @savestate_menu_loop.menu_sel, align 4
  store i32 %87, i32* @state_slot, align 4
  %88 = load i32, i32* @emu_msg_cb, align 4
  store i32 %88, i32* @PicoStateProgressCB, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i64 @emu_SaveLoadGame(i32 %89, i32 0)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load i32, i32* @menuErrorMsg, align 4
  %94 = load i32, i32* %3, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)
  %98 = call i32 @strcpy(i32 %93, i8* %97)
  store i32 1, i32* %2, align 4
  br label %108

99:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %108

100:                                              ; preds = %83
  store i32 1, i32* %2, align 4
  br label %108

101:                                              ; preds = %78
  %102 = load i64, i64* %5, align 8
  %103 = load i64, i64* @PBTN_X, align 8
  %104 = and i64 %102, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 1, i32* %2, align 4
  br label %108

107:                                              ; preds = %101
  br label %7

108:                                              ; preds = %106, %100, %99, %92
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @state_check_slots(...) #1

declare dso_local i32 @draw_savestate_menu(i32, i32) #1

declare dso_local i64 @in_menu_wait(i64, i32) #1

declare dso_local i64 @emu_SaveLoadGame(i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
