; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/flash/extr_flv_reader.c_flv_read_frame_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/flash/extr_flv_reader.c_flv_read_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_14__** }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64 }

@VC_CONTAINER_ES_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_EOS = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i32 0, align 4
@FLV_TAG_TYPE_AUDIO = common dso_local global i32 0, align 4
@FLV_TAG_TYPE_VIDEO = common dso_local global i32 0, align 4
@FLV_TAG_TYPE_METADATA = common dso_local global i32 0, align 4
@FLV_FLAG_DISCARD = common dso_local global i32 0, align 4
@VC_CONTAINER_ES_TYPE_AUDIO = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@FLV_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32*, i32*, i32*, i64*, i32*, i32)* @flv_read_frame_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flv_read_frame_header(%struct.TYPE_18__* %0, i32* %1, i32* %2, i32* %3, i64* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %26 = call i64 @STREAM_POSITION(%struct.TYPE_18__* %25)
  store i64 %26, i64* %16, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %27 = load i64, i64* @VC_CONTAINER_ES_TYPE_UNKNOWN, align 8
  store i64 %27, i64* %22, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %23, align 4
  store i64 0, i64* %24, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i64*, i64** %13, align 8
  %34 = call i64 @flv_read_tag_header(%struct.TYPE_18__* %31, i32* %32, i32* %17, i32* %18, i64* %33)
  store i64 %34, i64* %21, align 8
  %35 = load i64, i64* %21, align 8
  %36 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %7
  %39 = load i64, i64* %21, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %8, align 4
  br label %226

41:                                               ; preds = %7
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %43 = call i64 @STREAM_STATUS(%struct.TYPE_18__* %42)
  %44 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i64, i64* %21, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %8, align 4
  br label %226

49:                                               ; preds = %41
  %50 = load i64, i64* %16, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %52 = call i64 @STREAM_POSITION(%struct.TYPE_18__* %51)
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @VC_CONTAINER_ERROR_EOS, align 4
  store i32 %55, i32* %8, align 4
  br label %226

56:                                               ; preds = %49
  %57 = load i32, i32* %17, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %60, i32* %8, align 4
  br label %226

61:                                               ; preds = %56
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* @FLV_TAG_TYPE_AUDIO, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* @FLV_TAG_TYPE_VIDEO, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* @FLV_TAG_TYPE_METADATA, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %77, i32* %8, align 4
  br label %226

78:                                               ; preds = %72, %68, %64, %61
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* @FLV_TAG_TYPE_AUDIO, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* @FLV_TAG_TYPE_VIDEO, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %89, label %86

86:                                               ; preds = %82, %78
  %87 = load i32, i32* %18, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86, %82
  %90 = load i32, i32* @FLV_FLAG_DISCARD, align 4
  %91 = load i32, i32* %19, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %19, align 4
  br label %168

93:                                               ; preds = %86
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* @FLV_TAG_TYPE_AUDIO, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %99 = call i32 @flv_read_audiodata_header(%struct.TYPE_18__* %98, i64* %24, i32 0, i32 0, i32 0)
  %100 = load i64, i64* @VC_CONTAINER_ES_TYPE_AUDIO, align 8
  store i64 %100, i64* %22, align 8
  br label %110

101:                                              ; preds = %93
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* @FLV_TAG_TYPE_VIDEO, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %107 = call i32 @flv_read_videodata_header(%struct.TYPE_18__* %106, i64* %24, i32* %20)
  %108 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  store i64 %108, i64* %22, align 8
  br label %109

109:                                              ; preds = %105, %101
  br label %110

110:                                              ; preds = %109, %97
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %18, align 4
  store i32 0, i32* %23, align 4
  br label %113

113:                                              ; preds = %135, %110
  %114 = load i32, i32* %23, align 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ult i32 %114, %117
  br i1 %118, label %119, label %138

119:                                              ; preds = %113
  %120 = load i64, i64* %22, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %122, align 8
  %124 = load i32, i32* %23, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %123, i64 %125
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %120, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %119
  br label %138

134:                                              ; preds = %119
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %23, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %23, align 4
  br label %113

138:                                              ; preds = %133, %113
  %139 = load i32, i32* %23, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %139, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load i32, i32* @FLV_FLAG_DISCARD, align 4
  %146 = load i32, i32* %19, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %19, align 4
  br label %148

148:                                              ; preds = %144, %138
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %148
  %152 = load i64, i64* %24, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %154, align 8
  %156 = load i32, i32* %23, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %155, i64 %157
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %152, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %151
  %166 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %166, i32* %8, align 4
  br label %226

167:                                              ; preds = %151, %148
  br label %168

168:                                              ; preds = %167, %89
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %215

178:                                              ; preds = %168
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* @FLV_FLAG_DISCARD, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %215, label %183

183:                                              ; preds = %178
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp slt i64 %190, 0
  br i1 %191, label %201, label %192

192:                                              ; preds = %183
  %193 = load i64, i64* %22, align 8
  %194 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %215

196:                                              ; preds = %192
  %197 = load i32, i32* %20, align 4
  %198 = load i32, i32* @FLV_FLAG_KEYFRAME, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %196, %183
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64*, i64** %13, align 8
  %211 = load i64, i64* %210, align 8
  %212 = mul nsw i64 %211, 1000
  %213 = load i64, i64* %16, align 8
  %214 = call i32 @vc_container_index_add(i64 %209, i64 %212, i64 %213)
  br label %215

215:                                              ; preds = %201, %196, %192, %178, %168
  %216 = load i32, i32* %19, align 4
  %217 = load i32, i32* %20, align 4
  %218 = or i32 %216, %217
  %219 = load i32*, i32** %14, align 8
  store i32 %218, i32* %219, align 4
  %220 = load i32, i32* %18, align 4
  %221 = load i32*, i32** %12, align 8
  store i32 %220, i32* %221, align 4
  %222 = load i32, i32* %23, align 4
  %223 = load i32*, i32** %11, align 8
  store i32 %222, i32* %223, align 4
  %224 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %8, align 4
  br label %226

226:                                              ; preds = %215, %165, %76, %59, %54, %46, %38
  %227 = load i32, i32* %8, align 4
  ret i32 %227
}

declare dso_local i64 @STREAM_POSITION(%struct.TYPE_18__*) #1

declare dso_local i64 @flv_read_tag_header(%struct.TYPE_18__*, i32*, i32*, i32*, i64*) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_18__*) #1

declare dso_local i32 @flv_read_audiodata_header(%struct.TYPE_18__*, i64*, i32, i32, i32) #1

declare dso_local i32 @flv_read_videodata_header(%struct.TYPE_18__*, i64*, i32*) #1

declare dso_local i32 @vc_container_index_add(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
