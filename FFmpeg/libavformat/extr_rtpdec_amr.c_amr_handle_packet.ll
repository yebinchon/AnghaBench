; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_amr.c_amr_handle_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_amr.c_amr_handle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32, i32 }

@AV_CODEC_ID_AMR_NB = common dso_local global i64 0, align 8
@frame_sizes_nb = common dso_local global i32* null, align 8
@AV_CODEC_ID_AMR_WB = common dso_local global i64 0, align 8
@frame_sizes_wb = common dso_local global i32* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Bad codec ID\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Only mono AMR is supported\0A\00", align 1
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"No speech data found\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Too little speech data in the RTP packet\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Too much speech data in the RTP packet?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_8__*, %struct.TYPE_9__*, i32*, i32*, i32, i32, i32)* @amr_handle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_handle_packet(i32* %0, i32* %1, %struct.TYPE_8__* %2, %struct.TYPE_9__* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32* null, i32** %20, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AV_CODEC_ID_AMR_NB, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %9
  %35 = load i32*, i32** @frame_sizes_nb, align 8
  store i32* %35, i32** %20, align 8
  br label %52

36:                                               ; preds = %9
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AV_CODEC_ID_AMR_WB, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32*, i32** @frame_sizes_wb, align 8
  store i32* %45, i32** %20, align 8
  br label %51

46:                                               ; preds = %36
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = call i32 @av_log(i32* %47, i32 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %50, i32* %10, align 4
  br label %241

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %34
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* @AV_LOG_ERROR, align 4
  %62 = call i32 @av_log(i32* %60, i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %63, i32* %10, align 4
  br label %241

64:                                               ; preds = %52
  %65 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  store i32 %65, i32* %69, align 4
  store i32 1, i32* %21, align 4
  br label %70

70:                                               ; preds = %85, %64
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i32*, i32** %16, align 8
  %76 = load i32, i32* %21, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 128
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %74, %70
  %83 = phi i1 [ false, %70 ], [ %81, %74 ]
  br i1 %83, label %84, label %88

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %21, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %21, align 4
  br label %70

88:                                               ; preds = %82
  %89 = load i32, i32* %21, align 4
  %90 = add nsw i32 1, %89
  %91 = load i32, i32* %17, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* @AV_LOG_ERROR, align 4
  %96 = call i32 @av_log(i32* %94, i32 %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %97, i32* %10, align 4
  br label %241

98:                                               ; preds = %88
  %99 = load i32*, i32** %16, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %21, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32* %103, i32** %23, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %105 = load i32, i32* %17, align 4
  %106 = sub nsw i32 %105, 1
  %107 = call i64 @av_new_packet(%struct.TYPE_9__* %104, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %98
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* @AV_LOG_ERROR, align 4
  %112 = call i32 @av_log(i32* %110, i32 %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = call i32 @AVERROR(i32 %113)
  store i32 %114, i32* %10, align 4
  br label %241

115:                                              ; preds = %98
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  store i32* %123, i32** %24, align 8
  store i32 0, i32* %22, align 4
  br label %124

124:                                              ; preds = %199, %115
  %125 = load i32, i32* %22, align 4
  %126 = load i32, i32* %21, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %202

128:                                              ; preds = %124
  %129 = load i32*, i32** %16, align 8
  %130 = load i32, i32* %22, align 4
  %131 = add nsw i32 1, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %25, align 4
  %135 = load i32*, i32** %20, align 8
  %136 = load i32, i32* %25, align 4
  %137 = ashr i32 %136, 3
  %138 = and i32 %137, 15
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %26, align 4
  %142 = load i32*, i32** %23, align 8
  %143 = load i32, i32* %26, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32*, i32** %16, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = icmp ugt i32* %145, %149
  br i1 %150, label %151, label %182

151:                                              ; preds = %128
  %152 = load i32*, i32** %11, align 8
  %153 = load i32, i32* @AV_LOG_WARNING, align 4
  %154 = call i32 @av_log(i32* %152, i32 %153, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %155 = load i32*, i32** %24, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %158, i64 %162
  %164 = load i32*, i32** %24, align 8
  %165 = ptrtoint i32* %163 to i64
  %166 = ptrtoint i32* %164 to i64
  %167 = sub i64 %165, %166
  %168 = sdiv exact i64 %167, 4
  %169 = trunc i64 %168 to i32
  %170 = call i32 @memset(i32* %155, i32 0, i32 %169)
  %171 = load i32*, i32** %24, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = ptrtoint i32* %171 to i64
  %176 = ptrtoint i32* %174 to i64
  %177 = sub i64 %175, %176
  %178 = sdiv exact i64 %177, 4
  %179 = trunc i64 %178 to i32
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 8
  store i32 0, i32* %10, align 4
  br label %241

182:                                              ; preds = %128
  %183 = load i32, i32* %25, align 4
  %184 = and i32 %183, 124
  %185 = load i32*, i32** %24, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** %24, align 8
  store i32 %184, i32* %185, align 4
  %187 = load i32*, i32** %24, align 8
  %188 = load i32*, i32** %23, align 8
  %189 = load i32, i32* %26, align 4
  %190 = call i32 @memcpy(i32* %187, i32* %188, i32 %189)
  %191 = load i32, i32* %26, align 4
  %192 = load i32*, i32** %23, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32* %194, i32** %23, align 8
  %195 = load i32, i32* %26, align 4
  %196 = load i32*, i32** %24, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32* %198, i32** %24, align 8
  br label %199

199:                                              ; preds = %182
  %200 = load i32, i32* %22, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %22, align 4
  br label %124

202:                                              ; preds = %124
  %203 = load i32*, i32** %23, align 8
  %204 = load i32*, i32** %16, align 8
  %205 = load i32, i32* %17, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = icmp ult i32* %203, %207
  br i1 %208, label %209, label %240

209:                                              ; preds = %202
  %210 = load i32*, i32** %11, align 8
  %211 = load i32, i32* @AV_LOG_WARNING, align 4
  %212 = call i32 @av_log(i32* %210, i32 %211, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %213 = load i32*, i32** %24, align 8
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %216, i64 %220
  %222 = load i32*, i32** %24, align 8
  %223 = ptrtoint i32* %221 to i64
  %224 = ptrtoint i32* %222 to i64
  %225 = sub i64 %223, %224
  %226 = sdiv exact i64 %225, 4
  %227 = trunc i64 %226 to i32
  %228 = call i32 @memset(i32* %213, i32 0, i32 %227)
  %229 = load i32*, i32** %24, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = ptrtoint i32* %229 to i64
  %234 = ptrtoint i32* %232 to i64
  %235 = sub i64 %233, %234
  %236 = sdiv exact i64 %235, 4
  %237 = trunc i64 %236 to i32
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 8
  br label %240

240:                                              ; preds = %209, %202
  store i32 0, i32* %10, align 4
  br label %241

241:                                              ; preds = %240, %151, %109, %93, %59, %46
  %242 = load i32, i32* %10, align 4
  ret i32 %242
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
