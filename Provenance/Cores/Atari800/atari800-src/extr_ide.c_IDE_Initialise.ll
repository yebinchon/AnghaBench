; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_IDE_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_IDE_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@IDE_debug = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ide: init\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-ide\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Missing argument for '%s'\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"-ide_debug\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"-ide_cf\00", align 1
@device = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"\09-ide <file>      Enable IDE emulation\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"\09-ide_debug       Enable IDE Debug Output\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"\09-ide_cf          Enable CF emulation\00", align 1
@IDE_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IDE_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %12 = load i32, i32* @IDE_debug, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %2
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %18

18:                                               ; preds = %100, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %103

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %25, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  br label %115

48:                                               ; preds = %37
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @Util_strdup(i8* %54)
  store i8* %55, i8** %9, align 8
  br label %99

56:                                               ; preds = %23
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  store i32 1, i32* @IDE_debug, align 4
  br label %98

65:                                               ; preds = %56
  %66 = load i8**, i8*** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @device, i32 0, i32 0), align 4
  br label %97

74:                                               ; preds = %65
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %74
  %83 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %84 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %85 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %74
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load i8**, i8*** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8*, i8** %92, i64 %95
  store i8* %91, i8** %96, align 8
  br label %97

97:                                               ; preds = %86, %73
  br label %98

98:                                               ; preds = %97, %64
  br label %99

99:                                               ; preds = %98, %48
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %18

103:                                              ; preds = %18
  %104 = load i32, i32* %7, align 4
  %105 = load i32*, i32** %4, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i8*, i8** %9, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 @ide_init_drive(%struct.TYPE_3__* @device, i8* %109)
  store i32 %110, i32* %8, align 4
  store i32 %110, i32* @IDE_enabled, align 4
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 @free(i8* %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %40
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @Log_print(i8*, ...) #1

declare dso_local i8* @Util_strdup(i8*) #1

declare dso_local i32 @ide_init_drive(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
