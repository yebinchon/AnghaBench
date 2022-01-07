; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvo-amrwbenc.c_get_wb_bitrate_mode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvo-amrwbenc.c_get_wb_bitrate_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_wb_bitrate_mode.rates = internal constant [9 x i32] [i32 6600, i32 8850, i32 12650, i32 14250, i32 15850, i32 18250, i32 19850, i32 23050, i32 23850], align 16
@.str = private unnamed_addr constant [35 x i8] c"bitrate not supported: use one of \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%.2fk, \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"using %.2fk\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @get_wb_bitrate_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_wb_bitrate_mode(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [200 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %45, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 9
  br i1 %12, label %13, label %48

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [9 x i32], [9 x i32]* @get_wb_bitrate_mode.rates, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %82

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [9 x i32], [9 x i32]* @get_wb_bitrate_mode.rates, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @abs(i32 %31) #3
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %25, %22
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [9 x i32], [9 x i32]* @get_wb_bitrate_mode.rates, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %40, %41
  %43 = call i32 @abs(i32 %42) #3
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %35, %25
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %10

48:                                               ; preds = %10
  %49 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %50 = call i32 @snprintf(i8* %49, i32 200, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %64, %48
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 9
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [9 x i32], [9 x i32]* @get_wb_bitrate_mode.rates, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sitofp i32 %59 to float
  %61 = fdiv float %60, 1.000000e+03
  %62 = fptosi float %61 to i32
  %63 = call i32 @av_strlcatf(i8* %55, i32 200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %51

67:                                               ; preds = %51
  %68 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [9 x i32], [9 x i32]* @get_wb_bitrate_mode.rates, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sitofp i32 %72 to float
  %74 = fdiv float %73, 1.000000e+03
  %75 = fptosi float %74 to i32
  %76 = call i32 @av_strlcatf(i8* %68, i32 200, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* @AV_LOG_WARNING, align 4
  %79 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %80 = call i32 @av_log(i8* %77, i32 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %67, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i32 @av_strlcatf(i8*, i32, i8*, i32) #2

declare dso_local i32 @av_log(i8*, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
