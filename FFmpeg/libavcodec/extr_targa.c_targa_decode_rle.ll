; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_targa.c_targa_decode_rle.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_targa.c_targa_decode_rle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Ran ouf of data before end-of-image\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Packet went out of bounds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*, i32, i32, i32, i32, i32)* @targa_decode_rle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @targa_decode_rle(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca [4 x i32], align 16
  %27 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %28 = load i32, i32* %16, align 4
  %29 = add nsw i32 %28, 1
  %30 = ashr i32 %29, 3
  store i32 %30, i32* %20, align 4
  %31 = load i32*, i32** %12, align 8
  store i32* %31, i32** %23, align 8
  %32 = load i32*, i32** %23, align 8
  store i32* %32, i32** %24, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %33

33:                                               ; preds = %155, %8
  %34 = load i32*, i32** %24, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %156

36:                                               ; preds = %33
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i64 @bytestream2_get_bytes_left(i32* %38)
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = call i32 @av_log(i32* %42, i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %45, i32* %9, align 4
  br label %165

46:                                               ; preds = %36
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @bytestream2_get_byteu(i32* %48)
  store i32 %49, i32* %21, align 4
  %50 = load i32, i32* %21, align 4
  %51 = and i32 %50, 127
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %22, align 4
  %53 = load i32, i32* %21, align 4
  %54 = and i32 %53, 128
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %21, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %103, label %57

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %100, %57
  %59 = load i32, i32* %22, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %18, align 4
  %62 = sub nsw i32 %60, %61
  %63 = call i32 @FFMIN(i32 %59, i32 %62)
  store i32 %63, i32* %25, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %24, align 8
  %67 = load i32, i32* %25, align 4
  %68 = load i32, i32* %20, align 4
  %69 = mul nsw i32 %67, %68
  %70 = call i32 @bytestream2_get_buffer(i32* %65, i32* %66, i32 %69)
  %71 = load i32, i32* %25, align 4
  %72 = load i32, i32* %22, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %22, align 4
  %74 = load i32, i32* %25, align 4
  %75 = load i32, i32* %20, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32*, i32** %24, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %24, align 8
  %80 = load i32, i32* %25, align 4
  %81 = load i32, i32* %18, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %58
  store i32 0, i32* %18, align 4
  %87 = load i32*, i32** %12, align 8
  %88 = load i32*, i32** %23, align 8
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %17, align 4
  %92 = call i32* @advance_line(i32* %87, i32* %88, i32 %89, i32* %19, i32 %90, i32 %91)
  store i32* %92, i32** %23, align 8
  store i32* %92, i32** %24, align 8
  br label %93

93:                                               ; preds = %86, %58
  br label %94

94:                                               ; preds = %93
  %95 = load i32*, i32** %24, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %22, align 4
  %99 = icmp sgt i32 %98, 0
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi i1 [ false, %94 ], [ %99, %97 ]
  br i1 %101, label %58, label %102

102:                                              ; preds = %100
  br label %155

103:                                              ; preds = %46
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 0
  %107 = load i32, i32* %20, align 4
  %108 = call i32 @bytestream2_get_buffer(i32* %105, i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %152, %103
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %18, align 4
  %113 = sub nsw i32 %111, %112
  %114 = call i32 @FFMIN(i32 %110, i32 %113)
  store i32 %114, i32* %27, align 4
  %115 = load i32, i32* %27, align 4
  %116 = load i32, i32* %22, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %22, align 4
  %118 = load i32, i32* %27, align 4
  %119 = load i32, i32* %18, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %18, align 4
  br label %121

121:                                              ; preds = %130, %109
  %122 = load i32*, i32** %24, align 8
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 0
  %124 = load i32, i32* %20, align 4
  %125 = call i32 @memcpy(i32* %122, i32* %123, i32 %124)
  %126 = load i32, i32* %20, align 4
  %127 = load i32*, i32** %24, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %24, align 8
  br label %130

130:                                              ; preds = %121
  %131 = load i32, i32* %27, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %27, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %121, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  store i32 0, i32* %18, align 4
  %139 = load i32*, i32** %12, align 8
  %140 = load i32*, i32** %23, align 8
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %17, align 4
  %144 = call i32* @advance_line(i32* %139, i32* %140, i32 %141, i32* %19, i32 %142, i32 %143)
  store i32* %144, i32** %23, align 8
  store i32* %144, i32** %24, align 8
  br label %145

145:                                              ; preds = %138, %134
  br label %146

146:                                              ; preds = %145
  %147 = load i32*, i32** %24, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* %22, align 4
  %151 = icmp sgt i32 %150, 0
  br label %152

152:                                              ; preds = %149, %146
  %153 = phi i1 [ false, %146 ], [ %151, %149 ]
  br i1 %153, label %109, label %154

154:                                              ; preds = %152
  br label %155

155:                                              ; preds = %154, %102
  br label %33

156:                                              ; preds = %33
  %157 = load i32, i32* %22, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* @AV_LOG_ERROR, align 4
  %162 = call i32 @av_log(i32* %160, i32 %161, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %163 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %163, i32* %9, align 4
  br label %165

164:                                              ; preds = %156
  store i32 0, i32* %9, align 4
  br label %165

165:                                              ; preds = %164, %159, %41
  %166 = load i32, i32* %9, align 4
  ret i32 %166
}

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i32*, i32) #1

declare dso_local i32* @advance_line(i32*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
