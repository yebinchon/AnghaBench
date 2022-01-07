; ModuleID = '/home/carl/AnghaBench/GloVe/src/extr_shuffle.c_shuffle_by_chunks.c'
source_filename = "/home/carl/AnghaBench/GloVe/src/extr_shuffle.c_shuffle_by_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_STRING_LENGTH = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@array_size = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SHUFFLING COOCCURRENCES\0A\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"array size: %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s_%04d.bin\00", align 1
@file_head = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Unable to open file %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Shuffling by chunks: processed 0 lines.\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\1B[22Gprocessed %ld lines.\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"\1B[22Gprocessed %ld lines.\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Wrote %d temporary file(s).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shuffle_by_chunks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* @MAX_STRING_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32*, i32** @stdin, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32, i32* @array_size, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32* @malloc(i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @verbose, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %0
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* @array_size, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %0
  %30 = load i8*, i8** @file_head, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %30, i32 %31)
  %33 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %14)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %132

39:                                               ; preds = %29
  %40 = load i32, i32* @verbose, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %95, %45
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %2, align 8
  %49 = load i32, i32* @array_size, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp sge i64 %48, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %47
  %53 = load i32*, i32** %7, align 8
  %54 = load i64, i64* %2, align 8
  %55 = sub nsw i64 %54, 2
  %56 = call i32 @shuffle(i32* %53, i64 %55)
  %57 = load i64, i64* %2, align 8
  %58 = load i64, i64* %3, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %3, align 8
  %60 = load i32, i32* @verbose, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load i32, i32* @stderr, align 4
  %64 = load i64, i64* %3, align 8
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %62, %52
  %67 = load i32*, i32** %7, align 8
  %68 = load i64, i64* %2, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @write_chunk(i32* %67, i64 %68, i32* %69)
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @fclose(i32* %71)
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  %75 = load i8*, i8** @file_head, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %75, i32 %76)
  %78 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %78, i32** %9, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %66
  %82 = load i32, i32* @stderr, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %14)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %132

84:                                               ; preds = %66
  store i64 0, i64* %2, align 8
  br label %85

85:                                               ; preds = %84, %47
  %86 = load i32*, i32** %7, align 8
  %87 = load i64, i64* %2, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @fread(i32* %88, i32 4, i32 1, i32* %89)
  %91 = load i32*, i32** %8, align 8
  %92 = call i64 @feof(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %98

95:                                               ; preds = %85
  %96 = load i64, i64* %2, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %2, align 8
  br label %46

98:                                               ; preds = %94
  %99 = load i32*, i32** %7, align 8
  %100 = load i64, i64* %2, align 8
  %101 = sub nsw i64 %100, 2
  %102 = call i32 @shuffle(i32* %99, i64 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = load i64, i64* %2, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @write_chunk(i32* %103, i64 %104, i32* %105)
  %107 = load i64, i64* %2, align 8
  %108 = load i64, i64* %3, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* %3, align 8
  %110 = load i32, i32* @verbose, align 4
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %112, label %116

112:                                              ; preds = %98
  %113 = load i32, i32* @stderr, align 4
  %114 = load i64, i64* %3, align 8
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %112, %98
  %117 = load i32, i32* @verbose, align 4
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32, i32* @stderr, align 4
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %119, %116
  %125 = load i32*, i32** %9, align 8
  %126 = call i32 @fclose(i32* %125)
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @free(i32* %127)
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 1
  %131 = call i32 @shuffle_merge(i32 %130)
  store i32 %131, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %132

132:                                              ; preds = %124, %81, %36
  %133 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %1, align 4
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @shuffle(i32*, i64) #2

declare dso_local i32 @write_chunk(i32*, i64, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @fread(i32*, i32, i32, i32*) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @shuffle_merge(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
