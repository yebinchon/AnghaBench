; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Script_SetItemColor.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Script_SetItemColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32*, i32, i32*, i32* }

@.str = private unnamed_addr constant [10 x i8] c"backcolor\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"forecolor\00", align 1
@WINDOW_FORECOLORSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"bordercolor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_SetItemColor(%struct.TYPE_6__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %13 = load i8**, i8*** %4, align 8
  %14 = call i64 @String_Parse(i8** %13, i8** %5)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %104

16:                                               ; preds = %2
  %17 = load i8**, i8*** %4, align 8
  %18 = call i64 @String_Parse(i8** %17, i8** %6)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %104

20:                                               ; preds = %16
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @Menu_ItemsMatchingGroup(i32 %23, i8* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i8**, i8*** %4, align 8
  %27 = call i32 @Color_Parse(i8** %26, i32** %7)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %104

30:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %100, %30
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %103

35:                                               ; preds = %31
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call %struct.TYPE_6__* @Menu_GetMatchingItemByNumber(i32 %38, i32 %39, i8* %40)
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %10, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %44, label %99

44:                                               ; preds = %35
  store i32** null, i32*** %9, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @Q_stricmp(i8* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  store i32** %51, i32*** %9, align 8
  br label %76

52:                                               ; preds = %44
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @Q_stricmp(i8* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i32** %59, i32*** %9, align 8
  %60 = load i32, i32* @WINDOW_FORECOLORSET, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 8
  br label %75

66:                                               ; preds = %52
  %67 = load i8*, i8** %6, align 8
  %68 = call i64 @Q_stricmp(i8* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32** %73, i32*** %9, align 8
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %56
  br label %76

76:                                               ; preds = %75, %48
  %77 = load i32**, i32*** %9, align 8
  %78 = icmp ne i32** %77, null
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %94, %79
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 4
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32**, i32*** %9, align 8
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %88, i32* %93, align 4
  br label %94

94:                                               ; preds = %83
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %80

97:                                               ; preds = %80
  br label %98

98:                                               ; preds = %97, %76
  br label %99

99:                                               ; preds = %98, %35
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %31

103:                                              ; preds = %31
  br label %104

104:                                              ; preds = %29, %103, %16, %2
  ret void
}

declare dso_local i64 @String_Parse(i8**, i8**) #1

declare dso_local i32 @Menu_ItemsMatchingGroup(i32, i8*) #1

declare dso_local i32 @Color_Parse(i8**, i32**) #1

declare dso_local %struct.TYPE_6__* @Menu_GetMatchingItemByNumber(i32, i32, i8*) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
