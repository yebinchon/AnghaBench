; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_PureServerSetLoadedPaks.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_PureServerSetLoadedPaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SEARCH_PATHS = common dso_local global i32 0, align 4
@fs_numServerPaks = common dso_local global i32 0, align 4
@fs_serverPaks = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Connected to a pure server.\0A\00", align 1
@fs_reordered = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"FS search reorder is required\0A\00", align 1
@fs_checksumFeed = common dso_local global i32 0, align 4
@fs_serverPakNames = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FS_PureServerSetLoadedPaks(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @Cmd_TokenizeString(i8* %8)
  %10 = call i32 (...) @Cmd_Argc()
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MAX_SEARCH_PATHS, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @MAX_SEARCH_PATHS, align 4
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* @fs_numServerPaks, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %30, %16
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @Cmd_Argv(i32 %23)
  %25 = call i32 @atoi(i32 %24)
  %26 = load i32*, i32** @fs_serverPaks, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %18

33:                                               ; preds = %18
  %34 = load i32, i32* @fs_numServerPaks, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %46

38:                                               ; preds = %33
  %39 = load i64, i64* @fs_reordered, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @fs_checksumFeed, align 4
  %44 = call i32 @FS_Restart(i32 %43)
  br label %107

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %36
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %70, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load i32**, i32*** @fs_serverPakNames, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load i32**, i32*** @fs_serverPakNames, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @Z_Free(i32* %63)
  br label %65

65:                                               ; preds = %58, %51
  %66 = load i32**, i32*** @fs_serverPakNames, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %47

73:                                               ; preds = %47
  %74 = load i8*, i8** %4, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %107

76:                                               ; preds = %73
  %77 = load i8*, i8** %4, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %76
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @Cmd_TokenizeString(i8* %82)
  %84 = call i32 (...) @Cmd_Argc()
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @MAX_SEARCH_PATHS, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @MAX_SEARCH_PATHS, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %88, %81
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %103, %90
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @Cmd_Argv(i32 %96)
  %98 = call i32* @CopyString(i32 %97)
  %99 = load i32**, i32*** @fs_serverPakNames, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  store i32* %98, i32** %102, align 8
  br label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %91

106:                                              ; preds = %91
  br label %107

107:                                              ; preds = %41, %106, %76, %73
  ret void
}

declare dso_local i32 @Cmd_TokenizeString(i8*) #1

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i32 @Com_DPrintf(i8*) #1

declare dso_local i32 @FS_Restart(i32) #1

declare dso_local i32 @Z_Free(i32*) #1

declare dso_local i32* @CopyString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
