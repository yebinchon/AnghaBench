; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatgq.c_tgq_decode_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatgq.c_tgq_decode_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unsupported mb mode %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32, i32)* @tgq_decode_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tgq_decode_mb(%struct.TYPE_10__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x i8*], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = call i8* @bytestream2_get_byte(%struct.TYPE_11__* %16)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp sgt i32 %19, 12
  br i1 %20, label %21, label %66

21:                                               ; preds = %4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_11__* %27)
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @FFMIN(i32 %28, i32 %29)
  %31 = call i32 @init_get_bits8(i32* %13, i32 %25, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %5, align 4
  br label %129

36:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 6
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @tgq_decode_block(%struct.TYPE_10__* %41, i32 %48, i32* %13)
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %37

53:                                               ; preds = %37
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @tgq_idct_put_mb(%struct.TYPE_10__* %54, i32* %57, i32* %58, i32 %59, i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @bytestream2_skip(%struct.TYPE_11__* %63, i32 %64)
  br label %128

66:                                               ; preds = %4
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = call i8* @bytestream2_get_byte(%struct.TYPE_11__* %72)
  %74 = call i32 @memset(i8** %70, i8* %73, i32 4)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = call i8* @bytestream2_get_byte(%struct.TYPE_11__* %76)
  %78 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 4
  store i8* %77, i8** %78, align 16
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = call i8* @bytestream2_get_byte(%struct.TYPE_11__* %80)
  %82 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 5
  store i8* %81, i8** %82, align 8
  br label %121

83:                                               ; preds = %66
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, 6
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 0
  %90 = call i32 @bytestream2_get_buffer(%struct.TYPE_11__* %88, i8** %89, i32 6)
  br label %120

91:                                               ; preds = %83
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 12
  br i1 %93, label %94, label %112

94:                                               ; preds = %91
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %108, %94
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 6
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = call i8* @bytestream2_get_byte(%struct.TYPE_11__* %100)
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 %103
  store i8* %101, i8** %104, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = call i32 @bytestream2_skip(%struct.TYPE_11__* %106, i32 1)
  br label %108

108:                                              ; preds = %98
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %95

111:                                              ; preds = %95
  br label %119

112:                                              ; preds = %91
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @AV_LOG_ERROR, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @av_log(i32 %115, i32 %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %117)
  store i32 -1, i32* %5, align 4
  br label %129

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %86
  br label %121

121:                                              ; preds = %120, %69
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %8, align 4
  %126 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 0
  %127 = call i32 @tgq_idct_put_mb_dconly(%struct.TYPE_10__* %122, i32* %123, i32 %124, i32 %125, i8** %126)
  br label %128

128:                                              ; preds = %121, %53
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %112, %34
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i8* @bytestream2_get_byte(%struct.TYPE_11__*) #1

declare dso_local i32 @init_get_bits8(i32*, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(%struct.TYPE_11__*) #1

declare dso_local i32 @tgq_decode_block(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @tgq_idct_put_mb(%struct.TYPE_10__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @bytestream2_skip(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @memset(i8**, i8*, i32) #1

declare dso_local i32 @bytestream2_get_buffer(%struct.TYPE_11__*, i8**, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @tgq_idct_put_mb_dconly(%struct.TYPE_10__*, i32*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
