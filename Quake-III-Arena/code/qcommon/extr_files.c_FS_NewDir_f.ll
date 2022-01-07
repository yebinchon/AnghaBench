; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_NewDir_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_NewDir_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"usage: fdir <filter>\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"example: fdir *q3dm*.bsp\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"---------------\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%d files listed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FS_NewDir_f() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @Cmd_Argc()
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %43

10:                                               ; preds = %0
  %11 = call i8* @Cmd_Argv(i32 1)
  store i8* %11, i8** %1, align 8
  %12 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i8*, i8** %1, align 8
  %14 = call i8** @FS_ListFilteredFiles(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %13, i32* %3)
  store i8** %14, i8*** %2, align 8
  %15 = load i8**, i8*** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @FS_SortFileList(i8** %15, i32 %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %35, %10
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load i8**, i8*** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @FS_ConvertPath(i8* %27)
  %29 = load i8**, i8*** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %18

38:                                               ; preds = %18
  %39 = load i32, i32* %3, align 4
  %40 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  %41 = load i8**, i8*** %2, align 8
  %42 = call i32 @FS_FreeFileList(i8** %41)
  br label %43

43:                                               ; preds = %38, %7
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i8** @FS_ListFilteredFiles(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @FS_SortFileList(i8**, i32) #1

declare dso_local i32 @FS_ConvertPath(i8*) #1

declare dso_local i32 @FS_FreeFileList(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
