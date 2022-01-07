; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext.c_av_hwdevice_ctx_create.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext.c_av_hwdevice_ctx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__*, i8*, i32*, i32)* }

@ENOMEM = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_hwdevice_ctx_create(%struct.TYPE_13__** %0, i32 %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.TYPE_13__* @av_hwdevice_ctx_alloc(i32 %15)
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %12, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %18 = icmp ne %struct.TYPE_13__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = call i32 @AVERROR(i32 %20)
  store i32 %21, i32* %14, align 4
  br label %63

22:                                               ; preds = %5
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %13, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_12__*, i8*, i32*, i32)*, i32 (%struct.TYPE_12__*, i8*, i32*, i32)** %32, align 8
  %34 = icmp ne i32 (%struct.TYPE_12__*, i8*, i32*, i32)* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* @ENOSYS, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %14, align 4
  br label %63

38:                                               ; preds = %22
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_12__*, i8*, i32*, i32)*, i32 (%struct.TYPE_12__*, i8*, i32*, i32)** %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 %45(%struct.TYPE_12__* %46, i8* %47, i32* %48, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  br label %63

54:                                               ; preds = %38
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %56 = call i32 @av_hwdevice_ctx_init(%struct.TYPE_13__* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %63

60:                                               ; preds = %54
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %62 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %62, align 8
  store i32 0, i32* %6, align 4
  br label %67

63:                                               ; preds = %59, %53, %35, %19
  %64 = call i32 @av_buffer_unref(%struct.TYPE_13__** %12)
  %65 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %65, align 8
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_13__* @av_hwdevice_ctx_alloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_hwdevice_ctx_init(%struct.TYPE_13__*) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_13__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
