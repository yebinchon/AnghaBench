; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nuv.c_nuv_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nuv.c_nuv_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i8*, i8*, i32, i32 }

@HDRSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Video packet in file without video stream!\0A\00", align 1
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Audio packet in file without audio stream!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @nuv_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nuv_packet(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %6, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load i32, i32* @HDRSIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  br label %26

26:                                               ; preds = %199, %2
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @avio_feof(i32* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %200

31:                                               ; preds = %26
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @HDRSIZE, align 4
  br label %39

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  store i32 %40, i32* %13, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = call i8* @avio_tell(i32* %41)
  store i8* %42, i8** %14, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* @HDRSIZE, align 4
  %45 = call i32 @avio_read(i32* %43, i32* %25, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @HDRSIZE, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  br label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EIO, align 4
  %56 = call i32 @AVERROR(i32 %55)
  br label %57

57:                                               ; preds = %54, %52
  %58 = phi i32 [ %53, %52 ], [ %56, %54 ]
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %203

59:                                               ; preds = %39
  %60 = getelementptr inbounds i32, i32* %25, i64 0
  %61 = load i32, i32* %60, align 16
  store i32 %61, i32* %10, align 4
  %62 = getelementptr inbounds i32, i32* %25, i64 8
  %63 = call i8* @AV_RL32(i32* %62)
  %64 = call i32 @PKTSIZE(i8* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %10, align 4
  switch i32 %65, label %195 [
    i32 130, label %66
    i32 128, label %76
    i32 131, label %155
    i32 129, label %194
  ]

66:                                               ; preds = %59
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @avio_skip(i32* %72, i32 %73)
  br label %199

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %59, %75
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = call i32 @av_log(%struct.TYPE_13__* %82, i32 %83, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @avio_skip(i32* %85, i32 %86)
  br label %199

88:                                               ; preds = %76
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %90, %91
  %93 = call i32 @av_new_packet(%struct.TYPE_12__* %89, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %203

98:                                               ; preds = %88
  %99 = load i8*, i8** %14, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = getelementptr inbounds i32, i32* %25, i64 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  br label %108

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i32 [ %106, %105 ], [ 0, %107 ]
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = getelementptr inbounds i32, i32* %25, i64 4
  %115 = call i8* @AV_RL32(i32* %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @memcpy(i32 %125, i32* %25, i32 %126)
  %128 = load i32*, i32** %7, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i32*
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @avio_read(i32* %128, i32* %135, i32 %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %108
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %142 = call i32 @av_packet_unref(%struct.TYPE_12__* %141)
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %203

144:                                              ; preds = %108
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %150, %151
  %153 = call i32 @av_shrink_packet(%struct.TYPE_12__* %149, i32 %152)
  br label %154

154:                                              ; preds = %148, %144
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %203

155:                                              ; preds = %59
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %162 = load i32, i32* @AV_LOG_ERROR, align 4
  %163 = call i32 @av_log(%struct.TYPE_13__* %161, i32 %162, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %164 = load i32*, i32** %7, align 8
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @avio_skip(i32* %164, i32 %165)
  br label %199

167:                                              ; preds = %155
  %168 = load i32*, i32** %7, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @av_get_packet(i32* %168, %struct.TYPE_12__* %169, i32 %170)
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  %177 = load i8*, i8** %14, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 2
  store i8* %177, i8** %179, align 8
  %180 = getelementptr inbounds i32, i32* %25, i64 4
  %181 = call i8* @AV_RL32(i32* %180)
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* %11, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %167
  %192 = load i32, i32* %11, align 4
  store i32 %192, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %203

193:                                              ; preds = %167
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %203

194:                                              ; preds = %59
  br label %199

195:                                              ; preds = %59
  %196 = load i32*, i32** %7, align 8
  %197 = load i32, i32* %12, align 4
  %198 = call i32 @avio_skip(i32* %196, i32 %197)
  br label %199

199:                                              ; preds = %195, %194, %160, %81, %71
  br label %26

200:                                              ; preds = %26
  %201 = load i32, i32* @EIO, align 4
  %202 = call i32 @AVERROR(i32 %201)
  store i32 %202, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %203

203:                                              ; preds = %200, %193, %191, %154, %140, %96, %57
  %204 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @avio_feof(i32*) #2

declare dso_local i8* @avio_tell(i32*) #2

declare dso_local i32 @avio_read(i32*, i32*, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @PKTSIZE(i8*) #2

declare dso_local i8* @AV_RL32(i32*) #2

declare dso_local i32 @avio_skip(i32*, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #2

declare dso_local i32 @av_new_packet(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_12__*) #2

declare dso_local i32 @av_shrink_packet(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_12__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
