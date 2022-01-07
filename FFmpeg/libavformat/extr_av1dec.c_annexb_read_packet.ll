; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_av1dec.c_annexb_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_av1dec.c_annexb_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to send packet to av1_frame_merge filter\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"av1_frame_merge filter failed to send output packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @annexb_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @annexb_read_packet(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  br label %13

13:                                               ; preds = %181, %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @avio_feof(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %19
  %30 = load i32, i32* @EIO, align 4
  %31 = call i32 @AVERROR(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %184

32:                                               ; preds = %24
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @av_bsf_send_packet(i32 %35, i32* null)
  br label %155

37:                                               ; preds = %13
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @leb(i32 %45, i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %3, align 4
  br label %184

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %37
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %89, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = call i32 @leb(i32 %62, i32* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %59
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp sgt i64 %75, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %68, %59
  %82 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %82, i32* %3, align 4
  br label %184

83:                                               ; preds = %68
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %54
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @leb(i32 %92, i32* %7)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp sgt i64 %101, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %96, %89
  %108 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %108, i32* %3, align 4
  br label %184

109:                                              ; preds = %96
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @av_get_packet(i32 %112, i32* %113, i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %3, align 4
  br label %184

120:                                              ; preds = %109
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* @EIO, align 4
  %126 = call i32 @AVERROR(i32 %125)
  store i32 %126, i32* %3, align 4
  br label %184

127:                                              ; preds = %120
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %128, %129
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %135, %136
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @av_bsf_send_packet(i32 %144, i32* %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %127
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %151 = load i32, i32* @AV_LOG_ERROR, align 4
  %152 = call i32 @av_log(%struct.TYPE_6__* %150, i32 %151, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %3, align 4
  br label %184

154:                                              ; preds = %127
  br label %155

155:                                              ; preds = %154, %32
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %5, align 8
  %160 = call i32 @av_bsf_receive_packet(i32 %158, i32* %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %155
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* @EAGAIN, align 4
  %166 = call i32 @AVERROR(i32 %165)
  %167 = icmp ne i32 %164, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @AVERROR_EOF, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %174 = load i32, i32* @AV_LOG_ERROR, align 4
  %175 = call i32 @av_log(%struct.TYPE_6__* %173, i32 %174, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %176

176:                                              ; preds = %172, %168, %163, %155
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @EAGAIN, align 4
  %179 = call i32 @AVERROR(i32 %178)
  %180 = icmp eq i32 %177, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %13

182:                                              ; preds = %176
  %183 = load i32, i32* %8, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %182, %149, %124, %118, %107, %81, %51, %29
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i64 @avio_feof(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_bsf_send_packet(i32, i32*) #1

declare dso_local i32 @leb(i32, i32*) #1

declare dso_local i32 @av_get_packet(i32, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @av_bsf_receive_packet(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
