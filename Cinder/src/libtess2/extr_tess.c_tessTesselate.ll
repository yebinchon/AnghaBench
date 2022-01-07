; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_tess.c_tessTesselate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_tess.c_tessTesselate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32*, %struct.TYPE_9__, i32, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i32, i32 (i32, i32*)* }

@TESS_BOUNDARY_CONTOURS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tessTesselate(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 1, i32* %15, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 7
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %6
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32 (i32, i32*)*, i32 (i32, i32*)** %23, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 %24(i32 %28, i32* %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 7
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %20, %6
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32 (i32, i32*)*, i32 (i32, i32*)** %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 6
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 %44(i32 %48, i32* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 6
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %40, %35
  %56 = load i32*, i32** %13, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %80

58:                                               ; preds = %55
  %59 = load i32*, i32** %13, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %68, i32* %72, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %58, %55
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 2
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 2, i32* %12, align 4
  br label %87

87:                                               ; preds = %86, %80
  %88 = load i32, i32* %12, align 4
  %89 = icmp sgt i32 %88, 3
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 3, i32* %12, align 4
  br label %91

91:                                               ; preds = %90, %87
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @setjmp(i32 %94) #3
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 0, i32* %7, align 4
  br label %168

98:                                               ; preds = %91
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store i32 0, i32* %7, align 4
  br label %168

104:                                              ; preds = %98
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %106 = call i32 @tessProjectPolygon(%struct.TYPE_8__* %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %108 = call i32 @tessComputeInterior(%struct.TYPE_8__* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %104
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @longjmp(i32 %113, i32 1)
  br label %115

115:                                              ; preds = %110, %104
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %14, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @TESS_BOUNDARY_CONTOURS, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i32*, i32** %14, align 8
  %124 = load i32, i32* @TRUE, align 4
  %125 = call i32 @tessMeshSetWindingNumber(i32* %123, i32 1, i32 %124)
  store i32 %125, i32* %15, align 4
  br label %129

126:                                              ; preds = %115
  %127 = load i32*, i32** %14, align 8
  %128 = call i32 @tessMeshTessellateInterior(i32* %127)
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %126, %122
  %130 = load i32, i32* %15, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @longjmp(i32 %135, i32 1)
  br label %137

137:                                              ; preds = %132, %129
  %138 = load i32*, i32** %14, align 8
  %139 = call i32 @tessMeshCheckMesh(i32* %138)
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @TESS_BOUNDARY_CONTOURS, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %145 = load i32*, i32** %14, align 8
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @OutputContours(%struct.TYPE_8__* %144, i32* %145, i32 %146)
  br label %155

148:                                              ; preds = %137
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %150 = load i32*, i32** %14, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @OutputPolymesh(%struct.TYPE_8__* %149, i32* %150, i32 %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %148, %143
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 3
  %158 = load i32*, i32** %14, align 8
  %159 = call i32 @tessMeshDeleteMesh(%struct.TYPE_9__* %157, i32* %158)
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  store i32* null, i32** %161, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %155
  store i32 0, i32* %7, align 4
  br label %168

167:                                              ; preds = %155
  store i32 1, i32* %7, align 4
  br label %168

168:                                              ; preds = %167, %166, %103, %97
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #1

declare dso_local i32 @tessProjectPolygon(%struct.TYPE_8__*) #2

declare dso_local i32 @tessComputeInterior(%struct.TYPE_8__*) #2

declare dso_local i32 @longjmp(i32, i32) #2

declare dso_local i32 @tessMeshSetWindingNumber(i32*, i32, i32) #2

declare dso_local i32 @tessMeshTessellateInterior(i32*) #2

declare dso_local i32 @tessMeshCheckMesh(i32*) #2

declare dso_local i32 @OutputContours(%struct.TYPE_8__*, i32*, i32) #2

declare dso_local i32 @OutputPolymesh(%struct.TYPE_8__*, i32*, i32, i32, i32) #2

declare dso_local i32 @tessMeshDeleteMesh(%struct.TYPE_9__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
