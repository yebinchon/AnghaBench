; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpega_dump_header_bsf.c_mjpega_dump_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpega_dump_header_bsf.c_mjpega_dump_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }

@SOI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mjpg\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"bitstream already formatted\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"could not find SOS marker in bitstream\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*)* @mjpega_dump_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mjpega_dump_header(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @ff_bsf_get_packet(i32* %13, %struct.TYPE_11__** %6)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %3, align 4
  br label %182

19:                                               ; preds = %2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 44
  %25 = call i32 @av_new_packet(%struct.TYPE_11__* %20, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %177

29:                                               ; preds = %19
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = call i32 @av_packet_copy_props(%struct.TYPE_11__* %30, %struct.TYPE_11__* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %177

36:                                               ; preds = %29
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %7, align 8
  %40 = call i32 @bytestream_put_byte(i32** %7, i32 255)
  %41 = load i32, i32* @SOI, align 4
  %42 = call i32 @bytestream_put_byte(i32** %7, i32 %41)
  %43 = call i32 @bytestream_put_byte(i32** %7, i32 255)
  %44 = call i32 @bytestream_put_byte(i32** %7, i32 132)
  %45 = call i32 @bytestream_put_be16(i32** %7, i32 42)
  %46 = call i32 @bytestream_put_be32(i32** %7, i32 0)
  %47 = call i32 @bytestream_put_buffer(i32** %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 44
  %52 = call i32 @bytestream_put_be32(i32** %7, i32 %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 44
  %57 = call i32 @bytestream_put_be32(i32** %7, i32 %56)
  %58 = call i32 @bytestream_put_be32(i32** %7, i32 0)
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %170, %36
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %173

66:                                               ; preds = %59
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 255
  br i1 %74, label %75, label %169

75:                                               ; preds = %66
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %168 [
    i32 130, label %84
    i32 131, label %87
    i32 129, label %90
    i32 128, label %93
    i32 132, label %138
  ]

84:                                               ; preds = %75
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 46
  store i32 %86, i32* %8, align 4
  br label %168

87:                                               ; preds = %75
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 46
  store i32 %89, i32* %9, align 4
  br label %168

90:                                               ; preds = %75
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 46
  store i32 %92, i32* %10, align 4
  br label %168

93:                                               ; preds = %75
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @bytestream_put_be32(i32** %7, i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @bytestream_put_be32(i32** %7, i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @bytestream_put_be32(i32** %7, i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 46
  %102 = call i32 @bytestream_put_be32(i32** %7, i32 %101)
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 46
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = ptrtoint i32* %111 to i32
  %113 = call i32 @AV_RB16(i32 %112)
  %114 = add nsw i32 %104, %113
  %115 = call i32 @bytestream_put_be32(i32** %7, i32 %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = bitcast i32* %119 to i8*
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, 2
  %125 = call i32 @bytestream_put_buffer(i32** %7, i8* %120, i32 %124)
  %126 = load i32*, i32** %7, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = ptrtoint i32* %126 to i64
  %131 = ptrtoint i32* %129 to i64
  %132 = sub i64 %130, %131
  %133 = sdiv exact i64 %132, 4
  %134 = trunc i64 %133 to i32
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = call i32 @av_packet_free(%struct.TYPE_11__** %6)
  store i32 0, i32* %3, align 4
  br label %182

138:                                              ; preds = %75
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %167

145:                                              ; preds = %138
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = getelementptr inbounds i32, i32* %151, i64 8
  %153 = bitcast i32* %152 to i8*
  %154 = call i32 @AV_RL32(i8* %153)
  %155 = call i32 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %145
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* @AV_LOG_ERROR, align 4
  %160 = call i32 @av_log(i32* %158, i32 %159, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %162 = call i32 @av_packet_unref(%struct.TYPE_11__* %161)
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %165 = call i32 @av_packet_move_ref(%struct.TYPE_11__* %163, %struct.TYPE_11__* %164)
  %166 = call i32 @av_packet_free(%struct.TYPE_11__** %6)
  store i32 0, i32* %3, align 4
  br label %182

167:                                              ; preds = %145, %138
  br label %168

168:                                              ; preds = %167, %75, %90, %87, %84
  br label %169

169:                                              ; preds = %168, %66
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %12, align 4
  br label %59

173:                                              ; preds = %59
  %174 = load i32*, i32** %4, align 8
  %175 = load i32, i32* @AV_LOG_ERROR, align 4
  %176 = call i32 @av_log(i32* %174, i32 %175, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %177

177:                                              ; preds = %173, %35, %28
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %179 = call i32 @av_packet_unref(%struct.TYPE_11__* %178)
  %180 = call i32 @av_packet_free(%struct.TYPE_11__** %6)
  %181 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %177, %157, %93, %17
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @ff_bsf_get_packet(i32*, %struct.TYPE_11__**) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @av_packet_copy_props(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @bytestream_put_byte(i32**, i32) #1

declare dso_local i32 @bytestream_put_be16(i32**, i32) #1

declare dso_local i32 @bytestream_put_be32(i32**, i32) #1

declare dso_local i32 @bytestream_put_buffer(i32**, i8*, i32) #1

declare dso_local i32 @AV_RB16(i32) #1

declare dso_local i32 @av_packet_free(%struct.TYPE_11__**) #1

declare dso_local i32 @AV_RL32(i8*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_11__*) #1

declare dso_local i32 @av_packet_move_ref(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
