; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avio.c_ffurl_get_multi_file_handle.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avio.c_ffurl_get_multi_file_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}*, i32 (%struct.TYPE_7__*)* }

@ENOSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffurl_get_multi_file_handle(%struct.TYPE_7__* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10, %3
  %16 = load i32, i32* @ENOSYS, align 4
  %17 = call i32 @AVERROR(i32 %16)
  store i32 %17, i32* %4, align 4
  br label %68

18:                                               ; preds = %10
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.TYPE_7__*, i32**, i32*)**
  %24 = load i32 (%struct.TYPE_7__*, i32**, i32*)*, i32 (%struct.TYPE_7__*, i32**, i32*)** %23, align 8
  %25 = icmp ne i32 (%struct.TYPE_7__*, i32**, i32*)* %24, null
  br i1 %25, label %57, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %30, align 8
  %32 = icmp ne i32 (%struct.TYPE_7__*)* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOSYS, align 4
  %35 = call i32 @AVERROR(i32 %34)
  store i32 %35, i32* %4, align 4
  br label %68

36:                                               ; preds = %26
  %37 = call i32* @av_malloc(i32 4)
  %38 = load i32**, i32*** %6, align 8
  store i32* %37, i32** %38, align 8
  %39 = load i32**, i32*** %6, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %68

45:                                               ; preds = %36
  %46 = load i32*, i32** %7, align 8
  store i32 1, i32* %46, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = call i32 %51(%struct.TYPE_7__* %52)
  %54 = load i32**, i32*** %6, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  store i32 %53, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %68

57:                                               ; preds = %18
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = bitcast {}** %61 to i32 (%struct.TYPE_7__*, i32**, i32*)**
  %63 = load i32 (%struct.TYPE_7__*, i32**, i32*)*, i32 (%struct.TYPE_7__*, i32**, i32*)** %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = load i32**, i32*** %6, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 %63(%struct.TYPE_7__* %64, i32** %65, i32* %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %57, %45, %42, %33, %15
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
