; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_drawWidgets.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_drawWidgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@st_statusbaron = common dso_local global i64 0, align 8
@deathmatch = common dso_local global i64 0, align 8
@st_armson = common dso_local global i32 0, align 4
@st_fragson = common dso_local global i32 0, align 4
@w_ready = common dso_local global i32 0, align 4
@w_ammo = common dso_local global i32* null, align 8
@w_maxammo = common dso_local global i32* null, align 8
@w_health = common dso_local global i32 0, align 4
@w_armor = common dso_local global i32 0, align 4
@w_armsbg = common dso_local global i32 0, align 4
@w_arms = common dso_local global i32* null, align 8
@w_faces = common dso_local global i32 0, align 4
@w_keyboxes = common dso_local global i32* null, align 8
@w_frags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ST_drawWidgets(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @st_statusbaron, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i64, i64* @deathmatch, align 8
  %8 = icmp ne i64 %7, 0
  %9 = xor i1 %8, true
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  store i32 %12, i32* @st_armson, align 4
  %13 = load i64, i64* @deathmatch, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i64, i64* @st_statusbaron, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi i1 [ false, %10 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* @st_fragson, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @STlib_updateNum(i32* @w_ready, i32 %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %39, %18
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load i32*, i32** @w_ammo, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @STlib_updateNum(i32* %30, i32 %31)
  %33 = load i32*, i32** @w_maxammo, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @STlib_updateNum(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %23

42:                                               ; preds = %23
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @STlib_updatePercent(i32* @w_health, i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @STlib_updatePercent(i32* @w_armor, i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @STlib_updateBinIcon(i32* @w_armsbg, i32 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %59, %42
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 6
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32*, i32** @w_arms, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @STlib_updateMultIcon(i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %49

62:                                               ; preds = %49
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @STlib_updateMultIcon(i32* @w_faces, i32 %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %75, %62
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %66, 3
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i32*, i32** @w_keyboxes, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @STlib_updateMultIcon(i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %65

78:                                               ; preds = %65
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @STlib_updateNum(i32* @w_frags, i32 %79)
  ret void
}

declare dso_local i32 @STlib_updateNum(i32*, i32) #1

declare dso_local i32 @STlib_updatePercent(i32*, i32) #1

declare dso_local i32 @STlib_updateBinIcon(i32*, i32) #1

declare dso_local i32 @STlib_updateMultIcon(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
