; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_Read2.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_Read2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@fs_searchpaths = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Filesystem call made without initialization\0A\00", align 1
@fsh = common dso_local global %struct.TYPE_2__* null, align 8
@qfalse = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FS_Read2(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @fs_searchpaths, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @ERR_FATAL, align 4
  %13 = call i32 @Com_Error(i32 %12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %46

18:                                               ; preds = %14
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fsh, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %18
  %26 = load i64, i64* @qfalse, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fsh, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 %26, i64* %30, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @Sys_StreamedRead(i8* %31, i32 %32, i32 1, i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i64, i64* @qtrue, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fsh, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 %35, i64* %39, align 8
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %18
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @FS_Read(i8* %42, i32 %43, i64 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %25, %17
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @Sys_StreamedRead(i8*, i32, i32, i64) #1

declare dso_local i32 @FS_Read(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
