; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_opt_filter_complex.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_opt_filter_complex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@filtergraphs = common dso_local global %struct.TYPE_4__** null, align 8
@nb_filtergraphs = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@input_stream_potentially_available = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @opt_filter_complex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_filter_complex(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @filtergraphs, align 8
  %9 = load i32, i32* @nb_filtergraphs, align 4
  %10 = call i32 @GROW_ARRAY(%struct.TYPE_4__** %8, i32 %9)
  %11 = call %struct.TYPE_4__* @av_mallocz(i32 8)
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @filtergraphs, align 8
  %13 = load i32, i32* @nb_filtergraphs, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %12, i64 %15
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %16, align 8
  %17 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = call i32 @AVERROR(i32 %19)
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %3
  %22 = load i32, i32* @nb_filtergraphs, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @filtergraphs, align 8
  %25 = load i32, i32* @nb_filtergraphs, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %23, i32* %30, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @av_strdup(i8* %31)
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @filtergraphs, align 8
  %34 = load i32, i32* @nb_filtergraphs, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %33, i64 %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %32, i32* %39, align 4
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @filtergraphs, align 8
  %41 = load i32, i32* @nb_filtergraphs, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %40, i64 %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %21
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %21
  store i32 1, i32* @input_stream_potentially_available, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %49, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @GROW_ARRAY(%struct.TYPE_4__**, i32) #1

declare dso_local %struct.TYPE_4__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
