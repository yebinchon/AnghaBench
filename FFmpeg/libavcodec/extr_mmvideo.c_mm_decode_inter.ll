; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mmvideo.c_mm_decode_inter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mmvideo.c_mm_decode_inter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i32**, i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i64 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32)* @mm_decode_inter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mm_decode_inter(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = call i32 @bytestream2_get_le16(%struct.TYPE_13__* %19)
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_13__* %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %27, i32* %4, align 4
  br label %232

28:                                               ; preds = %3
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_13__* %37)
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %38, %39
  %41 = call i32 @bytestream2_init(%struct.TYPE_13__* %10, i64 %35, i32 %40)
  br label %42

42:                                               ; preds = %226, %65, %28
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %50, label %231

50:                                               ; preds = %42
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = call i32 @bytestream2_get_byte(%struct.TYPE_13__* %52)
  store i32 %53, i32* %13, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = call i32 @bytestream2_get_byte(%struct.TYPE_13__* %55)
  %57 = load i32, i32* %13, align 4
  %58 = and i32 %57, 128
  %59 = shl i32 %58, 1
  %60 = add nsw i32 %56, %59
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = and i32 %61, 127
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %50
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %42

69:                                               ; preds = %50
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %70, %71
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sge i32 %72, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %232

80:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %223, %80
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %226

85:                                               ; preds = %81
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = call i32 @bytestream2_get_byte(%struct.TYPE_13__* %87)
  store i32 %88, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %219, %85
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 8
  br i1 %91, label %92, label %222

92:                                               ; preds = %89
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %12, align 4
  %95 = sub nsw i32 7, %94
  %96 = ashr i32 %93, %95
  %97 = and i32 %96, 1
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %98, %99
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %100, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %92
  %108 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %108, i32* %4, align 4
  br label %232

109:                                              ; preds = %92
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %214

112:                                              ; preds = %109
  %113 = call i32 @bytestream2_get_byte(%struct.TYPE_13__* %10)
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32**, i32*** %118, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %122, %129
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %121, i64 %133
  store i32 %114, i32* %134, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %160

137:                                              ; preds = %112
  %138 = load i32, i32* %17, align 4
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32**, i32*** %142, align 8
  %144 = getelementptr inbounds i32*, i32** %143, i64 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %146, %153
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %154, %155
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %145, i64 %158
  store i32 %138, i32* %159, align 4
  br label %160

160:                                              ; preds = %137, %112
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %213

163:                                              ; preds = %160
  %164 = load i32, i32* %17, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i32**, i32*** %168, align 8
  %170 = getelementptr inbounds i32*, i32** %169, i64 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 %173, %180
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %171, i64 %184
  store i32 %164, i32* %185, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %212

188:                                              ; preds = %163
  %189 = load i32, i32* %17, align 4
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load i32**, i32*** %193, align 8
  %195 = getelementptr inbounds i32*, i32** %194, i64 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 1
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %198, %205
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %206, %207
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %196, i64 %210
  store i32 %189, i32* %211, align 4
  br label %212

212:                                              ; preds = %188, %163
  br label %213

213:                                              ; preds = %212, %160
  br label %214

214:                                              ; preds = %213, %109
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 1, %215
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, %216
  store i32 %218, i32* %14, align 4
  br label %219

219:                                              ; preds = %214
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %12, align 4
  br label %89

222:                                              ; preds = %89
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %11, align 4
  br label %81

226:                                              ; preds = %81
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 1, %227
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %9, align 4
  br label %42

231:                                              ; preds = %42
  store i32 0, i32* %4, align 4
  br label %232

232:                                              ; preds = %231, %107, %79, %26
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local i32 @bytestream2_get_le16(%struct.TYPE_13__*) #1

declare dso_local i32 @bytestream2_get_bytes_left(%struct.TYPE_13__*) #1

declare dso_local i32 @bytestream2_init(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @bytestream2_get_byte(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
