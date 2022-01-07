; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_q3asm.c_main.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_q3asm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [57 x i8] c"usage: q3asm [-o output] <files> or q3asm -f <listfile>\0A\00", align 1
@outputFilename = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"q3asm\00", align 1
@numAsmFiles = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"-o must preceed a filename\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"-f must preceed a filename\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Unknown option: %s\00", align 1
@asmFileNames = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"%5.0f seconds elapsed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = call double (...) @I_FloatTime()
  store double %14, double* %7, align 8
  %15 = call i32 (...) @InitTables()
  %16 = load i32, i32* @outputFilename, align 4
  %17 = call i32 @strcpy(i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* @numAsmFiles, align 8
  store i32 1, i32* %6, align 4
  br label %18

18:                                               ; preds = %91, %13
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %94

22:                                               ; preds = %18
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 45
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %94

33:                                               ; preds = %22
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i32, i32* @outputFilename, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %50, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcpy(i32 %49, i8* %55)
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %91

59:                                               ; preds = %33
  %60 = load i8**, i8*** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 %69, 1
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @ParseOptionFile(i8* %80)
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %91

84:                                               ; preds = %59
  %85 = load i8**, i8*** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %84, %74, %48
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %18

94:                                               ; preds = %32, %18
  br label %95

95:                                               ; preds = %111, %94
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %95
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @copystring(i8* %104)
  %106 = load i32*, i32** @asmFileNames, align 8
  %107 = load i64, i64* @numAsmFiles, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 %105, i32* %108, align 4
  %109 = load i64, i64* @numAsmFiles, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* @numAsmFiles, align 8
  br label %111

111:                                              ; preds = %99
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %95

114:                                              ; preds = %95
  %115 = call i32 (...) @Assemble()
  %116 = call double (...) @I_FloatTime()
  store double %116, double* %8, align 8
  %117 = load double, double* %8, align 8
  %118 = load double, double* %7, align 8
  %119 = fsub double %117, %118
  %120 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), double %119)
  ret i32 0
}

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local double @I_FloatTime(...) #1

declare dso_local i32 @InitTables(...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @ParseOptionFile(i8*) #1

declare dso_local i32 @copystring(i8*) #1

declare dso_local i32 @Assemble(...) #1

declare dso_local i32 @printf(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
