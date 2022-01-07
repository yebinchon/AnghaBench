; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_photosensitivity.c_convert_frame_partial.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_photosensitivity.c_convert_frame_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32*** }
%struct.TYPE_4__ = type { i32, i32, i32*, i64** }

@NUM_CHANNELS = common dso_local global i32 0, align 4
@NUM_CELLS = common dso_local global i32 0, align 4
@GRID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @convert_frame_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_frame_partial(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64*, align 8
  %23 = alloca %struct.TYPE_6__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %31 = load i32, i32* @NUM_CHANNELS, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %20, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %21, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %23, align 8
  %37 = load i32, i32* @NUM_CELLS, align 4
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %8, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %24, align 4
  %42 = load i32, i32* @NUM_CELLS, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  %45 = mul nsw i32 %42, %44
  %46 = load i32, i32* %8, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %25, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %26, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %27, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %28, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %29, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load i64**, i64*** %71, align 8
  %73 = getelementptr inbounds i64*, i64** %72, i64 0
  %74 = load i64*, i64** %73, align 8
  store i64* %74, i64** %30, align 8
  %75 = load i32, i32* %24, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %240, %4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %25, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %243

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @GRID_SIZE, align 4
  %83 = srem i32 %81, %82
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @GRID_SIZE, align 4
  %86 = sdiv i32 %84, %85
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %26, align 4
  %88 = load i32, i32* %10, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* @GRID_SIZE, align 4
  %91 = sdiv i32 %89, %90
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %26, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  %95 = mul nsw i32 %92, %94
  %96 = load i32, i32* @GRID_SIZE, align 4
  %97 = sdiv i32 %95, %96
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %27, align 4
  %99 = load i32, i32* %11, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* @GRID_SIZE, align 4
  %102 = sdiv i32 %100, %101
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %27, align 4
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  %106 = mul nsw i32 %103, %105
  %107 = load i32, i32* @GRID_SIZE, align 4
  %108 = sdiv i32 %106, %107
  store i32 %108, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %109

109:                                              ; preds = %117, %80
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* @NUM_CHANNELS, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %34, i64 %115
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %18, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %18, align 4
  br label %109

120:                                              ; preds = %109
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %179, %120
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %183

126:                                              ; preds = %122
  %127 = load i64*, i64** %30, align 8
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %28, align 4
  %130 = mul nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %127, i64 %131
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @NUM_CHANNELS, align 4
  %135 = mul nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %132, i64 %136
  store i64* %137, i64** %22, align 8
  %138 = load i32, i32* %12, align 4
  store i32 %138, i32* %16, align 4
  br label %139

139:                                              ; preds = %174, %126
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %178

143:                                              ; preds = %139
  %144 = load i64*, i64** %22, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i32, i32* %34, i64 0
  %148 = load i32, i32* %147, align 16
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %146
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 16
  %152 = load i64*, i64** %22, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 1
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds i32, i32* %34, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, %154
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %155, align 4
  %160 = load i64*, i64** %22, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 2
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds i32, i32* %34, i64 2
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %165, %162
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %163, align 8
  %168 = load i32, i32* @NUM_CHANNELS, align 4
  %169 = load i32, i32* %29, align 4
  %170 = mul nsw i32 %168, %169
  %171 = load i64*, i64** %22, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  store i64* %173, i64** %22, align 8
  br label %174

174:                                              ; preds = %143
  %175 = load i32, i32* %29, align 4
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %16, align 4
  br label %139

178:                                              ; preds = %139
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %29, align 4
  %181 = load i32, i32* %17, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %17, align 4
  br label %122

183:                                              ; preds = %122
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %12, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load i32, i32* %29, align 4
  %188 = add nsw i32 %186, %187
  %189 = sub nsw i32 %188, 1
  %190 = load i32, i32* %29, align 4
  %191 = sdiv i32 %189, %190
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %14, align 4
  %194 = sub nsw i32 %192, %193
  %195 = load i32, i32* %29, align 4
  %196 = add nsw i32 %194, %195
  %197 = sub nsw i32 %196, 1
  %198 = load i32, i32* %29, align 4
  %199 = sdiv i32 %197, %198
  %200 = mul nsw i32 %191, %199
  store i32 %200, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %201

201:                                              ; preds = %236, %183
  %202 = load i32, i32* %18, align 4
  %203 = load i32, i32* @NUM_CHANNELS, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %239

205:                                              ; preds = %201
  %206 = load i32, i32* %19, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %205
  %209 = load i32, i32* %19, align 4
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %34, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = sdiv i32 %213, %209
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %208, %205
  %216 = load i32, i32* %18, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %34, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i32***, i32**** %223, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32**, i32*** %224, i64 %226
  %228 = load i32**, i32*** %227, align 8
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32*, i32** %228, i64 %230
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %18, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %219, i32* %235, align 4
  br label %236

236:                                              ; preds = %215
  %237 = load i32, i32* %18, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %18, align 4
  br label %201

239:                                              ; preds = %201
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %9, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %9, align 4
  br label %76

243:                                              ; preds = %76
  %244 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %244)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
