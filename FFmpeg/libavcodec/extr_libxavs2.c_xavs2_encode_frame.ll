; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libxavs2.c_xavs2_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libxavs2.c_xavs2_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_24__, i32, %struct.TYPE_26__*, i32 }
%struct.TYPE_24__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_26__ = type { i64 (i32, %struct.TYPE_27__*)*, i32 (i32, %struct.TYPE_27__*, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)*, i32 (i32, i8*)* }
%struct.TYPE_27__ = type { i32, i32, i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_29__ = type { i64, i32, i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to get frame buffer\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"SampleShift\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupported pixel format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XAVS2_TYPE_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"encode failed\0A\00", align 1
@XAVS2_STATE_FLUSH_END = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"packet alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_29__*, %struct.TYPE_30__*, i32*)* @xavs2_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xavs2_encode_frame(%struct.TYPE_31__* %0, %struct.TYPE_29__* %1, %struct.TYPE_30__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_27__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %6, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %7, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  store %struct.TYPE_28__* %16, %struct.TYPE_28__** %10, align 8
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %21 = load i64 (i32, %struct.TYPE_27__*)*, i64 (i32, %struct.TYPE_27__*)** %20, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 %21(i32 %24, %struct.TYPE_27__* %11)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = call i32 @av_log(%struct.TYPE_31__* %28, i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %31, i32* %5, align 4
  br label %206

32:                                               ; preds = %4
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %34 = icmp ne %struct.TYPE_30__* %33, null
  br i1 %34, label %35, label %110

35:                                               ; preds = %32
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %77 [
    i32 129, label %39
    i32 128, label %65
  ]

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %49 = call i32 @xavs2_copy_frame(%struct.TYPE_27__* %11, %struct.TYPE_30__* %48)
  br label %64

50:                                               ; preds = %39
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 3
  %55 = load i32 (i32, i8*)*, i32 (i32, i8*)** %54, align 8
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %55(i32 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @atoi(i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @xavs2_copy_frame_with_shift(%struct.TYPE_27__* %11, %struct.TYPE_30__* %61, i32 %62)
  br label %64

64:                                               ; preds = %50, %47
  br label %83

65:                                               ; preds = %35
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %75 = call i32 @xavs2_copy_frame(%struct.TYPE_27__* %11, %struct.TYPE_30__* %74)
  br label %83

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %35, %76
  %78 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %79 = load i32, i32* @AV_LOG_ERROR, align 4
  %80 = call i32 @av_log(%struct.TYPE_31__* %78, i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = call i32 @AVERROR(i32 %81)
  store i32 %82, i32* %5, align 4
  br label %206

83:                                               ; preds = %73, %64
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @XAVS2_TYPE_AUTO, align 4
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  store i32 %89, i32* %90, align 8
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 1
  %95 = load i32 (i32, %struct.TYPE_27__*, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_27__*, %struct.TYPE_24__*)** %94, align 8
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 0
  %101 = call i32 %95(i32 %98, %struct.TYPE_27__* %11, %struct.TYPE_24__* %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %83
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %106 = load i32, i32* @AV_LOG_ERROR, align 4
  %107 = call i32 @av_log(%struct.TYPE_31__* %105, i32 %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %108, i32* %5, align 4
  br label %206

109:                                              ; preds = %83
  br label %122

110:                                              ; preds = %32
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 1
  %115 = load i32 (i32, %struct.TYPE_27__*, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_27__*, %struct.TYPE_24__*)** %114, align 8
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 0
  %121 = call i32 %115(i32 %118, %struct.TYPE_27__* null, %struct.TYPE_24__* %120)
  br label %122

122:                                              ; preds = %110, %109
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %203

128:                                              ; preds = %122
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @XAVS2_STATE_FLUSH_END, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %203

135:                                              ; preds = %128
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @av_new_packet(%struct.TYPE_29__* %136, i64 %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %135
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %145 = load i32, i32* @AV_LOG_ERROR, align 4
  %146 = call i32 @av_log(%struct.TYPE_31__* %144, i32 %145, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 2
  %151 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %150, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 0
  %157 = call i32 %151(i32 %154, %struct.TYPE_24__* %156)
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = call i32 @AVERROR(i32 %158)
  store i32 %159, i32* %5, align 4
  br label %206

160:                                              ; preds = %135
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 8
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 4
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @memcpy(i32 %175, i32 %179, i64 %183)
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %189, i32 0, i32 0
  store i64 %188, i64* %190, align 8
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 2
  %195 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %194, align 8
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %199, i32 0, i32 0
  %201 = call i32 %195(i32 %198, %struct.TYPE_24__* %200)
  %202 = load i32*, i32** %9, align 8
  store i32 1, i32* %202, align 4
  br label %205

203:                                              ; preds = %128, %122
  %204 = load i32*, i32** %9, align 8
  store i32 0, i32* %204, align 4
  br label %205

205:                                              ; preds = %203, %160
  store i32 0, i32* %5, align 4
  br label %206

206:                                              ; preds = %205, %143, %104, %77, %27
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i32 @av_log(%struct.TYPE_31__*, i32, i8*) #1

declare dso_local i32 @xavs2_copy_frame(%struct.TYPE_27__*, %struct.TYPE_30__*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @xavs2_copy_frame_with_shift(%struct.TYPE_27__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_29__*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
