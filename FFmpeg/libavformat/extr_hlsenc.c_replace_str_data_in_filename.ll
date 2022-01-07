; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_replace_str_data_in_filename.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_replace_str_data_in_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i8, i8*)* @replace_str_data_in_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace_str_data_in_filename(i8** %0, i8* %1, i8 signext %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %17 = call i32 @av_bprint_init(i32* %15, i32 0, i32 %16)
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %10, align 8
  br label %19

19:                                               ; preds = %69, %4
  %20 = load i8*, i8** %10, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %12, align 1
  %22 = load i8, i8* %12, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %70

26:                                               ; preds = %19
  %27 = load i8, i8* %12, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 37
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 37
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 2, i32* %13, align 4
  br label %58

37:                                               ; preds = %30, %26
  %38 = load i8, i8* %12, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 37
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* %8, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @av_bprintf(i32* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %53, i8** %10, align 8
  store i32 0, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %57

56:                                               ; preds = %41, %37
  store i32 1, i32* %13, align 4
  br label %57

57:                                               ; preds = %56, %49
  br label %58

58:                                               ; preds = %57, %36
  %59 = load i32, i32* %13, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @av_bprint_append_data(i32* %15, i8* %62, i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %10, align 8
  br label %69

69:                                               ; preds = %61, %58
  br label %19

70:                                               ; preds = %25
  %71 = call i32 @av_bprint_is_complete(i32* %15)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call i64 @av_bprint_finalize(i32* %15, i8** null)
  store i32 -1, i32* %5, align 4
  br label %86

75:                                               ; preds = %70
  %76 = call i64 @av_bprint_finalize(i32* %15, i8** %11)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** %11, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %78, %75
  store i32 -1, i32* %5, align 4
  br label %86

82:                                               ; preds = %78
  %83 = load i8*, i8** %11, align 8
  %84 = load i8**, i8*** %6, align 8
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %82, %81, %73
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @av_bprint_init(i32*, i32, i32) #1

declare dso_local i32 @av_bprintf(i32*, i8*, i8*) #1

declare dso_local i32 @av_bprint_append_data(i32*, i8*, i32) #1

declare dso_local i32 @av_bprint_is_complete(i32*) #1

declare dso_local i64 @av_bprint_finalize(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
