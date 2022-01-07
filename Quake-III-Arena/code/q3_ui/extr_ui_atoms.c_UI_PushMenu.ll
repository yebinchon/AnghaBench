; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_atoms.c_UI_PushMenu.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_atoms.c_UI_PushMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, %struct.TYPE_6__*, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, i32, i64*, i64 }
%struct.TYPE_7__ = type { i32 }

@uis = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@MAX_MENUDEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"UI_PushMenu: menu stack overflow\00", align 1
@qtrue = common dso_local global i8* null, align 8
@m_entersound = common dso_local global i8* null, align 8
@KEYCATCH_UI = common dso_local global i32 0, align 4
@QMF_GRAYED = common dso_local global i32 0, align 4
@QMF_MOUSEONLY = common dso_local global i32 0, align 4
@QMF_INACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_PushMenu(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uis, i32 0, i32 0), align 8
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uis, i32 0, i32 3), align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %10, i64 %12
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = icmp eq %struct.TYPE_6__* %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uis, i32 0, i32 0), align 8
  br label %23

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5

23:                                               ; preds = %17, %5
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uis, i32 0, i32 0), align 8
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uis, i32 0, i32 0), align 8
  %29 = load i32, i32* @MAX_MENUDEPTH, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @trap_Error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uis, i32 0, i32 3), align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uis, i32 0, i32 0), align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uis, i32 0, i32 0), align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %35, i64 %38
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %39, align 8
  br label %40

40:                                               ; preds = %33, %23
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uis, i32 0, i32 2), align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load i8*, i8** @qtrue, align 8
  store i8* %46, i8** @m_entersound, align 8
  %47 = load i32, i32* @KEYCATCH_UI, align 4
  %48 = call i32 @trap_Key_SetCatcher(i32 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %81, %40
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %49
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %4, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @QMF_GRAYED, align 4
  %68 = load i32, i32* @QMF_MOUSEONLY, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @QMF_INACTIVE, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %66, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %55
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 -1, i32* %76, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @Menu_SetCursor(%struct.TYPE_6__* %77, i32 %78)
  br label %84

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %49

84:                                               ; preds = %74, %49
  %85 = load i8*, i8** @qtrue, align 8
  store i8* %85, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uis, i32 0, i32 1), align 8
  ret void
}

declare dso_local i32 @trap_Error(i8*) #1

declare dso_local i32 @trap_Key_SetCatcher(i32) #1

declare dso_local i32 @Menu_SetCursor(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
