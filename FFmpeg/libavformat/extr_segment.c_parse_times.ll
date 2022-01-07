; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_parse_times.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_parse_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Could not allocate forced times array\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Empty time specification in times list %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"Invalid time duration specification '%s' in times list %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Specified time %f is greater than the following time %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64**, i32*, i8*)* @parse_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_times(i8* %0, i64** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64** %1, i64*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = call i8* @av_strdup(i8* %17)
  store i8* %18, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %153

24:                                               ; preds = %4
  %25 = load i32*, i32** %8, align 8
  store i32 1, i32* %25, align 4
  %26 = load i8*, i8** %13, align 8
  store i8* %26, i8** %10, align 8
  br label %27

27:                                               ; preds = %41, %24
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 44
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %36, %31
  br label %41

41:                                               ; preds = %40
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %10, align 8
  br label %27

44:                                               ; preds = %27
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i64* @av_malloc_array(i32 %46, i32 8)
  %48 = load i64**, i64*** %7, align 8
  store i64* %47, i64** %48, align 8
  %49 = load i64**, i64*** %7, align 8
  %50 = load i64*, i64** %49, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %44
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* @AV_LOG_ERROR, align 4
  %55 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %53, i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %12, align 4
  br label %149

58:                                               ; preds = %44
  %59 = load i8*, i8** %13, align 8
  store i8* %59, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %145, %58
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %148

65:                                               ; preds = %60
  %66 = load i8*, i8** %10, align 8
  %67 = call i8* @av_strtok(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14)
  store i8* %67, i8** %16, align 8
  store i8* null, i8** %10, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i8*, i8** %16, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %70, %65
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* @AV_LOG_ERROR, align 4
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %76, i32 %77, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = call i32 @AVERROR(i32 %80)
  store i32 %81, i32* %12, align 4
  br label %149

82:                                               ; preds = %70
  %83 = load i8*, i8** %16, align 8
  %84 = call i32 @av_parse_time(i64* %15, i8* %83, i32 1)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* @AV_LOG_ERROR, align 4
  %90 = load i8*, i8** %16, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %88, i32 %89, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* %90, i8* %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = call i32 @AVERROR(i32 %93)
  store i32 %94, i32* %12, align 4
  br label %149

95:                                               ; preds = %82
  %96 = load i64, i64* %15, align 8
  %97 = load i64**, i64*** %7, align 8
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  store i64 %96, i64* %101, align 8
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %144

104:                                              ; preds = %95
  %105 = load i64**, i64*** %7, align 8
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %106, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load i64**, i64*** %7, align 8
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %111, %117
  br i1 %118, label %119, label %144

119:                                              ; preds = %104
  %120 = load i8*, i8** %6, align 8
  %121 = load i32, i32* @AV_LOG_ERROR, align 4
  %122 = load i64**, i64*** %7, align 8
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = sitofp i64 %127 to float
  %129 = fdiv float %128, 1.000000e+06
  %130 = fpext float %129 to double
  %131 = load i64**, i64*** %7, align 8
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %132, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = sitofp i64 %137 to float
  %139 = fdiv float %138, 1.000000e+06
  %140 = fpext float %139 to double
  %141 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %120, i32 %121, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), double %130, double %140)
  %142 = load i32, i32* @EINVAL, align 4
  %143 = call i32 @AVERROR(i32 %142)
  store i32 %143, i32* %12, align 4
  br label %149

144:                                              ; preds = %104, %95
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %60

148:                                              ; preds = %60
  br label %149

149:                                              ; preds = %148, %119, %87, %75, %52
  %150 = load i8*, i8** %13, align 8
  %151 = call i32 @av_free(i8* %150)
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %149, %21
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64* @av_malloc_array(i32, i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i32 @av_parse_time(i64*, i8*, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
