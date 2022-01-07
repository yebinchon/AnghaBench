; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rasc.c_decode_fint.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rasc.c_decode_fint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB555LE = common dso_local global i32 0, align 4
@AV_PIX_FMT_BGR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @decode_fint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_fint(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %8, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @bytestream2_peek_le32(i32* %21)
  %23 = icmp ne i32 %22, 101
  br i1 %23, label %24, label %55

24:                                               ; preds = %3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %33, %24
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %4, align 4
  br label %157

44:                                               ; preds = %33
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = call i32 @clear_plane(%struct.TYPE_9__* %45, %struct.TYPE_10__* %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = call i32 @clear_plane(%struct.TYPE_9__* %50, %struct.TYPE_10__* %53)
  store i32 0, i32* %4, align 4
  br label %157

55:                                               ; preds = %3
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @bytestream2_get_bytes_left(i32* %56)
  %58 = icmp slt i32 %57, 72
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %60, i32* %4, align 4
  br label %157

61:                                               ; preds = %55
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @bytestream2_skip(i32* %62, i32 8)
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @bytestream2_get_le32(i32* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @bytestream2_get_le32(i32* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @bytestream2_skip(i32* %68, i32 30)
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @bytestream2_get_le16(i32* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @bytestream2_skip(i32* %72, i32 24)
  %74 = load i32, i32* %12, align 4
  switch i32 %74, label %99 [
    i32 8, label %75
    i32 16, label %83
    i32 32, label %91
  ]

75:                                               ; preds = %61
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @FFALIGN(i32 %76, i32 4)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  store i32 %82, i32* %12, align 4
  br label %101

83:                                               ; preds = %61
  %84 = load i32, i32* %10, align 4
  %85 = mul i32 %84, 2
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 2, i32* %89, align 4
  %90 = load i32, i32* @AV_PIX_FMT_RGB555LE, align 4
  store i32 %90, i32* %12, align 4
  br label %101

91:                                               ; preds = %61
  %92 = load i32, i32* %10, align 4
  %93 = mul i32 %92, 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32 4, i32* %97, align 4
  %98 = load i32, i32* @AV_PIX_FMT_BGR0, align 4
  store i32 %98, i32* %12, align 4
  br label %101

99:                                               ; preds = %61
  %100 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %100, i32* %4, align 4
  br label %157

101:                                              ; preds = %91, %83, %75
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @ff_set_dimensions(%struct.TYPE_9__* %102, i32 %103, i32 %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %4, align 4
  br label %157

110:                                              ; preds = %101
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = call i32 @init_frames(%struct.TYPE_9__* %120)
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %110
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %4, align 4
  br label %157

126:                                              ; preds = %110
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %156

132:                                              ; preds = %126
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 1
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i32*
  store i32* %140, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %141

141:                                              ; preds = %152, %132
  %142 = load i32, i32* %15, align 4
  %143 = icmp slt i32 %142, 256
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @bytestream2_get_le32(i32* %145)
  %147 = or i32 %146, -16777216
  %148 = load i32*, i32** %14, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %147, i32* %151, align 4
  br label %152

152:                                              ; preds = %144
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %15, align 4
  br label %141

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %155, %126
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %156, %124, %108, %99, %59, %44, %42
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @bytestream2_peek_le32(i32*) #1

declare dso_local i32 @clear_plane(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @init_frames(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
