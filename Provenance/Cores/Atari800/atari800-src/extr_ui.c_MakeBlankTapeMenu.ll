; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui.c_MakeBlankTapeMenu.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui.c_MakeBlankTapeMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i8*, i32)*, i32 (i8*, i32, i32)* }

@FILENAME_MAX = common dso_local global i32 0, align 4
@CASSETTE_DESCRIPTION_MAX = common dso_local global i32 0, align 4
@CASSETTE_filename = common dso_local global i32 0, align 4
@UI_driver = common dso_local global %struct.TYPE_2__* null, align 8
@UI_atari_files_dir = common dso_local global i32 0, align 4
@UI_n_atari_files_dir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Enter tape's description\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @MakeBlankTapeMenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MakeBlankTapeMenu() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @FILENAME_MAX, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = load i32, i32* @CASSETTE_DESCRIPTION_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %12, align 16
  %13 = load i32, i32* @CASSETTE_filename, align 4
  %14 = load i32, i32* @FILENAME_MAX, align 4
  %15 = call i32 @strncpy(i8* %8, i32 %13, i32 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UI_driver, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %17, align 8
  %19 = load i32, i32* @UI_atari_files_dir, align 4
  %20 = load i32, i32* @UI_n_atari_files_dir, align 4
  %21 = call i32 %18(i8* %8, i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %0
  store i32 1, i32* %4, align 4
  br label %38

24:                                               ; preds = %0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UI_driver, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %26, align 8
  %28 = trunc i64 %10 to i32
  %29 = call i32 %27(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %38

32:                                               ; preds = %24
  %33 = call i32 @CASSETTE_CreateCAS(i8* %8, i8* %11)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call i32 @CantSave(i8* %8)
  br label %37

37:                                               ; preds = %35, %32
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %31, %23
  %39 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32, i32* %4, align 4
  switch i32 %40, label %42 [
    i32 0, label %41
    i32 1, label %41
  ]

41:                                               ; preds = %38, %38
  ret void

42:                                               ; preds = %38
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strncpy(i8*, i32, i32) #2

declare dso_local i32 @CASSETTE_CreateCAS(i8*, i8*) #2

declare dso_local i32 @CantSave(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
