; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_faces.c_FixFaceEdges.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_faces.c_FixFaceEdges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32*, i32, i64*, i64 }

@MAX_SUPERVERTS = common dso_local global i32 0, align 4
@numsuperverts = common dso_local global i32 0, align 4
@dvertexes = common dso_local global %struct.TYPE_6__* null, align 8
@edge_start = common dso_local global i32 0, align 4
@edge_dir = common dso_local global i32 0, align 4
@c_facecollapse = common dso_local global i32 0, align 4
@c_badstartverts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FixFaceEdges(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %15 = load i32, i32* @MAX_SUPERVERTS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* @MAX_SUPERVERTS, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %26, %2
  store i32 1, i32* %14, align 4
  br label %175

41:                                               ; preds = %33
  store i32 0, i32* @numsuperverts, align 4
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %110, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %113

48:                                               ; preds = %42
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %5, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = srem i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %58, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %6, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dvertexes, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @edge_start, align 4
  %75 = call i32 @VectorCopy(i32 %73, i32 %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dvertexes, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @VectorCopy(i32 %81, i32 %82)
  %84 = load i32, i32* @edge_start, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @FindEdgeVerts(i32 %84, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @edge_start, align 4
  %89 = load i32, i32* @edge_dir, align 4
  %90 = call i32 @VectorSubtract(i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* @edge_dir, align 4
  %92 = call i32 @VectorNormalize(i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* @numsuperverts, align 4
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %21, i64 %95
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @TestEdge(i32 0, i32 %97, i32 %98, i32 %99, i32 0)
  %101 = load i32, i32* @numsuperverts, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %21, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %101, %105
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %18, i64 %108
  store i32 %106, i32* %109, align 4
  br label %110

110:                                              ; preds = %48
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %42

113:                                              ; preds = %42
  %114 = load i32, i32* @numsuperverts, align 4
  %115 = icmp slt i32 %114, 3
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load i32, i32* @c_facecollapse, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* @c_facecollapse, align 4
  store i32 1, i32* %14, align 4
  br label %175

121:                                              ; preds = %113
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %151, %121
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %154

128:                                              ; preds = %122
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %18, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %150

134:                                              ; preds = %128
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %135, %138
  %140 = sub nsw i32 %139, 1
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = srem i32 %140, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %18, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %150

149:                                              ; preds = %134
  br label %154

150:                                              ; preds = %134, %128
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %122

154:                                              ; preds = %149, %122
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %155, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  store i32 1, i32* %162, align 8
  %163 = load i32, i32* @c_badstartverts, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* @c_badstartverts, align 4
  store i32 0, i32* %13, align 4
  br label %170

165:                                              ; preds = %154
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %21, i64 %167
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %13, align 4
  br label %170

170:                                              ; preds = %165, %160
  %171 = load i32*, i32** %3, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @FaceFromSuperverts(i32* %171, %struct.TYPE_5__* %172, i32 %173)
  store i32 0, i32* %14, align 4
  br label %175

175:                                              ; preds = %170, %116, %40
  %176 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %14, align 4
  switch i32 %177, label %179 [
    i32 0, label %178
    i32 1, label %178
  ]

178:                                              ; preds = %175, %175
  ret void

179:                                              ; preds = %175
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VectorCopy(i32, i32) #2

declare dso_local i32 @FindEdgeVerts(i32, i32) #2

declare dso_local i32 @VectorSubtract(i32, i32, i32) #2

declare dso_local i32 @VectorNormalize(i32) #2

declare dso_local i32 @TestEdge(i32, i32, i32, i32, i32) #2

declare dso_local i32 @FaceFromSuperverts(i32*, %struct.TYPE_5__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
