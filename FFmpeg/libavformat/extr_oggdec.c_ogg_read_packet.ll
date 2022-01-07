; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.ogg*, i32*, i64 }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32, i32, i64, i64, i32, i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i8*, i32, i8*, i8*, i32* }

@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AV_PKT_DATA_SKIP_SAMPLES = common dso_local global i32 0, align 4
@AV_PKT_DATA_METADATA_UPDATE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @ogg_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogg_read_packet(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.ogg*, align 8
  %7 = alloca %struct.ogg_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = call i32 @ogg_reset(%struct.TYPE_13__* %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %21, %2
  br label %27

27:                                               ; preds = %80, %26
  br label %28

28:                                               ; preds = %49, %27
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = call i32 @ogg_packet(%struct.TYPE_13__* %29, i32* %8, i32* %10, i32* %11, i8** %12)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %181

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %39, %36
  %50 = phi i1 [ true, %36 ], [ %48, %39 ]
  br i1 %50, label %28, label %51

51:                                               ; preds = %49
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load %struct.ogg*, %struct.ogg** %53, align 8
  store %struct.ogg* %54, %struct.ogg** %6, align 8
  %55 = load %struct.ogg*, %struct.ogg** %6, align 8
  %56 = getelementptr inbounds %struct.ogg, %struct.ogg* %55, i32 0, i32 0
  %57 = load %struct.ogg_stream*, %struct.ogg_stream** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %57, i64 %59
  store %struct.ogg_stream* %60, %struct.ogg_stream** %7, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i8* @ogg_calc_pts(%struct.TYPE_13__* %61, i32 %62, i8** %14)
  store i8* %63, i8** %13, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @ogg_validate_keyframe(%struct.TYPE_13__* %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %70 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %51
  %74 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %75 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %27

81:                                               ; preds = %73, %51
  %82 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %83 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %82, i32 0, i32 6
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @av_new_packet(%struct.TYPE_12__* %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %181

91:                                               ; preds = %81
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 6
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %99 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @memcpy(i32* %97, i64 %103, i32 %104)
  %106 = load i8*, i8** %13, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 5
  store i8* %106, i8** %108, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 4
  store i8* %109, i8** %111, align 8
  %112 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %113 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %118 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %126 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %91
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = load i32, i32* @AV_PKT_DATA_SKIP_SAMPLES, align 4
  %132 = call i32* @av_packet_new_side_data(%struct.TYPE_12__* %130, i32 %131, i32 10)
  store i32* %132, i32** %15, align 8
  %133 = load i32*, i32** %15, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  br label %176

136:                                              ; preds = %129
  %137 = load i32*, i32** %15, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 4
  %139 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %140 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @AV_WL32(i32* %138, i64 %141)
  %143 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %144 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %143, i32 0, i32 3
  store i64 0, i64* %144, align 8
  br label %145

145:                                              ; preds = %136, %91
  %146 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %147 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %174

150:                                              ; preds = %145
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %152 = load i32, i32* @AV_PKT_DATA_METADATA_UPDATE, align 4
  %153 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %154 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32* @av_packet_new_side_data(%struct.TYPE_12__* %151, i32 %152, i32 %155)
  store i32* %156, i32** %16, align 8
  %157 = load i32*, i32** %16, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %150
  br label %176

160:                                              ; preds = %150
  %161 = load i32*, i32** %16, align 8
  %162 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %163 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %166 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @memcpy(i32* %161, i64 %164, i32 %167)
  %169 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %170 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %169, i32 0, i32 2
  %171 = call i32 @av_freep(i64* %170)
  %172 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %173 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %172, i32 0, i32 1
  store i32 0, i32* %173, align 4
  br label %174

174:                                              ; preds = %160, %145
  %175 = load i32, i32* %11, align 4
  store i32 %175, i32* %3, align 4
  br label %181

176:                                              ; preds = %159, %135
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %178 = call i32 @av_packet_unref(%struct.TYPE_12__* %177)
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = call i32 @AVERROR(i32 %179)
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %176, %174, %89, %33
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @ogg_reset(%struct.TYPE_13__*) #1

declare dso_local i32 @ogg_packet(%struct.TYPE_13__*, i32*, i32*, i32*, i8**) #1

declare dso_local i8* @ogg_calc_pts(%struct.TYPE_13__*, i32, i8**) #1

declare dso_local i32 @ogg_validate_keyframe(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32* @av_packet_new_side_data(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @AV_WL32(i32*, i64) #1

declare dso_local i32 @av_freep(i64*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_12__*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
