; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_qsvdec.c_decode_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_qsvdec.c_decode_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32, i64* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error during decoding\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Error transferring the data to system memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*, i32*)* @decode_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_packet(i32* %0, i32* %1, %struct.TYPE_8__* %2, %struct.TYPE_8__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = call i32 @avcodec_send_packet(i32* %17, i32* %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %7, align 4
  br label %133

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %131, %26
  %28 = load i32, i32* %14, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %132

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %33 = call i32 @avcodec_receive_frame(i32* %31, %struct.TYPE_8__* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = call i32 @AVERROR(i32 %35)
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @AVERROR_EOF, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %30
  br label %132

43:                                               ; preds = %38
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %7, align 4
  br label %133

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = call i32 @av_hwframe_transfer_data(%struct.TYPE_8__* %52, %struct.TYPE_8__* %53, i32 0)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %122

60:                                               ; preds = %51
  store i32 0, i32* %15, align 4
  br label %61

61:                                               ; preds = %118, %60
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  %65 = load i64*, i64** %64, align 8
  %66 = call i32 @FF_ARRAY_ELEMS(i64* %65)
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br label %77

77:                                               ; preds = %68, %61
  %78 = phi i1 [ false, %61 ], [ %76, %68 ]
  br i1 %78, label %79, label %121

79:                                               ; preds = %77
  store i32 0, i32* %16, align 4
  br label %80

80:                                               ; preds = %114, %79
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = icmp sgt i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = ashr i32 %84, %87
  %89 = icmp slt i32 %81, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %80
  %91 = load i32*, i32** %13, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %16, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %99, %106
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %98, %108
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @avio_write(i32* %91, i64 %109, i32 %112)
  br label %114

114:                                              ; preds = %90
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %16, align 4
  br label %80

117:                                              ; preds = %80
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %61

121:                                              ; preds = %77
  br label %122

122:                                              ; preds = %121, %57
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %124 = call i32 @av_frame_unref(%struct.TYPE_8__* %123)
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %126 = call i32 @av_frame_unref(%struct.TYPE_8__* %125)
  %127 = load i32, i32* %14, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i32, i32* %14, align 4
  store i32 %130, i32* %7, align 4
  br label %133

131:                                              ; preds = %122
  br label %27

132:                                              ; preds = %42, %27
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %132, %129, %46, %22
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local i32 @avcodec_send_packet(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @avcodec_receive_frame(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_hwframe_transfer_data(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i64*) #1

declare dso_local i32 @avio_write(i32*, i64, i32) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
