; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_read_graph.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_read_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i8* }

@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@free_buffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8*)* @read_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @read_graph(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @AVIO_FLAG_READ, align 4
  %11 = call i64 @avio_open(i32** %6, i8* %9, i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %46

14:                                               ; preds = %1
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @avio_size(i32* %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i8* @av_malloc(i64 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = call i32 @avio_closep(i32** %6)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %46

23:                                               ; preds = %14
  %24 = load i32*, i32** %6, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @avio_read(i32* %24, i8* %25, i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = call i32 @avio_closep(i32** %6)
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = call i32 @av_freep(i8** %5)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %46

34:                                               ; preds = %23
  %35 = call %struct.TYPE_4__* (...) @TF_NewBuffer()
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @free_buffer, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %2, align 8
  br label %46

46:                                               ; preds = %34, %32, %21, %13
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %47
}

declare dso_local i64 @avio_open(i32**, i8*, i32) #1

declare dso_local i64 @avio_size(i32*) #1

declare dso_local i8* @av_malloc(i64) #1

declare dso_local i32 @avio_closep(i32**) #1

declare dso_local i64 @avio_read(i32*, i8*, i64) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local %struct.TYPE_4__* @TF_NewBuffer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
