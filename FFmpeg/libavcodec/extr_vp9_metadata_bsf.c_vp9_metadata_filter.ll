; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9_metadata_bsf.c_vp9_metadata_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9_metadata_bsf.c_vp9_metadata_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, i64, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i64, i64, i32, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to read packet.\0A\00", align 1
@VP9_KEY_FRAME = common dso_local global i64 0, align 8
@VP9_CS_RGB = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Warning: RGB incompatible with profiles 0 and 2.\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Warning: Color space RGB implicitly sets color range to PC range.\0A\00", align 1
@VP9_CS_BT_601 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"Warning: Intra-only frames in profile 0 are automatically BT.601.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to write packet.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32*)* @vp9_metadata_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp9_metadata_filter(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %6, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 4
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %7, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @ff_bsf_get_packet_ref(%struct.TYPE_18__* %18, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %220

25:                                               ; preds = %2
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ff_cbs_read_packet(i32 %28, %struct.TYPE_17__* %29, i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = call i32 @av_log(%struct.TYPE_18__* %35, i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %207

38:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %190, %38
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %193

45:                                               ; preds = %39
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %10, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %11, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 %58, 1
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %59, %62
  store i32 %63, i32* %12, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @VP9_KEY_FRAME, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %45
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %155

74:                                               ; preds = %69
  %75 = load i32, i32* %12, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %155

77:                                               ; preds = %74, %45
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %80, 0
  br i1 %81, label %82, label %114

82:                                               ; preds = %77
  %83 = load i32, i32* %12, align 4
  %84 = and i32 %83, 1
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %107, label %86

86:                                               ; preds = %82
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @VP9_CS_RGB, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %86
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, 2
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %92
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = load i32, i32* @AV_LOG_WARNING, align 4
  %101 = call i32 @av_log(%struct.TYPE_18__* %99, i32 %100, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, 2
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %98, %92
  br label %113

107:                                              ; preds = %86, %82
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %107, %106
  br label %114

114:                                              ; preds = %113, %77
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %119, %114
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @VP9_CS_RGB, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %154

132:                                              ; preds = %126
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, 1
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %151, label %138

138:                                              ; preds = %132
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %138
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %145 = load i32, i32* @AV_LOG_WARNING, align 4
  %146 = call i32 @av_log(%struct.TYPE_18__* %144, i32 %145, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, 1
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %143, %138, %132
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 4
  store i32 1, i32* %153, align 8
  br label %154

154:                                              ; preds = %151, %126
  br label %189

155:                                              ; preds = %74, %69
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %188, label %161

161:                                              ; preds = %155
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %188

166:                                              ; preds = %161
  %167 = load i32, i32* %12, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %188, label %169

169:                                              ; preds = %166
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp sge i64 %172, 0
  br i1 %173, label %174, label %188

174:                                              ; preds = %169
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @VP9_CS_BT_601, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %188

180:                                              ; preds = %174
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %182 = load i32, i32* @AV_LOG_WARNING, align 4
  %183 = call i32 @av_log(%struct.TYPE_18__* %181, i32 %182, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, 4
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %180, %174, %169, %166, %161, %155
  br label %189

189:                                              ; preds = %188, %154
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %9, align 4
  br label %39

193:                                              ; preds = %39
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load i32*, i32** %5, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %199 = call i32 @ff_cbs_write_packet(i32 %196, i32* %197, %struct.TYPE_17__* %198)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %193
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %204 = load i32, i32* @AV_LOG_ERROR, align 4
  %205 = call i32 @av_log(%struct.TYPE_18__* %203, i32 %204, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %207

206:                                              ; preds = %193
  store i32 0, i32* %8, align 4
  br label %207

207:                                              ; preds = %206, %202, %34
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %212 = call i32 @ff_cbs_fragment_reset(i32 %210, %struct.TYPE_17__* %211)
  %213 = load i32, i32* %8, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %207
  %216 = load i32*, i32** %5, align 8
  %217 = call i32 @av_packet_unref(i32* %216)
  br label %218

218:                                              ; preds = %215, %207
  %219 = load i32, i32* %8, align 4
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %218, %23
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @ff_bsf_get_packet_ref(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @ff_cbs_read_packet(i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @ff_cbs_write_packet(i32, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @ff_cbs_fragment_reset(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @av_packet_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
