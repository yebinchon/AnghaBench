; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_merge_date.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_merge_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"TYER\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TYE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TDAT\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"TDA\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"-%.2s-%.2s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"TIM\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" %.2s:%.2s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**)* @merge_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_date(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca [17 x i8], align 16
  store i32** %0, i32*** %2, align 8
  %5 = bitcast [17 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 17, i1 false)
  %6 = load i32**, i32*** %2, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = call %struct.TYPE_3__* @get_date_tag(i32* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %3, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i32**, i32*** %2, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = call %struct.TYPE_3__* @get_date_tag(i32* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %3, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %84

16:                                               ; preds = %10, %1
  %17 = getelementptr inbounds [17 x i8], [17 x i8]* %4, i64 0, i64 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @av_strlcpy(i8* %17, i8* %20, i32 5)
  %22 = load i32**, i32*** %2, align 8
  %23 = call i32 @av_dict_set(i32** %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* null, i32 0)
  %24 = load i32**, i32*** %2, align 8
  %25 = call i32 @av_dict_set(i32** %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* null, i32 0)
  %26 = load i32**, i32*** %2, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = call %struct.TYPE_3__* @get_date_tag(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %3, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %16
  %31 = load i32**, i32*** %2, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = call %struct.TYPE_3__* @get_date_tag(i32* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %3, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %76

36:                                               ; preds = %30, %16
  %37 = getelementptr inbounds [17 x i8], [17 x i8]* %4, i64 0, i64 0
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @snprintf(i8* %38, i32 13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %42, i8* %45)
  %47 = load i32**, i32*** %2, align 8
  %48 = call i32 @av_dict_set(i32** %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* null, i32 0)
  %49 = load i32**, i32*** %2, align 8
  %50 = call i32 @av_dict_set(i32** %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* null, i32 0)
  %51 = load i32**, i32*** %2, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = call %struct.TYPE_3__* @get_date_tag(i32* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %3, align 8
  %54 = icmp ne %struct.TYPE_3__* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %36
  %56 = load i32**, i32*** %2, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = call %struct.TYPE_3__* @get_date_tag(i32* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_3__* %58, %struct.TYPE_3__** %3, align 8
  %59 = icmp ne %struct.TYPE_3__* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %76

61:                                               ; preds = %55, %36
  %62 = getelementptr inbounds [17 x i8], [17 x i8]* %4, i64 0, i64 0
  %63 = getelementptr inbounds i8, i8* %62, i64 10
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = call i32 @snprintf(i8* %63, i32 7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %66, i8* %70)
  %72 = load i32**, i32*** %2, align 8
  %73 = call i32 @av_dict_set(i32** %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* null, i32 0)
  %74 = load i32**, i32*** %2, align 8
  %75 = call i32 @av_dict_set(i32** %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* null, i32 0)
  br label %76

76:                                               ; preds = %61, %60, %35
  %77 = getelementptr inbounds [17 x i8], [17 x i8]* %4, i64 0, i64 0
  %78 = load i8, i8* %77, align 16
  %79 = icmp ne i8 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32**, i32*** %2, align 8
  %82 = getelementptr inbounds [17 x i8], [17 x i8]* %4, i64 0, i64 0
  %83 = call i32 @av_dict_set(i32** %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %82, i32 0)
  br label %84

84:                                               ; preds = %15, %80, %76
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_3__* @get_date_tag(i32*, i8*) #2

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
