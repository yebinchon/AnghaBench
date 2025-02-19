; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_webp.c_image_ctx_free.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_webp.c_image_ctx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@IMAGE_ROLE_ARGB = common dso_local global i64 0, align 8
@HUFFMAN_CODES_PER_META_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @image_ctx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_ctx_free(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 5
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = call i32 @av_free(%struct.TYPE_6__* %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IMAGE_ROLE_ARGB, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = call i32 @av_frame_free(i32* %21)
  br label %23

23:                                               ; preds = %19, %14, %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %65

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %57, %28
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %53, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @HUFFMAN_CODES_PER_META_CODE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @HUFFMAN_CODES_PER_META_CODE, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @ff_free_vlc(i32* %51)
  br label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %36

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %29

60:                                               ; preds = %29
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @av_free(%struct.TYPE_6__* %63)
  br label %65

65:                                               ; preds = %60, %23
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = call i32 @memset(%struct.TYPE_5__* %66, i32 0, i32 40)
  ret void
}

declare dso_local i32 @av_free(%struct.TYPE_6__*) #1

declare dso_local i32 @av_frame_free(i32*) #1

declare dso_local i32 @ff_free_vlc(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
