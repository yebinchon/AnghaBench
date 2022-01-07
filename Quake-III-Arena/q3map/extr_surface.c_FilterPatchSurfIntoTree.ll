; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_FilterPatchSurfIntoTree.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_FilterPatchSurfIntoTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32, i32* }

@SUBDIVISION_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FilterPatchSurfIntoTree(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 2
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %22, align 8
  %23 = load i32, i32* @SUBDIVISION_LIMIT, align 4
  %24 = bitcast %struct.TYPE_18__* %8 to { i64, %struct.TYPE_15__* }*
  %25 = getelementptr inbounds { i64, %struct.TYPE_15__* }, { i64, %struct.TYPE_15__* }* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds { i64, %struct.TYPE_15__* }, { i64, %struct.TYPE_15__* }* %24, i32 0, i32 1
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = call %struct.TYPE_18__* @SubdivideMesh(i64 %26, %struct.TYPE_15__* %28, i32 %23, i32 32)
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %9, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %202, %2
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %205

37:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %198, %37
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %201

45:                                               ; preds = %38
  %46 = call %struct.TYPE_16__* @AllocWinding(i32 3)
  store %struct.TYPE_16__* %46, %struct.TYPE_16__** %10, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %50, %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @VectorCopy(i32 %60, i32 %65)
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %70, %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %74, %75
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @VectorCopy(i32 %81, i32 %86)
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %92, %95
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @VectorCopy(i32 %102, i32 %107)
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  store i32 3, i32* %110, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @FilterMapDrawSurfIntoTree_r(%struct.TYPE_16__* %111, %struct.TYPE_19__* %112, i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %7, align 4
  %121 = call %struct.TYPE_16__* @AllocWinding(i32 3)
  store %struct.TYPE_16__* %121, %struct.TYPE_16__** %10, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = mul nsw i32 %125, %128
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %129, %130
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @VectorCopy(i32 %136, i32 %141)
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = mul nsw i32 %147, %150
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %151, %152
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @VectorCopy(i32 %158, i32 %163)
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = mul nsw i32 %169, %172
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @VectorCopy(i32 %179, i32 %184)
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  store i32 3, i32* %187, align 8
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @FilterMapDrawSurfIntoTree_r(%struct.TYPE_16__* %188, %struct.TYPE_19__* %189, i32 %192)
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %195, %193
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %7, align 4
  br label %198

198:                                              ; preds = %45
  %199 = load i32, i32* %6, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %6, align 4
  br label %38

201:                                              ; preds = %38
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %5, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %5, align 4
  br label %30

205:                                              ; preds = %30
  store i32 0, i32* %5, align 4
  br label %206

206:                                              ; preds = %234, %205
  %207 = load i32, i32* %5, align 4
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 %210, %213
  %215 = icmp slt i32 %207, %214
  br i1 %215, label %216, label %237

216:                                              ; preds = %206
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %218, align 8
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i64 @FilterMapDrawSurfIntoTree(i32 %224, %struct.TYPE_19__* %225, i32 %228)
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %231, %229
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %7, align 4
  br label %234

234:                                              ; preds = %216
  %235 = load i32, i32* %5, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %5, align 4
  br label %206

237:                                              ; preds = %206
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %239 = call i32 @free(%struct.TYPE_18__* %238)
  %240 = load i32, i32* %7, align 4
  ret i32 %240
}

declare dso_local %struct.TYPE_18__* @SubdivideMesh(i64, %struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.TYPE_16__* @AllocWinding(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i64 @FilterMapDrawSurfIntoTree_r(%struct.TYPE_16__*, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @FilterMapDrawSurfIntoTree(i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
