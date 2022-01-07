; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_GetDirectory.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_GetDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILENAMES_INITIAL_SIZE = common dso_local global i32 0, align 4
@filenames = common dso_local global i8** null, align 8
@n_filenames = common dso_local global i32 0, align 4
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error opening '%s' directory\00", align 1
@S_IXUSR = common dso_local global i32 0, align 4
@_STAT_DIRSIZE = common dso_local global i16 0, align 2
@_STAT_EXEC_EXT = common dso_local global i16 0, align 2
@_STAT_EXEC_MAGIC = common dso_local global i16 0, align 2
@_STAT_INODE = common dso_local global i16 0, align 2
@_STAT_ROOT_TIME = common dso_local global i16 0, align 2
@_STAT_WRITEBIT = common dso_local global i16 0, align 2
@_djstat_flags = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @GetDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetDirectory(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @FILENAMES_INITIAL_SIZE, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 8
  %11 = call i64 @Util_malloc(i64 %10)
  %12 = inttoptr i64 %11 to i8**
  store i8** %12, i8*** @filenames, align 8
  store i32 0, i32* @n_filenames, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @BasicUIOpenDir(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %76

16:                                               ; preds = %1
  %17 = load i32, i32* @FILENAME_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %3, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %4, align 8
  br label %21

21:                                               ; preds = %65, %39, %16
  %22 = call i64 @BasicUIReadDir(i8* %20, i32* %5)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %68

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, i8* %20, i64 0
  %26 = load i8, i8* %25, align 16
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, i8* %20, i64 0
  %31 = load i8, i8* %30, align 16
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 46
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = getelementptr inbounds i8, i8* %20, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %24
  br label %21

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = call i64 @strlen(i8* %20)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, 3
  %47 = call i64 @Util_malloc(i64 %46)
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @memcpy(i8* %50, i8* %20, i64 %51)
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 91, i8* %54, align 1
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, 1
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 93, i8* %58, align 1
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 2
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 0, i8* %62, align 1
  br label %65

63:                                               ; preds = %40
  %64 = call i8* @Util_strdup(i8* %20)
  store i8* %64, i8** %6, align 8
  br label %65

65:                                               ; preds = %63, %43
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @FilenamesAdd(i8* %66)
  br label %21

68:                                               ; preds = %21
  %69 = load i8**, i8*** @filenames, align 8
  %70 = load i8**, i8*** @filenames, align 8
  %71 = load i32, i32* @n_filenames, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = call i32 @FilenamesSort(i8** %69, i8** %73)
  %75 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %75)
  br label %79

76:                                               ; preds = %1
  %77 = load i8*, i8** %2, align 8
  %78 = call i32 @Log_print(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %76, %68
  ret void
}

declare dso_local i64 @Util_malloc(i64) #1

declare dso_local i64 @BasicUIOpenDir(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @BasicUIReadDir(i8*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @Util_strdup(i8*) #1

declare dso_local i32 @FilenamesAdd(i8*) #1

declare dso_local i32 @FilenamesSort(i8**, i8**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Log_print(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
