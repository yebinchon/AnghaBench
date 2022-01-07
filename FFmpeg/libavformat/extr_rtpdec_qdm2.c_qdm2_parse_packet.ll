; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_qdm2.c_qdm2_parse_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_qdm2.c_qdm2_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64*, i64, i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Out of sequence config - dropping queue\0A\00", align 1
@AV_CODEC_ID_QDM2 = common dso_local global i64 0, align 8
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@RTP_NOTS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32*, i32*, i32, i32, i32)* @qdm2_parse_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdm2_parse_packet(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_14__* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %24 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %24, i32* %20, align 4
  %25 = load i32*, i32** %16, align 8
  %26 = load i32, i32* %17, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %22, align 8
  %29 = load i32*, i32** %16, align 8
  store i32* %29, i32** %23, align 8
  %30 = load i32, i32* %17, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %151

32:                                               ; preds = %9
  %33 = load i32, i32* %17, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %10, align 4
  br label %187

37:                                               ; preds = %32
  %38 = load i32*, i32** %23, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 255
  br i1 %40, label %41, label %76

41:                                               ; preds = %37
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* @AV_LOG_WARNING, align 4
  %49 = call i32 @av_log(i32* %47, i32 %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = call i32 @memset(i64* %54, i32 0, i32 8)
  br label %56

56:                                               ; preds = %46, %41
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %59 = load i32*, i32** %23, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %23, align 8
  %61 = load i32*, i32** %22, align 8
  %62 = call i32 @qdm2_parse_config(%struct.TYPE_13__* %57, %struct.TYPE_14__* %58, i32* %60, i32* %61)
  store i32 %62, i32* %20, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %20, align 4
  store i32 %65, i32* %10, align 4
  br label %187

66:                                               ; preds = %56
  %67 = load i32, i32* %20, align 4
  %68 = load i32*, i32** %23, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %23, align 8
  %71 = load i64, i64* @AV_CODEC_ID_QDM2, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i64 %71, i64* %75, align 8
  br label %76

76:                                               ; preds = %66, %37
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* @EAGAIN, align 4
  %86 = call i32 @AVERROR(i32 %85)
  store i32 %86, i32* %10, align 4
  br label %187

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %105, %87
  %89 = load i32*, i32** %22, align 8
  %90 = load i32*, i32** %23, align 8
  %91 = ptrtoint i32* %89 to i64
  %92 = ptrtoint i32* %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 4
  %95 = icmp sge i64 %94, 4
  br i1 %95, label %96, label %110

96:                                               ; preds = %88
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %99 = load i32*, i32** %23, align 8
  %100 = load i32*, i32** %22, align 8
  %101 = call i32 @qdm2_parse_subpacket(%struct.TYPE_13__* %97, %struct.TYPE_14__* %98, i32* %99, i32* %100)
  store i32 %101, i32* %20, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %20, align 4
  store i32 %104, i32* %10, align 4
  br label %187

105:                                              ; preds = %96
  %106 = load i32, i32* %20, align 4
  %107 = load i32*, i32** %23, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %23, align 8
  br label %88

110:                                              ; preds = %88
  %111 = load i32*, i32** %15, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %116, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp slt i64 %118, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %110
  %124 = load i32, i32* @EAGAIN, align 4
  %125 = call i32 @AVERROR(i32 %124)
  store i32 %125, i32* %10, align 4
  br label %187

126:                                              ; preds = %110
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 3
  store i64 0, i64* %128, align 8
  store i32 0, i32* %21, align 4
  br label %129

129:                                              ; preds = %147, %126
  %130 = load i32, i32* %21, align 4
  %131 = icmp slt i32 %130, 128
  br i1 %131, label %132, label %150

132:                                              ; preds = %129
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %21, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %143, align 8
  br label %146

146:                                              ; preds = %141, %132
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %21, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %21, align 4
  br label %129

150:                                              ; preds = %129
  br label %151

151:                                              ; preds = %150, %9
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %159 = load i32*, i32** %14, align 8
  %160 = call i32 @qdm2_restore_block(%struct.TYPE_13__* %157, %struct.TYPE_14__* %158, i32* %159)
  store i32 %160, i32* %20, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %156, %151
  %163 = load i32, i32* %20, align 4
  store i32 %163, i32* %10, align 4
  br label %187

164:                                              ; preds = %156
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, -1
  store i64 %168, i64* %166, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  store i64 0, i64* %172, align 8
  br label %173

173:                                              ; preds = %170, %164
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load i32*, i32** %15, align 8
  store i32 %176, i32* %177, align 4
  %178 = load i32, i32* @RTP_NOTS_VALUE, align 4
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = icmp sgt i64 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 1, i32 0
  store i32 %186, i32* %10, align 4
  br label %187

187:                                              ; preds = %173, %162, %123, %103, %84, %64, %35
  %188 = load i32, i32* %10, align 4
  ret i32 %188
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @qdm2_parse_config(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @qdm2_parse_subpacket(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @qdm2_restore_block(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
