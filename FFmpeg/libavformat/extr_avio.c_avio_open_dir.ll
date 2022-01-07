; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avio.c_avio_open_dir.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avio.c_avio_open_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*)*, i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avio_open_dir(%struct.TYPE_13__** %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  %11 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  %12 = call i32 @av_assert0(%struct.TYPE_13__** %11)
  %13 = call %struct.TYPE_13__* @av_mallocz(i32 8)
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %9, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %15 = icmp ne %struct.TYPE_13__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = call i32 @AVERROR(i32 %17)
  store i32 %18, i32* %10, align 4
  br label %87

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @AVIO_FLAG_READ, align 4
  %22 = call i32 @ffurl_alloc(%struct.TYPE_12__** %8, i8* %20, i32 %21, i32* null)
  store i32 %22, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %87

25:                                               ; preds = %19
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %29, align 8
  %31 = icmp ne i32 (%struct.TYPE_12__*)* %30, null
  br i1 %31, label %32, label %72

32:                                               ; preds = %25
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %32
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %39
  %47 = load i32**, i32*** %7, align 8
  %48 = icmp ne i32** %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32**, i32*** %7, align 8
  %61 = call i32 @av_opt_set_dict(i32 %59, i32** %60)
  store i32 %61, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %87

64:                                               ; preds = %56, %49, %46
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %68, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %71 = call i32 %69(%struct.TYPE_12__* %70)
  store i32 %71, i32* %10, align 4
  br label %75

72:                                               ; preds = %39, %32, %25
  %73 = load i32, i32* @ENOSYS, align 4
  %74 = call i32 @AVERROR(i32 %73)
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %72, %64
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %87

79:                                               ; preds = %75
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  store %struct.TYPE_12__* %82, %struct.TYPE_12__** %84, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %86 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %86, align 8
  store i32 0, i32* %4, align 4
  br label %94

87:                                               ; preds = %78, %63, %24, %16
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %89 = call i32 @av_free(%struct.TYPE_13__* %88)
  %90 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %90, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %92 = call i32 @ffurl_close(%struct.TYPE_12__* %91)
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %87, %79
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @av_assert0(%struct.TYPE_13__**) #1

declare dso_local %struct.TYPE_13__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ffurl_alloc(%struct.TYPE_12__**, i8*, i32, i32*) #1

declare dso_local i32 @av_opt_set_dict(i32, i32**) #1

declare dso_local i32 @av_free(%struct.TYPE_13__*) #1

declare dso_local i32 @ffurl_close(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
