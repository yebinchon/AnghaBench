; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_av1.c_cbs_av1_read_subexp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_av1.c_cbs_av1_read_subexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"subexp_more_bits\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"subexp_bits\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"subexp_final_bits\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i64, i8*, i32*, i64*)* @cbs_av1_read_subexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_av1_read_subexp(%struct.TYPE_7__* %0, i32* %1, i64 %2, i8* %3, i32* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @get_bits_count(i32* %26)
  store i32 %27, i32* %15, align 4
  br label %28

28:                                               ; preds = %25, %6
  %29 = load i64, i64* %10, align 8
  %30 = icmp sgt i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @av_assert0(i32 %31)
  %33 = load i64, i64* %10, align 8
  %34 = sub nsw i64 %33, 1
  %35 = call i64 @av_log2(i64 %34)
  %36 = sub nsw i64 %35, 3
  store i64 %36, i64* %17, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i64, i64* %17, align 8
  %40 = call i32 @cbs_av1_read_increment(%struct.TYPE_7__* %37, i32* %38, i32 0, i64 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64* %18)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %7, align 4
  br label %103

45:                                               ; preds = %28
  %46 = load i64, i64* %18, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i64, i64* %18, align 8
  %50 = add nsw i64 2, %49
  store i64 %50, i64* %20, align 8
  %51 = load i64, i64* %20, align 8
  %52 = trunc i64 %51 to i32
  %53 = shl i32 1, %52
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %19, align 8
  br label %56

55:                                               ; preds = %45
  store i64 3, i64* %20, align 8
  store i64 0, i64* %19, align 8
  br label %56

56:                                               ; preds = %55, %48
  %57 = load i64, i64* %18, align 8
  %58 = load i64, i64* %17, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i64, i64* %20, align 8
  %64 = load i64, i64* %20, align 8
  %65 = call i32 @MAX_UINT_BITS(i64 %64)
  %66 = call i32 @ff_cbs_read_unsigned(%struct.TYPE_7__* %61, i32* %62, i64 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* null, i64* %14, i32 0, i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %7, align 4
  br label %103

71:                                               ; preds = %60
  br label %84

72:                                               ; preds = %56
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %19, align 8
  %77 = sub nsw i64 %75, %76
  %78 = call i32 @cbs_av1_read_ns(%struct.TYPE_7__* %73, i32* %74, i64 %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* null, i64* %14)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %7, align 4
  br label %103

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %71
  %85 = load i64, i64* %19, align 8
  %86 = load i64, i64* %14, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %14, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load i8*, i8** %11, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = load i64, i64* %14, align 8
  %98 = call i32 @ff_cbs_trace_syntax_element(%struct.TYPE_7__* %93, i32 %94, i8* %95, i32* %96, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 %97)
  br label %99

99:                                               ; preds = %92, %84
  %100 = load i64, i64* %14, align 8
  %101 = load i64*, i64** %13, align 8
  store i64 %100, i64* %101, align 8
  %102 = load i32, i32* %16, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %99, %81, %69, %43
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i64 @av_log2(i64) #1

declare dso_local i32 @cbs_av1_read_increment(%struct.TYPE_7__*, i32*, i32, i64, i8*, i64*) #1

declare dso_local i32 @ff_cbs_read_unsigned(%struct.TYPE_7__*, i32*, i64, i8*, i32*, i64*, i32, i32) #1

declare dso_local i32 @MAX_UINT_BITS(i64) #1

declare dso_local i32 @cbs_av1_read_ns(%struct.TYPE_7__*, i32*, i64, i8*, i32*, i64*) #1

declare dso_local i32 @ff_cbs_trace_syntax_element(%struct.TYPE_7__*, i32, i8*, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
