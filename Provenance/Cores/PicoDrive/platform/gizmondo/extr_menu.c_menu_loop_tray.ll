; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_menu_loop_tray.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_menu_loop_tray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@loadedRomFName = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@PBTN_PLAY = common dso_local global i32 0, align 4
@PBTN_UP = common dso_local global i32 0, align 4
@PBTN_DOWN = common dso_local global i32 0, align 4
@romFileName = common dso_local global i32 0, align 4
@CIT_NOT_CD = common dso_local global i32 0, align 4
@menuErrorMsg = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Load failed, invalid CD image?\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PGS_RestartRun = common dso_local global i32 0, align 4
@engineState = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_loop_tray() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = call i32 (...) @menu_gfx_prepare()
  %17 = load i32, i32* @loadedRomFName, align 4
  %18 = call i32* @fopen(i32 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %0
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @fclose(i32* %21)
  %23 = load i32, i32* @loadedRomFName, align 4
  %24 = call i32 @strcpy(i8* %15, i32 %23)
  br label %28

25:                                               ; preds = %0
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = call i32 @getcwd(i8* %15, i32 %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @draw_menu_tray(i32 %29)
  br label %31

31:                                               ; preds = %36, %28
  %32 = call i32 (...) @Framework_PollGetButtons()
  %33 = load i32, i32* @PBTN_PLAY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @Sleep(i32 50)
  br label %31

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %111, %100, %38
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @draw_menu_tray(i32 %40)
  %42 = load i32, i32* @PBTN_UP, align 4
  %43 = load i32, i32* @PBTN_DOWN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PBTN_PLAY, align 4
  %46 = or i32 %44, %45
  %47 = call i64 @in_menu_wait(i32 %46)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i32, i32* @PBTN_UP, align 4
  %50 = sext i32 %49 to i64
  %51 = and i64 %48, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %39
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* %2, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %53
  br label %61

61:                                               ; preds = %60, %39
  %62 = load i64, i64* %4, align 8
  %63 = load i32, i32* @PBTN_DOWN, align 4
  %64 = sext i32 %63 to i64
  %65 = and i64 %62, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %67
  br label %75

75:                                               ; preds = %74, %61
  %76 = load i64, i64* %4, align 8
  %77 = load i32, i32* @PBTN_PLAY, align 4
  %78 = sext i32 %77 to i64
  %79 = and i64 %76, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %111

81:                                               ; preds = %75
  %82 = load i32, i32* %2, align 4
  switch i32 %82, label %110 [
    i32 0, label %83
    i32 1, label %108
  ]

83:                                               ; preds = %81
  %84 = call i8* @romsel_loop(i8* %15)
  store i8* %84, i8** %7, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %107

87:                                               ; preds = %83
  store i32 -1, i32* %9, align 4
  %88 = load i32, i32* @romFileName, align 4
  %89 = call i32 @emu_cdCheck(i32* null, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @CIT_NOT_CD, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32, i32* @romFileName, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @Insert_CD(i32 %94, i32 %95)
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %93, %87
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i64*, i64** @menuErrorMsg, align 8
  %102 = call i32 @sprintf(i64* %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i64*, i64** @menuErrorMsg, align 8
  %104 = call i32 @lprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64* %103)
  br label %39

105:                                              ; preds = %97
  %106 = load i32, i32* @PGS_RestartRun, align 4
  store i32 %106, i32* @engineState, align 4
  store i32 1, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %114

107:                                              ; preds = %83
  br label %110

108:                                              ; preds = %81
  %109 = load i32, i32* @PGS_RestartRun, align 4
  store i32 %109, i32* @engineState, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %114

110:                                              ; preds = %81, %107
  br label %111

111:                                              ; preds = %110, %75
  %112 = load i64*, i64** @menuErrorMsg, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  store i64 0, i64* %113, align 8
  br label %39

114:                                              ; preds = %108, %105
  %115 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %1, align 4
  ret i32 %116
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @menu_gfx_prepare(...) #2

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @getcwd(i8*, i32) #2

declare dso_local i32 @draw_menu_tray(i32) #2

declare dso_local i32 @Framework_PollGetButtons(...) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i64 @in_menu_wait(i32) #2

declare dso_local i8* @romsel_loop(i8*) #2

declare dso_local i32 @emu_cdCheck(i32*, i32) #2

declare dso_local i32 @Insert_CD(i32, i32) #2

declare dso_local i32 @sprintf(i64*, i8*) #2

declare dso_local i32 @lprintf(i8*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
