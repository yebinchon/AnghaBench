; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alac.c_rice_decompress.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alac.c_rice_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"invalid zero block size of %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32, i32)* @rice_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rice_decompress(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %142, %5
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %145

25:                                               ; preds = %21
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = call i64 @get_bits_left(i32* %27)
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %31, i32* %6, align 4
  br label %146

32:                                               ; preds = %25
  %33 = load i32, i32* %13, align 4
  %34 = lshr i32 %33, 9
  %35 = add i32 %34, 3
  %36 = call i32 @av_log2(i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @FFMIN(i32 %37, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i8* @decode_scalar(i32* %43, i32 %44, i32 %45)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %16, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %51 = load i32, i32* %16, align 4
  %52 = lshr i32 %51, 1
  %53 = load i32, i32* %16, align 4
  %54 = and i32 %53, 1
  %55 = sub i32 0, %54
  %56 = xor i32 %52, %55
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp ugt i32 %61, 65535
  br i1 %62, label %63, label %64

63:                                               ; preds = %32
  store i32 65535, i32* %13, align 4
  br label %75

64:                                               ; preds = %32
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %11, align 4
  %67 = mul i32 %65, %66
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %11, align 4
  %70 = mul i32 %68, %69
  %71 = lshr i32 %70, 9
  %72 = sub i32 %67, %71
  %73 = load i32, i32* %13, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %64, %63
  %76 = load i32, i32* %13, align 4
  %77 = icmp ult i32 %76, 128
  br i1 %77, label %78, label %141

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %141

83:                                               ; preds = %78
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @av_log2(i32 %84)
  %86 = sub nsw i32 7, %85
  %87 = load i32, i32* %13, align 4
  %88 = add i32 %87, 16
  %89 = lshr i32 %88, 6
  %90 = add i32 %86, %89
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @FFMIN(i32 %91, i32 %94)
  store i32 %95, i32* %15, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32, i32* %15, align 4
  %99 = call i8* @decode_scalar(i32* %97, i32 %98, i32 16)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %136

103:                                              ; preds = %83
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 %105, %106
  %108 = icmp sge i32 %104, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %103
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @AV_LOG_ERROR, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @av_log(i32 %112, i32 %113, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %12, align 4
  %120 = sub nsw i32 %118, %119
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %109, %103
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = call i32 @memset(i32* %127, i32 0, i32 %131)
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %12, align 4
  br label %136

136:                                              ; preds = %122, %83
  %137 = load i32, i32* %17, align 4
  %138 = icmp sle i32 %137, 65535
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 1, i32* %14, align 4
  br label %140

140:                                              ; preds = %139, %136
  store i32 0, i32* %13, align 4
  br label %141

141:                                              ; preds = %140, %78, %75
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %21

145:                                              ; preds = %21
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %145, %30
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i8* @decode_scalar(i32*, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
