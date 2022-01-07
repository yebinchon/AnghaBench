; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sofalizer.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sofalizer.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__**, %struct.TYPE_7__**, %struct.SOFAlizerContext* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.SOFAlizerContext = type { i32 }

@__const.query_formats.sample_rates = private unnamed_addr constant [2 x i32] [i32 48000, i32 -1], align 4
@query_formats.sample_fmts = internal constant [3 x i32] [i32 130, i32 129, i32 128], align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.SOFAlizerContext*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %11 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %10, align 8
  store %struct.SOFAlizerContext* %11, %struct.SOFAlizerContext** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %12 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast ([2 x i32]* @__const.query_formats.sample_rates to i8*), i64 8, i1 false)
  %13 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @query_formats.sample_fmts, i64 0, i64 0))
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = call i32 @AVERROR(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %83

19:                                               ; preds = %1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @ff_set_common_formats(%struct.TYPE_9__* %20, i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %83

27:                                               ; preds = %19
  %28 = call i32* (...) @ff_all_channel_layouts()
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %2, align 4
  br label %83

34:                                               ; preds = %27
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %38, i64 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = call i32 @ff_channel_layouts_ref(i32* %35, i32* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %83

47:                                               ; preds = %34
  store i32* null, i32** %6, align 8
  %48 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %49 = call i32 @ff_add_channel_layout(i32** %6, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %83

54:                                               ; preds = %47
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %58, i64 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i32 @ff_channel_layouts_ref(i32* %55, i32* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %83

67:                                               ; preds = %54
  %68 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %4, align 8
  %69 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %73 = call i32* @ff_make_format_list(i32* %72)
  store i32* %73, i32** %5, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = call i32 @AVERROR(i32 %77)
  store i32 %78, i32* %2, align 4
  br label %83

79:                                               ; preds = %67
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @ff_set_common_samplerates(%struct.TYPE_9__* %80, i32* %81)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %76, %65, %52, %45, %31, %25, %16
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @ff_make_format_list(i32*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @ff_set_common_formats(%struct.TYPE_9__*, i32*) #2

declare dso_local i32* @ff_all_channel_layouts(...) #2

declare dso_local i32 @ff_channel_layouts_ref(i32*, i32*) #2

declare dso_local i32 @ff_add_channel_layout(i32**, i32) #2

declare dso_local i32 @ff_set_common_samplerates(%struct.TYPE_9__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
