; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_pixdesc.c_av_get_pix_fmt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_pixdesc.c_av_get_pix_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"rgb32\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"argb\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bgra\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"bgr32\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"abgr\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"rgba\00", align 1
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@AV_PIX_FMT_VAAPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_get_pix_fmt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [32 x i8], align 16
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i8* @X_NE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %9, i8** %2, align 8
  br label %17

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = call i8* @X_NE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i8* %15, i8** %2, align 8
  br label %16

16:                                               ; preds = %14, %10
  br label %17

17:                                               ; preds = %16, %8
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @get_pix_fmt_internal(i8* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %25 = load i8*, i8** %2, align 8
  %26 = call i8* @X_NE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %27 = call i32 @snprintf(i8* %24, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %25, i8* %26)
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %29 = call i32 @get_pix_fmt_internal(i8* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %23, %17
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @X_NE(i8*, i8*) #1

declare dso_local i32 @get_pix_fmt_internal(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
