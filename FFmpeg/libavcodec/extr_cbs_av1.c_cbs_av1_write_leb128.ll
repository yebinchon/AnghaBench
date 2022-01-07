; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_av1.c_cbs_av1_write_leb128.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_av1.c_cbs_av1_write_leb128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"leb128_byte[i]\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i8*, i32)* @cbs_av1_write_leb128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_av1_write_leb128(%struct.TYPE_5__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @av_log2(i32 %16)
  %18 = add nsw i32 %17, 7
  %19 = sdiv i32 %18, 7
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @put_bits_count(i32* %25)
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %24, %4
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %59, %27
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %28
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 1, i32* %33, align 4
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %13, align 4
  %38 = mul nsw i32 7, %37
  %39 = ashr i32 %36, %38
  %40 = and i32 %39, 127
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load i32, i32* %14, align 4
  %47 = or i32 %46, 128
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %45, %32
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @ff_cbs_write_unsigned(%struct.TYPE_5__* %49, i32* %50, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %51, i32 %52, i32 0, i32 255)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %74

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %28

62:                                               ; preds = %28
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @ff_cbs_trace_syntax_element(%struct.TYPE_5__* %68, i32 %69, i8* %70, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %67, %62
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %56
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @ff_cbs_write_unsigned(%struct.TYPE_5__*, i32*, i32, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @ff_cbs_trace_syntax_element(%struct.TYPE_5__*, i32, i8*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
