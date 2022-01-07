; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_extract_extradata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_extract_extradata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32*, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_PKT_DATA_NEW_EXTRADATA = common dso_local global i32 0, align 4
@FF_MAX_EXTRADATA_SIZE = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*)* @extract_extradata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_extradata(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %6, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = call i32 @extract_extradata_init(%struct.TYPE_10__* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %159

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %159

40:                                               ; preds = %33, %27
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @av_packet_ref(i32* %45, i32* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %159

52:                                               ; preds = %40
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @av_bsf_send_packet(i32 %56, i32* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @av_packet_unref(i32* %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %159

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %155, %99, %65
  %67 = load i32, i32* %8, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  %76 = xor i1 %75, true
  br label %77

77:                                               ; preds = %69, %66
  %78 = phi i1 [ false, %66 ], [ %76, %69 ]
  br i1 %78, label %79, label %158

79:                                               ; preds = %77
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @av_bsf_receive_packet(i32 %83, i32* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %79
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @EAGAIN, align 4
  %91 = call i32 @AVERROR(i32 %90)
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @AVERROR_EOF, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %159

99:                                               ; preds = %93, %88
  br label %66

100:                                              ; preds = %79
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* @AV_PKT_DATA_NEW_EXTRADATA, align 4
  %103 = call i32* @av_packet_get_side_data(i32* %101, i32 %102, i32* %9)
  store i32* %103, i32** %10, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %155

106:                                              ; preds = %100
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 @av_assert0(i32 %114)
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @FF_MAX_EXTRADATA_SIZE, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %106
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i64 @av_mallocz(i64 %123)
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  store i64 %124, i64* %128, align 8
  br label %129

129:                                              ; preds = %119, %106
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %129
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @av_packet_unref(i32* %137)
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = call i32 @AVERROR(i32 %139)
  store i32 %140, i32* %3, align 4
  br label %159

141:                                              ; preds = %129
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @memcpy(i64 %146, i32* %147, i32 %148)
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store i32 %150, i32* %154, align 8
  br label %155

155:                                              ; preds = %141, %100
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @av_packet_unref(i32* %156)
  br label %66

158:                                              ; preds = %77
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %136, %97, %61, %50, %39, %24
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @extract_extradata_init(%struct.TYPE_10__*) #1

declare dso_local i32 @av_packet_ref(i32*, i32*) #1

declare dso_local i32 @av_bsf_send_packet(i32, i32*) #1

declare dso_local i32 @av_packet_unref(i32*) #1

declare dso_local i32 @av_bsf_receive_packet(i32, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_packet_get_side_data(i32*, i32, i32*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i64 @av_mallocz(i64) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
