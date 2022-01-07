; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_parse_set_cookie.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_parse_set_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@WHITESPACES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32**)* @parse_set_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_set_cookie(i8* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @av_strdup(i8* %18)
  store i8* %19, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %76

24:                                               ; preds = %17
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %43, %24
  %32 = load i32, i32* @WHITESPACES, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @strchr(i32 %32, i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load i8*, i8** %9, align 8
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %46

43:                                               ; preds = %37
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %45, i8** %9, align 8
  br label %31

46:                                               ; preds = %42, %31
  %47 = load i8*, i8** %8, align 8
  store i8* %47, i8** %7, align 8
  br label %48

48:                                               ; preds = %72, %46
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* @av_strtok(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i8* %50, i8** %6, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* @WHITESPACES, align 4
  %55 = call i32 @strspn(i8* %53, i32 %54)
  %56 = load i8*, i8** %6, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i8* @av_strtok(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %11)
  store i8* %60, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %52
  %63 = load i32**, i32*** %5, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i64 @av_dict_set(i32** %63, i8* %64, i8* %65, i32 0)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @av_free(i8* %69)
  store i32 -1, i32* %3, align 4
  br label %76

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %52
  br label %48

73:                                               ; preds = %48
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @av_free(i8* %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %68, %21, %16
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i64 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
