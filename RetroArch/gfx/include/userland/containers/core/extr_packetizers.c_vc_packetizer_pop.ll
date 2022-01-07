; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_packetizers.c_vc_packetizer_pop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_packetizers.c_vc_packetizer_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_13__**, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32*, %struct.TYPE_13__*, %struct.TYPE_13__* }

@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@VC_PACKETIZER_FLAG_FORCE_RELEASE_INPUT = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_INCOMPLETE_DATA = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_packetizer_pop(%struct.TYPE_12__* %0, %struct.TYPE_13__** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__**, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__** %1, %struct.TYPE_13__*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %8, align 8
  br label %16

16:                                               ; preds = %41, %31, %3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %18 = call %struct.TYPE_13__* @bytestream_pop(%struct.TYPE_14__* %17)
  %19 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %19, align 8
  %20 = icmp ne %struct.TYPE_13__* %18, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = icmp ne %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = icmp ne %struct.TYPE_13__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = call i32 @free(%struct.TYPE_13__* %33)
  br label %16

35:                                               ; preds = %25, %21
  %36 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = icmp ne %struct.TYPE_13__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %40, i32* %4, align 4
  br label %143

41:                                               ; preds = %35
  br label %16

42:                                               ; preds = %16
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @VC_PACKETIZER_FLAG_FORCE_RELEASE_INPUT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @VC_CONTAINER_ERROR_INCOMPLETE_DATA, align 4
  store i32 %48, i32* %4, align 4
  br label %143

49:                                               ; preds = %42
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %9, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  store %struct.TYPE_13__** %54, %struct.TYPE_13__*** %11, align 8
  br label %55

55:                                               ; preds = %66, %49
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %57 = icmp ne %struct.TYPE_13__* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = icmp ne %struct.TYPE_13__* %61, null
  br label %63

63:                                               ; preds = %58, %55
  %64 = phi i1 [ false, %55 ], [ %62, %58 ]
  br i1 %64, label %65, label %72

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  store %struct.TYPE_13__** %68, %struct.TYPE_13__*** %11, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %9, align 8
  br label %55

72:                                               ; preds = %63
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %74 = icmp ne %struct.TYPE_13__* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %77 = icmp ne %struct.TYPE_13__* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = icmp ne %struct.TYPE_13__* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %78, %72
  %84 = load i32, i32* @VC_CONTAINER_ERROR_INCOMPLETE_DATA, align 4
  store i32 %84, i32* %4, align 4
  br label %143

85:                                               ; preds = %78, %75
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 32, %88
  %90 = call %struct.TYPE_13__* @malloc(i64 %89)
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %10, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %92 = icmp ne %struct.TYPE_13__* %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 4
  store i32 %94, i32* %4, align 4
  br label %143

95:                                               ; preds = %85
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %98 = bitcast %struct.TYPE_13__* %96 to i8*
  %99 = bitcast %struct.TYPE_13__* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 32, i1 false)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 3
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %102, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = icmp ne %struct.TYPE_13__* %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %95
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  store %struct.TYPE_13__** %109, %struct.TYPE_13__*** %111, align 8
  br label %112

112:                                              ; preds = %107, %95
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %117 = icmp eq %struct.TYPE_13__* %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  store %struct.TYPE_13__* %119, %struct.TYPE_13__** %121, align 8
  br label %122

122:                                              ; preds = %118, %112
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %124 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  store %struct.TYPE_13__* %123, %struct.TYPE_13__** %124, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i64 1
  %127 = bitcast %struct.TYPE_13__* %126 to i32*
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  store i32* %127, i32** %129, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @memcpy(i32* %132, i32* %135, i64 %138)
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %141 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  store %struct.TYPE_13__* %140, %struct.TYPE_13__** %141, align 8
  %142 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %122, %93, %83, %47, %39
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_13__* @bytestream_pop(%struct.TYPE_14__*) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @malloc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
