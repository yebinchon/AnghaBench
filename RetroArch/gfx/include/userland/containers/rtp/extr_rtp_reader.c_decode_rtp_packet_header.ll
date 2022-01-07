; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_reader.c_decode_rtp_packet_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_reader.c_decode_rtp_packet_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Has padding\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Has extension\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"CSRC count\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Has marker\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Payload type\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Sequence number\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Timestamp\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"SSRC\00", align 1
@TRACK_SSRC_SET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"RTP: Unexpected SSRC (0x%8.8X)\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Skip to padding length\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Padding length\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Remove padding\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"CSRC section\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Extension ID\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Extension length\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Extension data\00", align 1
@TRACK_HAS_MARKER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*)* @decode_rtp_packet_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_rtp_packet_header(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @BITS_READ_U32(i32* %20, i32* %21, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @BITS_READ_U32(i32* %23, i32* %24, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @BITS_READ_U32(i32* %26, i32* %27, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @BITS_READ_U32(i32* %29, i32* %30, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @BITS_READ_U32(i32* %32, i32* %33, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @BITS_READ_U32(i32* %35, i32* %36, i32 7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 %37, i32* %11, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @BITS_READ_U16(i32* %38, i32* %39, i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i32 %40, i32* %13, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @BITS_READ_U32(i32* %41, i32* %42, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @BITS_READ_U32(i32* %46, i32* %47, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i32 %48, i32* %12, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @BITS_VALID(i32* %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %2
  br label %170

54:                                               ; preds = %2
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 2
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57, %54
  %64 = load i32*, i32** %3, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @BITS_INVALIDATE(i32* %64, i32* %65)
  br label %170

67:                                               ; preds = %57
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TRACK_SSRC_SET, align 4
  %72 = call i64 @BIT_IS_SET(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %67
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @LOG_DEBUG(i32* %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %82)
  %84 = load i32*, i32** %3, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @BITS_INVALIDATE(i32* %84, i32* %85)
  br label %170

87:                                               ; preds = %74, %67
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @update_sequence_number(%struct.TYPE_4__* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = load i32*, i32** %3, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @BITS_INVALIDATE(i32* %93, i32* %94)
  br label %170

96:                                               ; preds = %87
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %96
  %100 = load i32*, i32** %3, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @BITS_BYTES_AVAILABLE(i32* %100, i32* %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32*, i32** %3, align 8
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @BITS_COPY_STREAM(i32* %103, i32* %14, i32* %104)
  %106 = load i32*, i32** %3, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sub nsw i32 %107, 1
  %109 = call i32 @BITS_SKIP_BYTES(i32* %106, i32* %14, i32 %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @BITS_READ_U8(i32* %110, i32* %14, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  store i32 %111, i32* %16, align 4
  %112 = load i32*, i32** %3, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @BITS_REDUCE_BYTES(i32* %112, i32* %113, i32 %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %116

116:                                              ; preds = %99, %96
  %117 = load i32*, i32** %3, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %9, align 4
  %120 = shl i32 %119, 5
  %121 = call i32 @BITS_SKIP(i32* %117, i32* %118, i32 %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %116
  %125 = load i32*, i32** %3, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @BITS_SKIP(i32* %125, i32* %126, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %128 = load i32*, i32** %3, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 @BITS_READ_U32(i32* %128, i32* %129, i32 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %131 = shl i32 %130, 5
  store i32 %131, i32* %17, align 4
  %132 = load i32*, i32** %3, align 8
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @BITS_SKIP(i32* %132, i32* %133, i32 %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  br label %136

136:                                              ; preds = %124, %116
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @TRACK_HAS_MARKER, align 4
  %144 = call i32 @SET_BIT(i32 %142, i32 %143)
  br label %151

145:                                              ; preds = %136
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @TRACK_HAS_MARKER, align 4
  %150 = call i32 @CLEAR_BIT(i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %145, %139
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %151
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %156, %151
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %162, %92, %80, %63, %53
  ret void
}

declare dso_local i32 @BITS_READ_U32(i32*, i32*, i32, i8*) #1

declare dso_local i32 @BITS_READ_U16(i32*, i32*, i32, i8*) #1

declare dso_local i32 @BITS_VALID(i32*, i32*) #1

declare dso_local i32 @BITS_INVALIDATE(i32*, i32*) #1

declare dso_local i64 @BIT_IS_SET(i32, i32) #1

declare dso_local i32 @LOG_DEBUG(i32*, i8*, i32) #1

declare dso_local i32 @update_sequence_number(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @BITS_BYTES_AVAILABLE(i32*, i32*) #1

declare dso_local i32 @BITS_COPY_STREAM(i32*, i32*, i32*) #1

declare dso_local i32 @BITS_SKIP_BYTES(i32*, i32*, i32, i8*) #1

declare dso_local i32 @BITS_READ_U8(i32*, i32*, i32, i8*) #1

declare dso_local i32 @BITS_REDUCE_BYTES(i32*, i32*, i32, i8*) #1

declare dso_local i32 @BITS_SKIP(i32*, i32*, i32, i8*) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

declare dso_local i32 @CLEAR_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
