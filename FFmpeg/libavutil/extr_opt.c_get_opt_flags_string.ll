; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_get_opt_flags_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_get_opt_flags_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@AV_OPT_TYPE_CONST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32)* @get_opt_flags_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_opt_flags_string(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca [512 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %10, align 16
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %63

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %54, %14
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = call %struct.TYPE_6__* @av_opt_next(i8* %16, %struct.TYPE_6__* %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %8, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %55

20:                                               ; preds = %15
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AV_OPT_TYPE_CONST, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %20
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strcmp(i32 %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %43 = load i8, i8* %42, align 16
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %47 = call i32 (i8*, i32, i8*, ...) @av_strlcatf(i8* %46, i32 512, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, i32, i8*, ...) @av_strlcatf(i8* %49, i32 512, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %48, %33, %26, %20
  br label %15

55:                                               ; preds = %15
  %56 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %57 = load i8, i8* %56, align 16
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %61 = call i8* @av_strdup(i8* %60)
  store i8* %61, i8** %4, align 8
  br label %63

62:                                               ; preds = %55
  store i8* null, i8** %4, align 8
  br label %63

63:                                               ; preds = %62, %59, %13
  %64 = load i8*, i8** %4, align 8
  ret i8* %64
}

declare dso_local %struct.TYPE_6__* @av_opt_next(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @av_strlcatf(i8*, i32, i8*, ...) #1

declare dso_local i8* @av_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
