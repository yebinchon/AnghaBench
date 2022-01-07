; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_f.c_asf_read_ext_stream_properties.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_f.c_asf_read_ext_stream_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Payload extension %x %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @asf_read_ext_stream_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_ext_stream_properties(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %5, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @avio_rl64(i32* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @avio_rl64(i32* %25)
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @avio_rl32(i32* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @avio_rl32(i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @avio_rl32(i32* %31)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @avio_rl32(i32* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @avio_rl32(i32* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @avio_rl32(i32* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @avio_rl32(i32* %39)
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @avio_rl32(i32* %41)
  %43 = load i32*, i32** %6, align 8
  %44 = call i8* @avio_rl16(i32* %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = call i8* @avio_rl16(i32* %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 128
  br i1 %50, label %51, label %60

51:                                               ; preds = %2
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 %52, i32* %59, align 8
  br label %60

60:                                               ; preds = %51, %2
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @avio_rl64(i32* %61)
  %63 = load i32*, i32** %6, align 8
  %64 = call i8* @avio_rl16(i32* %63)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %10, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = call i8* @avio_rl16(i32* %66)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, 128
  br i1 %70, label %71, label %86

71:                                               ; preds = %60
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %71, %60
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %100, %86
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load i32*, i32** %6, align 8
  %93 = call i8* @avio_rl16(i32* %92)
  %94 = load i32*, i32** %6, align 8
  %95 = call i8* @avio_rl16(i32* %94)
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* %8, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @avio_skip(i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %87

103:                                              ; preds = %87
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %172, %103
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %175

108:                                              ; preds = %104
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @ff_get_guid(i32* %109, i32** %7)
  %111 = load i32*, i32** %6, align 8
  %112 = call i8* @avio_rl16(i32* %111)
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %15, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @avio_rl32(i32* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @avio_skip(i32* %116, i32 %117)
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %119, 128
  br i1 %120, label %121, label %171

121:                                              ; preds = %108
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_10__* %130)
  %132 = icmp slt i32 %122, %131
  br i1 %132, label %133, label %171

133:                                              ; preds = %121
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i64 %143
  store %struct.TYPE_10__* %144, %struct.TYPE_10__** %16, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %15, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %154 = load i32, i32* @AV_LOG_DEBUG, align 4
  %155 = load i32*, i32** %7, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @av_log(%struct.TYPE_9__* %153, i32 %154, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %157, i32 %160)
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %168, align 8
  br label %171

171:                                              ; preds = %133, %121, %108
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %11, align 4
  br label %104

175:                                              ; preds = %104
  ret i32 0
}

declare dso_local i32 @avio_rl64(i32*) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i8* @avio_rl16(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @ff_get_guid(i32*, i32**) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_10__*) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
