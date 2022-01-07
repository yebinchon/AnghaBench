; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_value.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@ASF_UNICODE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"av_dict_set failed.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i32, i32, i32**)* @asf_read_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_value(%struct.TYPE_4__* %0, i8* %1, i32 %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca [256 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = mul nsw i32 2, %17
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %14, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %15, align 8
  %23 = load i32, i32* %14, align 4
  %24 = call i8* @av_malloc(i32 %23)
  store i8* %24, i8** %13, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %6, align 4
  br label %102

30:                                               ; preds = %5
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @ASF_UNICODE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @get_asf_string(i32* %35, i32 %36, i8* %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %99

42:                                               ; preds = %34
  %43 = load i32**, i32*** %11, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i64 @av_dict_set(i32** %43, i8* %44, i8* %45, i32 0)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = load i32, i32* @AV_LOG_WARNING, align 4
  %51 = call i32 @av_log(%struct.TYPE_4__* %49, i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48, %42
  br label %97

53:                                               ; preds = %30
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ugt i64 %55, 256
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %58, i32* %12, align 4
  br label %99

59:                                               ; preds = %53
  %60 = load i32*, i32** %15, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @avio_read(i32* %60, i8* %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %99

66:                                               ; preds = %59
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 2, %68
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8 0, i8* %75, align 1
  br label %83

76:                                               ; preds = %66
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* %9, align 4
  %79 = mul nsw i32 2, %78
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %77, i64 %81
  store i8 0, i8* %82, align 1
  br label %83

83:                                               ; preds = %76, %71
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %85 = load i8*, i8** %13, align 8
  %86 = call i32 @snprintf(i8* %84, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  %87 = load i32**, i32*** %11, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %90 = call i64 @av_dict_set(i32** %87, i8* %88, i8* %89, i32 0)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %94 = load i32, i32* @AV_LOG_WARNING, align 4
  %95 = call i32 @av_log(%struct.TYPE_4__* %93, i32 %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %92, %83
  br label %97

97:                                               ; preds = %96, %52
  %98 = call i32 @av_freep(i8** %13)
  store i32 0, i32* %6, align 4
  br label %102

99:                                               ; preds = %65, %57, %41
  %100 = call i32 @av_freep(i8** %13)
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %99, %97, %27
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @get_asf_string(i32*, i32, i8*, i32) #1

declare dso_local i64 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @avio_read(i32*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
