; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_load.c_UpdateDirectory.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_load.c_UpdateDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@deviceType = common dso_local global i64 0, align 8
@TYPE_RECENT = common dso_local global i64 0, align 8
@rootdir = common dso_local global i32* null, align 8
@fileDir = common dso_local global i8* null, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s%s/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UpdateDirectory(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %2
  %13 = load i64, i64* @deviceType, align 8
  %14 = load i64, i64* @TYPE_RECENT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %66

17:                                               ; preds = %12
  %18 = load i32*, i32** @rootdir, align 8
  %19 = load i64, i64* @deviceType, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** @fileDir, align 8
  %23 = call i32 @strcmp(i32 %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %66

26:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  %27 = load i32, i32* @MAXPATHLEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %7, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %8, align 8
  %31 = load i8*, i8** @fileDir, align 8
  %32 = call i32 @strcpy(i8* %30, i8* %31)
  %33 = call i8* @strtok(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %9, align 8
  br label %34

34:                                               ; preds = %37, %26
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @strlen(i8* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @strncpy(i8* %40, i8* %41, i32 %42)
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 0, i8* %47, align 1
  %48 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %48, i8** %9, align 8
  br label %34

49:                                               ; preds = %34
  %50 = load i8*, i8** @fileDir, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %6, align 4
  %54 = load i8*, i8** @fileDir, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %59)
  br label %65

60:                                               ; preds = %2
  %61 = load i8*, i8** @fileDir, align 8
  %62 = load i8*, i8** @fileDir, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* %63)
  br label %65

65:                                               ; preds = %60, %49
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %25, %16
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @strcmp(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
