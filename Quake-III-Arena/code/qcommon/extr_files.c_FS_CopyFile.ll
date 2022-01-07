; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_CopyFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_CopyFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"copy %s to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"journal.dat\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"journaldata.dat\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Ignoring journal files\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Short read in FS_Copyfiles()\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Short write in FS_Copyfiles()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @FS_CopyFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FS_CopyFile(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %8, i8* %9)
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strstr(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strstr(i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %2
  %19 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %74

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %74

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @SEEK_END, align 4
  %29 = call i32 @fseek(i32* %27, i32 0, i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ftell(i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @SEEK_SET, align 4
  %34 = call i32 @fseek(i32* %32, i32 0, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32* @malloc(i32 %35)
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @fread(i32* %37, i32 1, i32 %38, i32* %39)
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %26
  %44 = load i32, i32* @ERR_FATAL, align 4
  %45 = call i32 @Com_Error(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %26
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = load i8*, i8** %4, align 8
  %50 = call i64 @FS_CreatePath(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %74

53:                                               ; preds = %46
  %54 = load i8*, i8** %4, align 8
  %55 = call i32* @fopen(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %55, i32** %5, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %74

59:                                               ; preds = %53
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @fwrite(i32* %60, i32 1, i32 %61, i32* %62)
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @ERR_FATAL, align 4
  %68 = call i32 @Com_Error(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @fclose(i32* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @free(i32* %72)
  br label %74

74:                                               ; preds = %69, %58, %52, %25, %18
  ret void
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @FS_CreatePath(i8*) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
