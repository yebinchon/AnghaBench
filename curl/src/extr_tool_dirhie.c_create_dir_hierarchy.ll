; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_dirhie.c_create_dir_hierarchy.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_dirhie.c_create_dir_hierarchy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_OK = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@PATH_DELIMITERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@DIR_CHAR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@CURLE_WRITE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_dir_hierarchy(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32, i32* @CURLE_OK, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %11, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @strdup(i8* %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %21, i32* %3, align 4
  br label %98

22:                                               ; preds = %2
  %23 = load i64, i64* %11, align 8
  %24 = add i64 %23, 1
  %25 = call i8* @malloc(i64 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @Curl_safefree(i8* %29)
  %31 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %31, i32* %3, align 4
  br label %98

32:                                               ; preds = %22
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %34, align 1
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* @PATH_DELIMITERS, align 4
  %37 = call i8* @strtok(i8* %35, i32 %36)
  store i8* %37, i8** %6, align 8
  br label %38

38:                                               ; preds = %90, %32
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %92

41:                                               ; preds = %38
  %42 = load i32, i32* @PATH_DELIMITERS, align 4
  %43 = call i8* @strtok(i8* null, i32 %42)
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %90

46:                                               ; preds = %41
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @strlen(i8* %47)
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = sub i64 %55, %56
  %58 = load i32, i32* @DIR_CHAR, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @msnprintf(i8* %54, i64 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %58, i8* %59)
  br label %76

61:                                               ; preds = %46
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @strcpy(i8* %66, i8* %67)
  br label %75

69:                                               ; preds = %61
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i32, i32* @DIR_CHAR, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @msnprintf(i8* %70, i64 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %72, i8* %73)
  br label %75

75:                                               ; preds = %69, %65
  br label %76

76:                                               ; preds = %75, %51
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @mkdir(i8* %77, i32 488)
  %79 = icmp eq i32 -1, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i64, i64* @errno, align 8
  %82 = load i64, i64* @EEXIST, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32*, i32** %5, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @show_dir_errno(i32* %85, i8* %86)
  %88 = load i32, i32* @CURLE_WRITE_ERROR, align 4
  store i32 %88, i32* %10, align 4
  br label %92

89:                                               ; preds = %80, %76
  br label %90

90:                                               ; preds = %89, %41
  %91 = load i8*, i8** %7, align 8
  store i8* %91, i8** %6, align 8
  br label %38

92:                                               ; preds = %84, %38
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @Curl_safefree(i8* %93)
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @Curl_safefree(i8* %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %92, %28, %20
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i8* @strtok(i8*, i32) #1

declare dso_local i32 @msnprintf(i8*, i64, i8*, i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @show_dir_errno(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
