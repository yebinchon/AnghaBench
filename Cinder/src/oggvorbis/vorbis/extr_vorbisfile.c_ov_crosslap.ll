; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c_ov_crosslap.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c_ov_crosslap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32 }

@OPENED = common dso_local global i64 0, align 8
@OV_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ov_crosslap(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca float**, align 8
  %9 = alloca float**, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = icmp eq %struct.TYPE_14__* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %129

22:                                               ; preds = %2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OPENED, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @OV_EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %129

30:                                               ; preds = %22
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OPENED, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @OV_EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %129

38:                                               ; preds = %30
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = call i32 @_ov_initset(%struct.TYPE_14__* %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %3, align 4
  br label %129

45:                                               ; preds = %38
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = call i32 @_ov_initprime(%struct.TYPE_14__* %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %3, align 4
  br label %129

52:                                               ; preds = %45
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = call %struct.TYPE_13__* @ov_info(%struct.TYPE_14__* %53, i32 -1)
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %6, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = call %struct.TYPE_13__* @ov_info(%struct.TYPE_14__* %55, i32 -1)
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %7, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %58 = call i32 @ov_halfrate_p(%struct.TYPE_14__* %57)
  store i32 %58, i32* %16, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = call i32 @ov_halfrate_p(%struct.TYPE_14__* %59)
  store i32 %60, i32* %17, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 8, %64
  %66 = trunc i64 %65 to i32
  %67 = call i8* @alloca(i32 %66)
  %68 = bitcast i8* %67 to float**
  store float** %68, float*** %8, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = call i32 @vorbis_info_blocksize(%struct.TYPE_13__* %69, i32 0)
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 1, %71
  %73 = ashr i32 %70, %72
  store i32 %73, i32* %12, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %75 = call i32 @vorbis_info_blocksize(%struct.TYPE_13__* %74, i32 0)
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 1, %76
  %78 = ashr i32 %75, %77
  store i32 %78, i32* %13, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = call float* @vorbis_window(i32* %80, i32 0)
  store float* %81, float** %10, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = call float* @vorbis_window(i32* %83, i32 0)
  store float* %84, float** %11, align 8
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %102, %52
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %85
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 4, %93
  %95 = trunc i64 %94 to i32
  %96 = call i8* @alloca(i32 %95)
  %97 = bitcast i8* %96 to float*
  %98 = load float**, float*** %8, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float*, float** %98, i64 %100
  store float* %97, float** %101, align 8
  br label %102

102:                                              ; preds = %91
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %85

105:                                              ; preds = %85
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load float**, float*** %8, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @_ov_getlap(%struct.TYPE_14__* %106, %struct.TYPE_13__* %107, i32* %109, float** %110, i32 %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = call i32 @vorbis_synthesis_lapout(i32* %114, float*** %9)
  %116 = load float**, float*** %9, align 8
  %117 = load float**, float*** %8, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load float*, float** %10, align 8
  %127 = load float*, float** %11, align 8
  %128 = call i32 @_ov_splice(float** %116, float** %117, i32 %118, i32 %119, i32 %122, i32 %125, float* %126, float* %127)
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %105, %50, %43, %36, %28, %21
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @_ov_initset(%struct.TYPE_14__*) #1

declare dso_local i32 @_ov_initprime(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @ov_info(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ov_halfrate_p(%struct.TYPE_14__*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @vorbis_info_blocksize(%struct.TYPE_13__*, i32) #1

declare dso_local float* @vorbis_window(i32*, i32) #1

declare dso_local i32 @_ov_getlap(%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, float**, i32) #1

declare dso_local i32 @vorbis_synthesis_lapout(i32*, float***) #1

declare dso_local i32 @_ov_splice(float**, float**, i32, i32, i32, i32, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
