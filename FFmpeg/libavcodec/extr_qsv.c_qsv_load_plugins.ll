; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsv.c_qsv_load_plugins.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsv.c_qsv_load_plugins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid plugin UID length\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%2hhx\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Invalid plugin UID\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Could not load the requested plugin '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @qsv_load_plugins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsv_load_plugins(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [128 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %102

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %100, %21
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %101

26:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  %27 = call i8* @av_get_token(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %4, align 4
  br label %102

33:                                               ; preds = %26
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 16
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* @AV_LOG_ERROR, align 4
  %41 = call i32 @av_log(i8* %39, i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = call i32 @AVERROR(i32 %42)
  store i32 %43, i32* %11, align 4
  br label %94

44:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %70, %44
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %47, 8
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 2, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = call i32 @sscanf(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %69

63:                                               ; preds = %49
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = call i32 @av_log(i8* %64, i32 %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = call i32 @AVERROR(i32 %67)
  store i32 %68, i32* %11, align 4
  br label %94

69:                                               ; preds = %49
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %45

73:                                               ; preds = %45
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @MFXVideoUSER_Load(i32 %74, %struct.TYPE_3__* %8, i32 1)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @snprintf(i8* %79, i32 128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %80)
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %85 = call i32 @ff_qsv_print_error(i8* %82, i64 %83, i8* %84)
  store i32 %85, i32* %11, align 4
  br label %94

86:                                               ; preds = %73
  %87 = load i8*, i8** %6, align 8
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %6, align 8
  br label %93

93:                                               ; preds = %90, %86
  br label %94

94:                                               ; preds = %93, %78, %63, %38
  %95 = call i32 @av_freep(i8** %12)
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %4, align 4
  br label %102

100:                                              ; preds = %94
  br label %22

101:                                              ; preds = %22
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %98, %30, %20
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i8* @av_get_token(i8**, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @av_log(i8*, i32, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64) #1

declare dso_local i64 @MFXVideoUSER_Load(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @ff_qsv_print_error(i8*, i64, i8*) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
