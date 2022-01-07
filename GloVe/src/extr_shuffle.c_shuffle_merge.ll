; ModuleID = '/home/carl/AnghaBench/GloVe/src/extr_shuffle.c_shuffle_merge.c'
source_filename = "/home/carl/AnghaBench/GloVe/src/extr_shuffle.c_shuffle_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_STRING_LENGTH = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@array_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s_%04d.bin\00", align 1
@file_head = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Unable to open file %s.\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Merging temp files: processed %ld lines.\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\1B[31G%ld lines.\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\1B[0GMerging temp files: processed %ld lines.\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shuffle_merge(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @MAX_STRING_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32*, i32** @stdout, align 8
  store i32* %19, i32** %13, align 8
  %20 = load i32, i32* @array_size, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = trunc i64 %22 to i32
  %24 = call i8* @malloc(i32 %23)
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %9, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = call i8* @malloc(i32 %29)
  %31 = bitcast i8* %30 to i32**
  store i32** %31, i32*** %12, align 8
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %55, %1
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = load i8*, i8** @file_head, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %38)
  %40 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32**, i32*** %12, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  store i32* %40, i32** %44, align 8
  %45 = load i32**, i32*** %12, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %165

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %32

58:                                               ; preds = %32
  %59 = load i64, i64* @verbose, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* @stderr, align 4
  %63 = load i64, i64* %7, align 8
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %61, %58
  br label %66

66:                                               ; preds = %137, %65
  br label %67

67:                                               ; preds = %66
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %68

68:                                               ; preds = %112, %67
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %73, label %115

73:                                               ; preds = %68
  %74 = load i32**, i32*** %12, align 8
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @feof(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %112

81:                                               ; preds = %73
  store i64 0, i64* %6, align 8
  br label %82

82:                                               ; preds = %108, %81
  %83 = load i64, i64* %6, align 8
  %84 = load i32, i32* @array_size, align 4
  %85 = load i32, i32* %3, align 4
  %86 = sdiv i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %83, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %82
  %90 = load i32*, i32** %9, align 8
  %91 = load i64, i64* %4, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32**, i32*** %12, align 8
  %94 = load i64, i64* %5, align 8
  %95 = getelementptr inbounds i32*, i32** %93, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @fread(i32* %92, i32 4, i32 1, i32* %96)
  %98 = load i32**, i32*** %12, align 8
  %99 = load i64, i64* %5, align 8
  %100 = getelementptr inbounds i32*, i32** %98, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = call i64 @feof(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %89
  br label %111

105:                                              ; preds = %89
  %106 = load i64, i64* %4, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %4, align 8
  br label %108

108:                                              ; preds = %105
  %109 = load i64, i64* %6, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %6, align 8
  br label %82

111:                                              ; preds = %104, %82
  br label %112

112:                                              ; preds = %111, %80
  %113 = load i64, i64* %5, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %5, align 8
  br label %68

115:                                              ; preds = %68
  %116 = load i64, i64* %4, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %138

119:                                              ; preds = %115
  %120 = load i64, i64* %4, align 8
  %121 = load i64, i64* %7, align 8
  %122 = add nsw i64 %121, %120
  store i64 %122, i64* %7, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load i64, i64* %4, align 8
  %125 = sub nsw i64 %124, 1
  %126 = call i32 @shuffle(i32* %123, i64 %125)
  %127 = load i32*, i32** %9, align 8
  %128 = load i64, i64* %4, align 8
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 @write_chunk(i32* %127, i64 %128, i32* %129)
  %131 = load i64, i64* @verbose, align 8
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %119
  %134 = load i32, i32* @stderr, align 4
  %135 = load i64, i64* %7, align 8
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %135)
  br label %137

137:                                              ; preds = %133, %119
  br label %66

138:                                              ; preds = %118
  %139 = load i32, i32* @stderr, align 4
  %140 = load i64, i64* %7, align 8
  %141 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %140)
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %157, %138
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %3, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %142
  %147 = load i32**, i32*** %12, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @fclose(i32* %151)
  %153 = load i8*, i8** @file_head, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %153, i32 %154)
  %156 = call i32 @remove(i8* %18)
  br label %157

157:                                              ; preds = %146
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %142

160:                                              ; preds = %142
  %161 = load i32, i32* @stderr, align 4
  %162 = call i32 (i32, i8*, ...) @fprintf(i32 %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %163 = load i32*, i32** %9, align 8
  %164 = call i32 @free(i32* %163)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %165

165:                                              ; preds = %160, %51
  %166 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i32 @fread(i32*, i32, i32, i32*) #2

declare dso_local i32 @shuffle(i32*, i64) #2

declare dso_local i32 @write_chunk(i32*, i64, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @remove(i8*) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
