; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colormatrix.c_process_slice_yuv444p.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colormatrix.c_process_slice_yuv444p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32*, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @process_slice_yuv444p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_slice_yuv444p(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = bitcast i8* %37 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %9, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 7
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %10, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %11, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %12, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %8, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  %59 = mul nsw i32 %56, %58
  %60 = load i32, i32* %8, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %15, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %16, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %17, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %17, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  store i8* %81, i8** %18, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 2
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %17, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  store i8* %91, i8** %19, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %16, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  store i8* %101, i8** %20, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %21, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %22, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  %114 = load i8**, i8*** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 1
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %22, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %116, i64 %120
  store i8* %121, i8** %23, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 2
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %22, align 4
  %129 = mul nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %126, i64 %130
  store i8* %131, i8** %24, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 3
  %134 = load i8**, i8*** %133, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %21, align 4
  %139 = mul nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %136, i64 %140
  store i8* %141, i8** %25, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %26, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %27, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %28, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %29, align 4
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %30, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %31, align 4
  %160 = load i32, i32* %14, align 4
  store i32 %160, i32* %33, align 4
  br label %161

161:                                              ; preds = %265, %4
  %162 = load i32, i32* %33, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %268

165:                                              ; preds = %161
  store i32 0, i32* %32, align 4
  br label %166

166:                                              ; preds = %237, %165
  %167 = load i32, i32* %32, align 4
  %168 = load i32, i32* %13, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %240

170:                                              ; preds = %166
  %171 = load i8*, i8** %18, align 8
  %172 = load i32, i32* %32, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = sub nsw i32 %176, 128
  store i32 %177, i32* %34, align 4
  %178 = load i8*, i8** %19, align 8
  %179 = load i32, i32* %32, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = sub nsw i32 %183, 128
  store i32 %184, i32* %35, align 4
  %185 = load i32, i32* %26, align 4
  %186 = load i32, i32* %34, align 4
  %187 = mul nsw i32 %185, %186
  %188 = load i32, i32* %27, align 4
  %189 = load i32, i32* %35, align 4
  %190 = mul nsw i32 %188, %189
  %191 = add nsw i32 %187, %190
  %192 = add nsw i32 %191, 1081344
  store i32 %192, i32* %36, align 4
  %193 = load i8*, i8** %20, align 8
  %194 = load i32, i32* %32, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = sub nsw i32 %198, 16
  %200 = mul nsw i32 65536, %199
  %201 = load i32, i32* %36, align 4
  %202 = add nsw i32 %200, %201
  %203 = ashr i32 %202, 16
  %204 = call zeroext i8 @CB(i32 %203)
  %205 = load i8*, i8** %25, align 8
  %206 = load i32, i32* %32, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  store i8 %204, i8* %208, align 1
  %209 = load i32, i32* %28, align 4
  %210 = load i32, i32* %34, align 4
  %211 = mul nsw i32 %209, %210
  %212 = load i32, i32* %29, align 4
  %213 = load i32, i32* %35, align 4
  %214 = mul nsw i32 %212, %213
  %215 = add nsw i32 %211, %214
  %216 = add nsw i32 %215, 8421376
  %217 = ashr i32 %216, 16
  %218 = call zeroext i8 @CB(i32 %217)
  %219 = load i8*, i8** %23, align 8
  %220 = load i32, i32* %32, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  store i8 %218, i8* %222, align 1
  %223 = load i32, i32* %30, align 4
  %224 = load i32, i32* %34, align 4
  %225 = mul nsw i32 %223, %224
  %226 = load i32, i32* %31, align 4
  %227 = load i32, i32* %35, align 4
  %228 = mul nsw i32 %226, %227
  %229 = add nsw i32 %225, %228
  %230 = add nsw i32 %229, 8421376
  %231 = ashr i32 %230, 16
  %232 = call zeroext i8 @CB(i32 %231)
  %233 = load i8*, i8** %24, align 8
  %234 = load i32, i32* %32, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %233, i64 %235
  store i8 %232, i8* %236, align 1
  br label %237

237:                                              ; preds = %170
  %238 = load i32, i32* %32, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %32, align 4
  br label %166

240:                                              ; preds = %166
  %241 = load i32, i32* %16, align 4
  %242 = load i8*, i8** %20, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  store i8* %244, i8** %20, align 8
  %245 = load i32, i32* %21, align 4
  %246 = load i8*, i8** %25, align 8
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  store i8* %248, i8** %25, align 8
  %249 = load i32, i32* %17, align 4
  %250 = load i8*, i8** %18, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i8, i8* %250, i64 %251
  store i8* %252, i8** %18, align 8
  %253 = load i32, i32* %17, align 4
  %254 = load i8*, i8** %19, align 8
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  store i8* %256, i8** %19, align 8
  %257 = load i32, i32* %22, align 4
  %258 = load i8*, i8** %23, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i8, i8* %258, i64 %259
  store i8* %260, i8** %23, align 8
  %261 = load i32, i32* %22, align 4
  %262 = load i8*, i8** %24, align 8
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i8, i8* %262, i64 %263
  store i8* %264, i8** %24, align 8
  br label %265

265:                                              ; preds = %240
  %266 = load i32, i32* %33, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %33, align 4
  br label %161

268:                                              ; preds = %161
  ret i32 0
}

declare dso_local zeroext i8 @CB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
