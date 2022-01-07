; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_ebur128.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_ebur128.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__**, %struct.TYPE_6__**, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@query_formats.sample_fmts = internal constant [2 x i32] [i32 129, i32 128], align 4
@query_formats.input_srate = internal constant [2 x i32] [i32 48000, i32 -1], align 4
@query_formats.pix_fmts = internal constant [2 x i32] [i32 130, i32 131], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %15, i64 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %7, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %8, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %1
  %28 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.pix_fmts, i64 0, i64 0))
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  %32 = call i32 @ff_formats_ref(i32* %29, i32* %31)
  store i32 %32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %2, align 4
  br label %88

36:                                               ; preds = %27
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %39, i64 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %8, align 8
  br label %42

42:                                               ; preds = %36, %1
  %43 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.sample_fmts, i64 0, i64 0))
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  %47 = call i32 @ff_formats_ref(i32* %44, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = call i32 @ff_formats_ref(i32* %50, i32* %52)
  store i32 %53, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49, %42
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %2, align 4
  br label %88

57:                                               ; preds = %49
  %58 = call i32* (...) @ff_all_channel_layouts()
  store i32* %58, i32** %6, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = call i32 @ff_channel_layouts_ref(i32* %59, i32* %61)
  store i32 %62, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = call i32 @ff_channel_layouts_ref(i32* %65, i32* %67)
  store i32 %68, i32* %9, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64, %57
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %2, align 4
  br label %88

72:                                               ; preds = %64
  %73 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.input_srate, i64 0, i64 0))
  store i32* %73, i32** %5, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = call i32 @ff_formats_ref(i32* %74, i32* %76)
  store i32 %77, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = call i32 @ff_formats_ref(i32* %80, i32* %82)
  store i32 %83, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79, %72
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %2, align 4
  br label %88

87:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %85, %70, %55, %34
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32* @ff_make_format_list(i32*) #1

declare dso_local i32 @ff_formats_ref(i32*, i32*) #1

declare dso_local i32* @ff_all_channel_layouts(...) #1

declare dso_local i32 @ff_channel_layouts_ref(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
