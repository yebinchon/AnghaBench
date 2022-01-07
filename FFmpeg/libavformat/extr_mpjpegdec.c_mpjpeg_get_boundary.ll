; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpjpegdec.c_mpjpeg_get_boundary.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpjpegdec.c_mpjpeg_get_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"mime_type\00", align 1
@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"boundary=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @mpjpeg_get_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mpjpeg_get_boundary(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %6, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %10 = call i32 @av_opt_get(i32* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9, i8** %3)
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %4, align 8
  br label %12

12:                                               ; preds = %85, %1
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %86

22:                                               ; preds = %20
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 59)
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %86

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8* %30, i8** %4, align 8
  br label %31

31:                                               ; preds = %36, %28
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @av_isspace(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  br label %31

39:                                               ; preds = %31
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 @av_stristart(i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %85

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 59)
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sub nsw i64 %53, 1
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  br label %59

56:                                               ; preds = %43
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @strlen(i8* %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %48
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %60, 2
  br i1 %61, label %62, label %81

62:                                               ; preds = %59
  %63 = load i8*, i8** %4, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 34
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 34
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %79, 2
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %76, %67, %62, %59
  %82 = load i8*, i8** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i8* @av_strndup(i8* %82, i32 %83)
  store i8* %84, i8** %6, align 8
  br label %86

85:                                               ; preds = %39
  br label %12

86:                                               ; preds = %81, %27, %20
  %87 = call i32 @av_freep(i8** %3)
  %88 = load i8*, i8** %6, align 8
  ret i8* %88
}

declare dso_local i32 @av_opt_get(i32*, i8*, i32, i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @av_isspace(i8 signext) #1

declare dso_local i64 @av_stristart(i8*, i8*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @av_strndup(i8*, i32) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
