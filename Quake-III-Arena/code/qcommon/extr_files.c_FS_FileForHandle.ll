; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_FileForHandle.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_FileForHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@MAX_FILE_HANDLES = common dso_local global i64 0, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"FS_FileForHandle: out of reange\00", align 1
@fsh = common dso_local global %struct.TYPE_6__* null, align 8
@qtrue = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"FS_FileForHandle: can't get FILE on zip file\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"FS_FileForHandle: NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64)* @FS_FileForHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @FS_FileForHandle(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ult i64 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @MAX_FILE_HANDLES, align 8
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %5, %1
  %10 = load i32, i32* @ERR_DROP, align 4
  %11 = call i32 @Com_Error(i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %5
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %14 = load i64, i64* %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @qtrue, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @ERR_DROP, align 4
  %22 = call i32 @Com_Error(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %12
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %25 = load i64, i64* %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @ERR_DROP, align 4
  %34 = call i32 @Com_Error(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %23
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsh, align 8
  %37 = load i64, i64* %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  ret i32* %42
}

declare dso_local i32 @Com_Error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
