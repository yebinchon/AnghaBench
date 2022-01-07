; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec.c_rtp_parse_packet_internal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec.c_rtp_parse_packet_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_14__*, i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 (i32, i32, %struct.TYPE_14__*, %struct.TYPE_15__*, i8**, i32*, i32, i32, i32)* }
%struct.TYPE_15__ = type { i32, i32 }

@RTP_FLAG_MARKER = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"RTP: PT=%02x: bad cseq %04x expected=%04x\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_15__*, i32*, i32)* @rtp_parse_packet_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_parse_packet_internal(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 15
  store i32 %23, i32* %15, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 16
  store i32 %27, i32* %14, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 127
  store i32 %31, i32* %11, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 128
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %4
  %38 = load i32, i32* @RTP_FLAG_MARKER, align 4
  %39 = load i32, i32* %13, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %37, %4
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = call i32 @AV_RB16(i32* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = call i8* @AV_RB32(i32* %46)
  store i8* %47, i8** %17, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  %50 = call i8* @AV_RB32(i32* %49)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %41
  store i32 -1, i32* %5, align 4
  br label %216

61:                                               ; preds = %41
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  store %struct.TYPE_14__* %64, %struct.TYPE_14__** %16, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 7
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @rtp_valid_packet_in_sequence(i32* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %61
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AV_LOG_ERROR, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  %81 = and i32 %80, 65535
  %82 = call i32 @av_log(i32 %73, i32 %74, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76, i32 %81)
  store i32 -1, i32* %5, align 4
  br label %216

83:                                               ; preds = %61
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %83
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %19, align 4
  %98 = add nsw i32 12, %97
  %99 = icmp sge i32 %96, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %89
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %100, %89
  br label %105

105:                                              ; preds = %104, %83
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sub nsw i32 %109, 12
  store i32 %110, i32* %9, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 12
  store i32* %112, i32** %8, align 8
  %113 = load i32, i32* %15, align 4
  %114 = mul nsw i32 4, %113
  %115 = load i32, i32* %9, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %15, align 4
  %118 = mul nsw i32 4, %117
  %119 = load i32*, i32** %8, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %8, align 8
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %105
  %125 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %125, i32* %5, align 4
  br label %216

126:                                              ; preds = %105
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %151

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %130, 4
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 -1, i32* %5, align 4
  br label %216

133:                                              ; preds = %129
  %134 = load i32*, i32** %8, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = call i32 @AV_RB16(i32* %135)
  %137 = add nsw i32 %136, 1
  %138 = shl i32 %137, 2
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  store i32 -1, i32* %5, align 4
  br label %216

143:                                              ; preds = %133
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %9, align 4
  %146 = sub nsw i32 %145, %144
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load i32*, i32** %8, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32* %150, i32** %8, align 8
  br label %151

151:                                              ; preds = %143, %126
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 6
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = icmp ne %struct.TYPE_12__* %154, null
  br i1 %155, label %156, label %184

156:                                              ; preds = %151
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 6
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i32 (i32, i32, %struct.TYPE_14__*, %struct.TYPE_15__*, i8**, i32*, i32, i32, i32)*, i32 (i32, i32, %struct.TYPE_14__*, %struct.TYPE_15__*, i8**, i32*, i32, i32, i32)** %160, align 8
  %162 = icmp ne i32 (i32, i32, %struct.TYPE_14__*, %struct.TYPE_15__*, i8**, i32*, i32, i32, i32)* %161, null
  br i1 %162, label %163, label %184

163:                                              ; preds = %156
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 6
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32 (i32, i32, %struct.TYPE_14__*, %struct.TYPE_15__*, i8**, i32*, i32, i32, i32)*, i32 (i32, i32, %struct.TYPE_14__*, %struct.TYPE_15__*, i8**, i32*, i32, i32, i32)** %167, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %176, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %179 = load i32*, i32** %8, align 8
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %13, align 4
  %183 = call i32 %168(i32 %171, i32 %174, %struct.TYPE_14__* %177, %struct.TYPE_15__* %178, i8** %17, i32* %179, i32 %180, i32 %181, i32 %182)
  store i32 %183, i32* %18, align 4
  br label %210

184:                                              ; preds = %156, %151
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %186 = icmp ne %struct.TYPE_14__* %185, null
  br i1 %186, label %187, label %206

187:                                              ; preds = %184
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @av_new_packet(%struct.TYPE_15__* %188, i32 %189)
  store i32 %190, i32* %18, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, i32* %18, align 4
  store i32 %193, i32* %5, align 4
  br label %216

194:                                              ; preds = %187
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %8, align 8
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @memcpy(i32 %197, i32* %198, i32 %199)
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 4
  br label %209

206:                                              ; preds = %184
  %207 = load i32, i32* @EINVAL, align 4
  %208 = call i32 @AVERROR(i32 %207)
  store i32 %208, i32* %5, align 4
  br label %216

209:                                              ; preds = %194
  br label %210

210:                                              ; preds = %209, %163
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %213 = load i8*, i8** %17, align 8
  %214 = call i32 @finalize_packet(%struct.TYPE_13__* %211, %struct.TYPE_15__* %212, i8* %213)
  %215 = load i32, i32* %18, align 4
  store i32 %215, i32* %5, align 4
  br label %216

216:                                              ; preds = %210, %206, %192, %142, %132, %124, %70, %60
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i8* @AV_RB32(i32*) #1

declare dso_local i32 @rtp_valid_packet_in_sequence(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @finalize_packet(%struct.TYPE_13__*, %struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
