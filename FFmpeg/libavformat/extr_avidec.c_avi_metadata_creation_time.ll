; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avidec.c_avi_metadata_creation_time.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avidec.c_avi_metadata_creation_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"%*3s%*[ ]%3s%*[ ]%2d%*[ ]%8s%*[ ]%4d\00", align 1
@months = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"%.4d-%.2d-%.2d %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"creation_time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i8*)* @avi_metadata_creation_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avi_metadata_creation_time(i32** %0, i8* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [4 x i8], align 1
  %6 = alloca [9 x i8], align 1
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %13 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %14 = call i32 @sscanf(i8* %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %12, i32* %9, i8* %13, i32* %10)
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %45

16:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %41, %16
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 12
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %22 = load i32*, i32** @months, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @av_strcasecmp(i8* %21, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %36 = call i32 @snprintf(i8* %30, i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %33, i32 %34, i8* %35)
  %37 = load i32**, i32*** %3, align 8
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %39 = call i32 @av_dict_set(i32** %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %38, i32 0)
  br label %40

40:                                               ; preds = %29, %20
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %17

44:                                               ; preds = %17
  br label %66

45:                                               ; preds = %2
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 47
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 7
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 47
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 7
  store i8 45, i8* %59, align 1
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  store i8 45, i8* %61, align 1
  %62 = load i32**, i32*** %3, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @av_dict_set(i32** %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %63, i32 0)
  br label %65

65:                                               ; preds = %57, %51, %45
  br label %66

66:                                               ; preds = %65, %44
  ret void
}

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @av_strcasecmp(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
