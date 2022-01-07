; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_gsubdiv.c_AAS_SplitArea.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_gsubdiv.c_AAS_SplitArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__*, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_21__**, i32* }

@mapplanes = common dso_local global %struct.TYPE_23__* null, align 8
@.str = private unnamed_addr constant [56 x i8] c"AAS_SplitArea: no split winding when splitting area %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"AAS_SplitArea: front area without faces\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"AAS_SplitArea: back area without faces\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_SplitArea(%struct.TYPE_22__* %0, i32 %1, %struct.TYPE_22__** %2, %struct.TYPE_22__** %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__**, align 8
  %8 = alloca %struct.TYPE_22__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_22__** %2, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__** %3, %struct.TYPE_22__*** %8, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %21 = call i32 @AAS_FlipAreaFaces(%struct.TYPE_22__* %20)
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %23 = call i32 @AAS_CheckArea(%struct.TYPE_22__* %22)
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** @mapplanes, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i64 %26
  store %struct.TYPE_23__* %27, %struct.TYPE_23__** %19, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32* @AAS_SplitWinding(%struct.TYPE_22__* %28, i32 %29)
  store i32* %30, i32** %18, align 8
  %31 = load i32*, i32** %18, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %4
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @Error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %4
  %39 = call %struct.TYPE_21__* (...) @AAS_AllocTmpFace()
  store %struct.TYPE_21__* %39, %struct.TYPE_21__** %16, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32*, i32** %18, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 4
  store i32* %43, i32** %45, align 8
  %46 = call %struct.TYPE_22__* (...) @AAS_AllocTmpArea()
  %47 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* %46, %struct.TYPE_22__** %47, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 4
  store i32 %50, i32* %53, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %68, align 8
  %69 = call %struct.TYPE_22__* (...) @AAS_AllocTmpArea()
  %70 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  store %struct.TYPE_22__* %69, %struct.TYPE_22__** %70, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 4
  store i32 %73, i32* %76, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 4
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 8
  %89 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %91, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %93 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %93, align 8
  %95 = call i32 @AAS_AddFaceSideToArea(%struct.TYPE_21__* %92, i32 0, %struct.TYPE_22__* %94)
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %97 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %97, align 8
  %99 = call i32 @AAS_AddFaceSideToArea(%struct.TYPE_21__* %96, i32 1, %struct.TYPE_22__* %98)
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %101, align 8
  store %struct.TYPE_21__* %102, %struct.TYPE_21__** %13, align 8
  br label %103

103:                                              ; preds = %201, %38
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %105 = icmp ne %struct.TYPE_21__* %104, null
  br i1 %105, label %106, label %203

106:                                              ; preds = %103
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %108, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %111 = icmp ne %struct.TYPE_22__* %109, %110
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %9, align 4
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %115, i64 %117
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %118, align 8
  store %struct.TYPE_21__* %119, %struct.TYPE_21__** %17, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %121, align 8
  store %struct.TYPE_22__* %122, %struct.TYPE_22__** %10, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %124, align 8
  store %struct.TYPE_22__* %125, %struct.TYPE_22__** %11, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %127 = icmp ne %struct.TYPE_22__* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %106
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %131 = call i32 @AAS_RemoveFaceFromArea(%struct.TYPE_21__* %129, %struct.TYPE_22__* %130)
  br label %132

132:                                              ; preds = %128, %106
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %134 = icmp ne %struct.TYPE_22__* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %138 = call i32 @AAS_RemoveFaceFromArea(%struct.TYPE_21__* %136, %struct.TYPE_22__* %137)
  br label %139

139:                                              ; preds = %135, %132
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @AAS_SplitFace(%struct.TYPE_21__* %140, i32 %143, i32 %146, %struct.TYPE_21__** %14, %struct.TYPE_21__** %15)
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %149 = call i32 @AAS_FreeTmpFace(%struct.TYPE_21__* %148)
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %139
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %153, %struct.TYPE_22__** %12, align 8
  br label %156

154:                                              ; preds = %139
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* %155, %struct.TYPE_22__** %12, align 8
  br label %156

156:                                              ; preds = %154, %152
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %158 = icmp ne %struct.TYPE_22__* %157, null
  br i1 %158, label %159, label %182

159:                                              ; preds = %156
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %161 = icmp ne %struct.TYPE_21__* %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %169 = call i32 @AAS_AddFaceSideToArea(%struct.TYPE_21__* %163, i32 %167, %struct.TYPE_22__* %168)
  br label %170

170:                                              ; preds = %162, %159
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %172 = icmp ne %struct.TYPE_21__* %171, null
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %180 = call i32 @AAS_AddFaceSideToArea(%struct.TYPE_21__* %174, i32 %178, %struct.TYPE_22__* %179)
  br label %181

181:                                              ; preds = %173, %170
  br label %182

182:                                              ; preds = %181, %156
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %184 = icmp ne %struct.TYPE_21__* %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %188, align 8
  %190 = call i32 @AAS_AddFaceSideToArea(%struct.TYPE_21__* %186, i32 %187, %struct.TYPE_22__* %189)
  br label %191

191:                                              ; preds = %185, %182
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %193 = icmp ne %struct.TYPE_21__* %192, null
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %196 = load i32, i32* %9, align 4
  %197 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %197, align 8
  %199 = call i32 @AAS_AddFaceSideToArea(%struct.TYPE_21__* %195, i32 %196, %struct.TYPE_22__* %198)
  br label %200

200:                                              ; preds = %194, %191
  br label %201

201:                                              ; preds = %200
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  store %struct.TYPE_21__* %202, %struct.TYPE_21__** %13, align 8
  br label %103

203:                                              ; preds = %103
  %204 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %206, align 8
  %208 = icmp ne %struct.TYPE_21__* %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %203
  %210 = call i32 @Log_Print(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %203
  %212 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %214, align 8
  %216 = icmp ne %struct.TYPE_21__* %215, null
  br i1 %216, label %219, label %217

217:                                              ; preds = %211
  %218 = call i32 @Log_Print(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %219

219:                                              ; preds = %217, %211
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 0
  store i32 1, i32* %221, align 8
  %222 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %222, align 8
  %224 = call i32 @AAS_FlipAreaFaces(%struct.TYPE_22__* %223)
  %225 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %225, align 8
  %227 = call i32 @AAS_FlipAreaFaces(%struct.TYPE_22__* %226)
  %228 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %228, align 8
  %230 = call i32 @AAS_CheckArea(%struct.TYPE_22__* %229)
  %231 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %231, align 8
  %233 = call i32 @AAS_CheckArea(%struct.TYPE_22__* %232)
  ret void
}

declare dso_local i32 @AAS_FlipAreaFaces(%struct.TYPE_22__*) #1

declare dso_local i32 @AAS_CheckArea(%struct.TYPE_22__*) #1

declare dso_local i32* @AAS_SplitWinding(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @Error(i8*, i32) #1

declare dso_local %struct.TYPE_21__* @AAS_AllocTmpFace(...) #1

declare dso_local %struct.TYPE_22__* @AAS_AllocTmpArea(...) #1

declare dso_local i32 @AAS_AddFaceSideToArea(%struct.TYPE_21__*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @AAS_RemoveFaceFromArea(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @AAS_SplitFace(%struct.TYPE_21__*, i32, i32, %struct.TYPE_21__**, %struct.TYPE_21__**) #1

declare dso_local i32 @AAS_FreeTmpFace(%struct.TYPE_21__*) #1

declare dso_local i32 @Log_Print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
