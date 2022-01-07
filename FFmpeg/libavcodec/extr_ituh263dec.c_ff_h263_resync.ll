; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263dec.c_ff_h263_resync.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263dec.c_ff_h263_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@AV_CODEC_ID_MPEG4 = common dso_local global i64 0, align 8
@SLICE_START_CODE = common dso_local global i64 0, align 8
@CONFIG_MPEG4_DECODER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_h263_resync(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AV_CODEC_ID_MPEG4, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %13
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = call i32 @align_get_bits(i32* %20)
  br label %22

22:                                               ; preds = %35, %18
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = call i32 @get_bits_left(i32* %24)
  %26 = icmp sge i32 %25, 32
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = call i64 @show_bits_long(i32* %29, i32 32)
  %31 = load i64, i64* @SLICE_START_CODE, align 8
  %32 = icmp ne i64 %30, %31
  br label %33

33:                                               ; preds = %27, %22
  %34 = phi i1 [ false, %22 ], [ %32, %27 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = call i32 @get_bits(i32* %37, i32 8)
  br label %22

39:                                               ; preds = %33
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = call i32 @get_bits_left(i32* %41)
  %43 = icmp sge i32 %42, 32
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = call i64 @show_bits_long(i32* %46, i32 32)
  %48 = load i64, i64* @SLICE_START_CODE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = call i32 @get_bits_count(i32* %52)
  store i32 %53, i32* %2, align 4
  br label %163

54:                                               ; preds = %44, %39
  store i32 -1, i32* %2, align 4
  br label %163

55:                                               ; preds = %13, %1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AV_CODEC_ID_MPEG4, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = call i32 @skip_bits1(i32* %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = call i32 @align_get_bits(i32* %66)
  br label %68

68:                                               ; preds = %61, %55
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = call i64 @show_bits(i32* %70, i32 16)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %68
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = call i32 @get_bits_count(i32* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i64, i64* @CONFIG_MPEG4_DECODER, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AV_CODEC_ID_MPEG4, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ff_mpeg4_decode_video_packet_header(i32 %90)
  store i32 %91, i32* %6, align 4
  br label %95

92:                                               ; preds = %79, %73
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = call i32 @h263_decode_gob_header(%struct.TYPE_6__* %93)
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %92, %85
  %96 = load i32, i32* %6, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %163

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %100, %68
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = call i32 @align_get_bits(i32* %108)
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = call i32 @get_bits_left(i32* %111)
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %159, %101
  %114 = load i32, i32* %4, align 4
  %115 = icmp sgt i32 %114, 27
  br i1 %115, label %116, label %162

116:                                              ; preds = %113
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = call i64 @show_bits(i32* %118, i32 16)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %155

121:                                              ; preds = %116
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %7, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = call i32 @get_bits_count(i32* %126)
  store i32 %127, i32* %5, align 4
  %128 = load i64, i64* @CONFIG_MPEG4_DECODER, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %121
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @AV_CODEC_ID_MPEG4, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ff_mpeg4_decode_video_packet_header(i32 %141)
  store i32 %142, i32* %6, align 4
  br label %146

143:                                              ; preds = %130, %121
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %145 = call i32 @h263_decode_gob_header(%struct.TYPE_6__* %144)
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %143, %136
  %147 = load i32, i32* %6, align 4
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32, i32* %5, align 4
  store i32 %150, i32* %2, align 4
  br label %163

151:                                              ; preds = %146
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %151, %116
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = call i32 @skip_bits(i32* %157, i32 8)
  br label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %4, align 4
  %161 = sub nsw i32 %160, 8
  store i32 %161, i32* %4, align 4
  br label %113

162:                                              ; preds = %113
  store i32 -1, i32* %2, align 4
  br label %163

163:                                              ; preds = %162, %149, %98, %54, %50
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @align_get_bits(i32*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i64 @show_bits_long(i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @skip_bits1(i32*) #1

declare dso_local i64 @show_bits(i32*, i32) #1

declare dso_local i32 @ff_mpeg4_decode_video_packet_header(i32) #1

declare dso_local i32 @h263_decode_gob_header(%struct.TYPE_6__*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
