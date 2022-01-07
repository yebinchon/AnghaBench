; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_buffer.c_av_buffer_create.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_buffer.c_av_buffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, void (i8*, i32*)*, i32, i32, i8*, i32* }

@AV_BUFFER_FLAG_READONLY = common dso_local global i32 0, align 4
@BUFFER_FLAG_READONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @av_buffer_create(i32* %0, i32 %1, void (i8*, i32*)* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (i8*, i32*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store void (i8*, i32*)* %2, void (i8*, i32*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %13, align 8
  %14 = call i8* @av_mallocz(i32 40)
  %15 = bitcast i8* %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %13, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  br label %69

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 5
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load void (i8*, i32*)*, void (i8*, i32*)** %9, align 8
  %27 = icmp ne void (i8*, i32*)* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load void (i8*, i32*)*, void (i8*, i32*)** %9, align 8
  br label %31

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi void (i8*, i32*)* [ %29, %28 ], [ @av_buffer_default_free, %30 ]
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store void (i8*, i32*)* %32, void (i8*, i32*)** %34, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = call i32 @atomic_init(i32* %39, i32 1)
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @AV_BUFFER_FLAG_READONLY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %31
  %46 = load i32, i32* @BUFFER_FLAG_READONLY, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %31
  %52 = call i8* @av_mallocz(i32 24)
  %53 = bitcast i8* %52 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %12, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %55 = icmp ne %struct.TYPE_5__* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = call i32 @av_freep(%struct.TYPE_6__** %13)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  br label %69

58:                                               ; preds = %51
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %61, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %68, %struct.TYPE_5__** %6, align 8
  br label %69

69:                                               ; preds = %58, %56, %18
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  ret %struct.TYPE_5__* %70
}

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local void @av_buffer_default_free(i8*, i32*) #1

declare dso_local i32 @atomic_init(i32*, i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
