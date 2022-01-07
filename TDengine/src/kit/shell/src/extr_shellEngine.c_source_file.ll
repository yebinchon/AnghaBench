; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellEngine.c_source_file.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellEngine.c_source_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8** }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ERROR: illegal file name\0A\00", align 1
@R_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: file %s is not readable\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ERROR: failed to open file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@PROMPT_HEADER = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @source_file(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %14 = call i8* @malloc(i32 %13)
  store i8* %14, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @wordexp(i8* %15, %struct.TYPE_4__* %5, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %121

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i32, i32* @R_OK, align 4
  %28 = call i32 @access(i8* %26, i32 %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = call i32 @wordfree(%struct.TYPE_4__* %5)
  br label %121

35:                                               ; preds = %21
  %36 = load i8*, i8** %11, align 8
  %37 = call i32* @fopen(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %37, i32** %12, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  %44 = call i32 @wordfree(%struct.TYPE_4__* %5)
  br label %121

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %93, %77, %67, %54, %45
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @getline(i8** %9, i64* %10, i32* %47)
  store i32 %48, i32* %6, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %109

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %46

55:                                               ; preds = %50
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %55
  %64 = load i8*, i8** %9, align 8
  %65 = call i64 @isCommentLine(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %55
  br label %46

68:                                               ; preds = %63
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 92
  br i1 %76, label %77, label %93

77:                                               ; preds = %68
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 32, i8* %82, align 1
  %83 = load i8*, i8** %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8*, i8** %9, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @memcpy(i8* %85, i8* %86, i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %8, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %8, align 8
  br label %46

93:                                               ; preds = %68
  %94 = load i8*, i8** %7, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @memcpy(i8* %96, i8* %97, i32 %98)
  %100 = load i8*, i8** @PROMPT_HEADER, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %100, i8* %101)
  %103 = load i32*, i32** %3, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @shellRunCommand(i32* %103, i8* %104)
  %106 = load i8*, i8** %7, align 8
  %107 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %108 = call i32 @memset(i8* %106, i32 0, i32 %107)
  store i64 0, i64* %8, align 8
  br label %46

109:                                              ; preds = %46
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i8*, i8** %9, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i8*, i8** %9, align 8
  %116 = call i32 @free(i8* %115)
  br label %117

117:                                              ; preds = %114, %109
  %118 = call i32 @wordfree(%struct.TYPE_4__* %5)
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @fclose(i32* %119)
  br label %121

121:                                              ; preds = %117, %40, %30, %18
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @wordexp(i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @wordfree(%struct.TYPE_4__*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @isCommentLine(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @shellRunCommand(i32*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
