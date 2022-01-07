; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_enc.c_merge_context_after_encode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_enc.c_merge_context_after_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32 }

@dct_count = common dso_local global i32* null, align 8
@mv_bits = common dso_local global i32 0, align 4
@i_tex_bits = common dso_local global i32 0, align 4
@p_tex_bits = common dso_local global i32 0, align 4
@i_count = common dso_local global i32 0, align 4
@f_count = common dso_local global i32 0, align 4
@b_count = common dso_local global i32 0, align 4
@skip_count = common dso_local global i32 0, align 4
@misc_bits = common dso_local global i32 0, align 4
@er = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@padding_bug_score = common dso_local global i32 0, align 4
@current_picture = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@dct_error_sum = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*)* @merge_context_after_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_context_after_encode(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %6 = load i32*, i32** @dct_count, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @MERGE(i32 %8)
  %10 = load i32*, i32** @dct_count, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @MERGE(i32 %12)
  %14 = load i32, i32* @mv_bits, align 4
  %15 = call i32 @MERGE(i32 %14)
  %16 = load i32, i32* @i_tex_bits, align 4
  %17 = call i32 @MERGE(i32 %16)
  %18 = load i32, i32* @p_tex_bits, align 4
  %19 = call i32 @MERGE(i32 %18)
  %20 = load i32, i32* @i_count, align 4
  %21 = call i32 @MERGE(i32 %20)
  %22 = load i32, i32* @f_count, align 4
  %23 = call i32 @MERGE(i32 %22)
  %24 = load i32, i32* @b_count, align 4
  %25 = call i32 @MERGE(i32 %24)
  %26 = load i32, i32* @skip_count, align 4
  %27 = call i32 @MERGE(i32 %26)
  %28 = load i32, i32* @misc_bits, align 4
  %29 = call i32 @MERGE(i32 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @er, i32 0, i32 0), align 4
  %31 = call i32 @MERGE(i32 %30)
  %32 = load i32, i32* @padding_bug_score, align 4
  %33 = call i32 @MERGE(i32 %32)
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @current_picture, i32 0, i32 0), align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @MERGE(i32 %36)
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @current_picture, i32 0, i32 0), align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @MERGE(i32 %40)
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @current_picture, i32 0, i32 0), align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MERGE(i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %71, %50
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 64
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load i32**, i32*** @dct_error_sum, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @MERGE(i32 %61)
  %63 = load i32**, i32*** @dct_error_sum, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @MERGE(i32 %69)
  br label %71

71:                                               ; preds = %54
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %51

74:                                               ; preds = %51
  br label %75

75:                                               ; preds = %74, %2
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = call i32 @put_bits_count(%struct.TYPE_10__* %77)
  %79 = srem i32 %78, 8
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @av_assert1(i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = call i32 @put_bits_count(%struct.TYPE_10__* %84)
  %86 = srem i32 %85, 8
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @av_assert1(i32 %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = call i32 @put_bits_count(%struct.TYPE_10__* %97)
  %99 = call i32 @avpriv_copy_bits(%struct.TYPE_10__* %91, i32 %95, i32 %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = call i32 @flush_put_bits(%struct.TYPE_10__* %101)
  ret void
}

declare dso_local i32 @MERGE(i32) #1

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @put_bits_count(%struct.TYPE_10__*) #1

declare dso_local i32 @avpriv_copy_bits(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @flush_put_bits(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
