; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_avpacket.c_av_packet_merge_side_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_avpacket.c_av_packet_merge_side_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_7__*, i32*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i64, i32, i32* }
%struct.TYPE_9__ = type { i32* }

@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FF_MERGE_MARKER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_packet_merge_side_data(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %151

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 8
  %18 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %19 = add nsw i64 %17, %18
  store i64 %19, i64* %7, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = bitcast %struct.TYPE_8__* %8 to i8*
  %22 = bitcast %struct.TYPE_8__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 40, i1 false)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %39, %13
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 5
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %23

42:                                               ; preds = %23
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @INT_MAX, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @EINVAL, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %152

49:                                               ; preds = %42
  %50 = load i64, i64* %7, align 8
  %51 = call %struct.TYPE_9__* @av_buffer_alloc(i64 %50)
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %4, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = icmp ne %struct.TYPE_9__* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = call i32 @AVERROR(i32 %55)
  store i32 %56, i32* %2, align 4
  br label %152

57:                                               ; preds = %49
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %6, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  store i32* %63, i32** %65, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %68 = sub nsw i64 %66, %67
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @bytestream_put_buffer(i32** %6, i32* %72, i64 %74)
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %123, %57
  %80 = load i32, i32* %5, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %126

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @bytestream_put_buffer(i32** %6, i32* %89, i64 %96)
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @bytestream_put_be32(i32** %6, i64 %104)
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 1
  %117 = icmp eq i32 %113, %116
  %118 = zext i1 %117 to i32
  %119 = mul nsw i32 %118, 128
  %120 = or i32 %112, %119
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %6, align 8
  store i32 %120, i32* %121, align 4
  br label %123

123:                                              ; preds = %82
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %5, align 4
  br label %79

126:                                              ; preds = %79
  %127 = load i32, i32* @FF_MERGE_MARKER, align 4
  %128 = call i32 @bytestream_put_be64(i32** %6, i32 %127)
  %129 = load i32*, i32** %6, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = ptrtoint i32* %129 to i64
  %134 = ptrtoint i32* %132 to i64
  %135 = sub i64 %133, %134
  %136 = sdiv exact i64 %135, 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %136, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @av_assert0(i32 %141)
  %143 = load i32*, i32** %6, align 8
  %144 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %145 = call i32 @memset(i32* %143, i32 0, i64 %144)
  %146 = call i32 @av_packet_unref(%struct.TYPE_8__* %8)
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %150, align 8
  store i32 1, i32* %2, align 4
  br label %152

151:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %126, %54, %46
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @AVERROR(i32) #2

declare dso_local %struct.TYPE_9__* @av_buffer_alloc(i64) #2

declare dso_local i32 @bytestream_put_buffer(i32**, i32*, i64) #2

declare dso_local i32 @bytestream_put_be32(i32**, i64) #2

declare dso_local i32 @bytestream_put_be64(i32**, i32) #2

declare dso_local i32 @av_assert0(i32) #2

declare dso_local i32 @memset(i32*, i32, i64) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
