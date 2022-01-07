; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_rfc4175.c_rfc4175_handle_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_rfc4175.c_rfc4175_handle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Missed previous RTP Marker\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@RTP_FLAG_MARKER = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, %struct.TYPE_7__*, i32*, i64*, i32*, i32, i32, i32)* @rfc4175_handle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfc4175_handle_packet(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_7__* %2, i32* %3, i64* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %13, align 8
  store i32* %3, i32** %14, align 8
  store i64* %4, i64** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %30 = load i32*, i32** %16, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32* %31, i32** %24, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32* %33, i32** %25, align 8
  %34 = load i32, i32* %17, align 4
  %35 = sub nsw i32 %34, 2
  store i32 %35, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %36 = load i64*, i64** %15, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %9
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = call i32 @av_log(i32* %48, i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %27, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rfc4175_finalize_packet(%struct.TYPE_6__* %51, i32* %52, i32 %55)
  br label %57

57:                                               ; preds = %47, %42
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32* @av_malloc(i32 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load i64*, i64** %15, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %57
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* @AV_LOG_ERROR, align 4
  %75 = call i32 @av_log(i32* %73, i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = call i32 @AVERROR(i32 %76)
  store i32 %77, i32* %10, align 4
  br label %219

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %78, %9
  br label %80

80:                                               ; preds = %94, %79
  %81 = load i32, i32* %26, align 4
  %82 = icmp slt i32 %81, 6
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %84, i32* %10, align 4
  br label %219

85:                                               ; preds = %80
  %86 = load i32*, i32** %25, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 128
  store i32 %89, i32* %23, align 4
  %90 = load i32*, i32** %25, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 6
  store i32* %91, i32** %25, align 8
  %92 = load i32, i32* %26, align 4
  %93 = sub nsw i32 %92, 6
  store i32 %93, i32* %26, align 4
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %23, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %80, label %97

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %196, %97
  %99 = load i32, i32* %26, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %105, i32* %10, align 4
  br label %219

106:                                              ; preds = %98
  %107 = load i32*, i32** %24, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 8
  %111 = load i32*, i32** %24, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %110, %113
  store i32 %114, i32* %20, align 4
  %115 = load i32*, i32** %24, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 127
  %119 = shl i32 %118, 8
  %120 = load i32*, i32** %24, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %119, %122
  store i32 %123, i32* %21, align 4
  %124 = load i32*, i32** %24, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 4
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 127
  %128 = shl i32 %127, 8
  %129 = load i32*, i32** %24, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 5
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %128, %131
  store i32 %132, i32* %22, align 4
  %133 = load i32*, i32** %24, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 4
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 128
  store i32 %136, i32* %23, align 4
  %137 = load i32*, i32** %24, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 6
  store i32* %138, i32** %24, align 8
  %139 = load i32, i32* %20, align 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = srem i32 %139, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %106
  %146 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %146, i32* %10, align 4
  br label %219

147:                                              ; preds = %106
  %148 = load i32, i32* %20, align 4
  %149 = load i32, i32* %26, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* %26, align 4
  store i32 %152, i32* %20, align 4
  br label %153

153:                                              ; preds = %151, %147
  %154 = load i32, i32* %21, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %154, %157
  %159 = load i32, i32* %22, align 4
  %160 = add nsw i32 %158, %159
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 %160, %163
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = sdiv i32 %164, %167
  store i32 %168, i32* %29, align 4
  %169 = load i32, i32* %29, align 4
  %170 = load i32, i32* %20, align 4
  %171 = add nsw i32 %169, %170
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp sgt i32 %171, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %153
  %177 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %177, i32* %10, align 4
  br label %219

178:                                              ; preds = %153
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %29, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32* %184, i32** %28, align 8
  %185 = load i32*, i32** %28, align 8
  %186 = load i32*, i32** %25, align 8
  %187 = load i32, i32* %20, align 4
  %188 = call i32 @memcpy(i32* %185, i32* %186, i32 %187)
  %189 = load i32, i32* %20, align 4
  %190 = load i32*, i32** %25, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  store i32* %192, i32** %25, align 8
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %26, align 4
  %195 = sub nsw i32 %194, %193
  store i32 %195, i32* %26, align 4
  br label %196

196:                                              ; preds = %178
  %197 = load i32, i32* %23, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %98, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %19, align 4
  %201 = load i32, i32* @RTP_FLAG_MARKER, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %199
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %206 = load i32*, i32** %14, align 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @rfc4175_finalize_packet(%struct.TYPE_6__* %205, i32* %206, i32 %209)
  store i32 %210, i32* %10, align 4
  br label %219

211:                                              ; preds = %199
  %212 = load i32, i32* %27, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  store i32 0, i32* %10, align 4
  br label %219

215:                                              ; preds = %211
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* @EAGAIN, align 4
  %218 = call i32 @AVERROR(i32 %217)
  store i32 %218, i32* %10, align 4
  br label %219

219:                                              ; preds = %216, %214, %204, %176, %145, %104, %83, %72
  %220 = load i32, i32* %10, align 4
  ret i32 %220
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @rfc4175_finalize_packet(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
