; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_opt_filter_complex_script.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_opt_filter_complex_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@filtergraphs = common dso_local global %struct.TYPE_4__** null, align 8
@nb_filtergraphs = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@input_stream_potentially_available = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @opt_filter_complex_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_filter_complex_script(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call i32* @read_file(i8* %9)
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = call i32 @AVERROR(i32 %14)
  store i32 %15, i32* %4, align 4
  br label %48

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @filtergraphs, align 8
  %18 = load i32, i32* @nb_filtergraphs, align 4
  %19 = call i32 @GROW_ARRAY(%struct.TYPE_4__** %17, i32 %18)
  %20 = call %struct.TYPE_4__* @av_mallocz(i32 16)
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @filtergraphs, align 8
  %22 = load i32, i32* @nb_filtergraphs, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %21, i64 %24
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %25, align 8
  %26 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %4, align 4
  br label %48

30:                                               ; preds = %16
  %31 = load i32, i32* @nb_filtergraphs, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @filtergraphs, align 8
  %34 = load i32, i32* @nb_filtergraphs, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %33, i64 %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %32, i32* %39, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @filtergraphs, align 8
  %42 = load i32, i32* @nb_filtergraphs, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %41, i64 %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32* %40, i32** %47, align 8
  store i32 1, i32* @input_stream_potentially_available, align 4
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %30, %27, %13
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32* @read_file(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @GROW_ARRAY(%struct.TYPE_4__**, i32) #1

declare dso_local %struct.TYPE_4__* @av_mallocz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
