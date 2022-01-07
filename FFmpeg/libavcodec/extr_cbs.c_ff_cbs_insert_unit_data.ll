; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs.c_ff_cbs_insert_unit_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs.c_ff_cbs_insert_unit_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32*, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_cbs_insert_unit_data(i32* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3, i32* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %7
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %21, %7
  %26 = load i32, i32* %11, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sle i32 %29, %32
  br label %34

34:                                               ; preds = %28, %25
  %35 = phi i1 [ false, %25 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @av_assert0(i32 %36)
  %38 = load i32*, i32** %15, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32*, i32** %15, align 8
  %42 = call i32* @av_buffer_ref(i32* %41)
  store i32* %42, i32** %17, align 8
  br label %47

43:                                               ; preds = %34
  %44 = load i32*, i32** %13, align 8
  %45 = load i64, i64* %14, align 8
  %46 = call i32* @av_buffer_create(i32* %44, i64 %45, i32* null, i32* null, i32 0)
  store i32* %46, i32** %17, align 8
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32*, i32** %17, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %8, align 4
  br label %82

53:                                               ; preds = %47
  %54 = load i32*, i32** %9, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @cbs_insert_unit(i32* %54, %struct.TYPE_6__* %55, i32 %56)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = call i32 @av_buffer_unref(i32** %17)
  %62 = load i32, i32* %18, align 4
  store i32 %62, i32* %8, align 4
  br label %82

63:                                               ; preds = %53
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %16, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  store i32* %73, i32** %75, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i32*, i32** %17, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %63, %60, %50
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32* @av_buffer_ref(i32*) #1

declare dso_local i32* @av_buffer_create(i32*, i64, i32*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @cbs_insert_unit(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @av_buffer_unref(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
