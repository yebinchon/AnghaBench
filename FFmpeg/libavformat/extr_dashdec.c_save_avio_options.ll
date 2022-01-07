; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_save_avio_options.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_save_avio_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"headers\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"user_agent\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cookies\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"http_proxy\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"referer\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"rw_timeout\00", align 1
@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @save_avio_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_avio_options(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca [7 x i8*], align 16
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %4, align 8
  %12 = bitcast [7 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 56, i1 false)
  %13 = bitcast i8* %12 to [7 x i8*]*
  %14 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** %14, align 16
  %15 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8** %15, align 8
  %16 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8** %16, align 16
  %17 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i32 0, i32 3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8** %17, align 8
  %18 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i32 0, i32 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8** %18, align 16
  %19 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i32 0, i32 5
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8** %19, align 8
  %20 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 0
  store i8** %20, i8*** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %57, %1
  %22 = load i8**, i8*** %6, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %60

25:                                               ; preds = %21
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %32 = call i64 @av_opt_get(i32 %28, i8* %30, i32 %31, i8** %7)
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %25
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i8**, i8*** %6, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %47 = call i32 @av_dict_set(i32* %42, i8* %44, i8* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = call i32 @av_freep(i8** %7)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %62

53:                                               ; preds = %40
  br label %56

54:                                               ; preds = %34
  %55 = call i32 @av_freep(i8** %7)
  br label %56

56:                                               ; preds = %54, %53
  br label %57

57:                                               ; preds = %56, %25
  %58 = load i8**, i8*** %6, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i32 1
  store i8** %59, i8*** %6, align 8
  br label %21

60:                                               ; preds = %21
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %50
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @av_opt_get(i32, i8*, i32, i8**) #2

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #2

declare dso_local i32 @av_freep(i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
