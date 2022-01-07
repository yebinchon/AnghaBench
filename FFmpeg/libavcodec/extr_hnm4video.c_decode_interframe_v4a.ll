; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hnm4video.c_decode_interframe_v4a.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hnm4video.c_decode_interframe_v4a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64*, i64* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"writeoffset out of bounds\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Attempting to read out of bounds\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Attempting to write out of bounds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i64)* @decode_interframe_v4a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_interframe_v4a(%struct.TYPE_6__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %7, align 8
  store i64 0, i64* %9, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @bytestream2_init(i32* %8, i32* %18, i64 %19)
  br label %21

21:                                               ; preds = %266, %3
  %22 = call i64 @bytestream2_tell(i32* %8)
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %267

25:                                               ; preds = %21
  %26 = call i32 @bytestream2_peek_byte(i32* %8)
  %27 = and i32 %26, 63
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %113

30:                                               ; preds = %25
  %31 = call i64 @bytestream2_get_byte(i32* %8)
  %32 = and i64 %31, 192
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = ashr i32 %34, 6
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = call i64 @bytestream2_get_byte(i32* %8)
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %9, align 8
  br label %98

42:                                               ; preds = %30
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %82

45:                                               ; preds = %42
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %46, %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = mul i64 %53, %56
  %58 = icmp uge i64 %50, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %45
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = load i32, i32* @AV_LOG_ERROR, align 4
  %62 = call i32 @av_log(%struct.TYPE_6__* %60, i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %267

63:                                               ; preds = %45
  %64 = call i64 @bytestream2_get_byte(i32* %8)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 %64, i64* %69, align 8
  %70 = call i64 @bytestream2_get_byte(i32* %8)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %74, %77
  %79 = getelementptr inbounds i64, i64* %73, i64 %78
  store i64 %70, i64* %79, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %9, align 8
  br label %97

82:                                               ; preds = %42
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %9, align 8
  br label %96

91:                                               ; preds = %82
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 3
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %267

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95, %85
  br label %97

97:                                               ; preds = %96, %63
  br label %98

98:                                               ; preds = %97, %38
  %99 = load i64, i64* %9, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = mul i64 %102, %105
  %107 = icmp ugt i64 %99, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %98
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = load i32, i32* @AV_LOG_ERROR, align 4
  %111 = call i32 @av_log(%struct.TYPE_6__* %109, i32 %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %267

112:                                              ; preds = %98
  br label %266

113:                                              ; preds = %25
  %114 = call i32 @bytestream2_peek_byte(i32* %8)
  %115 = and i32 %114, 128
  store i32 %115, i32* %14, align 4
  %116 = call i32 @bytestream2_peek_byte(i32* %8)
  %117 = and i32 %116, 64
  store i32 %117, i32* %13, align 4
  %118 = call i32 @bytestream2_skip(i32* %8, i32 1)
  %119 = load i64, i64* %9, align 8
  store i64 %119, i64* %10, align 8
  %120 = call i64 @bytestream2_get_le16(i32* %8)
  %121 = load i64, i64* %10, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %10, align 8
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %113
  %126 = load i64, i64* %10, align 8
  %127 = icmp ult i64 %126, 65536
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %130 = load i32, i32* @AV_LOG_ERROR, align 4
  %131 = call i32 @av_log(%struct.TYPE_6__* %129, i32 %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %267

132:                                              ; preds = %125
  %133 = load i64, i64* %10, align 8
  %134 = sub i64 %133, 65536
  store i64 %134, i64* %10, align 8
  br label %135

135:                                              ; preds = %132, %113
  %136 = load i64, i64* %10, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %136, %139
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = add i64 %140, %142
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = mul i64 %146, %149
  %151 = icmp uge i64 %143, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %135
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = load i32, i32* @AV_LOG_ERROR, align 4
  %155 = call i32 @av_log(%struct.TYPE_6__* %153, i32 %154, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %267

156:                                              ; preds = %135
  %157 = load i64, i64* %9, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %157, %160
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = add i64 %161, %163
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = mul i64 %167, %170
  %172 = icmp uge i64 %164, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %156
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %175 = load i32, i32* @AV_LOG_ERROR, align 4
  %176 = call i32 @av_log(%struct.TYPE_6__* %174, i32 %175, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %267

177:                                              ; preds = %156
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %13, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %223

181:                                              ; preds = %178
  br label %182

182:                                              ; preds = %185, %181
  %183 = load i32, i32* %12, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %222

185:                                              ; preds = %182
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 3
  %188 = load i64*, i64** %187, align 8
  %189 = load i64, i64* %10, align 8
  %190 = getelementptr inbounds i64, i64* %188, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  %194 = load i64*, i64** %193, align 8
  %195 = load i64, i64* %9, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  store i64 %191, i64* %196, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 3
  %199 = load i64*, i64** %198, align 8
  %200 = load i64, i64* %10, align 8
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = add i64 %200, %203
  %205 = getelementptr inbounds i64, i64* %199, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 2
  %209 = load i64*, i64** %208, align 8
  %210 = load i64, i64* %9, align 8
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = add i64 %210, %213
  %215 = getelementptr inbounds i64, i64* %209, i64 %214
  store i64 %206, i64* %215, align 8
  %216 = load i64, i64* %9, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %9, align 8
  %218 = load i64, i64* %10, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %10, align 8
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %12, align 4
  br label %182

222:                                              ; preds = %182
  br label %265

223:                                              ; preds = %178
  br label %224

224:                                              ; preds = %227, %223
  %225 = load i32, i32* %12, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %264

227:                                              ; preds = %224
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 2
  %230 = load i64*, i64** %229, align 8
  %231 = load i64, i64* %10, align 8
  %232 = getelementptr inbounds i64, i64* %230, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 2
  %236 = load i64*, i64** %235, align 8
  %237 = load i64, i64* %9, align 8
  %238 = getelementptr inbounds i64, i64* %236, i64 %237
  store i64 %233, i64* %238, align 8
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 2
  %241 = load i64*, i64** %240, align 8
  %242 = load i64, i64* %10, align 8
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = add i64 %242, %245
  %247 = getelementptr inbounds i64, i64* %241, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 2
  %251 = load i64*, i64** %250, align 8
  %252 = load i64, i64* %9, align 8
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = add i64 %252, %255
  %257 = getelementptr inbounds i64, i64* %251, i64 %256
  store i64 %248, i64* %257, align 8
  %258 = load i64, i64* %9, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* %9, align 8
  %260 = load i64, i64* %10, align 8
  %261 = add i64 %260, 1
  store i64 %261, i64* %10, align 8
  %262 = load i32, i32* %12, align 4
  %263 = add nsw i32 %262, -1
  store i32 %263, i32* %12, align 4
  br label %224

264:                                              ; preds = %224
  br label %265

265:                                              ; preds = %264, %222
  br label %266

266:                                              ; preds = %265, %112
  br label %21

267:                                              ; preds = %173, %152, %128, %108, %94, %59, %21
  ret void
}

declare dso_local i32 @bytestream2_init(i32*, i32*, i64) #1

declare dso_local i64 @bytestream2_tell(i32*) #1

declare dso_local i32 @bytestream2_peek_byte(i32*) #1

declare dso_local i64 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i64 @bytestream2_get_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
