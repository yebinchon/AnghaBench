; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_Seek.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_Seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@fs_searchpaths = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Filesystem call made without initialization\0A\00", align 1
@fsh = common dso_local global %struct.TYPE_6__* null, align 8
@qfalse = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"ZIP FILE FSEEK NOT YET IMPLEMENTED\0A\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Bad origin in FS_Seek\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FS_Seek(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [65536 x i8], align 16
  %10 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @fs_searchpaths, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ERR_FATAL, align 4
  %15 = call i32 @Com_Error(i32 %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %125

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load i64, i64* @qfalse, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i64 %24, i64* %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @Sys_StreamSeek(i64 %29, i64 %30, i32 %31)
  %33 = load i64, i64* @qtrue, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  store i64 %33, i64* %37, align 8
  br label %38

38:                                               ; preds = %23, %16
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @qtrue, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %106

46:                                               ; preds = %38
  %47 = load i64, i64* %6, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 128
  br i1 %51, label %52, label %74

52:                                               ; preds = %49
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @unzSetCurrentFileInfoPosition(i32 %59, i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @unzOpenCurrentFile(i32 %72)
  store i32 %73, i32* %4, align 4
  br label %125

74:                                               ; preds = %49, %46
  %75 = load i64, i64* %6, align 8
  %76 = icmp slt i64 %75, 65536
  br i1 %76, label %77, label %103

77:                                               ; preds = %74
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %79 = load i64, i64* %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %86 = load i64, i64* %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @unzSetCurrentFileInfoPosition(i32 %84, i32 %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %92 = load i64, i64* %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @unzOpenCurrentFile(i32 %97)
  %99 = getelementptr inbounds [65536 x i8], [65536 x i8]* %9, i64 0, i64 0
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @FS_Read(i8* %99, i64 %100, i64 %101)
  store i32 %102, i32* %4, align 4
  br label %125

103:                                              ; preds = %74
  %104 = load i32, i32* @ERR_FATAL, align 4
  %105 = call i32 @Com_Error(i32 %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %125

106:                                              ; preds = %38
  %107 = load i64, i64* %5, align 8
  %108 = call i32* @FS_FileForHandle(i64 %107)
  store i32* %108, i32** %10, align 8
  %109 = load i32, i32* %7, align 4
  switch i32 %109, label %116 [
    i32 130, label %110
    i32 129, label %112
    i32 128, label %114
  ]

110:                                              ; preds = %106
  %111 = load i32, i32* @SEEK_CUR, align 4
  store i32 %111, i32* %8, align 4
  br label %120

112:                                              ; preds = %106
  %113 = load i32, i32* @SEEK_END, align 4
  store i32 %113, i32* %8, align 4
  br label %120

114:                                              ; preds = %106
  %115 = load i32, i32* @SEEK_SET, align 4
  store i32 %115, i32* %8, align 4
  br label %120

116:                                              ; preds = %106
  %117 = load i32, i32* @SEEK_CUR, align 4
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* @ERR_FATAL, align 4
  %119 = call i32 @Com_Error(i32 %118, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %116, %114, %112, %110
  %121 = load i32*, i32** %10, align 8
  %122 = load i64, i64* %6, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @fseek(i32* %121, i64 %122, i32 %123)
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %120, %103, %77, %52, %13
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @Sys_StreamSeek(i64, i64, i32) #1

declare dso_local i32 @unzSetCurrentFileInfoPosition(i32, i32) #1

declare dso_local i32 @unzOpenCurrentFile(i32) #1

declare dso_local i32 @FS_Read(i8*, i64, i64) #1

declare dso_local i32* @FS_FileForHandle(i64) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
