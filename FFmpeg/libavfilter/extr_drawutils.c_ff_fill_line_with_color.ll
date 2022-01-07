; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_ff_fill_line_with_color.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_ff_fill_line_with_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_fill_line_with_color(i64** %0, i32* %1, i32 %2, i64* %3, i32 %4, i64* %5, i32* %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca [4 x i64], align 16
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_5__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i64** %0, i64*** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64* %3, i64** %13, align 8
  store i32 %4, i32* %14, align 4
  store i64* %5, i64** %15, align 8
  store i32* %6, i32** %16, align 8
  store i64* %7, i64** %17, align 8
  %25 = bitcast [4 x i64]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 32, i1 false)
  %26 = load i32, i32* %14, align 4
  %27 = call %struct.TYPE_5__* @av_pix_fmt_desc_get(i32 %26)
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %20, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %29 = call i32 @av_assert0(%struct.TYPE_5__* %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %21, align 4
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %34 = load i32, i32* %14, align 4
  %35 = call i64 @ff_fill_rgba_map(i64* %33, i32 %34)
  %36 = icmp sge i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load i32*, i32** %16, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %16, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %113

42:                                               ; preds = %8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %44 = call i32 @av_get_bits_per_pixel(%struct.TYPE_5__* %43)
  %45 = ashr i32 %44, 3
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %19, align 4
  br label %48

48:                                               ; preds = %63, %42
  %49 = load i32, i32* %19, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = load i64*, i64** %15, align 8
  %53 = load i32, i32* %19, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %13, align 8
  %58 = load i32, i32* %19, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i64, i64* %57, i64 %61
  store i64 %56, i64* %62, align 8
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %19, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %19, align 4
  br label %48

66:                                               ; preds = %48
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64* @av_malloc_array(i32 %67, i32 %70)
  %72 = load i64**, i64*** %10, align 8
  %73 = getelementptr inbounds i64*, i64** %72, i64 0
  store i64* %71, i64** %73, align 8
  %74 = load i64**, i64*** %10, align 8
  %75 = getelementptr inbounds i64*, i64** %74, i64 0
  %76 = load i64*, i64** %75, align 8
  %77 = icmp ne i64* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %66
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = call i32 @AVERROR(i32 %79)
  store i32 %80, i32* %9, align 4
  br label %236

81:                                               ; preds = %66
  store i32 0, i32* %19, align 4
  br label %82

82:                                               ; preds = %102, %81
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = load i64**, i64*** %10, align 8
  %88 = getelementptr inbounds i64*, i64** %87, i64 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %19, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %89, i64 %95
  %97 = load i64*, i64** %13, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @memcpy(i64* %96, i64* %97, i32 %100)
  br label %102

102:                                              ; preds = %86
  %103 = load i32, i32* %19, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %19, align 4
  br label %82

105:                                              ; preds = %82
  %106 = load i64*, i64** %17, align 8
  %107 = icmp ne i64* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i64*, i64** %17, align 8
  %110 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %111 = call i32 @memcpy(i64* %109, i64* %110, i32 32)
  br label %112

112:                                              ; preds = %108, %105
  br label %235

113:                                              ; preds = %8
  %114 = load i64*, i64** %15, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %15, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %15, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 2
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @RGB_TO_Y_CCIR(i64 %116, i64 %119, i64 %122)
  %124 = load i64*, i64** %13, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  store i64 %123, i64* %125, align 8
  %126 = load i64*, i64** %15, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64*, i64** %15, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64*, i64** %15, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 2
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @RGB_TO_U_CCIR(i64 %128, i64 %131, i64 %134, i32 0)
  %136 = load i64*, i64** %13, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 1
  store i64 %135, i64* %137, align 8
  %138 = load i64*, i64** %15, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64*, i64** %15, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64*, i64** %15, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 2
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @RGB_TO_V_CCIR(i64 %140, i64 %143, i64 %146, i32 0)
  %148 = load i64*, i64** %13, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 2
  store i64 %147, i64* %149, align 8
  %150 = load i64*, i64** %15, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 3
  %152 = load i64, i64* %151, align 8
  %153 = load i64*, i64** %13, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 3
  store i64 %152, i64* %154, align 8
  store i32 0, i32* %22, align 4
  br label %155

155:                                              ; preds = %231, %113
  %156 = load i32, i32* %22, align 4
  %157 = icmp slt i32 %156, 4
  br i1 %157, label %158, label %234

158:                                              ; preds = %155
  %159 = load i32, i32* %22, align 4
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %22, align 4
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %164, label %166

164:                                              ; preds = %161, %158
  %165 = load i32, i32* %21, align 4
  br label %167

166:                                              ; preds = %161
  br label %167

167:                                              ; preds = %166, %164
  %168 = phi i32 [ %165, %164 ], [ 0, %166 ]
  store i32 %168, i32* %24, align 4
  %169 = load i32*, i32** %11, align 8
  %170 = load i32, i32* %22, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 1, i32* %172, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %24, align 4
  %175 = call i32 @AV_CEIL_RSHIFT(i32 %173, i32 %174)
  %176 = load i32*, i32** %11, align 8
  %177 = load i32, i32* %22, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 %175, %180
  store i32 %181, i32* %23, align 4
  %182 = load i32, i32* %23, align 4
  %183 = call i64* @av_malloc(i32 %182)
  %184 = load i64**, i64*** %10, align 8
  %185 = load i32, i32* %22, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64*, i64** %184, i64 %186
  store i64* %183, i64** %187, align 8
  %188 = load i64**, i64*** %10, align 8
  %189 = load i32, i32* %22, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64*, i64** %188, i64 %190
  %192 = load i64*, i64** %191, align 8
  %193 = icmp ne i64* %192, null
  br i1 %193, label %218, label %194

194:                                              ; preds = %167
  br label %195

195:                                              ; preds = %208, %194
  %196 = load i32, i32* %22, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %195
  %199 = load i64**, i64*** %10, align 8
  %200 = load i32, i32* %22, align 4
  %201 = sub nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64*, i64** %199, i64 %202
  %204 = load i64*, i64** %203, align 8
  %205 = icmp ne i64* %204, null
  br label %206

206:                                              ; preds = %198, %195
  %207 = phi i1 [ false, %195 ], [ %205, %198 ]
  br i1 %207, label %208, label %215

208:                                              ; preds = %206
  %209 = load i64**, i64*** %10, align 8
  %210 = load i32, i32* %22, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %22, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64*, i64** %209, i64 %212
  %214 = call i32 @av_freep(i64** %213)
  br label %195

215:                                              ; preds = %206
  %216 = load i32, i32* @ENOMEM, align 4
  %217 = call i32 @AVERROR(i32 %216)
  store i32 %217, i32* %9, align 4
  br label %236

218:                                              ; preds = %167
  %219 = load i64**, i64*** %10, align 8
  %220 = load i32, i32* %22, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64*, i64** %219, i64 %221
  %223 = load i64*, i64** %222, align 8
  %224 = load i64*, i64** %13, align 8
  %225 = load i32, i32* %22, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %224, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* %23, align 4
  %230 = call i32 @memset(i64* %223, i64 %228, i32 %229)
  br label %231

231:                                              ; preds = %218
  %232 = load i32, i32* %22, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %22, align 4
  br label %155

234:                                              ; preds = %155
  br label %235

235:                                              ; preds = %234, %112
  store i32 0, i32* %9, align 4
  br label %236

236:                                              ; preds = %235, %215, %78
  %237 = load i32, i32* %9, align 4
  ret i32 %237
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_5__* @av_pix_fmt_desc_get(i32) #2

declare dso_local i32 @av_assert0(%struct.TYPE_5__*) #2

declare dso_local i64 @ff_fill_rgba_map(i64*, i32) #2

declare dso_local i32 @av_get_bits_per_pixel(%struct.TYPE_5__*) #2

declare dso_local i64* @av_malloc_array(i32, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local i64 @RGB_TO_Y_CCIR(i64, i64, i64) #2

declare dso_local i64 @RGB_TO_U_CCIR(i64, i64, i64, i32) #2

declare dso_local i64 @RGB_TO_V_CCIR(i64, i64, i64, i32) #2

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #2

declare dso_local i64* @av_malloc(i32) #2

declare dso_local i32 @av_freep(i64**) #2

declare dso_local i32 @memset(i64*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
