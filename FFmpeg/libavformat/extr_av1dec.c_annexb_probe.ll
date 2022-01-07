; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_av1dec.c_annexb_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_av1dec.c_annexb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@AV1_OBU_TEMPORAL_DELIMITER = common dso_local global i32 0, align 4
@AV1_OBU_SEQUENCE_HEADER = common dso_local global i32 0, align 4
@AV1_OBU_FRAME = common dso_local global i32 0, align 4
@AV1_OBU_FRAME_HEADER = common dso_local global i32 0, align 4
@AV1_OBU_TILE_GROUP = common dso_local global i32 0, align 4
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @annexb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @annexb_probe(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ffio_init_context(%struct.TYPE_8__* %4, i32 %16, i32 %19, i32 0, i32* null, i32* null, i32* null, i32* null)
  %21 = call i32 @leb(%struct.TYPE_8__* %4, i64* %6)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %222

25:                                               ; preds = %1
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %13, align 4
  %29 = call i32 @leb(%struct.TYPE_8__* %4, i64* %7)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load i64, i64* %6, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32, %25
  store i32 0, i32* %2, align 4
  br label %222

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %6, align 8
  %47 = sub nsw i64 %46, %45
  store i64 %47, i64* %6, align 8
  %48 = call i32 @leb(%struct.TYPE_8__* %4, i64* %8)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %40
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = load i64, i64* %7, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51, %40
  store i32 0, i32* %2, align 4
  br label %222

59:                                               ; preds = %51
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %13, align 4
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load i64, i64* %6, align 8
  %68 = sub nsw i64 %67, %66
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = load i64, i64* %7, align 8
  %74 = sub nsw i64 %73, %72
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @avio_skip(%struct.TYPE_8__* %4, i64 %75)
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %59
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %59
  store i32 0, i32* %2, align 4
  br label %222

85:                                               ; preds = %80
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %88, %89
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %13, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @FFMIN(i32 %95, i64 %96)
  %98 = call i32 @read_obu(i32 %90, i32 %97, i64* %5, i32* %12)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %85
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @AV1_OBU_TEMPORAL_DELIMITER, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load i64, i64* %5, align 8
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %101, %85
  store i32 0, i32* %2, align 4
  br label %222

109:                                              ; preds = %105
  %110 = load i64, i64* %8, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %211, %109
  %116 = call i32 @leb(%struct.TYPE_8__* %4, i64* %8)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %115
  %120 = load i64, i64* %8, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %120, %122
  %124 = load i64, i64* %7, align 8
  %125 = icmp sgt i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %119, %115
  store i32 0, i32* %2, align 4
  br label %222

127:                                              ; preds = %119
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %13, align 4
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @avio_skip(%struct.TYPE_8__* %4, i64 %131)
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %127
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136, %127
  store i32 0, i32* %2, align 4
  br label %222

141:                                              ; preds = %136
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %144, %145
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %13, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load i64, i64* %8, align 8
  %153 = call i32 @FFMIN(i32 %151, i64 %152)
  %154 = call i32 @read_obu(i32 %146, i32 %153, i64* %5, i32* %12)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %222

158:                                              ; preds = %141
  %159 = load i64, i64* %8, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %159
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @AV1_OBU_SEQUENCE_HEADER, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  store i32 1, i32* %9, align 4
  br label %168

168:                                              ; preds = %167, %158
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @AV1_OBU_FRAME, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* @AV1_OBU_FRAME_HEADER, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %172, %168
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %179, %176
  store i32 0, i32* %2, align 4
  br label %222

183:                                              ; preds = %179
  store i32 1, i32* %10, align 4
  br label %213

184:                                              ; preds = %172
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* @AV1_OBU_TILE_GROUP, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  store i32 0, i32* %2, align 4
  br label %222

192:                                              ; preds = %188, %184
  %193 = load i64, i64* %8, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %193, %195
  %197 = load i64, i64* %6, align 8
  %198 = sub nsw i64 %197, %196
  store i64 %198, i64* %6, align 8
  %199 = load i64, i64* %8, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %199, %201
  %203 = load i64, i64* %7, align 8
  %204 = sub nsw i64 %203, %202
  store i64 %204, i64* %7, align 8
  br label %205

205:                                              ; preds = %192
  %206 = load i32, i32* %10, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = load i64, i64* %7, align 8
  %210 = icmp ne i64 %209, 0
  br label %211

211:                                              ; preds = %208, %205
  %212 = phi i1 [ false, %205 ], [ %210, %208 ]
  br i1 %212, label %115, label %213

213:                                              ; preds = %211, %183
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %218 = add nsw i32 %217, 1
  br label %220

219:                                              ; preds = %213
  br label %220

220:                                              ; preds = %219, %216
  %221 = phi i32 [ %218, %216 ], [ 0, %219 ]
  store i32 %221, i32* %2, align 4
  br label %222

222:                                              ; preds = %220, %191, %182, %157, %140, %126, %108, %84, %58, %39, %24
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local i32 @ffio_init_context(%struct.TYPE_8__*, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @leb(%struct.TYPE_8__*, i64*) #1

declare dso_local i32 @avio_skip(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @read_obu(i32, i32, i64*, i32*) #1

declare dso_local i32 @FFMIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
