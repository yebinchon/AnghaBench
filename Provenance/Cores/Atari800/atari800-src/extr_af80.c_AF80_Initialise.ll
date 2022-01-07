; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_af80.c_AF80_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_af80.c_AF80_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"-af80\00", align 1
@TRUE = common dso_local global i32 0, align 4
@AF80_enabled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"\09-af80            Emulate the Austin Franklin 80 column board\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Austin Franklin 80 enabled\00", align 1
@af80_rom = common dso_local global i32* null, align 8
@af80_rom_filename = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Couldn't load Austin Franklin ROM image\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"loaded Austin Franklin rom image\00", align 1
@af80_charset = common dso_local global i32* null, align 8
@af80_charset_filename = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"Couldn't load Austin Franklin charset image\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"loaded Austin Franklin charset image\00", align 1
@af80_screen = common dso_local global i32* null, align 8
@af80_attrib = common dso_local global i32* null, align 8
@rgbi_palette = common dso_local global i32* null, align 8
@AF80_palette = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AF80_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %8, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %48, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %10
  %16 = load i8**, i8*** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* @AF80_enabled, align 4
  br label %47

25:                                               ; preds = %15
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %8, align 4
  %35 = call i32 @Log_print(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %25
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  store i8* %41, i8** %46, align 8
  br label %47

47:                                               ; preds = %36, %23
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %10

51:                                               ; preds = %10
  %52 = load i32, i32* %7, align 4
  %53 = load i32*, i32** %4, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %3, align 4
  br label %130

58:                                               ; preds = %51
  %59 = load i32, i32* @AF80_enabled, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %128

61:                                               ; preds = %58
  %62 = call i32 @Log_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i64 @Util_malloc(i32 4096)
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** @af80_rom, align 8
  %65 = load i32, i32* @af80_rom_filename, align 4
  %66 = load i32*, i32** @af80_rom, align 8
  %67 = call i32 @Atari800_LoadImage(i32 %65, i32* %66, i32 4096)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %61
  %70 = load i32*, i32** @af80_rom, align 8
  %71 = call i32 @free(i32* %70)
  store i32* null, i32** @af80_rom, align 8
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* @AF80_enabled, align 4
  %73 = call i32 @Log_print(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %3, align 4
  br label %130

75:                                               ; preds = %61
  %76 = call i32 @Log_print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75
  %78 = call i64 @Util_malloc(i32 4096)
  %79 = inttoptr i64 %78 to i32*
  store i32* %79, i32** @af80_charset, align 8
  %80 = load i32, i32* @af80_charset_filename, align 4
  %81 = load i32*, i32** @af80_charset, align 8
  %82 = call i32 @Atari800_LoadImage(i32 %80, i32* %81, i32 4096)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %77
  %85 = load i32*, i32** @af80_charset, align 8
  %86 = call i32 @free(i32* %85)
  %87 = load i32*, i32** @af80_rom, align 8
  %88 = call i32 @free(i32* %87)
  store i32* null, i32** @af80_rom, align 8
  store i32* null, i32** @af80_charset, align 8
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* @AF80_enabled, align 4
  %90 = call i32 @Log_print(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %3, align 4
  br label %130

92:                                               ; preds = %77
  %93 = call i32 @Log_print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92
  %95 = call i64 @Util_malloc(i32 2048)
  %96 = inttoptr i64 %95 to i32*
  store i32* %96, i32** @af80_screen, align 8
  %97 = call i64 @Util_malloc(i32 2048)
  %98 = inttoptr i64 %97 to i32*
  store i32* %98, i32** @af80_attrib, align 8
  %99 = call i32 (...) @AF80_Reset()
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %124, %94
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 16
  br i1 %102, label %103, label %127

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = and i32 %105, 10
  %107 = load i32, i32* %7, align 4
  %108 = and i32 %107, 1
  %109 = shl i32 %108, 2
  %110 = add nsw i32 %106, %109
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, 4
  %113 = ashr i32 %112, 2
  %114 = add nsw i32 %110, %113
  store i32 %114, i32* %7, align 4
  %115 = load i32*, i32** @rgbi_palette, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** @AF80_palette, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  br label %124

124:                                              ; preds = %103
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %100

127:                                              ; preds = %100
  br label %128

128:                                              ; preds = %127, %58
  %129 = load i32, i32* @TRUE, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %84, %69, %56
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i64 @Util_malloc(i32) #1

declare dso_local i32 @Atari800_LoadImage(i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @AF80_Reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
