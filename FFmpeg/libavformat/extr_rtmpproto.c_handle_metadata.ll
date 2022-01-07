; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_handle_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_handle_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i32* }

@RTMP_HEADER = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Incomplete flv packets in RTMP_PT_METADATA packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* @handle_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_metadata(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @update_offset(%struct.TYPE_8__* %15, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @av_reallocp(i32** %21, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %158

33:                                               ; preds = %2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %9, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32* %42, i32** %10, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %100, %33
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = ptrtoint i32* %47 to i64
  %52 = ptrtoint i32* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RTMP_HEADER, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %54, %60
  br i1 %61, label %62, label %131

62:                                               ; preds = %46
  %63 = call i32 @bytestream_get_byte(i32** %9)
  store i32 %63, i32* %8, align 4
  %64 = call i32 @bytestream_get_be24(i32** %9)
  store i32 %64, i32* %11, align 4
  %65 = call i32 @bytestream_get_be24(i32** %9)
  store i32 %65, i32* %13, align 4
  %66 = call i32 @bytestream_get_byte(i32** %9)
  %67 = shl i32 %66, 24
  %68 = load i32, i32* %13, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %72, %62
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 3
  %83 = add nsw i32 %82, 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32*, i32** %9, align 8
  %94 = ptrtoint i32* %92 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = icmp sgt i64 %84, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %74
  br label %131

100:                                              ; preds = %74
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @bytestream_put_byte(i32** %10, i32 %101)
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @bytestream_put_be24(i32** %10, i32 %103)
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @bytestream_put_be24(i32** %10, i32 %105)
  %107 = load i32, i32* %12, align 4
  %108 = ashr i32 %107, 24
  %109 = call i32 @bytestream_put_byte(i32** %10, i32 %108)
  %110 = load i32*, i32** %10, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 3
  %114 = add nsw i32 %113, 4
  %115 = call i32 @memcpy(i32* %110, i32* %111, i32 %114)
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 3
  %118 = load i32*, i32** %10, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %10, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @RTMP_HEADER, align 4
  %123 = add nsw i32 %121, %122
  %124 = call i32 @bytestream_put_be32(i32** %10, i32 %123)
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 3
  %127 = add nsw i32 %126, 4
  %128 = load i32*, i32** %9, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %9, align 8
  br label %46

131:                                              ; preds = %99, %46
  %132 = load i32*, i32** %10, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = icmp ne i32* %132, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %131
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = load i32, i32* @AV_LOG_WARNING, align 4
  %145 = call i32 @av_log(%struct.TYPE_8__* %143, i32 %144, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %146 = load i32*, i32** %10, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = ptrtoint i32* %146 to i64
  %151 = ptrtoint i32* %149 to i64
  %152 = sub i64 %150, %151
  %153 = sdiv exact i64 %152, 4
  %154 = trunc i64 %153 to i32
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %142, %131
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %157, %27
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @update_offset(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @av_reallocp(i32**, i32) #1

declare dso_local i32 @bytestream_get_byte(i32**) #1

declare dso_local i32 @bytestream_get_be24(i32**) #1

declare dso_local i32 @bytestream_put_byte(i32**, i32) #1

declare dso_local i32 @bytestream_put_be24(i32**, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bytestream_put_be32(i32**, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
