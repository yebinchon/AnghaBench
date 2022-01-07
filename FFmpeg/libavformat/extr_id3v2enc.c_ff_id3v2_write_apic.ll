; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2enc.c_ff_id3v2_write_apic.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2enc.c_ff_id3v2_write_apic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i8* }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i32, i32* }
%struct.TYPE_20__ = type { i8* }

@ff_id3v2_mime_tags = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ID3v2_ENCODING_UTF16BOM = common dso_local global i32 0, align 4
@ID3v2_ENCODING_UTF8 = common dso_local global i32 0, align 4
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"No mimetype is known for stream %d, cannot write an attached picture.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@ff_id3v2_picture_types = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@ID3v2_ENCODING_ISO8859 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ID3v2_HEADER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_id3v2_write_apic(%struct.TYPE_19__* %0, %struct.TYPE_15__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %20, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %21, i64 %24
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %8, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ff_id3v2_mime_tags, align 8
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @ID3v2_ENCODING_UTF16BOM, align 4
  br label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @ID3v2_ENCODING_UTF8, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %38

38:                                               ; preds = %58, %36
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %47, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %13, align 8
  br label %61

58:                                               ; preds = %44
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 1
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %12, align 8
  br label %38

61:                                               ; preds = %54, %38
  %62 = load i8*, i8** %13, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %66 = load i32, i32* @AV_LOG_ERROR, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @av_log(%struct.TYPE_19__* %65, i32 %66, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = call i32 @AVERROR(i32 %71)
  store i32 %72, i32* %4, align 4
  br label %198

73:                                               ; preds = %61
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call %struct.TYPE_20__* @av_dict_get(i32 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_20__* %77, %struct.TYPE_20__** %9, align 8
  store i32 0, i32* %16, align 4
  br label %78

78:                                               ; preds = %102, %73
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %80 = icmp ne %struct.TYPE_20__* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, i32* %16, align 4
  %83 = load i32*, i32** @ff_id3v2_picture_types, align 8
  %84 = call i32 @FF_ARRAY_ELEMS(i32* %83)
  %85 = icmp slt i32 %82, %84
  br label %86

86:                                               ; preds = %81, %78
  %87 = phi i1 [ false, %78 ], [ %85, %81 ]
  br i1 %87, label %88, label %105

88:                                               ; preds = %86
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i32*, i32** @ff_id3v2_picture_types, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @av_strcasecmp(i8* %91, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %88
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %18, align 4
  br label %105

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %16, align 4
  br label %78

105:                                              ; preds = %99, %86
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call %struct.TYPE_20__* @av_dict_get(i32 %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_20__* %109, %struct.TYPE_20__** %9, align 8
  %110 = icmp ne %struct.TYPE_20__* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %14, align 8
  br label %115

115:                                              ; preds = %111, %105
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* @ID3v2_ENCODING_UTF16BOM, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i8*, i8** %14, align 8
  %121 = call i64 @string_is_ascii(i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* @ID3v2_ENCODING_ISO8859, align 4
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %123, %119, %115
  %126 = call i64 @avio_open_dyn_buf(i32** %10)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = call i32 @AVERROR(i32 %129)
  store i32 %130, i32* %4, align 4
  br label %198

131:                                              ; preds = %125
  %132 = load i32*, i32** %10, align 8
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @avio_w8(i32* %132, i32 %133)
  %135 = load i32*, i32** %10, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = call i32 @avio_put_str(i32* %135, i8* %136)
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* %18, align 4
  %140 = call i32 @avio_w8(i32* %138, i32 %139)
  %141 = load i32*, i32** %10, align 8
  %142 = load i8*, i8** %14, align 8
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @id3v2_encode_string(i32* %141, i8* %142, i32 %143)
  %145 = load i32*, i32** %10, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @avio_write(i32* %145, i32* %148, i32 %151)
  %153 = load i32*, i32** %10, align 8
  %154 = call i32 @avio_close_dyn_buf(i32* %153, i32** %11)
  store i32 %154, i32* %17, align 4
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @MKBETAG(i8 signext 65, i8 signext 80, i8 signext 73, i8 signext 67)
  %159 = call i32 @avio_wb32(i32* %157, i32 %158)
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 3
  br i1 %163, label %164, label %170

164:                                              ; preds = %131
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %17, align 4
  %169 = call i32 @avio_wb32(i32* %167, i32 %168)
  br label %176

170:                                              ; preds = %131
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %17, align 4
  %175 = call i32 @id3v2_put_size(i32* %173, i32 %174)
  br label %176

176:                                              ; preds = %170, %164
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @avio_wb16(i32* %179, i32 0)
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32*, i32** %11, align 8
  %185 = load i32, i32* %17, align 4
  %186 = call i32 @avio_write(i32* %183, i32* %184, i32 %185)
  %187 = call i32 @av_freep(i32** %11)
  %188 = load i32, i32* %17, align 4
  %189 = sext i32 %188 to i64
  %190 = load i64, i64* @ID3v2_HEADER_SIZE, align 8
  %191 = add nsw i64 %189, %190
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %195, %191
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %193, align 4
  store i32 0, i32* %4, align 4
  br label %198

198:                                              ; preds = %176, %128, %64
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_20__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @av_strcasecmp(i8*, i32) #1

declare dso_local i64 @string_is_ascii(i8*) #1

declare dso_local i64 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_put_str(i32*, i8*) #1

declare dso_local i32 @id3v2_encode_string(i32*, i8*, i32) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @MKBETAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @id3v2_put_size(i32*, i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
