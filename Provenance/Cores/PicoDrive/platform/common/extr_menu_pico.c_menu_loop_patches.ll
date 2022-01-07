; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_menu_loop_patches.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_menu_loop_patches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@menu_loop_patches.menu_sel = internal global i32 0, align 4
@PBTN_UP = common dso_local global i32 0, align 4
@PBTN_DOWN = common dso_local global i32 0, align 4
@PBTN_LEFT = common dso_local global i32 0, align 4
@PBTN_RIGHT = common dso_local global i32 0, align 4
@PBTN_L = common dso_local global i32 0, align 4
@PBTN_R = common dso_local global i32 0, align 4
@PBTN_MOK = common dso_local global i32 0, align 4
@PBTN_MBACK = common dso_local global i32 0, align 4
@PicoPatchCount = common dso_local global i32 0, align 4
@PicoPatches = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @menu_loop_patches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_loop_patches() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %108, %0
  %3 = load i32, i32* @menu_loop_patches.menu_sel, align 4
  %4 = call i32 @draw_patchlist(i32 %3)
  %5 = load i32, i32* @PBTN_UP, align 4
  %6 = load i32, i32* @PBTN_DOWN, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @PBTN_LEFT, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @PBTN_RIGHT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PBTN_L, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @PBTN_R, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PBTN_MOK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PBTN_MBACK, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @in_menu_wait(i32 %19, i32* null, i32 33)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @PBTN_UP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load i32, i32* @menu_loop_patches.menu_sel, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* @menu_loop_patches.menu_sel, align 4
  %28 = load i32, i32* @menu_loop_patches.menu_sel, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @PicoPatchCount, align 4
  store i32 %31, i32* @menu_loop_patches.menu_sel, align 4
  br label %32

32:                                               ; preds = %30, %25
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @PBTN_DOWN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* @menu_loop_patches.menu_sel, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @menu_loop_patches.menu_sel, align 4
  %41 = load i32, i32* @menu_loop_patches.menu_sel, align 4
  %42 = load i32, i32* @PicoPatchCount, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* @menu_loop_patches.menu_sel, align 4
  br label %45

45:                                               ; preds = %44, %38
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* @PBTN_LEFT, align 4
  %49 = load i32, i32* @PBTN_L, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i32, i32* @menu_loop_patches.menu_sel, align 4
  %55 = sub nsw i32 %54, 10
  store i32 %55, i32* @menu_loop_patches.menu_sel, align 4
  %56 = load i32, i32* @menu_loop_patches.menu_sel, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* @menu_loop_patches.menu_sel, align 4
  br label %59

59:                                               ; preds = %58, %53
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @PBTN_RIGHT, align 4
  %63 = load i32, i32* @PBTN_R, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load i32, i32* @menu_loop_patches.menu_sel, align 4
  %69 = add nsw i32 %68, 10
  store i32 %69, i32* @menu_loop_patches.menu_sel, align 4
  %70 = load i32, i32* @menu_loop_patches.menu_sel, align 4
  %71 = load i32, i32* @PicoPatchCount, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @PicoPatchCount, align 4
  store i32 %74, i32* @menu_loop_patches.menu_sel, align 4
  br label %75

75:                                               ; preds = %73, %67
  br label %76

76:                                               ; preds = %75, %60
  %77 = load i32, i32* %1, align 4
  %78 = load i32, i32* @PBTN_MOK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %76
  %82 = load i32, i32* @menu_loop_patches.menu_sel, align 4
  %83 = load i32, i32* @PicoPatchCount, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PicoPatches, align 8
  %87 = load i32, i32* @menu_loop_patches.menu_sel, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PicoPatches, align 8
  %96 = load i32, i32* @menu_loop_patches.menu_sel, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 %94, i32* %99, align 4
  br label %101

100:                                              ; preds = %81
  br label %109

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %101, %76
  %103 = load i32, i32* %1, align 4
  %104 = load i32, i32* @PBTN_MBACK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %109

108:                                              ; preds = %102
  br label %2

109:                                              ; preds = %107, %100
  ret void
}

declare dso_local i32 @draw_patchlist(i32) #1

declare dso_local i32 @in_menu_wait(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
