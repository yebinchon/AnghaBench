; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_dict.c_av_dict_get_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_dict.c_av_dict_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@AV_ESCAPE_MODE_BACKSLASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_dict_get_string(i32* %0, i8** %1, i8 signext %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i8], align 1
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  store i32 0, i32* %12, align 4
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %15 = load i8, i8* %9, align 1
  store i8 %15, i8* %14, align 1
  %16 = getelementptr inbounds i8, i8* %14, i64 1
  %17 = load i8, i8* %8, align 1
  store i8 %17, i8* %16, align 1
  %18 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 0, i8* %18, align 1
  %19 = load i8**, i8*** %7, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %4
  %22 = load i8, i8* %9, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %21
  %26 = load i8, i8* %8, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = load i8, i8* %9, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* %8, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = load i8, i8* %9, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 92
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i8, i8* %8, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 92
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %35, %29, %25, %21, %4
  %44 = load i32, i32* @EINVAL, align 4
  %45 = call i32 @AVERROR(i32 %44)
  store i32 %45, i32* %5, align 4
  br label %94

46:                                               ; preds = %39
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @av_dict_count(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = call i8* @av_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %52 = load i8**, i8*** %7, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i8**, i8*** %7, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = call i32 @AVERROR(i32 %58)
  br label %60

60:                                               ; preds = %57, %56
  %61 = phi i32 [ 0, %56 ], [ %59, %57 ]
  store i32 %61, i32* %5, align 4
  br label %94

62:                                               ; preds = %46
  %63 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %64 = call i32 @av_bprint_init(i32* %11, i32 64, i32 %63)
  br label %65

65:                                               ; preds = %77, %62
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %69 = call %struct.TYPE_4__* @av_dict_get(i32* %66, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %67, i32 %68)
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %10, align 8
  %70 = icmp ne %struct.TYPE_4__* %69, null
  br i1 %70, label %71, label %91

71:                                               ; preds = %65
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  %74 = icmp ne i32 %72, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @av_bprint_append_data(i32* %11, i8* %9, i32 1)
  br label %77

77:                                               ; preds = %75, %71
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %82 = load i32, i32* @AV_ESCAPE_MODE_BACKSLASH, align 4
  %83 = call i32 @av_bprint_escape(i32* %11, i32 %80, i8* %81, i32 %82, i32 0)
  %84 = call i32 @av_bprint_append_data(i32* %11, i8* %8, i32 1)
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %89 = load i32, i32* @AV_ESCAPE_MODE_BACKSLASH, align 4
  %90 = call i32 @av_bprint_escape(i32* %11, i32 %87, i8* %88, i32 %89, i32 0)
  br label %65

91:                                               ; preds = %65
  %92 = load i8**, i8*** %7, align 8
  %93 = call i32 @av_bprint_finalize(i32* %11, i8** %92)
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %91, %60, %43
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_dict_count(i32*) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @av_bprint_init(i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @av_dict_get(i32*, i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @av_bprint_append_data(i32*, i8*, i32) #1

declare dso_local i32 @av_bprint_escape(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @av_bprint_finalize(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
