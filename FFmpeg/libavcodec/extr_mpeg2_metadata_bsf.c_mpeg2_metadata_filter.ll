; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg2_metadata_bsf.c_mpeg2_metadata_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg2_metadata_bsf.c_mpeg2_metadata_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to read packet.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to update frame fragment.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to write packet.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*)* @mpeg2_metadata_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg2_metadata_filter(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32* %13, i32** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @ff_bsf_get_packet_ref(%struct.TYPE_8__* %14, i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %71

21:                                               ; preds = %2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @ff_cbs_read_packet(i32 %24, i32* %25, i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = load i32, i32* @AV_LOG_ERROR, align 4
  %33 = call i32 @av_log(%struct.TYPE_8__* %31, i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %58

34:                                               ; preds = %21
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @mpeg2_metadata_update_fragment(%struct.TYPE_8__* %35, i32* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = load i32, i32* @AV_LOG_ERROR, align 4
  %43 = call i32 @av_log(%struct.TYPE_8__* %41, i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %58

44:                                               ; preds = %34
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @ff_cbs_write_packet(i32 %47, i32* %48, i32* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = call i32 @av_log(%struct.TYPE_8__* %54, i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %58

57:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %53, %40, %30
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @ff_cbs_fragment_reset(i32 %61, i32* %62)
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @av_packet_unref(i32* %67)
  br label %69

69:                                               ; preds = %66, %58
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %19
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @ff_bsf_get_packet_ref(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ff_cbs_read_packet(i32, i32*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @mpeg2_metadata_update_fragment(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ff_cbs_write_packet(i32, i32*, i32*) #1

declare dso_local i32 @ff_cbs_fragment_reset(i32, i32*) #1

declare dso_local i32 @av_packet_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
