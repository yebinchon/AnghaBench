; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_FileIsInPAK.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_FileIsInPAK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__**, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, i32 }

@fs_searchpaths = common dso_local global %struct.TYPE_6__* null, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Filesystem call made without initialization\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"FS_FOpenFileRead: NULL 'filename' parameter passed\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"::\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FS_FileIsInPAK(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fs_searchpaths, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ERR_FATAL, align 4
  %14 = call i32 @Com_Error(i32 %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @ERR_FATAL, align 4
  %20 = call i32 @Com_Error(i32 %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 92
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %21
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @strstr(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @strstr(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %36
  store i32 -1, i32* %3, align 4
  br label %125

45:                                               ; preds = %40
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fs_searchpaths, align 8
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %6, align 8
  br label %47

47:                                               ; preds = %120, %45
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %124

50:                                               ; preds = %47
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = icmp ne %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i8*, i8** %4, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @FS_HashFileName(i8* %56, i32 %61)
  store i64 %62, i64* %9, align 8
  br label %63

63:                                               ; preds = %55, %50
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = icmp ne %struct.TYPE_7__* %66, null
  br i1 %67, label %68, label %119

68:                                               ; preds = %63
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %73, i64 %74
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = icmp ne %struct.TYPE_8__* %76, null
  br i1 %77, label %78, label %119

78:                                               ; preds = %68
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = call i32 @FS_PakIsPure(%struct.TYPE_7__* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %120

85:                                               ; preds = %78
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %7, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %91, i64 %92
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %8, align 8
  br label %95

95:                                               ; preds = %115, %85
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @FS_FilenameCompare(i32 %98, i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %95
  %103 = load i32*, i32** %5, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32*, i32** %5, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %105, %102
  store i32 1, i32* %3, align 4
  br label %125

111:                                              ; preds = %95
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  store %struct.TYPE_8__* %114, %struct.TYPE_8__** %8, align 8
  br label %115

115:                                              ; preds = %111
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %117 = icmp ne %struct.TYPE_8__* %116, null
  br i1 %117, label %95, label %118

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %118, %68, %63
  br label %120

120:                                              ; preds = %119, %84
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  store %struct.TYPE_6__* %123, %struct.TYPE_6__** %6, align 8
  br label %47

124:                                              ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %110, %44
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @FS_HashFileName(i8*, i32) #1

declare dso_local i32 @FS_PakIsPure(%struct.TYPE_7__*) #1

declare dso_local i32 @FS_FilenameCompare(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
