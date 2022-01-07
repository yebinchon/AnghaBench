; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_FacetsForTriangleSurface.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_FacetsForTriangleSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32*, i8*, i8* }

@qfalse = common dso_local global i8* null, align 8
@MST_TRIANGLE_SOUP = common dso_local global i64 0, align 8
@qtrue = common dso_local global i8* null, align 8
@drawIndexes = common dso_local global i32* null, align 8
@drawVerts = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VL_FacetsForTriangleSurface(%struct.TYPE_8__* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %19 = load i8*, i8** @qfalse, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MST_TRIANGLE_SOUP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i8*, i8** @qtrue, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  br label %35

31:                                               ; preds = %3
  %32 = load i8*, i8** @qfalse, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %38, 3
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32* @malloc(i32 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %212, %35
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %215

60:                                               ; preds = %54
  %61 = load i32*, i32** @drawIndexes, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 %65, 3
  %67 = add nsw i32 %64, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %61, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %13, align 4
  %71 = load i32*, i32** @drawIndexes, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = mul nsw i32 %75, 3
  %77 = add nsw i32 %74, %76
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %71, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %14, align 4
  %82 = load i32*, i32** @drawIndexes, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = mul nsw i32 %86, 3
  %88 = add nsw i32 %85, %87
  %89 = add nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %82, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %15, align 4
  %93 = load i32*, i32** @drawVerts, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %93, i64 %99
  store i32* %100, i32** %8, align 8
  %101 = load i32*, i32** @drawVerts, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %101, i64 %107
  store i32* %108, i32** %9, align 8
  %109 = load i32*, i32** @drawVerts, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %109, i64 %115
  store i32* %116, i32** %10, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %120, 1
  %122 = icmp ne i32 %117, %121
  br i1 %122, label %123, label %194

123:                                              ; preds = %60
  %124 = load i32*, i32** @drawIndexes, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %7, align 4
  %129 = mul nsw i32 %128, 3
  %130 = add nsw i32 %127, %129
  %131 = add nsw i32 %130, 3
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %124, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %16, align 4
  %135 = load i32*, i32** @drawIndexes, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %7, align 4
  %140 = mul nsw i32 %139, 3
  %141 = add nsw i32 %138, %140
  %142 = add nsw i32 %141, 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %135, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %17, align 4
  %146 = load i32*, i32** @drawIndexes, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %7, align 4
  %151 = mul nsw i32 %150, 3
  %152 = add nsw i32 %149, %151
  %153 = add nsw i32 %152, 5
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %146, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %15, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %193

160:                                              ; preds = %123
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %14, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %193

164:                                              ; preds = %160
  %165 = load i32*, i32** @drawVerts, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %18, align 4
  %170 = add nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %165, i64 %171
  store i32* %172, i32** %11, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %174 = load i32*, i32** %5, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32*, i32** %8, align 8
  %182 = load i32*, i32** %9, align 8
  %183 = load i32*, i32** %11, align 8
  %184 = load i32*, i32** %10, align 8
  %185 = call i64 @VL_GenerateFacetFor4Points(%struct.TYPE_8__* %173, i32* %174, i32* %180, i32* %181, i32* %182, i32* %183, i32* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %164
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  br label %212

192:                                              ; preds = %164
  br label %193

193:                                              ; preds = %192, %160, %123
  br label %194

194:                                              ; preds = %193, %60
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %196 = load i32*, i32** %5, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32*, i32** %8, align 8
  %204 = load i32*, i32** %9, align 8
  %205 = load i32*, i32** %10, align 8
  %206 = call i64 @VL_GenerateFacetFor3Points(%struct.TYPE_8__* %195, i32* %196, i32* %202, i32* %203, i32* %204, i32* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %194
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %12, align 4
  br label %211

211:                                              ; preds = %208, %194
  br label %212

212:                                              ; preds = %211, %187
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %7, align 4
  br label %54

215:                                              ; preds = %54
  %216 = load i32, i32* %12, align 4
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  ret void
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @VL_GenerateFacetFor4Points(%struct.TYPE_8__*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @VL_GenerateFacetFor3Points(%struct.TYPE_8__*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
