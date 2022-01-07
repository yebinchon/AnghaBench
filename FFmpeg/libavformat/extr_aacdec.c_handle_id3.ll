; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_aacdec.c_handle_id3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_aacdec.c_handle_id3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@ID3v2_DEFAULT_MAGIC = common dso_local global i32 0, align 4
@AVFMT_EVENT_FLAG_METADATA_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* @handle_id3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_id3(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %8, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @ff_id3v2_tag_len(i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = call i32 @av_append_packet(i32 %12, %struct.TYPE_7__* %13, i64 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = call i32 @av_packet_unref(%struct.TYPE_7__* %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %65

29:                                               ; preds = %2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ffio_init_context(i32* %7, i32 %32, i64 %35, i32 0, i32* null, i32* null, i32* null, i32* null)
  %37 = load i32, i32* @ID3v2_DEFAULT_MAGIC, align 4
  %38 = call i32 @ff_id3v2_read_dict(i32* %7, i32** %6, i32 %37, i32** %8)
  %39 = call i32 @ff_id3v2_parse_priv_dict(i32** %6, i32** %8)
  store i32 %39, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %59

42:                                               ; preds = %29
  %43 = load i32*, i32** %6, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @av_dict_copy(i32* %47, i32* %48, i32 0)
  store i32 %49, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %59

52:                                               ; preds = %45
  %53 = load i32, i32* @AVFMT_EVENT_FLAG_METADATA_UPDATED, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %42
  br label %59

59:                                               ; preds = %58, %51, %41
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = call i32 @av_packet_unref(%struct.TYPE_7__* %60)
  %62 = call i32 @ff_id3v2_free_extra_meta(i32** %8)
  %63 = call i32 @av_dict_free(i32** %6)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %25
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @av_append_packet(i32, %struct.TYPE_7__*, i64) #1

declare dso_local i64 @ff_id3v2_tag_len(i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_7__*) #1

declare dso_local i32 @ffio_init_context(i32*, i32, i64, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ff_id3v2_read_dict(i32*, i32**, i32, i32**) #1

declare dso_local i32 @ff_id3v2_parse_priv_dict(i32**, i32**) #1

declare dso_local i32 @av_dict_copy(i32*, i32*, i32) #1

declare dso_local i32 @ff_id3v2_free_extra_meta(i32**) #1

declare dso_local i32 @av_dict_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
