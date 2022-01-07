; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_set_http_options.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_set_http_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i8*, i32, i8*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"user_agent\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"multiple_requests\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"headers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32**, %struct.TYPE_5__*)* @set_http_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_http_options(%struct.TYPE_6__* %0, i32** %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ff_is_http_proto(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32**, i32*** %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @av_dict_set(i32** %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %20, i32 0)
  br label %29

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32**, i32*** %5, align 8
  %27 = call i32 @av_dict_set(i32** %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %28, %16
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32**, i32*** %5, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @av_dict_set(i32** %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %38, i32 0)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32**, i32*** %5, align 8
  %47 = call i32 @av_dict_set_int(i32** %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 0)
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32**, i32*** %5, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @av_dict_set_int(i32** %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %57, i32 0)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32**, i32*** %5, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @av_dict_set(i32** %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %68, i32 0)
  br label %70

70:                                               ; preds = %64, %59
  ret void
}

declare dso_local i32 @ff_is_http_proto(i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @av_dict_set_int(i32**, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
