; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gifdec.c_gif_read_header1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gifdec.c_gif_read_header1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32*, i32, i32, i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@gif87a_sig = common dso_local global i32 0, align 4
@gif89a_sig = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"screen_w=%d screen_h=%d bpp=%d global_palette=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @gif_read_header1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gif_read_header1(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca [6 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 7
  %10 = call i32 @bytestream2_get_bytes_left(i32* %9)
  %11 = icmp slt i32 %10, 13
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %13, i32* %2, align 4
  br label %141

14:                                               ; preds = %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 7
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %18 = call i32 @bytestream2_get_bufferu(i32* %16, i32* %17, i32 6)
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %20 = load i32, i32* @gif87a_sig, align 4
  %21 = call i64 @memcmp(i32* %19, i32 %20, i32 6)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %25 = load i32, i32* @gif89a_sig, align 4
  %26 = call i64 @memcmp(i32* %24, i32 %25, i32 6)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %29, i32* %2, align 4
  br label %141

30:                                               ; preds = %23, %14
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 7
  %35 = call i8* @bytestream2_get_le16u(i32* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 9
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 7
  %40 = call i8* @bytestream2_get_le16u(i32* %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 8
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 7
  %45 = call i32 @bytestream2_get_byteu(i32* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 112
  %48 = ashr i32 %47, 4
  %49 = add nsw i32 %48, 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 128
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 7
  %58 = add nsw i32 %57, 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 7
  %63 = call i32 @bytestream2_get_byteu(i32* %62)
  store i32 %63, i32* %7, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 7
  %66 = call i32 @bytestream2_get_byteu(i32* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %30
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 15
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 10
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %71, i32* %76, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 10
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 64, i32* %81, align 4
  br label %82

82:                                               ; preds = %69, %30
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 10
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 9
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 8
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ff_dlog(%struct.TYPE_8__* %85, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %88, i8* %91, i32 %94, i32 %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %137

103:                                              ; preds = %82
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 1, %109
  store i32 %110, i32* %6, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 7
  %113 = call i32 @bytestream2_get_bytes_left(i32* %112)
  %114 = load i32, i32* %6, align 4
  %115 = mul nsw i32 %114, 3
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %103
  %118 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %118, i32* %2, align 4
  br label %141

119:                                              ; preds = %103
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @gif_read_palette(%struct.TYPE_7__* %120, i32* %123, i32 %124)
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %128, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 8
  br label %140

137:                                              ; preds = %82
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 4
  store i32 -1, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %119
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %117, %28, %12
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_bufferu(i32*, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i8* @bytestream2_get_le16u(i32*) #1

declare dso_local i32 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_8__*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @gif_read_palette(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
