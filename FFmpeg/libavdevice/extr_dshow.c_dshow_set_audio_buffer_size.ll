; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_set_audio_buffer_size.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_set_audio_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.dshow_ctx* }
%struct.dshow_ctx = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_9__ = type { i32 }

@__const.dshow_set_audio_buffer_size.props = private unnamed_addr constant %struct.TYPE_12__ { i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, align 4
@EIO = common dso_local global i32 0, align 4
@IID_IAMStreamConfig = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@FORMAT_WaveFormatEx = common dso_local global i32 0, align 4
@IID_IAMBufferNegotiation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*)* @dshow_set_audio_buffer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dshow_set_audio_buffer_size(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dshow_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.dshow_ctx*, %struct.dshow_ctx** %12, align 8
  store %struct.dshow_ctx* %13, %struct.dshow_ctx** %5, align 8
  store i32* null, i32** %6, align 8
  %14 = bitcast %struct.TYPE_12__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_12__* @__const.dshow_set_audio_buffer_size.props to i8*), i64 20, i1 false)
  store i32* null, i32** %8, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %9, align 8
  %15 = load i32, i32* @EIO, align 4
  %16 = call i32 @AVERROR(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = bitcast i32** %8 to i8**
  %19 = call i64 @IPin_QueryInterface(i32* %17, i32* @IID_IAMStreamConfig, i8** %18)
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %61

23:                                               ; preds = %2
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @IAMStreamConfig_GetFormat(i32* %24, %struct.TYPE_11__** %9)
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %61

29:                                               ; preds = %23
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = call i32 @IsEqualGUID(i32* %31, i32* @FORMAT_WaveFormatEx)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %61

35:                                               ; preds = %29
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = bitcast %struct.TYPE_11__* %38 to %struct.TYPE_9__*
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dshow_ctx*, %struct.dshow_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = sdiv i32 %45, 1000
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = bitcast i32** %6 to i8**
  %50 = call i64 @IPin_QueryInterface(i32* %48, i32* @IID_IAMBufferNegotiation, i8** %49)
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %35
  br label %61

54:                                               ; preds = %35
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @IAMBufferNegotiation_SuggestAllocatorProperties(i32* %55, %struct.TYPE_12__* %7)
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %61

60:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %60, %59, %53, %34, %28, %22
  %62 = load i32*, i32** %6, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @IAMBufferNegotiation_Release(i32* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %69 = icmp ne %struct.TYPE_11__* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = icmp ne %struct.TYPE_11__* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = call i32 @CoTaskMemFree(%struct.TYPE_11__* %78)
  br label %80

80:                                               ; preds = %75, %70
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %82 = call i32 @CoTaskMemFree(%struct.TYPE_11__* %81)
  br label %83

83:                                               ; preds = %80, %67
  %84 = load i32*, i32** %8, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @IAMStreamConfig_Release(i32* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %10, align 4
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i64 @IPin_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i64 @IAMStreamConfig_GetFormat(i32*, %struct.TYPE_11__**) #2

declare dso_local i32 @IsEqualGUID(i32*, i32*) #2

declare dso_local i64 @IAMBufferNegotiation_SuggestAllocatorProperties(i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @IAMBufferNegotiation_Release(i32*) #2

declare dso_local i32 @CoTaskMemFree(%struct.TYPE_11__*) #2

declare dso_local i32 @IAMStreamConfig_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
