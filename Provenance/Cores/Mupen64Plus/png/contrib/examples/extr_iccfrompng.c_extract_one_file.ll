; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/examples/extr_iccfrompng.c_extract_one_file.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/examples/extr_iccfrompng.c_extract_one_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@no_profile = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c".icc\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: error writing profile\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: could not remove file\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: failed to open output file\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"%s: OOM allocating string!\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"%s has no profile\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"%s: could not open file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @extract_one_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_one_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %118

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @extract(i32* %16, i32* %5)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %106

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** @no_profile, align 8
  %23 = icmp ne i8* %21, %22
  br i1 %23, label %24, label %106

24:                                               ; preds = %20
  %25 = load i8*, i8** %2, align 8
  %26 = call i8* @strrchr(i8* %25, i8 signext 46)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  store i64 %34, i64* %7, align 8
  br label %38

35:                                               ; preds = %24
  %36 = load i8*, i8** %2, align 8
  %37 = call i64 @strlen(i8* %36)
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 5
  %41 = call i8* @malloc(i64 %40)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %99

44:                                               ; preds = %38
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %2, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @memcpy(i8* %45, i8* %46, i64 %47)
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = call i32 @strcpy(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i8*, i8** %8, align 8
  %54 = call i32* @fopen(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %92

57:                                               ; preds = %44
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @fwrite(i8* %58, i32 %59, i32 1, i32* %60)
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load i32*, i32** %10, align 8
  %65 = call i64 @fflush(i32* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load i32*, i32** %10, align 8
  %69 = call i64 @fclose(i32* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i64, i64* @verbose, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i8*, i8** %2, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %75, i8* %76)
  br label %78

78:                                               ; preds = %74, %71
  store i32 1, i32* %3, align 4
  br label %91

79:                                               ; preds = %67, %63, %57
  %80 = load i32, i32* @stderr, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @fprintf(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %81)
  %83 = load i8*, i8** %8, align 8
  %84 = call i64 @remove(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @stderr, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @fprintf(i32 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %86, %79
  br label %91

91:                                               ; preds = %90, %78
  br label %96

92:                                               ; preds = %44
  %93 = load i32, i32* @stderr, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @fprintf(i32 %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %92, %91
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @free(i8* %97)
  br label %103

99:                                               ; preds = %38
  %100 = load i32, i32* @stderr, align 4
  %101 = load i8*, i8** %2, align 8
  %102 = call i32 @fprintf(i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %99, %96
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @free(i8* %104)
  br label %117

106:                                              ; preds = %20, %15
  %107 = load i64, i64* @verbose, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i8*, i8** %6, align 8
  %111 = load i8*, i8** @no_profile, align 8
  %112 = icmp eq i8* %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i8*, i8** %2, align 8
  %115 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %113, %109, %106
  br label %117

117:                                              ; preds = %116, %103
  br label %122

118:                                              ; preds = %1
  %119 = load i32, i32* @stderr, align 4
  %120 = load i8*, i8** %2, align 8
  %121 = call i32 @fprintf(i32 %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %118, %117
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @extract(i32*, i32*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i64 @fflush(i32*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @remove(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
