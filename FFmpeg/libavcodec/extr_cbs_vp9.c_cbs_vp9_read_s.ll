; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_vp9.c_cbs_vp9_read_s.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_vp9.c_cbs_vp9_read_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Invalid signed value at %s: bitstream ended.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i8*, i32*, i32*)* @cbs_vp9_read_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_vp9_read_s(%struct.TYPE_4__* %0, i32* %1, i32 %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [33 x i8], align 16
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @get_bits_count(i32* %25)
  store i32 %26, i32* %15, align 4
  br label %27

27:                                               ; preds = %24, %6
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @get_bits_left(i32* %28)
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @av_log(i32 %36, i32 %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %40, i32* %7, align 4
  br label %106

41:                                               ; preds = %27
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @get_bits(i32* %42, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @get_bits1(i32* %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* %14, align 4
  %51 = sub nsw i32 0, %50
  br label %54

52:                                               ; preds = %41
  %53 = load i32, i32* %14, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi i32 [ %51, %49 ], [ %53, %52 ]
  store i32 %55, i32* %17, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %103

60:                                               ; preds = %54
  store i32 0, i32* %19, align 4
  br label %61

61:                                               ; preds = %80, %60
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %19, align 4
  %69 = sub nsw i32 %67, %68
  %70 = sub nsw i32 %69, 1
  %71 = ashr i32 %66, %70
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 49, i32 48
  %76 = trunc i32 %75 to i8
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [33 x i8], [33 x i8]* %18, i64 0, i64 %78
  store i8 %76, i8* %79, align 1
  br label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %19, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %19, align 4
  br label %61

83:                                               ; preds = %61
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 49, i32 48
  %88 = trunc i32 %87 to i8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [33 x i8], [33 x i8]* %18, i64 0, i64 %90
  store i8 %88, i8* %91, align 1
  %92 = load i32, i32* %19, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [33 x i8], [33 x i8]* %18, i64 0, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %97 = load i32, i32* %15, align 4
  %98 = load i8*, i8** %11, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = getelementptr inbounds [33 x i8], [33 x i8]* %18, i64 0, i64 0
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @ff_cbs_trace_syntax_element(%struct.TYPE_4__* %96, i32 %97, i8* %98, i32* %99, i8* %100, i32 %101)
  br label %103

103:                                              ; preds = %83, %54
  %104 = load i32, i32* %17, align 4
  %105 = load i32*, i32** %13, align 8
  store i32 %104, i32* %105, align 4
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %103, %33
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i8*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @ff_cbs_trace_syntax_element(%struct.TYPE_4__*, i32, i8*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
