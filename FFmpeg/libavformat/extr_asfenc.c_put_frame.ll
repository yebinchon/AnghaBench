; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfenc.c_put_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfenc.c_put_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i64, i8*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@MULTI_PAYLOAD_HEADERS = common dso_local global i32 0, align 4
@SINGLE_PAYLOAD_HEADERS = common dso_local global i32 0, align 4
@PAYLOAD_HEADER_SIZE_MULTIPLE_PAYLOADS = common dso_local global i32 0, align 4
@PACKET_HEADER_MIN_SIZE = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i8* null, align 8
@UINT16_MAX = common dso_local global i8* null, align 8
@PREROLL_TIME = common dso_local global i64 0, align 8
@PAYLOAD_HEADER_SIZE_SINGLE_PAYLOAD = common dso_local global i32 0, align 4
@ASF_PAYLOADS_PER_PACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_13__*, i8*, i32*, i32, i32)* @put_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_frame(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, %struct.TYPE_13__* %2, i8* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %15, align 8
  store i32 0, i32* %16, align 4
  br label %23

23:                                               ; preds = %219, %113, %90, %7
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %220

27:                                               ; preds = %23
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %16, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %17, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %70

35:                                               ; preds = %27
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MULTI_PAYLOAD_HEADERS, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %19, align 4
  %43 = icmp slt i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %35
  %57 = load i32, i32* %19, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %18, align 4
  br label %65

59:                                               ; preds = %35
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SINGLE_PAYLOAD_HEADERS, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %18, align 4
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i8*, i8** %11, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %117

70:                                               ; preds = %27
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PAYLOAD_HEADER_SIZE_MULTIPLE_PAYLOADS, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load i32, i32* @PACKET_HEADER_MIN_SIZE, align 4
  %77 = sub nsw i32 %75, %76
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %70
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %92 = call i32 @flush_packet(%struct.TYPE_14__* %91)
  br label %23

93:                                               ; preds = %82, %70
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = load i8*, i8** @INT64_MAX, align 8
  %99 = load i8*, i8** @UINT16_MAX, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = icmp sgt i64 %97, %102
  br i1 %103, label %113, label %104

104:                                              ; preds = %93
  %105 = load i8*, i8** %11, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** @UINT16_MAX, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr i8, i8* %109, i64 %110
  %112 = icmp ugt i8* %105, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %104, %93
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %115 = call i32 @flush_packet(%struct.TYPE_14__* %114)
  br label %23

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116, %65
  %118 = load i32, i32* %18, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %180

120:                                              ; preds = %117
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* %18, align 4
  store i32 %125, i32* %17, align 4
  br label %135

126:                                              ; preds = %120
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %18, align 4
  %129 = sub nsw i32 %128, 1
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* %18, align 4
  %133 = sub nsw i32 %132, 2
  store i32 %133, i32* %17, align 4
  br label %134

134:                                              ; preds = %131, %126
  br label %135

135:                                              ; preds = %134, %124
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = load i64, i64* @PREROLL_TIME, align 8
  %140 = getelementptr i8, i8* %138, i64 %139
  %141 = ptrtoint i8* %140 to i64
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @put_payload_header(%struct.TYPE_14__* %136, %struct.TYPE_15__* %137, i64 %141, i32 %142, i32 %143, i32 %144, i32 %145)
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 6
  %149 = load i32*, i32** %12, align 8
  %150 = load i32, i32* %17, align 4
  %151 = call i32 @avio_write(i32* %148, i32* %149, i32 %150)
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %135
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* @PAYLOAD_HEADER_SIZE_MULTIPLE_PAYLOADS, align 4
  %159 = add nsw i32 %157, %158
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %162, %159
  store i32 %163, i32* %161, align 4
  br label %172

164:                                              ; preds = %135
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* @PAYLOAD_HEADER_SIZE_SINGLE_PAYLOAD, align 4
  %167 = add nsw i32 %165, %166
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %164, %156
  %173 = load i8*, i8** %11, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 5
  store i8* %173, i8** %175, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %177, align 8
  br label %181

180:                                              ; preds = %117
  store i32 0, i32* %17, align 4
  br label %181

181:                                              ; preds = %180, %172
  %182 = load i32, i32* %17, align 4
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %16, align 4
  %185 = load i32, i32* %17, align 4
  %186 = load i32*, i32** %12, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32* %188, i32** %12, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %181
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %195 = call i32 @flush_packet(%struct.TYPE_14__* %194)
  br label %219

196:                                              ; preds = %181
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @PAYLOAD_HEADER_SIZE_MULTIPLE_PAYLOADS, align 4
  %201 = load i32, i32* @PACKET_HEADER_MIN_SIZE, align 4
  %202 = add nsw i32 %200, %201
  %203 = add nsw i32 %202, 1
  %204 = icmp sle i32 %199, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %196
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %207 = call i32 @flush_packet(%struct.TYPE_14__* %206)
  br label %218

208:                                              ; preds = %196
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @ASF_PAYLOADS_PER_PACKET, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %208
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %216 = call i32 @flush_packet(%struct.TYPE_14__* %215)
  br label %217

217:                                              ; preds = %214, %208
  br label %218

218:                                              ; preds = %217, %205
  br label %219

219:                                              ; preds = %218, %193
  br label %23

220:                                              ; preds = %23
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  ret void
}

declare dso_local i32 @flush_packet(%struct.TYPE_14__*) #1

declare dso_local i32 @put_payload_header(%struct.TYPE_14__*, %struct.TYPE_15__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
