; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_BasicUIReadDir.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_BasicUIReadDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }
%struct.stat = type { i32 }

@FILENAME_MAX = common dso_local global i32 0, align 4
@dp = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@dir_path = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @BasicUIReadDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BasicUIReadDir(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @FILENAME_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32*, i32** @dp, align 8
  %16 = call %struct.dirent* @readdir(i32* %15)
  store %struct.dirent* %16, %struct.dirent** %6, align 8
  %17 = load %struct.dirent*, %struct.dirent** %6, align 8
  %18 = icmp eq %struct.dirent* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32*, i32** @dp, align 8
  %21 = call i32 @closedir(i32* %20)
  store i32* null, i32** @dp, align 8
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.dirent*, %struct.dirent** %6, align 8
  %26 = getelementptr inbounds %struct.dirent, %struct.dirent* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strcpy(i8* %24, i32 %27)
  %29 = load i32, i32* @dir_path, align 4
  %30 = load %struct.dirent*, %struct.dirent** %6, align 8
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @Util_catpath(i8* %14, i32 %29, i32 %32)
  %34 = call i32 @stat(i8* %14, %struct.stat* %9)
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @S_ISDIR(i32 %36)
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %40

40:                                               ; preds = %23, %19
  %41 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @Util_catpath(i8*, i32, i32) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISDIR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
