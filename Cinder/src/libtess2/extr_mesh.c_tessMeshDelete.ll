; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshDelete.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tessMeshDelete(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 5
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %6, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = icmp ne %struct.TYPE_17__* %15, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = call i32 @KillFace(%struct.TYPE_15__* %22, %struct.TYPE_17__* %25, %struct.TYPE_17__* %28)
  br label %30

30:                                               ; preds = %20, %2
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = icmp eq %struct.TYPE_16__* %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = call i32 @KillVertex(%struct.TYPE_15__* %37, %struct.TYPE_18__* %40, i32* null)
  br label %81

42:                                               ; preds = %30
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %56, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @Splice(%struct.TYPE_16__* %57, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %42
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @bucketAlloc(i32 %67)
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** %8, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %122

73:                                               ; preds = %64
  %74 = load i32*, i32** %8, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = call i32 @MakeFace(i32* %74, %struct.TYPE_16__* %75, %struct.TYPE_17__* %78)
  br label %80

80:                                               ; preds = %73, %42
  br label %81

81:                                               ; preds = %80, %36
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %86 = icmp eq %struct.TYPE_16__* %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  %92 = call i32 @KillVertex(%struct.TYPE_15__* %88, %struct.TYPE_18__* %91, i32* null)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = call i32 @KillFace(%struct.TYPE_15__* %93, %struct.TYPE_17__* %96, %struct.TYPE_17__* null)
  br label %118

98:                                               ; preds = %81
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  store i32 %101, i32* %105, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  store %struct.TYPE_16__* %108, %struct.TYPE_16__** %112, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @Splice(%struct.TYPE_16__* %113, i32 %116)
  br label %118

118:                                              ; preds = %98, %87
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %121 = call i32 @KillEdge(%struct.TYPE_15__* %119, %struct.TYPE_16__* %120)
  store i32 1, i32* %3, align 4
  br label %122

122:                                              ; preds = %118, %72
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @KillFace(%struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @KillVertex(%struct.TYPE_15__*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @Splice(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @bucketAlloc(i32) #1

declare dso_local i32 @MakeFace(i32*, %struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @KillEdge(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
