; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pullup.c_make_field_queue.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pullup.c_make_field_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, i32)* @make_field_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @make_field_queue(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i8* @av_mallocz(i32 16)
  %9 = bitcast i8* %8 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %65

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = call i64 @alloc_metrics(i32* %14, %struct.TYPE_6__* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = call i32 @av_free(%struct.TYPE_6__* %19)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %65

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %22
  %26 = call i8* @av_mallocz(i32 16)
  %27 = bitcast i8* %26 to %struct.TYPE_6__*
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = call i32 @free_field_queue(%struct.TYPE_6__* %35)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %65

37:                                               ; preds = %25
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %7, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = call i64 @alloc_metrics(i32* %46, %struct.TYPE_6__* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = call i32 @free_field_queue(%struct.TYPE_6__* %51)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %65

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %5, align 4
  br label %22

57:                                               ; preds = %22
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %3, align 8
  br label %65

65:                                               ; preds = %57, %50, %34, %18, %12
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %66
}

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local i64 @alloc_metrics(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @av_free(%struct.TYPE_6__*) #1

declare dso_local i32 @free_field_queue(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
