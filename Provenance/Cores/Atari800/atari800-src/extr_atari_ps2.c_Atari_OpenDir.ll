; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_ps2.c_Atari_OpenDir.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_ps2.c_Atari_OpenDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"mc0:/\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MAX_FILES_PER_DIR = common dso_local global i32 0, align 4
@mcDir = common dso_local global i32 0, align 4
@dir_n = common dso_local global i64 0, align 8
@dir_i = common dso_local global i64 0, align 8
@dir_path = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Atari_OpenDir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %2, align 4
  br label %25

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 4
  %12 = load i32, i32* @MAX_FILES_PER_DIR, align 4
  %13 = load i32, i32* @mcDir, align 4
  %14 = call i64 @mcGetDir(i32 0, i32 0, i8* %11, i32 0, i32 %12, i32 %13)
  store i64 %14, i64* @dir_n, align 8
  %15 = call i32 @mcSync(i32 0, i32* null, i64* @dir_n)
  %16 = load i64, i64* @dir_n, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %2, align 4
  br label %25

20:                                               ; preds = %9
  store i64 0, i64* @dir_i, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* @dir_path, align 4
  %23 = call i32 @Util_splitpath(i8* %21, i32 %22, i32* null)
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %20, %18, %7
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @mcGetDir(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mcSync(i32, i32*, i64*) #1

declare dso_local i32 @Util_splitpath(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
