; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutdec.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutdec.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64*, i64*, %struct.TYPE_15__*, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_14__**, i32* }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_17__ = type { i8*, i32, i32, i64, i32, i64 }

@FLAG_KEY = common dso_local global i32 0, align 4
@AVDISCARD_NONKEY = common dso_local global i32 0, align 4
@AVDISCARD_BIDIR = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AVDISCARD_ALL = common dso_local global i32 0, align 4
@FLAG_SM_DATA = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, i32)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %8, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %9, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @decode_frame_header(%struct.TYPE_16__* %25, i64* %14, i32* %11, i64* %17, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %257

32:                                               ; preds = %3
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i64 %37
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %16, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FLAG_KEY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %32
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %51, i64 %53
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %12, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %60, i64 %62
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %15, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @AVDISCARD_NONKEY, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %48
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @FLAG_KEY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %70, %48
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @AVDISCARD_BIDIR, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* %14, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %98, label %89

89:                                               ; preds = %85, %81, %77
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @AVDISCARD_ALL, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93, %89, %85, %70
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @avio_skip(i32* %99, i32 %100)
  store i32 1, i32* %4, align 4
  br label %257

102:                                              ; preds = %93
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %17, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %105, %111
  %113 = call i32 @av_new_packet(%struct.TYPE_17__* %103, i64 %112)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %102
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %4, align 4
  br label %257

118:                                              ; preds = %102
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* %17, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %118
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* %17, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* %17, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @memcpy(i64 %129, i64 %135, i64 %141)
  br label %143

143:                                              ; preds = %126, %118
  %144 = load i32*, i32** %9, align 8
  %145 = call i8* @avio_tell(i32* %144)
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  store i8* %145, i8** %147, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @FLAG_SM_DATA, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %200

154:                                              ; preds = %143
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %156 = load i32*, i32** %9, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr i8, i8* %160, i64 %162
  %164 = call i64 @read_sm_data(%struct.TYPE_18__* %155, i32* %156, %struct.TYPE_17__* %157, i32 0, i8* %163)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %154
  %167 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %167, i32* %13, align 4
  br label %253

168:                                              ; preds = %154
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr i8, i8* %174, i64 %176
  %178 = call i64 @read_sm_data(%struct.TYPE_18__* %169, i32* %170, %struct.TYPE_17__* %171, i32 1, i8* %177)
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %168
  %181 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %181, i32* %13, align 4
  br label %253

182:                                              ; preds = %168
  %183 = load i32*, i32** %9, align 8
  %184 = call i8* @avio_tell(i32* %183)
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = ptrtoint i8* %184 to i64
  %189 = ptrtoint i8* %187 to i64
  %190 = sub i64 %188, %189
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %18, align 4
  %192 = load i32, i32* %18, align 4
  %193 = load i32, i32* %10, align 4
  %194 = sub nsw i32 %193, %192
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %18, align 4
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = sub nsw i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %182, %143
  %201 = load i32*, i32** %9, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = load i64*, i64** %206, align 8
  %208 = load i64, i64* %17, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %204, %210
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @avio_read(i32* %201, i64 %211, i32 %212)
  store i32 %213, i32* %13, align 4
  %214 = load i32, i32* %13, align 4
  %215 = load i32, i32* %10, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %200
  %218 = load i32, i32* %13, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  br label %253

221:                                              ; preds = %217
  br label %222

222:                                              ; preds = %221, %200
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 0
  %226 = load i64*, i64** %225, align 8
  %227 = load i64, i64* %17, align 8
  %228 = getelementptr inbounds i64, i64* %226, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = load i32, i32* %13, align 4
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %229, %231
  %233 = call i32 @av_shrink_packet(%struct.TYPE_17__* %223, i64 %232)
  %234 = load i32, i32* %11, align 4
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 2
  store i32 %234, i32* %236, align 4
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @FLAG_KEY, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %222
  %244 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 8
  br label %249

249:                                              ; preds = %243, %222
  %250 = load i64, i64* %14, align 8
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 3
  store i64 %250, i64* %252, align 8
  store i32 0, i32* %4, align 4
  br label %257

253:                                              ; preds = %220, %180, %166
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %255 = call i32 @av_packet_unref(%struct.TYPE_17__* %254)
  %256 = load i32, i32* %13, align 4
  store i32 %256, i32* %4, align 4
  br label %257

257:                                              ; preds = %253, %249, %116, %98, %30
  %258 = load i32, i32* %4, align 4
  ret i32 %258
}

declare dso_local i32 @decode_frame_header(%struct.TYPE_16__*, i64*, i32*, i64*, i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i8* @avio_tell(i32*) #1

declare dso_local i64 @read_sm_data(%struct.TYPE_18__*, i32*, %struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @avio_read(i32*, i64, i32) #1

declare dso_local i32 @av_shrink_packet(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
