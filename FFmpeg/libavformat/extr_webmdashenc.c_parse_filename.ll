; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_webmdashenc.c_parse_filename.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_webmdashenc.c_parse_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"_\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%s_$RepresentationID$.hdr\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s_$RepresentationID$_$Number$.chk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**, i8**)* @parse_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_filename(i8* %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @av_strdup(i8* %14)
  store i8* %15, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load i8*, i8** %12, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = call i32 @AVERROR(i32 %19)
  store i32 %20, i32* %13, align 4
  br label %107

21:                                               ; preds = %4
  %22 = load i8*, i8** %12, align 8
  %23 = call i8* @av_stristr(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %11, align 8
  br label %24

24:                                               ; preds = %27, %21
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = call i8* @av_stristr(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** %11, align 8
  br label %24

33:                                               ; preds = %24
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %37, i32* %13, align 4
  br label %107

38:                                               ; preds = %33
  %39 = load i8*, i8** %9, align 8
  %40 = call i8* @av_stristr(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %44, i32* %13, align 4
  br label %107

45:                                               ; preds = %38
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 -1
  store i8 0, i8* %47, align 1
  %48 = load i8**, i8*** %6, align 8
  %49 = icmp ne i8** %48, null
  br i1 %49, label %50, label %78

50:                                               ; preds = %45
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = add nsw i64 %55, 1
  %57 = trunc i64 %56 to i32
  %58 = call i8* @av_malloc(i32 %57)
  %59 = load i8**, i8*** %6, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i8**, i8*** %6, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %50
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = call i32 @AVERROR(i32 %64)
  store i32 %65, i32* %13, align 4
  br label %107

66:                                               ; preds = %50
  %67 = load i8**, i8*** %6, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = add nsw i64 %74, 1
  %76 = trunc i64 %75 to i32
  %77 = call i32 @av_strlcpy(i8* %68, i8* %69, i32 %76)
  br label %78

78:                                               ; preds = %66, %45
  %79 = load i8**, i8*** %7, align 8
  %80 = icmp ne i8** %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i8*, i8** %12, align 8
  %83 = call i8* @av_asprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  %84 = load i8**, i8*** %7, align 8
  store i8* %83, i8** %84, align 8
  %85 = load i8**, i8*** %7, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = call i32 @AVERROR(i32 %89)
  store i32 %90, i32* %13, align 4
  br label %107

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %78
  %93 = load i8**, i8*** %8, align 8
  %94 = icmp ne i8** %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load i8*, i8** %12, align 8
  %97 = call i8* @av_asprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  %98 = load i8**, i8*** %8, align 8
  store i8* %97, i8** %98, align 8
  %99 = load i8**, i8*** %8, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = call i32 @AVERROR(i32 %103)
  store i32 %104, i32* %13, align 4
  br label %107

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105, %92
  br label %107

107:                                              ; preds = %106, %102, %88, %63, %43, %36, %18
  %108 = call i32 @av_freep(i8** %12)
  %109 = load i32, i32* %13, align 4
  ret i32 %109
}

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_stristr(i8*, i8*) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @av_asprintf(i8*, i8*) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
