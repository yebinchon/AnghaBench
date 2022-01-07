; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_splevel.c_UI_SPLevelMenu_SetBots.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_splevel.c_UI_SPLevelMenu_SetBots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8**, i64* }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@levelMenuInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@selectedArenaSet = common dso_local global i64 0, align 8
@currentSet = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"bots\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_SPLevelMenu_SetBots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_SPLevelMenu_SetBots() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_INFO_STRING, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %11 = load i64, i64* @selectedArenaSet, align 8
  %12 = load i64, i64* @currentSet, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  store i32 1, i32* %6, align 4
  br label %118

15:                                               ; preds = %0
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 1), align 8
  %17 = call i8* @Info_ValueForKey(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = trunc i64 %8 to i32
  %19 = call i32 @Q_strncpyz(i8* %10, i8* %17, i32 %18)
  %20 = getelementptr inbounds i8, i8* %10, i64 0
  store i8* %20, i8** %1, align 8
  br label %21

21:                                               ; preds = %108, %15
  %22 = load i8*, i8** %1, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %28 = icmp slt i32 %27, 7
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i1 [ false, %21 ], [ %28, %26 ]
  br i1 %30, label %31, label %117

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %44, %31
  %33 = load i8*, i8** %1, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %1, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 32
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ false, %32 ], [ %41, %37 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i8*, i8** %1, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %1, align 8
  br label %32

47:                                               ; preds = %42
  %48 = load i8*, i8** %1, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %117

51:                                               ; preds = %47
  %52 = load i8*, i8** %1, align 8
  store i8* %52, i8** %2, align 8
  br label %53

53:                                               ; preds = %65, %51
  %54 = load i8*, i8** %1, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i8*, i8** %1, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 32
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi i1 [ false, %53 ], [ %62, %58 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i8*, i8** %1, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %1, align 8
  br label %53

68:                                               ; preds = %63
  %69 = load i8*, i8** %1, align 8
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i8*, i8** %1, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %1, align 8
  store i8 0, i8* %73, align 1
  br label %75

75:                                               ; preds = %72, %68
  %76 = load i8*, i8** %2, align 8
  %77 = call i8* @UI_GetBotInfoByName(i8* %76)
  store i8* %77, i8** %3, align 8
  %78 = load i8*, i8** %3, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load i8*, i8** %3, align 8
  %82 = call i8* @Info_ValueForKey(i8* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %83 = call i64 @PlayerIconHandle(i8* %82)
  %84 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 3), align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 %83, i64* %87, align 8
  %88 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 2), align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = call i8* @Info_ValueForKey(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %95 = call i32 @Q_strncpyz(i8* %92, i8* %94, i32 10)
  br label %108

96:                                               ; preds = %75
  %97 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 3), align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64 0, i64* %100, align 8
  %101 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 2), align 8
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = load i8*, i8** %2, align 8
  %107 = call i32 @Q_strncpyz(i8* %105, i8* %106, i32 10)
  br label %108

108:                                              ; preds = %96, %80
  %109 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 2), align 8
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @Q_CleanStr(i8* %113)
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  br label %21

117:                                              ; preds = %50, %29
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %14
  %119 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %6, align 4
  switch i32 %120, label %122 [
    i32 0, label %121
    i32 1, label %121
  ]

121:                                              ; preds = %118, %118
  ret void

122:                                              ; preds = %118
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i8* @UI_GetBotInfoByName(i8*) #2

declare dso_local i64 @PlayerIconHandle(i8*) #2

declare dso_local i32 @Q_CleanStr(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
