; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__ov_d_seek_lap.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__ov_d_seek_lap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32 }

@OPENED = common dso_local global i64 0, align 8
@OV_EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, double, i32 (%struct.TYPE_15__*, double)*)* @_ov_d_seek_lap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ov_d_seek_lap(%struct.TYPE_15__* %0, double %1, i32 (%struct.TYPE_15__*, double)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32 (%struct.TYPE_15__*, double)*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca float**, align 8
  %10 = alloca float**, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store double %1, double* %6, align 8
  store i32 (%struct.TYPE_15__*, double)* %2, i32 (%struct.TYPE_15__*, double)** %7, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OPENED, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @OV_EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %123

27:                                               ; preds = %3
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = call i32 @_ov_initset(%struct.TYPE_15__* %28)
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %19, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %19, align 4
  store i32 %33, i32* %4, align 4
  br label %123

34:                                               ; preds = %27
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = call %struct.TYPE_14__* @ov_info(%struct.TYPE_15__* %35, i32 -1)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %8, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = call i32 @ov_halfrate_p(%struct.TYPE_15__* %37)
  store i32 %38, i32* %17, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %43 = call i32 @vorbis_info_blocksize(%struct.TYPE_14__* %42, i32 0)
  %44 = load i32, i32* %17, align 4
  %45 = add nsw i32 1, %44
  %46 = ashr i32 %43, %45
  store i32 %46, i32* %13, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = call float* @vorbis_window(i32* %48, i32 0)
  store float* %49, float** %11, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 8, %51
  %53 = trunc i64 %52 to i32
  %54 = call i8* @alloca(i32 %53)
  %55 = bitcast i8* %54 to float**
  store float** %55, float*** %9, align 8
  store i32 0, i32* %18, align 4
  br label %56

56:                                               ; preds = %71, %34
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 4, %62
  %64 = trunc i64 %63 to i32
  %65 = call i8* @alloca(i32 %64)
  %66 = bitcast i8* %65 to float*
  %67 = load float**, float*** %9, align 8
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float*, float** %67, i64 %69
  store float* %66, float** %70, align 8
  br label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %18, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %18, align 4
  br label %56

74:                                               ; preds = %56
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load float**, float*** %9, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @_ov_getlap(%struct.TYPE_15__* %75, %struct.TYPE_14__* %76, i32* %78, float** %79, i32 %80)
  %82 = load i32 (%struct.TYPE_15__*, double)*, i32 (%struct.TYPE_15__*, double)** %7, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %84 = load double, double* %6, align 8
  %85 = call i32 %82(%struct.TYPE_15__* %83, double %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %74
  %89 = load i32, i32* %19, align 4
  store i32 %89, i32* %4, align 4
  br label %123

90:                                               ; preds = %74
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %92 = call i32 @_ov_initprime(%struct.TYPE_15__* %91)
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %19, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* %19, align 4
  store i32 %96, i32* %4, align 4
  br label %123

97:                                               ; preds = %90
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = call %struct.TYPE_14__* @ov_info(%struct.TYPE_15__* %98, i32 -1)
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %8, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %16, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = call i32 @vorbis_info_blocksize(%struct.TYPE_14__* %103, i32 0)
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 1, %105
  %107 = ashr i32 %104, %106
  store i32 %107, i32* %14, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = call float* @vorbis_window(i32* %109, i32 0)
  store float* %110, float** %12, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = call i32 @vorbis_synthesis_lapout(i32* %112, float*** %10)
  %114 = load float**, float*** %10, align 8
  %115 = load float**, float*** %9, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load float*, float** %11, align 8
  %121 = load float*, float** %12, align 8
  %122 = call i32 @_ov_splice(float** %114, float** %115, i32 %116, i32 %117, i32 %118, i32 %119, float* %120, float* %121)
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %97, %95, %88, %32, %25
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @_ov_initset(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @ov_info(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ov_halfrate_p(%struct.TYPE_15__*) #1

declare dso_local i32 @vorbis_info_blocksize(%struct.TYPE_14__*, i32) #1

declare dso_local float* @vorbis_window(i32*, i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @_ov_getlap(%struct.TYPE_15__*, %struct.TYPE_14__*, i32*, float**, i32) #1

declare dso_local i32 @_ov_initprime(%struct.TYPE_15__*) #1

declare dso_local i32 @vorbis_synthesis_lapout(i32*, float***) #1

declare dso_local i32 @_ov_splice(float**, float**, i32, i32, i32, i32, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
