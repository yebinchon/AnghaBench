; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_target_dem_fuzzer.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_target_dem_fuzzer.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, i64, i32*, i64 }

@FUZZ_TAG = common dso_local global i32 0, align 4
@LLVMFuzzerTestOneInput.c = internal global i32 0, align 4
@AV_LOG_PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed avformat_alloc_context()\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to allocate io_buffer\00", align 1
@io_read = common dso_local global i32 0, align 4
@io_seek = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"avio_alloc_context failed\00", align 1
@maxiteration = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1025 x i8], align 16
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %19 = load i32, i32* @FUZZ_TAG, align 4
  store i32 %19, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %20 = call %struct.TYPE_15__* (...) @avformat_alloc_context()
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %8, align 8
  %21 = bitcast [1025 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 1025, i1 false)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %11, align 8
  store i32 32768, i32* %13, align 4
  %22 = load i64, i64* %5, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %24 = load i32, i32* @LLVMFuzzerTestOneInput.c, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = call i32 (...) @av_register_all()
  %28 = call i32 (...) @avcodec_register_all()
  %29 = load i32, i32* @AV_LOG_PANIC, align 4
  %30 = call i32 @av_log_set_level(i32 %29)
  store i32 1, i32* @LLVMFuzzerTestOneInput.c, align 4
  br label %31

31:                                               ; preds = %26, %2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = icmp ne %struct.TYPE_15__* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i64, i64* %5, align 8
  %38 = icmp ugt i64 %37, 2048
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i64 0, i64 0
  %41 = load i32*, i32** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = getelementptr inbounds i32, i32* %43, i64 -1024
  %45 = call i32 @memcpy(i8* %40, i32* %44, i32 1024)
  %46 = load i32*, i32** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = getelementptr inbounds i32, i32* %48, i64 -2048
  %50 = call i32 @bytestream2_init(i32* %18, i32* %49, i32 1024)
  %51 = load i64, i64* %5, align 8
  %52 = sub i64 %51, 2048
  store i64 %52, i64* %5, align 8
  %53 = call i32 @bytestream2_get_le32(i32* %18)
  %54 = and i32 %53, 268435455
  store i32 %54, i32* %13, align 4
  %55 = call i32 @bytestream2_get_byte(i32* %18)
  %56 = and i32 %55, 1
  store i32 %56, i32* %16, align 4
  %57 = call i32 @bytestream2_get_le64(i32* %18)
  %58 = sext i32 %57 to i64
  %59 = and i64 %58, 9223372036854775807
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %39, %36
  %62 = load i32, i32* %13, align 4
  %63 = call i32* @av_malloc(i32 %62)
  store i32* %63, i32** %12, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %61
  %69 = load i32, i32* %14, align 4
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  store i32* %72, i32** %73, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  store i64 %74, i64* %75, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @io_read, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = load i32*, i32** @io_seek, align 8
  br label %84

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32* [ %82, %81 ], [ null, %83 ]
  %86 = call %struct.TYPE_14__* @avio_alloc_context(i32* %76, i32 %77, i32 0, %struct.TYPE_13__* %15, i32 %78, i32* null, i32* %85)
  store %struct.TYPE_14__* %86, %struct.TYPE_14__** %11, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %88 = icmp ne %struct.TYPE_14__* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %84
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  store %struct.TYPE_14__* %92, %struct.TYPE_14__** %94, align 8
  %95 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i64 0, i64 0
  %96 = call i32 @avformat_open_input(%struct.TYPE_15__** %8, i8* %95, i32* null, i32* null)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = call i32 @av_freep(%struct.TYPE_14__** %101)
  %103 = call i32 @av_freep(%struct.TYPE_14__** %11)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %105 = call i32 @avformat_free_context(%struct.TYPE_15__* %104)
  store i32 0, i32* %3, align 4
  br label %132

106:                                              ; preds = %91
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %108 = call i32 @avformat_find_stream_info(%struct.TYPE_15__* %107, i32* null)
  store i32 %108, i32* %17, align 4
  %109 = call i32 @av_init_packet(i32* %9)
  store i64 0, i64* %7, align 8
  br label %110

110:                                              ; preds = %122, %106
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* @maxiteration, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %110
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %116 = call i32 @av_read_frame(%struct.TYPE_15__* %115, i32* %9)
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %125

120:                                              ; preds = %114
  %121 = call i32 @av_packet_unref(i32* %9)
  br label %122

122:                                              ; preds = %120
  %123 = load i64, i64* %7, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %7, align 8
  br label %110

125:                                              ; preds = %119, %110
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = call i32 @av_freep(%struct.TYPE_14__** %128)
  %130 = call i32 @av_freep(%struct.TYPE_14__** %11)
  %131 = call i32 @avformat_close_input(%struct.TYPE_15__** %8)
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %126, %99
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.TYPE_15__* @avformat_alloc_context(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @av_register_all(...) #1

declare dso_local i32 @avcodec_register_all(...) #1

declare dso_local i32 @av_log_set_level(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_le64(i32*) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local %struct.TYPE_14__* @avio_alloc_context(i32*, i32, i32, %struct.TYPE_13__*, i32, i32*, i32*) #1

declare dso_local i32 @avformat_open_input(%struct.TYPE_15__**, i8*, i32*, i32*) #1

declare dso_local i32 @av_freep(%struct.TYPE_14__**) #1

declare dso_local i32 @avformat_free_context(%struct.TYPE_15__*) #1

declare dso_local i32 @avformat_find_stream_info(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @av_init_packet(i32*) #1

declare dso_local i32 @av_read_frame(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @av_packet_unref(i32*) #1

declare dso_local i32 @avformat_close_input(%struct.TYPE_15__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
