; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawtext.c_expand_function.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawtext.c_expand_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Stray %% near '%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c":}\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unterminated %%{} near '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8**)* @expand_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_function(i32* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [16 x i8*], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = bitcast [16 x i8*]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 128, i1 false)
  store i32 0, i32* %10, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 123
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @AV_LOG_ERROR, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @av_log(i32* %21, i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = call i32 @AVERROR(i32 %25)
  store i32 %26, i32* %4, align 4
  br label %103

27:                                               ; preds = %3
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %8, align 8
  br label %30

30:                                               ; preds = %27, %69
  %31 = call i8* @av_get_token(i8** %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %10, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds [16 x i8*], [16 x i8*]* %9, i64 0, i64 %34
  store i8* %31, i8** %35, align 8
  %36 = icmp ne i8* %31, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %12, align 4
  br label %88

40:                                               ; preds = %30
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @AV_LOG_ERROR, align 4
  %47 = load i8**, i8*** %7, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @av_log(i32* %45, i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %12, align 4
  br label %88

52:                                               ; preds = %40
  %53 = load i32, i32* %10, align 4
  %54 = getelementptr inbounds [16 x i8*], [16 x i8*]* %9, i64 0, i64 0
  %55 = call i32 @FF_ARRAY_ELEMS(i8** %54)
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = add i32 %58, -1
  store i32 %59, i32* %10, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [16 x i8*], [16 x i8*]* %9, i64 0, i64 %60
  %62 = call i32 @av_freep(i8** %61)
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i8*, i8** %8, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 125
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %72

69:                                               ; preds = %63
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %8, align 8
  br label %30

72:                                               ; preds = %68
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds [16 x i8*], [16 x i8*]* %9, i64 0, i64 0
  %76 = load i8*, i8** %75, align 16
  %77 = load i32, i32* %10, align 4
  %78 = sub i32 %77, 1
  %79 = getelementptr inbounds [16 x i8*], [16 x i8*]* %9, i64 0, i64 0
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = call i32 @eval_function(i32* %73, i32* %74, i8* %76, i32 %78, i8** %80)
  store i32 %81, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %88

84:                                               ; preds = %72
  store i32 0, i32* %12, align 4
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8**, i8*** %7, align 8
  store i8* %86, i8** %87, align 8
  br label %88

88:                                               ; preds = %84, %83, %44, %37
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %98, %88
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i32, i32* %11, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [16 x i8*], [16 x i8*]* %9, i64 0, i64 %95
  %97 = call i32 @av_freep(i8** %96)
  br label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %11, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %89

101:                                              ; preds = %89
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %20
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i8* @av_get_token(i8**, i8*) #2

declare dso_local i32 @FF_ARRAY_ELEMS(i8**) #2

declare dso_local i32 @av_freep(i8**) #2

declare dso_local i32 @eval_function(i32*, i32*, i8*, i32, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
