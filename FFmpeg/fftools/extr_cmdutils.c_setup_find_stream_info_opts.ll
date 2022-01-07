; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_setup_find_stream_info_opts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_setup_find_stream_info_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Could not alloc memory for stream options.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @setup_find_stream_info_opts(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32** null, i32*** %3, align 8
  br label %61

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32** @av_mallocz_array(i32 %16, i32 8)
  store i32** %17, i32*** %7, align 8
  %18 = load i32**, i32*** %7, align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @AV_LOG_ERROR, align 4
  %22 = call i32 @av_log(i32* null, i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32** null, i32*** %3, align 8
  br label %61

23:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %56, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %34, i64 %36
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %46, i64 %48
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = call i32* @filter_codec_opts(i32* %31, i32 %42, %struct.TYPE_7__* %43, %struct.TYPE_8__* %50, i32* null)
  %52 = load i32**, i32*** %7, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  store i32* %51, i32** %55, align 8
  br label %56

56:                                               ; preds = %30
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %24

59:                                               ; preds = %24
  %60 = load i32**, i32*** %7, align 8
  store i32** %60, i32*** %3, align 8
  br label %61

61:                                               ; preds = %59, %20, %12
  %62 = load i32**, i32*** %3, align 8
  ret i32** %62
}

declare dso_local i32** @av_mallocz_array(i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32* @filter_codec_opts(i32*, i32, %struct.TYPE_7__*, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
