; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_mb.c_ff_h264_hl_decode_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_mb.c_ff_h264_hl_decode_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_18__ = type { i32, i64, i32 }

@CONFIG_SMALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h264_hl_decode_mb(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* @CONFIG_SMALL, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @IS_INTRA_PCM(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br label %35

35:                                               ; preds = %30, %26, %21, %2
  %36 = phi i1 [ true, %26 ], [ true, %21 ], [ true, %2 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %39 = call i64 @CHROMA444(%struct.TYPE_19__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44, %41
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %52 = call i32 @hl_decode_mb_444_complex(%struct.TYPE_19__* %50, %struct.TYPE_18__* %51)
  br label %57

53:                                               ; preds = %44
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %56 = call i32 @hl_decode_mb_444_simple_8(%struct.TYPE_19__* %54, %struct.TYPE_18__* %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %80

58:                                               ; preds = %35
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %64 = call i32 @hl_decode_mb_complex(%struct.TYPE_19__* %62, %struct.TYPE_18__* %63)
  br label %79

65:                                               ; preds = %58
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %73 = call i32 @hl_decode_mb_simple_16(%struct.TYPE_19__* %71, %struct.TYPE_18__* %72)
  br label %78

74:                                               ; preds = %65
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %77 = call i32 @hl_decode_mb_simple_8(%struct.TYPE_19__* %75, %struct.TYPE_18__* %76)
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %61
  br label %80

80:                                               ; preds = %79, %57
  ret void
}

declare dso_local i64 @IS_INTRA_PCM(i32) #1

declare dso_local i64 @CHROMA444(%struct.TYPE_19__*) #1

declare dso_local i32 @hl_decode_mb_444_complex(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @hl_decode_mb_444_simple_8(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @hl_decode_mb_complex(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @hl_decode_mb_simple_16(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @hl_decode_mb_simple_8(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
