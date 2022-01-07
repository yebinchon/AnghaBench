; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_sw_buffer.c_ff_mediacodec_sw_buffer_copy_yuv420_packed_semi_planar_64x32Tile2m8ka.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodec_sw_buffer.c_ff_mediacodec_sw_buffer_copy_yuv420_packed_semi_planar_64x32Tile2m8ka.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64*, i64, i64* }

@QCOM_TILE_WIDTH = common dso_local global i64 0, align 8
@QCOM_TILE_HEIGHT = common dso_local global i64 0, align 8
@QCOM_TILE_SIZE = common dso_local global i64 0, align 8
@QCOM_TILE_GROUP_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_mediacodec_sw_buffer_copy_yuv420_packed_semi_planar_64x32Tile2m8ka(i32* %0, i32* %1, i32* %2, i64 %3, i32* %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %12, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %13, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %14, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %15, align 8
  %41 = load i64, i64* %13, align 8
  %42 = sub i64 %41, 1
  %43 = load i64, i64* @QCOM_TILE_WIDTH, align 8
  %44 = udiv i64 %42, %43
  %45 = add i64 %44, 1
  store i64 %45, i64* %16, align 8
  %46 = load i64, i64* %16, align 8
  %47 = add i64 %46, 1
  %48 = and i64 %47, -2
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %15, align 8
  %50 = sub i64 %49, 1
  %51 = load i64, i64* @QCOM_TILE_HEIGHT, align 8
  %52 = udiv i64 %50, %51
  %53 = add i64 %52, 1
  store i64 %53, i64* %18, align 8
  %54 = load i64, i64* %15, align 8
  %55 = udiv i64 %54, 2
  %56 = sub i64 %55, 1
  %57 = load i64, i64* @QCOM_TILE_HEIGHT, align 8
  %58 = udiv i64 %56, %57
  %59 = add i64 %58, 1
  store i64 %59, i64* %19, align 8
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* %18, align 8
  %62 = mul i64 %60, %61
  %63 = load i64, i64* @QCOM_TILE_SIZE, align 8
  %64 = mul i64 %62, %63
  store i64 %64, i64* %20, align 8
  %65 = load i64, i64* %20, align 8
  %66 = load i64, i64* @QCOM_TILE_GROUP_SIZE, align 8
  %67 = urem i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %6
  %70 = load i64, i64* %20, align 8
  %71 = sub i64 %70, 1
  %72 = load i64, i64* @QCOM_TILE_GROUP_SIZE, align 8
  %73 = udiv i64 %71, %72
  %74 = add i64 %73, 1
  %75 = load i64, i64* @QCOM_TILE_GROUP_SIZE, align 8
  %76 = mul i64 %74, %75
  store i64 %76, i64* %20, align 8
  br label %77

77:                                               ; preds = %69, %6
  store i64 0, i64* %21, align 8
  br label %78

78:                                               ; preds = %218, %77
  %79 = load i64, i64* %21, align 8
  %80 = load i64, i64* %18, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %221

82:                                               ; preds = %78
  %83 = load i64, i64* %13, align 8
  store i64 %83, i64* %22, align 8
  store i64 0, i64* %23, align 8
  br label %84

84:                                               ; preds = %211, %82
  %85 = load i64, i64* %23, align 8
  %86 = load i64, i64* %16, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %214

88:                                               ; preds = %84
  %89 = load i64, i64* %22, align 8
  store i64 %89, i64* %24, align 8
  %90 = load i64, i64* %15, align 8
  store i64 %90, i64* %25, align 8
  %91 = load i64, i64* %21, align 8
  %92 = load i64, i64* @QCOM_TILE_HEIGHT, align 8
  %93 = mul i64 %91, %92
  %94 = load i64, i64* %14, align 8
  %95 = mul i64 %93, %94
  %96 = load i64, i64* %23, align 8
  %97 = load i64, i64* @QCOM_TILE_WIDTH, align 8
  %98 = mul i64 %96, %97
  %99 = add i64 %95, %98
  store i64 %99, i64* %26, align 8
  %100 = load i64, i64* %26, align 8
  %101 = load i64, i64* %14, align 8
  %102 = udiv i64 %100, %101
  %103 = load i64, i64* %14, align 8
  %104 = mul i64 %102, %103
  %105 = udiv i64 %104, 2
  %106 = load i64, i64* %26, align 8
  %107 = load i64, i64* %14, align 8
  %108 = urem i64 %106, %107
  %109 = add i64 %105, %108
  store i64 %109, i64* %27, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = load i64, i64* %23, align 8
  %112 = load i64, i64* %21, align 8
  %113 = load i64, i64* %17, align 8
  %114 = load i64, i64* %18, align 8
  %115 = call i64 @qcom_tile_pos(i64 %111, i64 %112, i64 %113, i64 %114)
  %116 = load i64, i64* @QCOM_TILE_SIZE, align 8
  %117 = mul i64 %115, %116
  %118 = getelementptr inbounds i32, i32* %110, i64 %117
  store i32* %118, i32** %28, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = load i64, i64* %20, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i64, i64* %23, align 8
  %123 = load i64, i64* %21, align 8
  %124 = udiv i64 %123, 2
  %125 = load i64, i64* %17, align 8
  %126 = load i64, i64* %19, align 8
  %127 = call i64 @qcom_tile_pos(i64 %122, i64 %124, i64 %125, i64 %126)
  %128 = load i64, i64* @QCOM_TILE_SIZE, align 8
  %129 = mul i64 %127, %128
  %130 = getelementptr inbounds i32, i32* %121, i64 %129
  store i32* %130, i32** %29, align 8
  %131 = load i64, i64* %21, align 8
  %132 = and i64 %131, 1
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %88
  %135 = load i64, i64* @QCOM_TILE_SIZE, align 8
  %136 = udiv i64 %135, 2
  %137 = load i32*, i32** %29, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 %136
  store i32* %138, i32** %29, align 8
  br label %139

139:                                              ; preds = %134, %88
  %140 = load i64, i64* %24, align 8
  %141 = load i64, i64* @QCOM_TILE_WIDTH, align 8
  %142 = icmp ugt i64 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i64, i64* @QCOM_TILE_WIDTH, align 8
  store i64 %144, i64* %24, align 8
  br label %145

145:                                              ; preds = %143, %139
  %146 = load i64, i64* %25, align 8
  %147 = load i64, i64* @QCOM_TILE_HEIGHT, align 8
  %148 = icmp ugt i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i64, i64* @QCOM_TILE_HEIGHT, align 8
  store i64 %150, i64* %25, align 8
  br label %151

151:                                              ; preds = %149, %145
  %152 = load i64, i64* %25, align 8
  %153 = udiv i64 %152, 2
  store i64 %153, i64* %25, align 8
  br label %154

154:                                              ; preds = %158, %151
  %155 = load i64, i64* %25, align 8
  %156 = add i64 %155, -1
  store i64 %156, i64* %25, align 8
  %157 = icmp ne i64 %155, 0
  br i1 %157, label %158, label %207

158:                                              ; preds = %154
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %26, align 8
  %165 = add i64 %163, %164
  %166 = load i32*, i32** %28, align 8
  %167 = load i64, i64* %24, align 8
  %168 = call i32 @memcpy(i64 %165, i32* %166, i64 %167)
  %169 = load i64, i64* @QCOM_TILE_WIDTH, align 8
  %170 = load i32*, i32** %28, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 %169
  store i32* %171, i32** %28, align 8
  %172 = load i64, i64* %14, align 8
  %173 = load i64, i64* %26, align 8
  %174 = add i64 %173, %172
  store i64 %174, i64* %26, align 8
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 3
  %177 = load i64*, i64** %176, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %26, align 8
  %181 = add i64 %179, %180
  %182 = load i32*, i32** %28, align 8
  %183 = load i64, i64* %24, align 8
  %184 = call i32 @memcpy(i64 %181, i32* %182, i64 %183)
  %185 = load i64, i64* @QCOM_TILE_WIDTH, align 8
  %186 = load i32*, i32** %28, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 %185
  store i32* %187, i32** %28, align 8
  %188 = load i64, i64* %14, align 8
  %189 = load i64, i64* %26, align 8
  %190 = add i64 %189, %188
  store i64 %190, i64* %26, align 8
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 3
  %193 = load i64*, i64** %192, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %27, align 8
  %197 = add i64 %195, %196
  %198 = load i32*, i32** %29, align 8
  %199 = load i64, i64* %24, align 8
  %200 = call i32 @memcpy(i64 %197, i32* %198, i64 %199)
  %201 = load i64, i64* @QCOM_TILE_WIDTH, align 8
  %202 = load i32*, i32** %29, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 %201
  store i32* %203, i32** %29, align 8
  %204 = load i64, i64* %14, align 8
  %205 = load i64, i64* %27, align 8
  %206 = add i64 %205, %204
  store i64 %206, i64* %27, align 8
  br label %154

207:                                              ; preds = %154
  %208 = load i64, i64* @QCOM_TILE_WIDTH, align 8
  %209 = load i64, i64* %22, align 8
  %210 = sub i64 %209, %208
  store i64 %210, i64* %22, align 8
  br label %211

211:                                              ; preds = %207
  %212 = load i64, i64* %23, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %23, align 8
  br label %84

214:                                              ; preds = %84
  %215 = load i64, i64* @QCOM_TILE_HEIGHT, align 8
  %216 = load i64, i64* %15, align 8
  %217 = sub i64 %216, %215
  store i64 %217, i64* %15, align 8
  br label %218

218:                                              ; preds = %214
  %219 = load i64, i64* %21, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %21, align 8
  br label %78

221:                                              ; preds = %78
  ret void
}

declare dso_local i64 @qcom_tile_pos(i64, i64, i64, i64) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
