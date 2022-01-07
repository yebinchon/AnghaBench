; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_find_timestamp_in_playlist.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_find_timestamp_in_playlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.playlist = type { i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.playlist*, i64, i32*)* @find_timestamp_in_playlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_timestamp_in_playlist(%struct.TYPE_5__* %0, %struct.playlist* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.playlist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.playlist* %1, %struct.playlist** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %23

19:                                               ; preds = %4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  br label %23

23:                                               ; preds = %19, %18
  %24 = phi i64 [ 0, %18 ], [ %22, %19 ]
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.playlist*, %struct.playlist** %7, align 8
  %30 = getelementptr inbounds %struct.playlist, %struct.playlist* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %5, align 4
  br label %88

33:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %75, %33
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.playlist*, %struct.playlist** %7, align 8
  %37 = getelementptr inbounds %struct.playlist, %struct.playlist* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %34
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.playlist*, %struct.playlist** %7, align 8
  %43 = getelementptr inbounds %struct.playlist, %struct.playlist* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %41, %50
  %52 = load i64, i64* %8, align 8
  %53 = sub nsw i64 %51, %52
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %40
  %57 = load %struct.playlist*, %struct.playlist** %7, align 8
  %58 = getelementptr inbounds %struct.playlist, %struct.playlist* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  store i32 1, i32* %5, align 4
  br label %88

63:                                               ; preds = %40
  %64 = load %struct.playlist*, %struct.playlist** %7, align 8
  %65 = getelementptr inbounds %struct.playlist, %struct.playlist* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %66, i64 %68
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %34

78:                                               ; preds = %34
  %79 = load %struct.playlist*, %struct.playlist** %7, align 8
  %80 = getelementptr inbounds %struct.playlist, %struct.playlist* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.playlist*, %struct.playlist** %7, align 8
  %83 = getelementptr inbounds %struct.playlist, %struct.playlist* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  %86 = sub nsw i32 %85, 1
  %87 = load i32*, i32** %9, align 8
  store i32 %86, i32* %87, align 4
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %78, %56, %28
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
