; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_cabac.c_ff_h264_init_cabac_states.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_cabac.c_ff_h264_init_cabac_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i32*, i64 }

@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@cabac_context_init_I = common dso_local global i32** null, align 8
@cabac_context_init_PB = common dso_local global i32*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h264_init_cabac_states(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 8
  %19 = mul nsw i32 6, %18
  %20 = sext i32 %19 to i64
  %21 = sub nsw i64 %11, %20
  %22 = call i32 @av_clip(i64 %21, i32 0, i32 51)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32**, i32*** @cabac_context_init_I, align 8
  %30 = bitcast i32** %29 to [2 x i32]*
  store [2 x i32]* %30, [2 x i32]** %6, align 8
  br label %39

31:                                               ; preds = %2
  %32 = load i32***, i32**** @cabac_context_init_PB, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32**, i32*** %32, i64 %35
  %37 = load i32**, i32*** %36, align 8
  %38 = bitcast i32** %37 to [2 x i32]*
  store [2 x i32]* %38, [2 x i32]** %6, align 8
  br label %39

39:                                               ; preds = %31, %28
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %80, %39
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 1024
  br i1 %42, label %43, label %83

43:                                               ; preds = %40
  %44 = load [2 x i32]*, [2 x i32]** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %44, i64 %46
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %47, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 %49, %50
  %52 = ashr i32 %51, 4
  %53 = load [2 x i32]*, [2 x i32]** %6, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %53, i64 %55
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %56, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %52, %58
  %60 = mul nsw i32 2, %59
  %61 = sub nsw i32 %60, 127
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %62, 31
  %64 = load i32, i32* %8, align 4
  %65 = xor i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 124
  br i1 %67, label %68, label %72

68:                                               ; preds = %43
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, 1
  %71 = add nsw i32 124, %70
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %68, %43
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %40

83:                                               ; preds = %40
  ret void
}

declare dso_local i32 @av_clip(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
