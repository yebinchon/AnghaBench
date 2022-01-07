; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_FOpenFileByMode.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_FOpenFileByMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i8*, i8*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@qfalse = common dso_local global i8* null, align 8
@qtrue = common dso_local global i64 0, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"FSH_FOpenFile: bad mode\00", align 1
@fsh = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FS_FOpenFileByMode(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** @qfalse, align 8
  store i8* %10, i8** %9, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %38 [
    i32 129, label %12
    i32 128, label %17
    i32 130, label %26
    i32 131, label %29
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i64, i64* @qtrue, align 8
  %16 = call i32 @FS_FOpenFileRead(i8* %13, i32* %14, i64 %15)
  store i32 %16, i32* %8, align 4
  br label %41

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @FS_FOpenFileWrite(i8* %18)
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  store i32 0, i32* %8, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 -1, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %17
  br label %41

26:                                               ; preds = %3
  %27 = load i64, i64* @qtrue, align 8
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %9, align 8
  br label %29

29:                                               ; preds = %3, %26
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @FS_FOpenFileAppend(i8* %30)
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %8, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 -1, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %29
  br label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @ERR_FATAL, align 4
  %40 = call i32 @Com_Error(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %133

41:                                               ; preds = %37, %25, %12
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %133

46:                                               ; preds = %41
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %124

50:                                               ; preds = %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @qtrue, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %50
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @unztell(i32 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 5
  store i32 %70, i32* %76, align 8
  br label %94

77:                                               ; preds = %50
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ftell(i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 5
  store i32 %87, i32* %93, align 8
  br label %94

94:                                               ; preds = %77, %60
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 %95, i32* %101, align 8
  %102 = load i8*, i8** @qfalse, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  store i8* %102, i8** %108, align 8
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, 129
  br i1 %110, label %111, label %123

111:                                              ; preds = %94
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @Sys_BeginStreamedFile(i32 %113, i32 16384)
  %115 = load i64, i64* @qtrue, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  store i8* %116, i8** %122, align 8
  br label %123

123:                                              ; preds = %111, %94
  br label %124

124:                                              ; preds = %123, %46
  %125 = load i8*, i8** %9, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  store i8* %125, i8** %131, align 8
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %124, %44, %38
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @FS_FOpenFileRead(i8*, i32*, i64) #1

declare dso_local i32 @FS_FOpenFileWrite(i8*) #1

declare dso_local i32 @FS_FOpenFileAppend(i8*) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @unztell(i32) #1

declare dso_local i32 @ftell(i32) #1

declare dso_local i32 @Sys_BeginStreamedFile(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
