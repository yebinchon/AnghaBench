; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g2meet.c_epic_decode_tile.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g2meet.c_epic_decode_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i64 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32, i32, i32)* @epic_decode_tile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epic_decode_tile(%struct.TYPE_11__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64* null, i64** %15, align 8
  store i64* null, i64** %16, align 8
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %219, %5
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %226

26:                                               ; preds = %22
  %27 = load i64*, i64** %16, align 8
  store i64* %27, i64** %17, align 8
  %28 = load i64*, i64** %15, align 8
  store i64* %28, i64** %16, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = bitcast i32* %29 to i64*
  store i64* %30, i64** %15, align 8
  store i32 0, i32* %12, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %217, %26
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %218

37:                                               ; preds = %33
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %44, i32* %6, align 4
  br label %227

45:                                               ; preds = %37
  %46 = load i64*, i64** %15, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %14, align 8
  %52 = load i32, i32* %13, align 4
  %53 = icmp sge i32 %52, 1
  br i1 %53, label %54, label %111

54:                                               ; preds = %45
  %55 = load i32, i32* %12, align 4
  %56 = icmp sge i32 %55, 2
  br i1 %56, label %57, label %111

57:                                               ; preds = %54
  %58 = load i64, i64* %14, align 8
  %59 = load i64*, i64** %15, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %58, %64
  br i1 %65, label %66, label %111

66:                                               ; preds = %57
  %67 = load i64, i64* %14, align 8
  %68 = load i64*, i64** %16, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %67, %73
  br i1 %74, label %75, label %111

75:                                               ; preds = %66
  %76 = load i64, i64* %14, align 8
  %77 = load i64*, i64** %16, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %76, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %75
  %85 = load i64, i64* %14, align 8
  %86 = load i64*, i64** %16, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %85, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %84
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i64, i64* %14, align 8
  %96 = call i32 @epic_cache_entries_for_pixel(i32* %94, i64 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %111, label %98

98:                                               ; preds = %92
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i64*, i64** %15, align 8
  %103 = load i64*, i64** %16, align 8
  %104 = call i64 @epic_decode_pixel_pred(%struct.TYPE_11__* %99, i32 %100, i32 %101, i64* %102, i64* %103)
  %105 = load i64*, i64** %15, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  store i64 %104, i64* %108, align 8
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %217

111:                                              ; preds = %92, %84, %75, %66, %57, %54, %45
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  %114 = load i32, i32* %13, align 4
  %115 = icmp slt i32 %114, 2
  br i1 %115, label %124, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %12, align 4
  %118 = icmp slt i32 %117, 2
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %121, 1
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %119, %116, %111
  store i32 1, i32* %19, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i64*, i64** %15, align 8
  %129 = load i64*, i64** %16, align 8
  %130 = call i32 @epic_handle_edges(%struct.TYPE_11__* %125, i32 %126, i32 %127, i64* %128, i64* %129, i64* %14)
  store i32 %130, i32* %18, align 4
  br label %145

131:                                              ; preds = %119
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i64*, i64** %15, align 8
  %137 = load i64*, i64** %16, align 8
  %138 = load i64*, i64** %17, align 8
  %139 = call i32 @epic_decode_run_length(%struct.TYPE_11__* %132, i32 %133, i32 %134, i32 %135, i64* %136, i64* %137, i64* %138, i64* %14, i32* %19)
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %18, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %131
  %143 = load i32, i32* %18, align 4
  store i32 %143, i32* %6, align 4
  br label %227

144:                                              ; preds = %131
  br label %145

145:                                              ; preds = %144, %124
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %201, label %148

148:                                              ; preds = %145
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i64*, i64** %15, align 8
  %155 = load i64*, i64** %16, align 8
  %156 = call i32 @epic_predict_from_NW_NE(%struct.TYPE_11__* %149, i32 %150, i32 %151, i32 %152, i32 %153, i64* %154, i64* %155, i64* %14)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %201, label %158

158:                                              ; preds = %148
  %159 = load i64*, i64** %15, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %159, i64 %162
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %20, align 8
  %165 = load i32, i32* %12, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %158
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %169 = load i64, i64* %20, align 8
  %170 = call i32 @epic_decode_from_cache(%struct.TYPE_11__* %168, i64 %169, i64* %14)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %200, label %172

172:                                              ; preds = %167, %158
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load i64*, i64** %15, align 8
  %177 = load i64*, i64** %16, align 8
  %178 = call i64 @epic_decode_pixel_pred(%struct.TYPE_11__* %173, i32 %174, i32 %175, i64* %176, i64* %177)
  store i64 %178, i64* %14, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %180 = load i64, i64* %14, align 8
  %181 = call i64 @is_pixel_on_stack(%struct.TYPE_11__* %179, i64 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %172
  %184 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %184, i32* %6, align 4
  br label %227

185:                                              ; preds = %172
  %186 = load i32, i32* %12, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %185
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i64, i64* %20, align 8
  %192 = load i64, i64* %14, align 8
  %193 = call i32 @epic_add_pixel_to_cache(i32* %190, i64 %191, i64 %192)
  store i32 %193, i32* %21, align 4
  %194 = load i32, i32* %21, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %188
  %197 = load i32, i32* %21, align 4
  store i32 %197, i32* %6, align 4
  br label %227

198:                                              ; preds = %188
  br label %199

199:                                              ; preds = %198, %185
  br label %200

200:                                              ; preds = %199, %167
  br label %201

201:                                              ; preds = %200, %148, %145
  br label %202

202:                                              ; preds = %211, %201
  %203 = load i32, i32* %19, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %202
  %206 = load i64, i64* %14, align 8
  %207 = load i64*, i64** %15, align 8
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  store i64 %206, i64* %210, align 8
  br label %211

211:                                              ; preds = %205
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %12, align 4
  %214 = load i32, i32* %19, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %19, align 4
  br label %202

216:                                              ; preds = %202
  br label %217

217:                                              ; preds = %216, %98
  br label %33

218:                                              ; preds = %33
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %13, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %13, align 4
  %222 = load i32, i32* %11, align 4
  %223 = load i32*, i32** %8, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  store i32* %225, i32** %8, align 8
  br label %22

226:                                              ; preds = %22
  store i32 0, i32* %6, align 4
  br label %227

227:                                              ; preds = %226, %196, %183, %142, %43
  %228 = load i32, i32* %6, align 4
  ret i32 %228
}

declare dso_local i32 @epic_cache_entries_for_pixel(i32*, i64) #1

declare dso_local i64 @epic_decode_pixel_pred(%struct.TYPE_11__*, i32, i32, i64*, i64*) #1

declare dso_local i32 @epic_handle_edges(%struct.TYPE_11__*, i32, i32, i64*, i64*, i64*) #1

declare dso_local i32 @epic_decode_run_length(%struct.TYPE_11__*, i32, i32, i32, i64*, i64*, i64*, i64*, i32*) #1

declare dso_local i32 @epic_predict_from_NW_NE(%struct.TYPE_11__*, i32, i32, i32, i32, i64*, i64*, i64*) #1

declare dso_local i32 @epic_decode_from_cache(%struct.TYPE_11__*, i64, i64*) #1

declare dso_local i64 @is_pixel_on_stack(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @epic_add_pixel_to_cache(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
