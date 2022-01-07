; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_load.c_OpenDirectory.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_load.c_OpenDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64*, i32 }
%struct.TYPE_7__ = type { i8*, i64 }
%struct.TYPE_8__ = type { i32** }

@TYPE_RECENT = common dso_local global i32 0, align 4
@NUM_HISTORY_ENTRIES = common dso_local global i32 0, align 4
@history = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@filelist = common dso_local global %struct.TYPE_7__* null, align 8
@MAXJOLIET = common dso_local global i32 0, align 4
@TYPE_DVD = common dso_local global i32 0, align 4
@rootdir = common dso_local global i32* null, align 8
@deviceType = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@fileDir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to open directory !\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"No files found !\00", align 1
@fileType = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OpenDirectory(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @TYPE_RECENT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %66

12:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %62, %12
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @NUM_HISTORY_ENTRIES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %65

17:                                               ; preds = %13
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @history, i32 0, i32 0), align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %17
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @filelist, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @filelist, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @history, i32 0, i32 0), align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MAXJOLIET, align 4
  %46 = sub nsw i32 %45, 1
  %47 = call i32 @strncpy(i8* %38, i32 %44, i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @filelist, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* @MAXJOLIET, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %61

60:                                               ; preds = %17
  br label %65

61:                                               ; preds = %27
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %13

65:                                               ; preds = %60, %13
  br label %116

66:                                               ; preds = %2
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @TYPE_DVD, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = load i32*, i32** @rootdir, align 8
  %72 = load i32, i32* @TYPE_DVD, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32* @opendir(i32 %75)
  store i32* %76, i32** %8, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = call i32 (...) @MountDVD()
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %135

83:                                               ; preds = %79
  store i32 -1, i32* @deviceType, align 4
  br label %87

84:                                               ; preds = %70
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @closedir(i32* %85)
  br label %87

87:                                               ; preds = %84, %83
  br label %88

88:                                               ; preds = %87, %66
  %89 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* @fileDir, align 4
  %98 = call i32 (...) @ParseDirectory()
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp sle i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %88
  %102 = load i32, i32* @fileDir, align 4
  %103 = load i32*, i32** @rootdir, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @strcpy(i32 %102, i32 %107)
  %109 = call i32 (...) @ParseDirectory()
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %101
  %113 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %135

114:                                              ; preds = %101
  store i32 -1, i32* @deviceType, align 4
  br label %115

115:                                              ; preds = %114, %88
  br label %116

116:                                              ; preds = %115, %65
  %117 = load i32, i32* %6, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %135

121:                                              ; preds = %116
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @deviceType, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @fileType, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %125, %121
  %130 = load i32, i32* %4, align 4
  store i32 %130, i32* @deviceType, align 4
  %131 = load i32, i32* %5, align 4
  store i32 %131, i32* @fileType, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @ClearSelector(i32 %132)
  br label %134

134:                                              ; preds = %129, %125
  store i32 1, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %119, %112, %82
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32* @opendir(i32) #1

declare dso_local i32 @MountDVD(...) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @ParseDirectory(...) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @GUI_WaitPrompt(i8*, i8*) #1

declare dso_local i32 @ClearSelector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
