; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_proto80.c_PBI_PROTO80_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_proto80.c_PBI_PROTO80_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"-proto80\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"proto80 enabled\00", align 1
@TRUE = common dso_local global i32 0, align 4
@PBI_PROTO80_enabled = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"\09-proto80         Emulate a prototype 80 column board for the 1090\00", align 1
@proto80rom = common dso_local global i32* null, align 8
@proto80_rom_filename = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Couldn't load proto80 rom image\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"loaded proto80 rom image\00", align 1
@PBI_D6D7ram = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PBI_PROTO80_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %8

8:                                                ; preds = %46, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %8
  %14 = load i8**, i8*** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = call i32 @Log_print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* @PBI_PROTO80_enabled, align 4
  br label %45

24:                                               ; preds = %13
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 @Log_print(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %24
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8*, i8** %40, i64 %43
  store i8* %39, i8** %44, align 8
  br label %45

45:                                               ; preds = %34, %21
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %8

49:                                               ; preds = %8
  %50 = load i32, i32* %7, align 4
  %51 = load i32*, i32** %4, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @PBI_PROTO80_enabled, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = call i64 @Util_malloc(i32 2048)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** @proto80rom, align 8
  %57 = load i32, i32* @proto80_rom_filename, align 4
  %58 = load i32*, i32** @proto80rom, align 8
  %59 = call i32 @Atari800_LoadImage(i32 %57, i32* %58, i32 2048)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %54
  %62 = load i32*, i32** @proto80rom, align 8
  %63 = call i32 @free(i32* %62)
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* @PBI_PROTO80_enabled, align 4
  %65 = call i32 @Log_print(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %3, align 4
  br label %73

67:                                               ; preds = %54
  %68 = call i32 @Log_print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* @PBI_D6D7ram, align 4
  br label %70

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70, %49
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %61
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i64 @Util_malloc(i32) #1

declare dso_local i32 @Atari800_LoadImage(i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
