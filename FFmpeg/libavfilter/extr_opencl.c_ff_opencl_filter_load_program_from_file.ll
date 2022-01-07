; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_opencl.c_ff_opencl_filter_load_program_from_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_opencl.c_ff_opencl_filter_load_program_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to open program source file \22%s\22.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"#line 1 \22%s\22\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_opencl_filter_load_program_from_file(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @AV_LOG_ERROR, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @av_log(i32* %18, i32 %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @ENOENT, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %100

24:                                               ; preds = %2
  store i64 65536, i64* %9, align 8
  store i64 0, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @av_reallocp(i8** %7, i64 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %95

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @snprintf(i8* %31, i64 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %12, align 4
  br label %95

40:                                               ; preds = %30
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %9, align 8
  %44 = udiv i64 %43, 2
  %45 = icmp ugt i64 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %12, align 4
  br label %95

49:                                               ; preds = %40
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %49, %87
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %8, align 8
  %58 = sub i64 %56, %57
  %59 = sub i64 %58, 1
  %60 = load i32*, i32** %6, align 8
  %61 = call i64 @fread(i8* %55, i32 1, i64 %59, i32* %60)
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %52
  %65 = load i32*, i32** %6, align 8
  %66 = call i64 @ferror(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @EIO, align 4
  %70 = call i32 @AVERROR(i32 %69)
  store i32 %70, i32* %12, align 4
  br label %95

71:                                               ; preds = %64, %52
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %88

79:                                               ; preds = %71
  %80 = load i64, i64* %9, align 8
  %81 = shl i64 %80, 1
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @av_reallocp(i8** %7, i64 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %95

87:                                               ; preds = %79
  br label %52

88:                                               ; preds = %78
  %89 = load i8*, i8** %7, align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %7, align 8
  store i8* %92, i8** %11, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @ff_opencl_filter_load_program(i32* %93, i8** %11, i32 1)
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %88, %86, %68, %46, %37, %29
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @fclose(i32* %96)
  %98 = call i32 @av_freep(i8** %7)
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %95, %17
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_reallocp(i8**, i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @ff_opencl_filter_load_program(i32*, i8**, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
