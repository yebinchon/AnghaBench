; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_atoms.c_UI_Refresh.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_atoms.c_UI_Refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i32, i8*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 (...)*, i64, i64 }

@uis = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@KEYCATCH_UI = common dso_local global i32 0, align 4
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@SCREEN_HEIGHT = common dso_local global i32 0, align 4
@qfalse = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"(%d,%d)\00", align 1
@UI_LEFT = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@colorRed = common dso_local global i32 0, align 4
@m_entersound = common dso_local global i8* null, align 8
@menu_in_sound = common dso_local global i32 0, align 4
@CHAN_LOCAL_SOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_Refresh(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 1), align 4
  %5 = sub nsw i32 %3, %4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 0), align 8
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 1), align 4
  %7 = call i32 (...) @trap_Key_GetCatcher()
  %8 = load i32, i32* @KEYCATCH_UI, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %84

12:                                               ; preds = %1
  %13 = call i32 (...) @UI_UpdateCvars()
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 7), align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %57

16:                                               ; preds = %12
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 7), align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 7), align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* @SCREEN_WIDTH, align 4
  %28 = load i32, i32* @SCREEN_HEIGHT, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 9), align 4
  %30 = call i32 @UI_DrawHandlePic(i64 0, i64 0, i32 %27, i32 %28, i32 %29)
  br label %36

31:                                               ; preds = %21
  %32 = load i32, i32* @SCREEN_WIDTH, align 4
  %33 = load i32, i32* @SCREEN_HEIGHT, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 8), align 8
  %35 = call i32 @UI_DrawHandlePic(i64 0, i64 0, i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  br label %37

37:                                               ; preds = %36, %16
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 7), align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (...)*, i32 (...)** %39, align 8
  %41 = icmp ne i32 (...)* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 7), align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (...)*, i32 (...)** %44, align 8
  %46 = call i32 (...) %45()
  br label %50

47:                                               ; preds = %37
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 7), align 8
  %49 = call i32 @Menu_Draw(%struct.TYPE_4__* %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 6), align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = call i32 @UI_MouseEvent(i32 0, i32 0)
  %55 = load i8*, i8** @qfalse, align 8
  store i8* %55, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 6), align 8
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %12
  %58 = call i32 @UI_SetColor(i32* null)
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 3), align 8
  %60 = sub nsw i64 %59, 16
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 2), align 8
  %62 = sub nsw i64 %61, 16
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 5), align 8
  %64 = call i32 @UI_DrawHandlePic(i64 %60, i64 %62, i32 32, i32 32, i32 %63)
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 4), align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %57
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 3), align 8
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 2), align 8
  %70 = call i32 @va(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %69)
  %71 = load i32, i32* @UI_LEFT, align 4
  %72 = load i32, i32* @UI_SMALLFONT, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @colorRed, align 4
  %75 = call i32 @UI_DrawString(i32 0, i32 0, i32 %70, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %67, %57
  %77 = load i8*, i8** @m_entersound, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* @menu_in_sound, align 4
  %81 = load i32, i32* @CHAN_LOCAL_SOUND, align 4
  %82 = call i32 @trap_S_StartLocalSound(i32 %80, i32 %81)
  %83 = load i8*, i8** @qfalse, align 8
  store i8* %83, i8** @m_entersound, align 8
  br label %84

84:                                               ; preds = %11, %79, %76
  ret void
}

declare dso_local i32 @trap_Key_GetCatcher(...) #1

declare dso_local i32 @UI_UpdateCvars(...) #1

declare dso_local i32 @UI_DrawHandlePic(i64, i64, i32, i32, i32) #1

declare dso_local i32 @Menu_Draw(%struct.TYPE_4__*) #1

declare dso_local i32 @UI_MouseEvent(i32, i32) #1

declare dso_local i32 @UI_SetColor(i32*) #1

declare dso_local i32 @UI_DrawString(i32, i32, i32, i32, i32) #1

declare dso_local i32 @va(i8*, i64, i64) #1

declare dso_local i32 @trap_S_StartLocalSound(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
