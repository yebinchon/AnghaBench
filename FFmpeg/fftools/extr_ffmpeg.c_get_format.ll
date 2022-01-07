; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_get_format.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i32 (%struct.TYPE_18__*)*, i64 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i32, i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i64 }

@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_HWACCEL = common dso_local global i32 0, align 4
@HWACCEL_GENERIC = common dso_local global i64 0, align 8
@HWACCEL_AUTO = common dso_local global i64 0, align 8
@AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX = common dso_local global i32 0, align 4
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"%s hwaccel requested for input stream #%d:%d, but cannot be initialized.\0A\00", align 1
@hwaccels = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32*)* @get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_format(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %6, align 8
  %17 = load i32*, i32** %5, align 8
  store i32* %17, i32** %7, align 8
  br label %18

18:                                               ; preds = %207, %2
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %210

23:                                               ; preds = %18
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_16__* @av_pix_fmt_desc_get(i32 %25)
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %10, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AV_PIX_FMT_FLAG_HWACCEL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %210

34:                                               ; preds = %23
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HWACCEL_GENERIC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @HWACCEL_AUTO, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %40, %34
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %73, %46
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call %struct.TYPE_17__* @avcodec_get_hw_config(i32 %50, i32 %51)
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %10, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %54 = icmp ne %struct.TYPE_17__* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  br label %76

56:                                               ; preds = %47
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %73

64:                                               ; preds = %56
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %76

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %63
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %47

76:                                               ; preds = %71, %55
  br label %77

77:                                               ; preds = %76, %40
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %79 = icmp ne %struct.TYPE_17__* %78, null
  br i1 %79, label %80, label %118

80:                                               ; preds = %77
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %207

89:                                               ; preds = %80
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %91 = call i32 @hwaccel_decode_init(%struct.TYPE_18__* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %89
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @HWACCEL_GENERIC, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %94
  %101 = load i32, i32* @AV_LOG_FATAL, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @av_hwdevice_get_type_name(i64 %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @av_log(i32* null, i32 %101, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %105, i32 %108, i32 %113)
  %115 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %115, i32* %3, align 4
  br label %213

116:                                              ; preds = %94
  br label %207

117:                                              ; preds = %89
  br label %183

118:                                              ; preds = %77
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %143, %118
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** @hwaccels, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %119
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** @hwaccels, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %127
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** @hwaccels, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i64 %140
  store %struct.TYPE_15__* %141, %struct.TYPE_15__** %12, align 8
  br label %146

142:                                              ; preds = %127
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %119

146:                                              ; preds = %137, %119
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %148 = icmp ne %struct.TYPE_15__* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  br label %207

150:                                              ; preds = %146
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %153, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  br label %207

159:                                              ; preds = %150
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 2
  %162 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %161, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %164 = call i32 %162(%struct.TYPE_18__* %163)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %182

167:                                              ; preds = %159
  %168 = load i32, i32* @AV_LOG_FATAL, align 4
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @av_log(i32* null, i32 %168, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %171, i32 %174, i32 %179)
  %181 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %181, i32* %3, align 4
  br label %213

182:                                              ; preds = %159
  br label %183

183:                                              ; preds = %182, %117
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %183
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @av_buffer_ref(i64 %191)
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %188
  %200 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %200, i32* %3, align 4
  br label %213

201:                                              ; preds = %188
  br label %202

202:                                              ; preds = %201, %183
  %203 = load i32*, i32** %7, align 8
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 8
  br label %210

207:                                              ; preds = %158, %149, %116, %88
  %208 = load i32*, i32** %7, align 8
  %209 = getelementptr inbounds i32, i32* %208, i32 1
  store i32* %209, i32** %7, align 8
  br label %18

210:                                              ; preds = %202, %33, %18
  %211 = load i32*, i32** %7, align 8
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %210, %199, %167, %100
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local %struct.TYPE_16__* @av_pix_fmt_desc_get(i32) #1

declare dso_local %struct.TYPE_17__* @avcodec_get_hw_config(i32, i32) #1

declare dso_local i32 @hwaccel_decode_init(%struct.TYPE_18__*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i64, i32, i32) #1

declare dso_local i64 @av_hwdevice_get_type_name(i64) #1

declare dso_local i32 @av_buffer_ref(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
