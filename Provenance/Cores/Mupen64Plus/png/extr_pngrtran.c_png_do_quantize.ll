; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrtran.c_png_do_quantize.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrtran.c_png_do_quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64, i32, i32, i8* }

@.str = private unnamed_addr constant [19 x i8] c"in png_do_quantize\00", align 1
@PNG_COLOR_TYPE_RGB = common dso_local global i64 0, align 8
@PNG_QUANTIZE_RED_BITS = common dso_local global i32 0, align 4
@PNG_QUANTIZE_GREEN_BITS = common dso_local global i32 0, align 4
@PNG_QUANTIZE_BLUE_BITS = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_PALETTE = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*, i8**, i8**)* @png_do_quantize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_do_quantize(%struct.TYPE_3__* %0, i64* %1, i8** %2, i8** %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %29, label %243

29:                                               ; preds = %4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PNG_COLOR_TYPE_RGB, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %119

35:                                               ; preds = %29
  %36 = load i8**, i8*** %7, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %38, label %119

38:                                               ; preds = %35
  %39 = load i64*, i64** %6, align 8
  store i64* %39, i64** %9, align 8
  %40 = load i64*, i64** %6, align 8
  store i64* %40, i64** %10, align 8
  store i64 0, i64* %11, align 8
  br label %41

41:                                               ; preds = %98, %38
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %101

45:                                               ; preds = %41
  %46 = load i64*, i64** %9, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 1
  store i64* %47, i64** %9, align 8
  %48 = load i64, i64* %46, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %13, align 4
  %50 = load i64*, i64** %9, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %9, align 8
  %52 = load i64, i64* %50, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %14, align 4
  %54 = load i64*, i64** %9, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %9, align 8
  %56 = load i64, i64* %54, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @PNG_QUANTIZE_RED_BITS, align 4
  %60 = sub nsw i32 8, %59
  %61 = ashr i32 %58, %60
  %62 = load i32, i32* @PNG_QUANTIZE_RED_BITS, align 4
  %63 = shl i32 1, %62
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %61, %64
  %66 = load i32, i32* @PNG_QUANTIZE_GREEN_BITS, align 4
  %67 = load i32, i32* @PNG_QUANTIZE_BLUE_BITS, align 4
  %68 = add nsw i32 %66, %67
  %69 = shl i32 %65, %68
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @PNG_QUANTIZE_GREEN_BITS, align 4
  %72 = sub nsw i32 8, %71
  %73 = ashr i32 %70, %72
  %74 = load i32, i32* @PNG_QUANTIZE_GREEN_BITS, align 4
  %75 = shl i32 1, %74
  %76 = sub nsw i32 %75, 1
  %77 = and i32 %73, %76
  %78 = load i32, i32* @PNG_QUANTIZE_BLUE_BITS, align 4
  %79 = shl i32 %77, %78
  %80 = or i32 %69, %79
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @PNG_QUANTIZE_BLUE_BITS, align 4
  %83 = sub nsw i32 8, %82
  %84 = ashr i32 %81, %83
  %85 = load i32, i32* @PNG_QUANTIZE_BLUE_BITS, align 4
  %86 = shl i32 1, %85
  %87 = sub nsw i32 %86, 1
  %88 = and i32 %84, %87
  %89 = or i32 %80, %88
  store i32 %89, i32* %16, align 4
  %90 = load i8**, i8*** %7, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = load i64*, i64** %10, align 8
  %97 = getelementptr inbounds i64, i64* %96, i32 1
  store i64* %97, i64** %10, align 8
  store i64 %95, i64* %96, align 8
  br label %98

98:                                               ; preds = %45
  %99 = load i64, i64* %11, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %11, align 8
  br label %41

101:                                              ; preds = %41
  %102 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  store i32 1, i32* %106, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* %12, align 8
  %116 = call i8* @PNG_ROWBYTES(i32 %114, i64 %115)
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 5
  store i8* %116, i8** %118, align 8
  br label %242

119:                                              ; preds = %35, %29
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @PNG_COLOR_TYPE_RGB_ALPHA, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %211

125:                                              ; preds = %119
  %126 = load i8**, i8*** %7, align 8
  %127 = icmp ne i8** %126, null
  br i1 %127, label %128, label %211

128:                                              ; preds = %125
  %129 = load i64*, i64** %6, align 8
  store i64* %129, i64** %9, align 8
  %130 = load i64*, i64** %6, align 8
  store i64* %130, i64** %10, align 8
  store i64 0, i64* %11, align 8
  br label %131

131:                                              ; preds = %190, %128
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* %12, align 8
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %193

135:                                              ; preds = %131
  %136 = load i64*, i64** %9, align 8
  %137 = getelementptr inbounds i64, i64* %136, i32 1
  store i64* %137, i64** %9, align 8
  %138 = load i64, i64* %136, align 8
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %17, align 4
  %140 = load i64*, i64** %9, align 8
  %141 = getelementptr inbounds i64, i64* %140, i32 1
  store i64* %141, i64** %9, align 8
  %142 = load i64, i64* %140, align 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %18, align 4
  %144 = load i64*, i64** %9, align 8
  %145 = getelementptr inbounds i64, i64* %144, i32 1
  store i64* %145, i64** %9, align 8
  %146 = load i64, i64* %144, align 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %19, align 4
  %148 = load i64*, i64** %9, align 8
  %149 = getelementptr inbounds i64, i64* %148, i32 1
  store i64* %149, i64** %9, align 8
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* @PNG_QUANTIZE_RED_BITS, align 4
  %152 = sub nsw i32 8, %151
  %153 = ashr i32 %150, %152
  %154 = load i32, i32* @PNG_QUANTIZE_RED_BITS, align 4
  %155 = shl i32 1, %154
  %156 = sub nsw i32 %155, 1
  %157 = and i32 %153, %156
  %158 = load i32, i32* @PNG_QUANTIZE_GREEN_BITS, align 4
  %159 = load i32, i32* @PNG_QUANTIZE_BLUE_BITS, align 4
  %160 = add nsw i32 %158, %159
  %161 = shl i32 %157, %160
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* @PNG_QUANTIZE_GREEN_BITS, align 4
  %164 = sub nsw i32 8, %163
  %165 = ashr i32 %162, %164
  %166 = load i32, i32* @PNG_QUANTIZE_GREEN_BITS, align 4
  %167 = shl i32 1, %166
  %168 = sub nsw i32 %167, 1
  %169 = and i32 %165, %168
  %170 = load i32, i32* @PNG_QUANTIZE_BLUE_BITS, align 4
  %171 = shl i32 %169, %170
  %172 = or i32 %161, %171
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* @PNG_QUANTIZE_BLUE_BITS, align 4
  %175 = sub nsw i32 8, %174
  %176 = ashr i32 %173, %175
  %177 = load i32, i32* @PNG_QUANTIZE_BLUE_BITS, align 4
  %178 = shl i32 1, %177
  %179 = sub nsw i32 %178, 1
  %180 = and i32 %176, %179
  %181 = or i32 %172, %180
  store i32 %181, i32* %20, align 4
  %182 = load i8**, i8*** %7, align 8
  %183 = load i32, i32* %20, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = ptrtoint i8* %186 to i64
  %188 = load i64*, i64** %10, align 8
  %189 = getelementptr inbounds i64, i64* %188, i32 1
  store i64* %189, i64** %10, align 8
  store i64 %187, i64* %188, align 8
  br label %190

190:                                              ; preds = %135
  %191 = load i64, i64* %11, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %11, align 8
  br label %131

193:                                              ; preds = %131
  %194 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 2
  store i64 %194, i64* %196, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 3
  store i32 1, i32* %198, align 8
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 4
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = load i64, i64* %12, align 8
  %208 = call i8* @PNG_ROWBYTES(i32 %206, i64 %207)
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 5
  store i8* %208, i8** %210, align 8
  br label %241

211:                                              ; preds = %125, %119
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %240

217:                                              ; preds = %211
  %218 = load i8**, i8*** %8, align 8
  %219 = icmp ne i8** %218, null
  br i1 %219, label %220, label %240

220:                                              ; preds = %217
  %221 = load i64*, i64** %6, align 8
  store i64* %221, i64** %9, align 8
  store i64 0, i64* %11, align 8
  br label %222

222:                                              ; preds = %234, %220
  %223 = load i64, i64* %11, align 8
  %224 = load i64, i64* %12, align 8
  %225 = icmp slt i64 %223, %224
  br i1 %225, label %226, label %239

226:                                              ; preds = %222
  %227 = load i8**, i8*** %8, align 8
  %228 = load i64*, i64** %9, align 8
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds i8*, i8** %227, i64 %229
  %231 = load i8*, i8** %230, align 8
  %232 = ptrtoint i8* %231 to i64
  %233 = load i64*, i64** %9, align 8
  store i64 %232, i64* %233, align 8
  br label %234

234:                                              ; preds = %226
  %235 = load i64, i64* %11, align 8
  %236 = add nsw i64 %235, 1
  store i64 %236, i64* %11, align 8
  %237 = load i64*, i64** %9, align 8
  %238 = getelementptr inbounds i64, i64* %237, i32 1
  store i64* %238, i64** %9, align 8
  br label %222

239:                                              ; preds = %222
  br label %240

240:                                              ; preds = %239, %217, %211
  br label %241

241:                                              ; preds = %240, %193
  br label %242

242:                                              ; preds = %241, %101
  br label %243

243:                                              ; preds = %242, %4
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i8* @PNG_ROWBYTES(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
