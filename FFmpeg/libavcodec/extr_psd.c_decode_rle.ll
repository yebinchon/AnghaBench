; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_psd.c_decode_rle.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_psd.c_decode_rle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i8**, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Not enough data for rle scanline table.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Not enough data for rle scanline.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid rle char.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @decode_rle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_rle(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul i32 %14, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 5
  %21 = call i32 @bytestream2_get_bytes_left(i32* %20)
  %22 = load i32, i32* %4, align 4
  %23 = mul i32 %22, 2
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = call i32 @av_log(i32 %28, i32 %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %31, i32* %2, align 4
  br label %169

32:                                               ; preds = %1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 5
  %35 = load i32, i32* %4, align 4
  %36 = mul i32 %35, 2
  %37 = call i32 @bytestream2_skip(i32* %34, i32 %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %165, %32
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %168

42:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %163, %42
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %164

49:                                               ; preds = %43
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  %52 = call i8* @bytestream2_get_byte(i32* %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %110

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 %57, -1
  store i32 %58, i32* %10, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  %61 = call i32 @bytestream2_get_bytes_left(i32* %60)
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AV_LOG_ERROR, align 4
  %68 = call i32 @av_log(i32 %66, i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %69, i32* %2, align 4
  br label %169

70:                                               ; preds = %56
  %71 = load i64, i64* %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = add i64 %71, %73
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp uge i64 %74, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %70
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = call i32 @av_log(i32 %82, i32 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %85, i32* %2, align 4
  br label %169

86:                                               ; preds = %70
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 5
  %89 = call i8* @bytestream2_get_byte(i32* %88)
  store i8* %89, i8** %11, align 8
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %102, %86
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ule i32 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load i8*, i8** %11, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 4
  %98 = load i8**, i8*** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %7, align 8
  %101 = getelementptr inbounds i8*, i8** %98, i64 %99
  store i8* %95, i8** %101, align 8
  br label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %8, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %90

105:                                              ; preds = %90
  %106 = load i32, i32* %10, align 4
  %107 = add i32 %106, 1
  %108 = load i32, i32* %6, align 4
  %109 = add i32 %108, %107
  store i32 %109, i32* %6, align 4
  br label %163

110:                                              ; preds = %49
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 5
  %113 = call i32 @bytestream2_get_bytes_left(i32* %112)
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @AV_LOG_ERROR, align 4
  %121 = call i32 @av_log(i32 %119, i32 %120, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %122, i32* %2, align 4
  br label %169

123:                                              ; preds = %110
  %124 = load i64, i64* %7, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 %124, %126
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp uge i64 %127, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %123
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @AV_LOG_ERROR, align 4
  %137 = call i32 @av_log(i32 %135, i32 %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %138 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %138, i32* %2, align 4
  br label %169

139:                                              ; preds = %123
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %155, %139
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ule i32 %141, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %140
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 5
  %147 = call i8* @bytestream2_get_byte(i32* %146)
  store i8* %147, i8** %11, align 8
  %148 = load i8*, i8** %11, align 8
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 4
  %151 = load i8**, i8*** %150, align 8
  %152 = load i64, i64* %7, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %7, align 8
  %154 = getelementptr inbounds i8*, i8** %151, i64 %152
  store i8* %148, i8** %154, align 8
  br label %155

155:                                              ; preds = %144
  %156 = load i32, i32* %8, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %140

158:                                              ; preds = %140
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  %161 = load i32, i32* %6, align 4
  %162 = add i32 %161, %160
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %158, %105
  br label %43

164:                                              ; preds = %43
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %5, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %38

168:                                              ; preds = %38
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %168, %132, %116, %79, %63, %25
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i8* @bytestream2_get_byte(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
