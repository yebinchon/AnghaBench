; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_vp9.c_cbs_vp9_write_le.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_vp9.c_cbs_vp9_write_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i8*, i32*, i32)* @cbs_vp9_write_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_vp9_write_le(%struct.TYPE_4__* %0, i32* %1, i32 %2, i8* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [33 x i8], align 16
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %10, align 4
  %18 = srem i32 %17, 8
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @av_assert0(i32 %20)
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @put_bits_left(i32* %22)
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = call i32 @AVERROR(i32 %27)
  store i32 %28, i32* %7, align 4
  br label %94

29:                                               ; preds = %6
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %78

34:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %63, %34
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  store i32 0, i32* %16, align 4
  br label %40

40:                                               ; preds = %59, %39
  %41 = load i32, i32* %16, align 4
  %42 = icmp slt i32 %41, 8
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %16, align 4
  %47 = add nsw i32 %45, %46
  %48 = ashr i32 %44, %47
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 49, i32 48
  %53 = trunc i32 %52 to i8
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %16, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [33 x i8], [33 x i8]* %15, i64 0, i64 %57
  store i8 %53, i8* %58, align 1
  br label %59

59:                                               ; preds = %43
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %16, align 4
  br label %40

62:                                               ; preds = %40
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 8
  store i32 %65, i32* %14, align 4
  br label %35

66:                                               ; preds = %35
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [33 x i8], [33 x i8]* %15, i64 0, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @put_bits_count(i32* %71)
  %73 = load i8*, i8** %11, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = getelementptr inbounds [33 x i8], [33 x i8]* %15, i64 0, i64 0
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @ff_cbs_trace_syntax_element(%struct.TYPE_4__* %70, i32 %72, i8* %73, i32* %74, i8* %75, i32 %76)
  br label %78

78:                                               ; preds = %66, %29
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %90, %78
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = ashr i32 %85, %86
  %88 = and i32 %87, 255
  %89 = call i32 @put_bits(i32* %84, i32 8, i32 %88)
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 8
  store i32 %92, i32* %14, align 4
  br label %79

93:                                               ; preds = %79
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %26
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @put_bits_left(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_cbs_trace_syntax_element(%struct.TYPE_4__*, i32, i8*, i32*, i8*, i32) #1

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
