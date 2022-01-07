; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_vscale.c_lum_planar_vscale.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_vscale.c_lum_planar_vscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_11__*, i64, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32** }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32** }
%struct.TYPE_14__ = type { i32, i64, i64, i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32)* @lum_planar_vscale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lum_planar_vscale(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32**, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %9, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 1, %32
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @FFMAX(i32 %33, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %42, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %52, %60
  store i32 %61, i32* %13, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  store i32** %72, i32*** %14, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  store i32** %83, i32*** %15, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load i32**, i32*** %85, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 0
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %4
  br label %100

94:                                               ; preds = %4
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %95, %98
  br label %100

100:                                              ; preds = %94, %93
  %101 = phi i32 [ 0, %93 ], [ %99, %94 ]
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %88, i64 %102
  store i32* %103, i32** %16, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %124

108:                                              ; preds = %100
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i32 (i32*, i32*, i32, i32, i32)*
  %113 = load i32**, i32*** %14, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i64 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32**, i32*** %15, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 %112(i32* %115, i32* %118, i32 %119, i32 %122, i32 0)
  br label %142

124:                                              ; preds = %100
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i32 (i32*, i32, i32**, i32*, i32, i32, i32)*
  %129 = load i32*, i32** %16, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32**, i32*** %14, align 8
  %134 = load i32**, i32*** %15, align 8
  %135 = getelementptr inbounds i32*, i32** %134, i64 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 %128(i32* %129, i32 %132, i32** %133, i32* %136, i32 %137, i32 %140, i32 0)
  br label %142

142:                                              ; preds = %124, %108
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %249

147:                                              ; preds = %142
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i64 3
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sub nsw i32 %148, %156
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i64 3
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sub nsw i32 %158, %166
  store i32 %167, i32* %18, align 4
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i64 3
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load i32**, i32*** %174, align 8
  %176 = load i32, i32* %17, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %175, i64 %177
  store i32** %178, i32*** %19, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i64 3
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  %186 = load i32**, i32*** %185, align 8
  %187 = load i32, i32* %18, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  store i32** %189, i32*** %20, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 3
  %192 = load i32**, i32*** %191, align 8
  %193 = getelementptr inbounds i32*, i32** %192, i64 1
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %147
  br label %206

200:                                              ; preds = %147
  %201 = load i32, i32* %7, align 4
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = mul nsw i32 %201, %204
  br label %206

206:                                              ; preds = %200, %199
  %207 = phi i32 [ 0, %199 ], [ %205, %200 ]
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %194, i64 %208
  store i32* %209, i32** %21, align 8
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %230

214:                                              ; preds = %206
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = inttoptr i64 %217 to i32 (i32*, i32*, i32, i32, i32)*
  %219 = load i32**, i32*** %19, align 8
  %220 = getelementptr inbounds i32*, i32** %219, i64 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i32**, i32*** %20, align 8
  %223 = getelementptr inbounds i32*, i32** %222, i64 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %10, align 4
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 %218(i32* %221, i32* %224, i32 %225, i32 %228, i32 0)
  br label %248

230:                                              ; preds = %206
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = inttoptr i64 %233 to i32 (i32*, i32, i32**, i32*, i32, i32, i32)*
  %235 = load i32*, i32** %21, align 8
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32**, i32*** %19, align 8
  %240 = load i32**, i32*** %20, align 8
  %241 = getelementptr inbounds i32*, i32** %240, i64 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 %234(i32* %235, i32 %238, i32** %239, i32* %242, i32 %243, i32 %246, i32 0)
  br label %248

248:                                              ; preds = %230, %214
  br label %249

249:                                              ; preds = %248, %142
  ret i32 1
}

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
