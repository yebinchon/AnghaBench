; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_SurfaceAsTristrip.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_SurfaceAsTristrip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64 }

@MAX_INDICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"MAX_INDICES exceeded for surface\00", align 1
@drawVerts = common dso_local global i64 0, align 8
@c_fanSurfaces = common dso_local global i32 0, align 4
@c_stripSurfaces = common dso_local global i32 0, align 4
@numDrawIndexes = common dso_local global i64 0, align 8
@MAX_MAP_DRAW_INDEXES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"MAX_MAP_DRAW_INDEXES\00", align 1
@drawIndexes = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @SurfaceAsTristrip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SurfaceAsTristrip(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %13 = load i32, i32* @MAX_INDICES, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 2
  %21 = mul nsw i32 %20, 3
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MAX_INDICES, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = call i32 @Error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %1
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %177, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %180

34:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %168, %34
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 2
  %41 = load i32, i32* %3, align 4
  %42 = sub nsw i32 %40, %41
  %43 = icmp slt i32 %36, %42
  br i1 %43, label %44, label %171

44:                                               ; preds = %35
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %3, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %50, %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = srem i32 %52, %55
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %57, %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = srem i32 %59, %62
  store i32 %63, i32* %8, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 2
  %68 = load i32, i32* %3, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %69, %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = srem i32 %71, %74
  store i32 %75, i32* %9, align 4
  %76 = load i64, i64* @drawVerts, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @IsTriangleDegenerate(i64 %80, i32 %81, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %44
  br label %171

87:                                               ; preds = %44
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %16, i64 %91
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %16, i64 %96
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %16, i64 %101
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %107, 1
  %109 = load i32, i32* %3, align 4
  %110 = sub nsw i32 %108, %109
  %111 = icmp ne i32 %104, %110
  br i1 %111, label %112, label %167

112:                                              ; preds = %87
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 2
  %117 = load i32, i32* %3, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %118, %119
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = srem i32 %120, %123
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %125, %126
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = srem i32 %127, %130
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 1
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %133, %134
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = srem i32 %135, %138
  store i32 %139, i32* %9, align 4
  %140 = load i64, i64* @drawVerts, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %140, %143
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i64 @IsTriangleDegenerate(i64 %144, i32 %145, i32 %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %112
  br label %171

151:                                              ; preds = %112
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %16, i64 %155
  store i32 %152, i32* %156, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %16, i64 %160
  store i32 %157, i32* %161, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %16, i64 %165
  store i32 %162, i32* %166, align 4
  br label %167

167:                                              ; preds = %151, %87
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %3, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %3, align 4
  br label %35

171:                                              ; preds = %150, %86, %35
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %5, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  br label %180

176:                                              ; preds = %171
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %4, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %4, align 4
  br label %28

180:                                              ; preds = %175, %28
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %5, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load i32, i32* @c_fanSurfaces, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* @c_fanSurfaces, align 4
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %188 = call i32 @SurfaceAsTriFan(%struct.TYPE_4__* %187)
  store i32 1, i32* %12, align 4
  br label %219

189:                                              ; preds = %180
  %190 = load i32, i32* @c_stripSurfaces, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* @c_stripSurfaces, align 4
  %192 = load i64, i64* @numDrawIndexes, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %192, %194
  %196 = load i64, i64* @MAX_MAP_DRAW_INDEXES, align 8
  %197 = icmp sgt i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %189
  %199 = call i32 @Error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %189
  %201 = load i64, i64* @numDrawIndexes, align 8
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 2
  store i64 %201, i64* %203, align 8
  %204 = load i32, i32* %6, align 4
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  %207 = load i64, i64* @drawIndexes, align 8
  %208 = load i64, i64* @numDrawIndexes, align 8
  %209 = add nsw i64 %207, %208
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = mul i64 %211, 4
  %213 = trunc i64 %212 to i32
  %214 = call i32 @memcpy(i64 %209, i32* %16, i32 %213)
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = load i64, i64* @numDrawIndexes, align 8
  %218 = add nsw i64 %217, %216
  store i64 %218, i64* @numDrawIndexes, align 8
  store i32 0, i32* %12, align 4
  br label %219

219:                                              ; preds = %200, %184
  %220 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %220)
  %221 = load i32, i32* %12, align 4
  switch i32 %221, label %223 [
    i32 0, label %222
    i32 1, label %222
  ]

222:                                              ; preds = %219, %219
  ret void

223:                                              ; preds = %219
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Error(i8*) #2

declare dso_local i64 @IsTriangleDegenerate(i64, i32, i32, i32) #2

declare dso_local i32 @SurfaceAsTriFan(%struct.TYPE_4__*) #2

declare dso_local i32 @memcpy(i64, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
