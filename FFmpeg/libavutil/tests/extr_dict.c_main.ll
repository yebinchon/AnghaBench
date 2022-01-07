; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_dict.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_dict.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@.str = private unnamed_addr constant [57 x i8] c"Testing av_dict_get_string() and av_dict_parse_string()\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"aaa\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"b,b\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bbb\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"c=c\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ccc\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ddd\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"d,d\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"eee\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"e=e\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"f,f\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"f=f\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"g=g\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"g,g\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"\\,='\22\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"\0ATesting av_dict_set()\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@AV_DICT_DONT_STRDUP_KEY = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@AV_DICT_DONT_OVERWRITE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@AV_DICT_APPEND = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"'%s' '%s'\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"\0ATesting av_dict_set_int()\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.34 = private unnamed_addr constant [67 x i8] c"\0ATesting av_dict_set() with existing AVDictionaryEntry.key as key\0A\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"new val OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i32* null, i32** %2, align 8
  store i8* null, i8** %4, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @av_dict_get_string(i32* %6, i8** %4, i8 signext 61, i8 signext 44)
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %8)
  %10 = call i32 @av_freep(i8** %4)
  %11 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %12 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %13 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %14 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %15 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %16 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %17 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 0)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @test_separators(i32* %18, i8 signext 44, i8 signext 61)
  %20 = call i32 @av_dict_free(i32** %2)
  %21 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %22 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %23 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %24 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 0)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @test_separators(i32* %25, i8 signext 34, i8 signext 61)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @test_separators(i32* %27, i8 signext 39, i8 signext 61)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @test_separators(i32* %29, i8 signext 44, i8 signext 34)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @test_separators(i32* %31, i8 signext 44, i8 signext 39)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @test_separators(i32* %33, i8 signext 39, i8 signext 34)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @test_separators(i32* %35, i8 signext 34, i8 signext 39)
  %37 = call i32 @av_dict_free(i32** %2)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %39 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 0)
  %40 = call i8* @av_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %41 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %42 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* %40, i32 %41)
  %43 = call i8* @av_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %44 = load i32, i32* @AV_DICT_DONT_STRDUP_KEY, align 4
  %45 = call i32 @av_dict_set(i32** %2, i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 %44)
  %46 = call i8* @av_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %47 = call i8* @av_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %48 = load i32, i32* @AV_DICT_DONT_STRDUP_KEY, align 4
  %49 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @av_dict_set(i32** %2, i8* %46, i8* %47, i32 %50)
  %52 = load i32, i32* @AV_DICT_DONT_OVERWRITE, align 4
  %53 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @AV_DICT_DONT_OVERWRITE, align 4
  %55 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 %54)
  %56 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 0)
  %57 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i8* null, i32 0)
  %58 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 0)
  %59 = load i32, i32* @AV_DICT_APPEND, align 4
  %60 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 %59)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %61

61:                                               ; preds = %67, %0
  %62 = load i32*, i32** %2, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %65 = call %struct.TYPE_4__* @av_dict_get(i32* %62, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), %struct.TYPE_4__* %63, i32 %64)
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %3, align 8
  %66 = icmp ne %struct.TYPE_4__* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* %70, i8* %73)
  br label %61

75:                                               ; preds = %61
  %76 = call i32 @av_dict_free(i32** %2)
  %77 = call i32 @av_dict_set(i32** %2, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 0)
  %78 = call i32 @av_dict_set(i32** %2, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 0)
  %79 = load i32*, i32** %2, align 8
  %80 = call %struct.TYPE_4__* @av_dict_get(i32* %79, i8* null, %struct.TYPE_4__* null, i32 0)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %81

81:                                               ; preds = %87, %75
  %82 = load i32*, i32** %2, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %85 = call %struct.TYPE_4__* @av_dict_get(i32* %82, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), %struct.TYPE_4__* %83, i32 %84)
  store %struct.TYPE_4__* %85, %struct.TYPE_4__** %3, align 8
  %86 = icmp ne %struct.TYPE_4__* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i8* %90, i8* %93)
  br label %81

95:                                               ; preds = %81
  %96 = call i32 @av_dict_free(i32** %2)
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0))
  %98 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %99 = call i32 @av_dict_set_int(i32** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i32 1, i32 %98)
  %100 = call i8* @av_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  %101 = load i32, i32* @AV_DICT_DONT_STRDUP_KEY, align 4
  %102 = call i32 @av_dict_set_int(i32** %2, i8* %100, i32 2, i32 %101)
  %103 = call i8* @av_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  %104 = load i32, i32* @AV_DICT_DONT_STRDUP_KEY, align 4
  %105 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @av_dict_set_int(i32** %2, i8* %103, i32 3, i32 %106)
  %108 = call i32 @av_dict_set_int(i32** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 4, i32 0)
  %109 = load i32, i32* @AV_DICT_DONT_OVERWRITE, align 4
  %110 = call i32 @av_dict_set_int(i32** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i32 5, i32 %109)
  %111 = load i32, i32* @AV_DICT_DONT_OVERWRITE, align 4
  %112 = call i32 @av_dict_set_int(i32** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i32 6, i32 %111)
  %113 = call i32 @av_dict_set_int(i32** %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i32 1, i32 0)
  %114 = load i32, i32* @AV_DICT_APPEND, align 4
  %115 = call i32 @av_dict_set_int(i32** %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i32 2, i32 %114)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %116

116:                                              ; preds = %122, %95
  %117 = load i32*, i32** %2, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %119 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %120 = call %struct.TYPE_4__* @av_dict_get(i32* %117, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), %struct.TYPE_4__* %118, i32 %119)
  store %struct.TYPE_4__* %120, %struct.TYPE_4__** %3, align 8
  %121 = icmp ne %struct.TYPE_4__* %120, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %116
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* %125, i8* %128)
  br label %116

130:                                              ; preds = %116
  %131 = call i32 @av_dict_free(i32** %2)
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.34, i64 0, i64 0))
  %133 = call i32 @av_dict_set(i32** %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i32 0)
  %134 = load i32*, i32** %2, align 8
  %135 = call %struct.TYPE_4__* @av_dict_get(i32* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), %struct.TYPE_4__* null, i32 0)
  store %struct.TYPE_4__* %135, %struct.TYPE_4__** %3, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @av_dict_set(i32** %2, i8* %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i32 0)
  %140 = load i32*, i32** %2, align 8
  %141 = call %struct.TYPE_4__* @av_dict_get(i32* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), %struct.TYPE_4__* null, i32 0)
  store %struct.TYPE_4__* %141, %struct.TYPE_4__** %3, align 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %144)
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @av_dict_set(i32** %2, i8* %148, i8* %151, i32 0)
  %153 = load i32*, i32** %2, align 8
  %154 = call %struct.TYPE_4__* @av_dict_get(i32* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), %struct.TYPE_4__* null, i32 0)
  store %struct.TYPE_4__* %154, %struct.TYPE_4__** %3, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %157)
  %159 = call i32 @av_dict_free(i32** %2)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @av_dict_get_string(i32*, i8**, i8 signext, i8 signext) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @test_separators(i32*, i8 signext, i8 signext) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local %struct.TYPE_4__* @av_dict_get(i32*, i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @av_dict_set_int(i32**, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
