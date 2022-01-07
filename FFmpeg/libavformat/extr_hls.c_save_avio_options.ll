; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_save_avio_options.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_save_avio_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@save_avio_options.opts = internal constant [7 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [8 x i8] c"headers\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"http_proxy\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"user_agent\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"cookies\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"referer\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"rw_timeout\00", align 1
@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@AV_OPT_ALLOW_NULL = common dso_local global i32 0, align 4
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @save_avio_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_avio_options(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %4, align 8
  store i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @save_avio_options.opts, i64 0, i64 0), i8*** %5, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %39, %1
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %22 = load i32, i32* @AV_OPT_ALLOW_NULL, align 4
  %23 = or i32 %21, %22
  %24 = call i64 @av_opt_get(i32 %18, i8* %20, i32 %23, i32** %6)
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %15
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %33 = call i32 @av_dict_set(i32* %28, i8* %30, i32* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %44

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %15
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** %5, align 8
  br label %11

42:                                               ; preds = %11
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %36
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @av_opt_get(i32, i8*, i32, i32**) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
