; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_hevc_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_hevc_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_26__*)* }
%struct.TYPE_24__ = type { %struct.TYPE_20__*, i64, i32, %struct.TYPE_23__, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i64* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }

@AV_PKT_DATA_NEW_EXTRADATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"hardware accelerator failed to decode picture\0A\00", align 1
@AV_EF_CRCCHECK = common dso_local global i32 0, align 4
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Decoded frame with POC %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i8*, i32*, %struct.TYPE_25__*)* @hevc_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hevc_decode_frame(%struct.TYPE_26__* %0, i8* %1, i32* %2, %struct.TYPE_25__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %9, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  store %struct.TYPE_24__* %16, %struct.TYPE_24__** %13, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @ff_hevc_output_frame(%struct.TYPE_24__* %22, i8* %23, i32 1)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %179

29:                                               ; preds = %21
  %30 = load i32, i32* %10, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %5, align 4
  br label %179

32:                                               ; preds = %4
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %34 = load i32, i32* @AV_PKT_DATA_NEW_EXTRADATA, align 4
  %35 = call i32* @av_packet_get_side_data(%struct.TYPE_25__* %33, i32 %34, i32* %11)
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @hevc_decode_extradata(%struct.TYPE_24__* %42, i32* %43, i32 %44, i32 0)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %179

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %38, %32
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %53, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @decode_nal_units(%struct.TYPE_24__* %54, i32 %57, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %179

66:                                               ; preds = %51
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = icmp ne %struct.TYPE_21__* %69, null
  br i1 %70, label %71, label %96

71:                                               ; preds = %66
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = icmp ne %struct.TYPE_19__* %74, null
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_26__*)*, i32 (%struct.TYPE_26__*)** %80, align 8
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %83 = call i32 %81(%struct.TYPE_26__* %82)
  store i32 %83, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %76
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %87 = load i32, i32* @AV_LOG_ERROR, align 4
  %88 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %86, i32 %87, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  %93 = call i32 @ff_hevc_unref_frame(%struct.TYPE_24__* %89, %struct.TYPE_19__* %92, i32 -1)
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %5, align 4
  br label %179

95:                                               ; preds = %76, %71
  br label %141

96:                                               ; preds = %66
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @AV_EF_CRCCHECK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %140

103:                                              ; preds = %96
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %140

108:                                              ; preds = %103
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %140

115:                                              ; preds = %108
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @verify_md5(%struct.TYPE_24__* %116, i32 %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %115
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @AV_EF_EXPLODE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %125
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 4
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %135, align 8
  %137 = call i32 @ff_hevc_unref_frame(%struct.TYPE_24__* %133, %struct.TYPE_19__* %136, i32 -1)
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %5, align 4
  br label %179

139:                                              ; preds = %125, %115
  br label %140

140:                                              ; preds = %139, %108, %103, %96
  br label %141

141:                                              ; preds = %140, %95
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %141
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %152 = load i32, i32* @AV_LOG_DEBUG, align 4
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %151, i32 %152, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 1
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %150, %141
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %159
  %169 = load i8*, i8** %7, align 8
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %171, align 8
  %173 = call i32 @av_frame_move_ref(i8* %169, %struct.TYPE_20__* %172)
  %174 = load i32*, i32** %8, align 8
  store i32 1, i32* %174, align 4
  br label %175

175:                                              ; preds = %168, %159
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %175, %132, %85, %64, %48, %29, %27
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @ff_hevc_output_frame(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i32* @av_packet_get_side_data(%struct.TYPE_25__*, i32, i32*) #1

declare dso_local i32 @hevc_decode_extradata(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @decode_nal_units(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_26__*, i32, i8*, ...) #1

declare dso_local i32 @ff_hevc_unref_frame(%struct.TYPE_24__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @verify_md5(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @av_frame_move_ref(i8*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
