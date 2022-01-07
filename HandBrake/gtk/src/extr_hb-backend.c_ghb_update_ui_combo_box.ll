; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_update_ui_combo_box.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_update_ui_combo_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32 (%struct.TYPE_8__*, i32*, i32, i8*)* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@GTK_TYPE_COMBO_BOX = common dso_local global i32 0, align 4
@G_SIGNAL_MATCH_ID = common dso_local global i32 0, align 4
@combo_name_map = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_update_ui_combo_box(%struct.TYPE_8__* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32* null, i32** %9, align 8
  store i64 0, i64* %11, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @GHB_WIDGET(i32 %20, i32* %21)
  %23 = call i32* @GTK_COMBO_BOX(i32 %22)
  store i32* %23, i32** %9, align 8
  %24 = load i32, i32* @GTK_TYPE_COMBO_BOX, align 4
  %25 = call i64 @g_signal_lookup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %17
  %29 = load i32*, i32** %9, align 8
  %30 = ptrtoint i32* %29 to i32
  %31 = load i32, i32* @G_SIGNAL_MATCH_ID, align 4
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @g_signal_handler_find(i32 %30, i32 %31, i64 %32, i32 0, i32 0, i32 0, i32 0)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i32*, i32** %9, align 8
  %38 = ptrtoint i32* %37 to i32
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @g_signal_handler_block(i32 %38, i64 %39)
  br label %41

41:                                               ; preds = %36, %28
  br label %42

42:                                               ; preds = %41, %17
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %76

46:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %72, %46
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @combo_name_map, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %75

55:                                               ; preds = %47
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @combo_name_map, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 %58
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %13, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32 (%struct.TYPE_8__*, i32*, i32, i8*)*, i32 (%struct.TYPE_8__*, i32*, i32, i8*)** %61, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 %62(%struct.TYPE_8__* %63, i32* %66, i32 %69, i8* %70)
  br label %72

72:                                               ; preds = %55
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %47

75:                                               ; preds = %47
  br label %95

76:                                               ; preds = %43
  %77 = load i32*, i32** %6, align 8
  %78 = call %struct.TYPE_9__* @find_combo_map(i32* %77)
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %14, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %80 = icmp ne %struct.TYPE_9__* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load i32 (%struct.TYPE_8__*, i32*, i32, i8*)*, i32 (%struct.TYPE_8__*, i32*, i32, i8*)** %83, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 %84(%struct.TYPE_8__* %85, i32* %88, i32 %91, i8* %92)
  br label %94

94:                                               ; preds = %81, %76
  br label %95

95:                                               ; preds = %94, %75
  %96 = load i64, i64* %11, align 8
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32*, i32** %9, align 8
  %100 = ptrtoint i32* %99 to i32
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @g_signal_handler_unblock(i32 %100, i64 %101)
  br label %103

103:                                              ; preds = %98, %95
  ret void
}

declare dso_local i32* @GTK_COMBO_BOX(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i32*) #1

declare dso_local i64 @g_signal_lookup(i8*, i32) #1

declare dso_local i64 @g_signal_handler_find(i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @g_signal_handler_block(i32, i64) #1

declare dso_local %struct.TYPE_9__* @find_combo_map(i32*) #1

declare dso_local i32 @g_signal_handler_unblock(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
