; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qpeg.c_qpeg_decode_intra.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qpeg.c_qpeg_decode_intra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8**, i32, i32, i32)* @qpeg_decode_intra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qpeg_decode_intra(%struct.TYPE_3__* %0, i8** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8**, align 8
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
  %20 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %17, align 4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %10, align 4
  %24 = load i8**, i8*** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %24, i64 %28
  store i8** %29, i8*** %7, align 8
  br label %30

30:                                               ; preds = %257, %5
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @bytestream2_get_bytes_left(i32* %32)
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %18, align 4
  %37 = icmp sgt i32 %36, 0
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi i1 [ false, %30 ], [ %37, %35 ]
  br i1 %39, label %40, label %258

40:                                               ; preds = %38
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i8* @bytestream2_get_byte(i32* %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 252
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %258

48:                                               ; preds = %40
  %49 = load i32, i32* %12, align 4
  %50 = icmp sge i32 %49, 248
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i8* @bytestream2_get_byte(i32* %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %13, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i8* @bytestream2_get_byte(i32* %57)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %12, align 4
  %61 = and i32 %60, 7
  %62 = shl i32 %61, 16
  %63 = load i32, i32* %13, align 4
  %64 = shl i32 %63, 8
  %65 = add nsw i32 %62, %64
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %65, %66
  %68 = add nsw i32 %67, 2
  store i32 %68, i32* %15, align 4
  br label %132

69:                                               ; preds = %48
  %70 = load i32, i32* %12, align 4
  %71 = icmp sge i32 %70, 240
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = call i8* @bytestream2_get_byte(i32* %74)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %12, align 4
  %78 = and i32 %77, 15
  %79 = shl i32 %78, 8
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %79, %80
  %82 = add nsw i32 %81, 2
  store i32 %82, i32* %15, align 4
  br label %131

83:                                               ; preds = %69
  %84 = load i32, i32* %12, align 4
  %85 = icmp sge i32 %84, 224
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %12, align 4
  %88 = and i32 %87, 31
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %15, align 4
  br label %130

90:                                               ; preds = %83
  %91 = load i32, i32* %12, align 4
  %92 = icmp sge i32 %91, 192
  br i1 %92, label %93, label %111

93:                                               ; preds = %90
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = call i8* @bytestream2_get_byte(i32* %95)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %13, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = call i8* @bytestream2_get_byte(i32* %99)
  %101 = ptrtoint i8* %100 to i32
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %12, align 4
  %103 = and i32 %102, 63
  %104 = shl i32 %103, 16
  %105 = load i32, i32* %13, align 4
  %106 = shl i32 %105, 8
  %107 = add nsw i32 %104, %106
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %107, %108
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %16, align 4
  br label %129

111:                                              ; preds = %90
  %112 = load i32, i32* %12, align 4
  %113 = icmp sge i32 %112, 128
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = call i8* @bytestream2_get_byte(i32* %116)
  %118 = ptrtoint i8* %117 to i32
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %12, align 4
  %120 = and i32 %119, 127
  %121 = shl i32 %120, 8
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %121, %122
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %16, align 4
  br label %128

125:                                              ; preds = %111
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %16, align 4
  br label %128

128:                                              ; preds = %125, %114
  br label %129

129:                                              ; preds = %128, %93
  br label %130

130:                                              ; preds = %129, %86
  br label %131

131:                                              ; preds = %130, %72
  br label %132

132:                                              ; preds = %131, %51
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %213

135:                                              ; preds = %132
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = call i8* @bytestream2_get_byte(i32* %137)
  %139 = ptrtoint i8* %138 to i32
  store i32 %139, i32* %19, align 4
  store i32 0, i32* %11, align 4
  br label %140

140:                                              ; preds = %209, %135
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %15, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %212

144:                                              ; preds = %140
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %11, align 4
  %147 = sub nsw i32 %145, %146
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %17, align 4
  %150 = sub nsw i32 %148, %149
  %151 = call i32 @FFMIN(i32 %147, i32 %150)
  store i32 %151, i32* %20, align 4
  %152 = load i8**, i8*** %7, align 8
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* %20, align 4
  %158 = call i32 @memset(i8** %155, i32 %156, i32 %157)
  %159 = load i32, i32* %20, align 4
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %17, align 4
  %162 = load i32, i32* %20, align 4
  %163 = sub nsw i32 %162, 1
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp sge i32 %166, %167
  br i1 %168, label %169, label %208

169:                                              ; preds = %144
  store i32 0, i32* %17, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load i8**, i8*** %7, align 8
  %172 = sext i32 %170 to i64
  %173 = sub i64 0, %172
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  store i8** %174, i8*** %7, align 8
  %175 = load i32, i32* %18, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %18, align 4
  br label %177

177:                                              ; preds = %188, %169
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* %11, align 4
  %180 = sub nsw i32 %178, %179
  %181 = load i32, i32* %9, align 4
  %182 = icmp sgt i32 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = load i32, i32* %18, align 4
  %185 = icmp sgt i32 %184, 0
  br label %186

186:                                              ; preds = %183, %177
  %187 = phi i1 [ false, %177 ], [ %185, %183 ]
  br i1 %187, label %188, label %203

188:                                              ; preds = %186
  %189 = load i8**, i8*** %7, align 8
  %190 = load i32, i32* %19, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @memset(i8** %189, i32 %190, i32 %191)
  %193 = load i32, i32* %8, align 4
  %194 = load i8**, i8*** %7, align 8
  %195 = sext i32 %193 to i64
  %196 = sub i64 0, %195
  %197 = getelementptr inbounds i8*, i8** %194, i64 %196
  store i8** %197, i8*** %7, align 8
  %198 = load i32, i32* %18, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %18, align 4
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %11, align 4
  br label %177

203:                                              ; preds = %186
  %204 = load i32, i32* %18, align 4
  %205 = icmp sle i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  br label %212

207:                                              ; preds = %203
  br label %208

208:                                              ; preds = %207, %144
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  br label %140

212:                                              ; preds = %206, %140
  br label %257

213:                                              ; preds = %132
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = call i32 @bytestream2_get_bytes_left(i32* %215)
  %217 = load i32, i32* %16, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %213
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  %222 = call i32 @bytestream2_get_bytes_left(i32* %221)
  store i32 %222, i32* %16, align 4
  br label %223

223:                                              ; preds = %219, %213
  store i32 0, i32* %11, align 4
  br label %224

224:                                              ; preds = %253, %223
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* %16, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %256

228:                                              ; preds = %224
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 0
  %231 = call i8* @bytestream2_get_byte(i32* %230)
  %232 = load i8**, i8*** %7, align 8
  %233 = load i32, i32* %17, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %17, align 4
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i8*, i8** %232, i64 %235
  store i8* %231, i8** %236, align 8
  %237 = load i32, i32* %17, align 4
  %238 = load i32, i32* %9, align 4
  %239 = icmp sge i32 %237, %238
  br i1 %239, label %240, label %252

240:                                              ; preds = %228
  store i32 0, i32* %17, align 4
  %241 = load i32, i32* %8, align 4
  %242 = load i8**, i8*** %7, align 8
  %243 = sext i32 %241 to i64
  %244 = sub i64 0, %243
  %245 = getelementptr inbounds i8*, i8** %242, i64 %244
  store i8** %245, i8*** %7, align 8
  %246 = load i32, i32* %18, align 4
  %247 = add nsw i32 %246, -1
  store i32 %247, i32* %18, align 4
  %248 = load i32, i32* %18, align 4
  %249 = icmp sle i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %240
  br label %256

251:                                              ; preds = %240
  br label %252

252:                                              ; preds = %251, %228
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %11, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %11, align 4
  br label %224

256:                                              ; preds = %250, %224
  br label %257

257:                                              ; preds = %256, %212
  br label %30

258:                                              ; preds = %47, %38
  ret void
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i8* @bytestream2_get_byte(i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
