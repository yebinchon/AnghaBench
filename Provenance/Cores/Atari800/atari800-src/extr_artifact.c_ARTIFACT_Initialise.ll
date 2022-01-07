; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_artifact.c_ARTIFACT_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_artifact.c_ARTIFACT_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"-ntsc-artif\00", align 1
@mode_cfg_strings = common dso_local global i32 0, align 4
@ARTIFACT_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid value for -ntsc-artif\00", align 1
@mode_ntsc = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"-pal-artif\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Invalid value for -pal-artif\00", align 1
@mode_pal = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"\09-ntsc-artif none|ntsc-old|ntsc-new|ntsc-full\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"\09                 Select video artifacts for NTSC\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"\09-pal-artif none|pal-simple|pal-accu\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"\09                 Select video artifacts for PAL\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Missing argument for '%s'\00", align 1
@Atari800_tv_mode = common dso_local global i32 0, align 4
@ARTIFACT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ARTIFACT_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %12

12:                                               ; preds = %123, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %126

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %19, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %17
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %36, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* @mode_cfg_strings, align 4
  %43 = load i32, i32* @ARTIFACT_SIZE, align 4
  %44 = call i32 @CFG_MatchTextParameter(i8* %41, i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %3, align 4
  br label %135

50:                                               ; preds = %35
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* @mode_ntsc, align 4
  br label %54

52:                                               ; preds = %32
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %52, %50
  br label %111

55:                                               ; preds = %17
  %56 = load i8**, i8*** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %55
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* @mode_cfg_strings, align 4
  %74 = load i32, i32* @ARTIFACT_SIZE, align 4
  %75 = call i32 @CFG_MatchTextParameter(i8* %72, i32 %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %3, align 4
  br label %135

81:                                               ; preds = %66
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* @mode_pal, align 4
  br label %85

83:                                               ; preds = %63
  %84 = load i32, i32* @TRUE, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %81
  br label %110

86:                                               ; preds = %55
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %96 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %97 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %98 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  br label %99

99:                                               ; preds = %94, %86
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = load i8**, i8*** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8*, i8** %105, i64 %108
  store i8* %104, i8** %109, align 8
  br label %110

110:                                              ; preds = %99, %85
  br label %111

111:                                              ; preds = %110, %54
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load i8**, i8*** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %119)
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %3, align 4
  br label %135

122:                                              ; preds = %111
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %12

126:                                              ; preds = %12
  %127 = load i32, i32* %7, align 4
  %128 = load i32*, i32** %4, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32, i32* @Atari800_tv_mode, align 4
  %130 = call i32 @UpdateFromTVMode(i32 %129)
  %131 = load i32, i32* @ARTIFACT_NONE, align 4
  %132 = load i32, i32* @FALSE, align 4
  %133 = call i32 @UpdateMode(i32 %131, i32 %132)
  %134 = load i32, i32* @TRUE, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %126, %114, %78, %47
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @CFG_MatchTextParameter(i8*, i32, i32) #1

declare dso_local i32 @Log_print(i8*, ...) #1

declare dso_local i32 @UpdateFromTVMode(i32) #1

declare dso_local i32 @UpdateMode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
