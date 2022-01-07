; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_refs.c_ff_h264_decode_ref_pic_marking.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_refs.c_ff_h264_decode_ref_pic_marking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i64 }

@H264_NAL_IDR_SLICE = common dso_local global i64 0, align 8
@MMCO_LONG = common dso_local global i64 0, align 8
@MAX_MMCO_COUNT = common dso_local global i32 0, align 4
@MMCO_SHORT2UNUSED = common dso_local global i64 0, align 8
@MMCO_SHORT2LONG = common dso_local global i64 0, align 8
@MMCO_LONG2UNUSED = common dso_local global i64 0, align 8
@MMCO_SET_MAX_LONG = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"illegal long ref in memory management control operation %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"illegal memory management control operation %d\0A\00", align 1
@MMCO_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_h264_decode_ref_pic_marking(%struct.TYPE_8__* %0, i32* %1, %struct.TYPE_9__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @H264_NAL_IDR_SLICE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @skip_bits1(i32* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @get_bits1(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i64, i64* @MMCO_LONG, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store i64 %30, i64* %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  store i32 1, i32* %12, align 4
  br label %37

37:                                               ; preds = %29, %23
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %170

40:                                               ; preds = %4
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @get_bits1(i32* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %169

49:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %164, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @MAX_MMCO_COUNT, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %167

54:                                               ; preds = %50
  %55 = load i32*, i32** %7, align 8
  %56 = call i8* @get_ue_golomb_31(i32* %55)
  %57 = ptrtoint i8* %56 to i64
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  store i64 %58, i64* %63, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @MMCO_SHORT2UNUSED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %54
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* @MMCO_SHORT2LONG, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67, %54
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @get_ue_golomb_long(i32* %75)
  %77 = sub nsw i32 %74, %76
  %78 = sub nsw i32 %77, 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  %83 = and i32 %78, %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  store i32 %83, i32* %88, align 4
  br label %89

89:                                               ; preds = %71, %67
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* @MMCO_SHORT2LONG, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %105, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* @MMCO_LONG2UNUSED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* @MMCO_LONG, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* @MMCO_SET_MAX_LONG, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %144

105:                                              ; preds = %101, %97, %93, %89
  %106 = load i32*, i32** %7, align 8
  %107 = call i8* @get_ue_golomb_31(i32* %106)
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp uge i32 %109, 32
  br i1 %110, label %129, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %14, align 4
  %113 = icmp uge i32 %112, 16
  br i1 %113, label %114, label %137

114:                                              ; preds = %111
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* @MMCO_SET_MAX_LONG, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* %14, align 4
  %120 = icmp eq i32 %119, 16
  br i1 %120, label %137, label %121

121:                                              ; preds = %118, %114
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* @MMCO_LONG2UNUSED, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %127 = call i64 @FIELD_PICTURE(%struct.TYPE_8__* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %125, %121, %105
  %130 = load i8*, i8** %9, align 8
  %131 = load i32, i32* @AV_LOG_ERROR, align 4
  %132 = load i64, i64* %13, align 8
  %133 = call i32 @av_log(i8* %130, i32 %131, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %132)
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  store i32 -1, i32* %5, align 4
  br label %174

137:                                              ; preds = %125, %118, %111
  %138 = load i32, i32* %14, align 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store i32 %138, i32* %143, align 8
  br label %144

144:                                              ; preds = %137, %101
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* @MMCO_LONG, align 8
  %147 = trunc i64 %146 to i32
  %148 = zext i32 %147 to i64
  %149 = icmp sgt i64 %145, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %144
  %151 = load i8*, i8** %9, align 8
  %152 = load i32, i32* @AV_LOG_ERROR, align 4
  %153 = load i64, i64* %13, align 8
  %154 = call i32 @av_log(i8* %151, i32 %152, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %153)
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  store i32 -1, i32* %5, align 4
  br label %174

158:                                              ; preds = %144
  %159 = load i64, i64* %13, align 8
  %160 = load i64, i64* @MMCO_END, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %167

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %50

167:                                              ; preds = %162, %50
  %168 = load i32, i32* %10, align 4
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %167, %40
  br label %170

170:                                              ; preds = %169, %37
  %171 = load i32, i32* %12, align 4
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 4
  store i32 0, i32* %5, align 4
  br label %174

174:                                              ; preds = %170, %150, %129
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i32 @skip_bits1(i32*) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i8* @get_ue_golomb_31(i32*) #1

declare dso_local i32 @get_ue_golomb_long(i32*) #1

declare dso_local i64 @FIELD_PICTURE(%struct.TYPE_8__*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
