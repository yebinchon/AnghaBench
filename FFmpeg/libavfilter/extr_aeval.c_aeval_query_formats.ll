; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_aeval.c_aeval_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_aeval.c_aeval_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_9__**, %struct.TYPE_9__** }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@aeval_query_formats.sample_fmts = internal constant [2 x i32] [i32 129, i32 128], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @aeval_query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aeval_query_formats(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* null, i32** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %12, i64 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %6, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %17, i64 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %8, align 8
  %23 = call i32* (...) @ff_all_channel_counts()
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = call i32 @ff_channel_layouts_ref(i32* %24, i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %2, align 4
  br label %87

31:                                               ; preds = %1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = call i32* (...) @ff_all_channel_counts()
  store i32* %37, i32** %5, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @ff_set_common_channel_layouts(%struct.TYPE_10__* %38, i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %2, align 4
  br label %87

44:                                               ; preds = %36
  br label %74

45:                                               ; preds = %31
  store i32* null, i32** %5, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  br label %59

54:                                               ; preds = %45
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @FF_COUNT2LAYOUT(i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi i64 [ %53, %50 ], [ %58, %54 ]
  %61 = call i32 @ff_add_channel_layout(i32** %5, i64 %60)
  store i32 %61, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %2, align 4
  br label %87

65:                                               ; preds = %59
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = call i32 @ff_channel_layouts_ref(i32* %66, i32* %68)
  store i32 %69, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %2, align 4
  br label %87

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %44
  %75 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @aeval_query_formats.sample_fmts, i64 0, i64 0))
  store i32* %75, i32** %4, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @ff_set_common_formats(%struct.TYPE_10__* %76, i32* %77)
  store i32 %78, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %2, align 4
  br label %87

82:                                               ; preds = %74
  %83 = call i32* (...) @ff_all_samplerates()
  store i32* %83, i32** %4, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @ff_set_common_samplerates(%struct.TYPE_10__* %84, i32* %85)
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %82, %80, %71, %63, %42, %29
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32* @ff_all_channel_counts(...) #1

declare dso_local i32 @ff_channel_layouts_ref(i32*, i32*) #1

declare dso_local i32 @ff_set_common_channel_layouts(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ff_add_channel_layout(i32**, i64) #1

declare dso_local i64 @FF_COUNT2LAYOUT(i32) #1

declare dso_local i32* @ff_make_format_list(i32*) #1

declare dso_local i32 @ff_set_common_formats(%struct.TYPE_10__*, i32*) #1

declare dso_local i32* @ff_all_samplerates(...) #1

declare dso_local i32 @ff_set_common_samplerates(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
