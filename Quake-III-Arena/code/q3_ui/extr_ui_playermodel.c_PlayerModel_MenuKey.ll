; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_playermodel.c_PlayerModel_MenuKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_playermodel.c_PlayerModel_MenuKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@s_playermodel = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ID_PLAYERPIC0 = common dso_local global i32 0, align 4
@menu_move_sound = common dso_local global i32 0, align 4
@menu_buzz_sound = common dso_local global i32 0, align 4
@MAX_MODELSPERPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @PlayerModel_MenuKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PlayerModel_MenuKey(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %91 [
    i32 132, label %7
    i32 130, label %7
    i32 131, label %41
    i32 128, label %41
    i32 129, label %89
    i32 133, label %89
  ]

7:                                                ; preds = %1, %1
  %8 = call %struct.TYPE_7__* @Menu_ItemAtCursor(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 1))
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ID_PLAYERPIC0, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %7
  %17 = load i32, i32* %5, align 4
  %18 = icmp sle i32 %17, 15
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 1, i32 0), align 4
  %24 = sub nsw i32 %23, 1
  %25 = call i32 @Menu_SetCursor(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 1), i32 %24)
  %26 = load i32, i32* @menu_move_sound, align 4
  store i32 %26, i32* %2, align 4
  br label %94

27:                                               ; preds = %19
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 0), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 0), align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 0), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 1, i32 0), align 4
  %34 = add nsw i32 %33, 15
  %35 = call i32 @Menu_SetCursor(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 1), i32 %34)
  %36 = call i32 (...) @PlayerModel_UpdateGrid()
  %37 = load i32, i32* @menu_move_sound, align 4
  store i32 %37, i32* %2, align 4
  br label %94

38:                                               ; preds = %27
  %39 = load i32, i32* @menu_buzz_sound, align 4
  store i32 %39, i32* %2, align 4
  br label %94

40:                                               ; preds = %16, %7
  br label %91

41:                                               ; preds = %1, %1
  %42 = call %struct.TYPE_7__* @Menu_ItemAtCursor(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 1))
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %4, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ID_PLAYERPIC0, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %41
  %51 = load i32, i32* %5, align 4
  %52 = icmp sle i32 %51, 15
  br i1 %52, label %53, label %88

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 15
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 0), align 4
  %58 = load i32, i32* @MAX_MODELSPERPAGE, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %59, %60
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 3), align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 1, i32 0), align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @Menu_SetCursor(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 1), i32 %67)
  %69 = load i32, i32* @menu_move_sound, align 4
  store i32 %69, i32* %2, align 4
  br label %94

70:                                               ; preds = %56, %53
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 15
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 0), align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 2), align 4
  %76 = sub nsw i32 %75, 1
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 0), align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 0), align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 1, i32 0), align 4
  %82 = sub nsw i32 %81, 15
  %83 = call i32 @Menu_SetCursor(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 1), i32 %82)
  %84 = call i32 (...) @PlayerModel_UpdateGrid()
  %85 = load i32, i32* @menu_move_sound, align 4
  store i32 %85, i32* %2, align 4
  br label %94

86:                                               ; preds = %73, %70
  %87 = load i32, i32* @menu_buzz_sound, align 4
  store i32 %87, i32* %2, align 4
  br label %94

88:                                               ; preds = %50, %41
  br label %91

89:                                               ; preds = %1, %1
  %90 = call i32 (...) @PlayerModel_SaveChanges()
  br label %91

91:                                               ; preds = %1, %89, %88, %40
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @Menu_DefaultKey(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playermodel, i32 0, i32 1), i32 %92)
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %91, %86, %78, %65, %38, %30, %22
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.TYPE_7__* @Menu_ItemAtCursor(%struct.TYPE_9__*) #1

declare dso_local i32 @Menu_SetCursor(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @PlayerModel_UpdateGrid(...) #1

declare dso_local i32 @PlayerModel_SaveChanges(...) #1

declare dso_local i32 @Menu_DefaultKey(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
