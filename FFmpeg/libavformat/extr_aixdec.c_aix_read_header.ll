; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_aixdec.c_aix_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_aixdec.c_aix_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i8*, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_ADX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @aix_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aix_read_header(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 32, i32* %8, align 4
  store i32 16, i32* %9, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @avio_skip(i32 %15, i32 4)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @avio_rb32(i32 %19)
  %21 = add nsw i32 %20, 8
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @avio_skip(i32 %24, i32 16)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @avio_rb16(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %33, i32* %2, align 4
  br label %174

34:                                               ; preds = %1
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = mul i32 %36, %37
  %39 = add i32 %35, %38
  %40 = add i32 %39, 16
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp uge i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %45, i32* %2, align 4
  br label %174

46:                                               ; preds = %34
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @SEEK_SET, align 4
  %52 = call i32 @avio_seek(i32 %49, i32 %50, i32 %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @avio_r8(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %61, i32* %2, align 4
  br label %174

62:                                               ; preds = %46
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @avio_skip(i32 %65, i32 7)
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %117, %62
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %120

71:                                               ; preds = %67
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = call %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__* %72, i32* null)
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %12, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %75 = icmp ne %struct.TYPE_12__* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = call i32 @AVERROR(i32 %77)
  store i32 %78, i32* %2, align 4
  br label %174

79:                                               ; preds = %71
  %80 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* @AV_CODEC_ID_ADPCM_ADX, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  store i32 %85, i32* %89, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @avio_rb32(i32 %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @avio_r8(i32 %100)
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  store i8* %101, i8** %105, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %106, i32 64, i32 1, i32 %111)
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @avio_skip(i32 %115, i32 3)
  br label %117

117:                                              ; preds = %79
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %67

120:                                              ; preds = %67
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @SEEK_SET, align 4
  %126 = call i32 @avio_seek(i32 %123, i32 %124, i32 %125)
  store i32 0, i32* %11, align 4
  br label %127

127:                                              ; preds = %170, %120
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %131, label %173

131:                                              ; preds = %127
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @avio_rl32(i32 %134)
  %136 = call i64 @MKTAG(i8 signext 65, i8 signext 73, i8 signext 88, i8 signext 80)
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %139, i32* %2, align 4
  br label %174

140:                                              ; preds = %131
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @avio_rb32(i32 %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ule i32 %145, 8
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %148, i32* %2, align 4
  br label %174

149:                                              ; preds = %140
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @avio_skip(i32 %152, i32 8)
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %157, i64 %159
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sub i32 %167, 8
  %169 = call i32 @ff_get_extradata(%struct.TYPE_13__* %154, i32 %163, i32 %166, i32 %168)
  br label %170

170:                                              ; preds = %149
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %11, align 4
  br label %127

173:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %174

174:                                              ; preds = %173, %147, %138, %76, %60, %44, %32
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @avio_skip(i32, i32) #1

declare dso_local i32 @avio_rb32(i32) #1

declare dso_local i32 @avio_rb16(i32) #1

declare dso_local i32 @avio_seek(i32, i32, i32) #1

declare dso_local i8* @avio_r8(i32) #1

declare dso_local %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i64 @avio_rl32(i32) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @ff_get_extradata(%struct.TYPE_13__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
