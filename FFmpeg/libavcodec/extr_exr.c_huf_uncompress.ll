; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_huf_uncompress.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_huf_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@HUF_ENCSIZE = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@HUF_DECSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @huf_uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @huf_uncompress(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i8* @bytestream2_get_le32(i32* %16)
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i8* @bytestream2_get_le32(i32* %19)
  %21 = ptrtoint i8* %20 to i64
  store i64 %21, i64* %9, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i8* @bytestream2_get_le32(i32* %22)
  %24 = ptrtoint i8* %23 to i64
  store i64 %24, i64* %10, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @bytestream2_skip(i32* %25, i32 4)
  %27 = load i32*, i32** %5, align 8
  %28 = call i8* @bytestream2_get_le32(i32* %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load i64, i64* %9, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %3
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @HUF_ENCSIZE, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @HUF_ENCSIZE, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43, %39, %36, %32, %3
  %47 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %47, i32* %4, align 4
  br label %122

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @bytestream2_skip(i32* %49, i32 4)
  %51 = load i64, i64* @HUF_ENCSIZE, align 8
  %52 = trunc i64 %51 to i32
  %53 = call %struct.TYPE_10__* @av_mallocz_array(i32 %52, i32 4)
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %12, align 8
  %54 = load i32, i32* @HUF_DECSIZE, align 4
  %55 = call %struct.TYPE_10__* @av_mallocz_array(i32 %54, i32 4)
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %13, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %57 = icmp ne %struct.TYPE_10__* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %60 = icmp ne %struct.TYPE_10__* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %58, %48
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = call i32 @AVERROR(i32 %62)
  store i32 %63, i32* %14, align 4
  br label %97

64:                                               ; preds = %58
  %65 = load i32*, i32** %5, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %69 = call i32 @huf_unpack_enc_table(i32* %65, i64 %66, i64 %67, %struct.TYPE_10__* %68)
  store i32 %69, i32* %14, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %97

72:                                               ; preds = %64
  %73 = load i32, i32* %11, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @bytestream2_get_bytes_left(i32* %74)
  %76 = mul nsw i32 8, %75
  %77 = icmp sgt i32 %73, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %79, i32* %14, align 4
  br label %97

80:                                               ; preds = %72
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %85 = call i32 @huf_build_dec_table(%struct.TYPE_10__* %81, i64 %82, i64 %83, %struct.TYPE_10__* %84)
  store i32 %85, i32* %14, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %97

88:                                               ; preds = %80
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i64, i64* %10, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @huf_decode(%struct.TYPE_10__* %89, %struct.TYPE_10__* %90, i32* %91, i32 %92, i64 %93, i32 %94, i32* %95)
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %88, %87, %78, %71, %61
  store i32 0, i32* %15, align 4
  br label %98

98:                                               ; preds = %113, %97
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @HUF_DECSIZE, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %104 = icmp ne %struct.TYPE_10__* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = call i32 @av_freep(i32* %110)
  br label %112

112:                                              ; preds = %105, %102
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  br label %98

116:                                              ; preds = %98
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %118 = call i32 @av_free(%struct.TYPE_10__* %117)
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %120 = call i32 @av_free(%struct.TYPE_10__* %119)
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %116, %46
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i8* @bytestream2_get_le32(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @huf_unpack_enc_table(i32*, i64, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @huf_build_dec_table(%struct.TYPE_10__*, i64, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @huf_decode(%struct.TYPE_10__*, %struct.TYPE_10__*, i32*, i32, i64, i32, i32*) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @av_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
