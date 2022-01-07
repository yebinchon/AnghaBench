; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_info.c_vorbis_synthesis_headerin.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_info.c_vorbis_synthesis_headerin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"vorbis\00", align 1
@OV_ENOTVORBIS = common dso_local global i32 0, align 4
@OV_EBADHEADER = common dso_local global i32 0, align 4
@OV_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vorbis_synthesis_headerin(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [6 x i8], align 1
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %12 = icmp ne %struct.TYPE_13__* %11, null
  br i1 %12, label %13, label %101

13:                                               ; preds = %3
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @oggpack_readinit(i32* %8, i32 %16, i32 %19)
  %21 = call i32 @oggpack_read(i32* %8, i32 8)
  store i32 %21, i32* %10, align 4
  %22 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %23 = call i32 @memset(i8* %22, i32 0, i32 6)
  %24 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %25 = call i32 @_v_readstring(i32* %8, i8* %24, i32 6)
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %27 = call i64 @memcmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %13
  %30 = load i32, i32* @OV_ENOTVORBIS, align 4
  store i32 %30, i32* %4, align 4
  br label %103

31:                                               ; preds = %13
  %32 = load i32, i32* %10, align 4
  switch i32 %32, label %99 [
    i32 1, label %33
    i32 3, label %50
    i32 5, label %67
  ]

33:                                               ; preds = %31
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %39, i32* %4, align 4
  br label %103

40:                                               ; preds = %33
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %46, i32* %4, align 4
  br label %103

47:                                               ; preds = %40
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = call i32 @_vorbis_unpack_info(%struct.TYPE_11__* %48, i32* %8)
  store i32 %49, i32* %4, align 4
  br label %103

50:                                               ; preds = %31
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %56, i32* %4, align 4
  br label %103

57:                                               ; preds = %50
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %63, i32* %4, align 4
  br label %103

64:                                               ; preds = %57
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = call i32 @_vorbis_unpack_comment(%struct.TYPE_12__* %65, i32* %8)
  store i32 %66, i32* %4, align 4
  br label %103

67:                                               ; preds = %31
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72, %67
  %78 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %78, i32* %4, align 4
  br label %103

79:                                               ; preds = %72
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @OV_EFAULT, align 4
  store i32 %85, i32* %4, align 4
  br label %103

86:                                               ; preds = %79
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = bitcast i32* %89 to %struct.TYPE_14__*
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %95, i32* %4, align 4
  br label %103

96:                                               ; preds = %86
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = call i32 @_vorbis_unpack_books(%struct.TYPE_11__* %97, i32* %8)
  store i32 %98, i32* %4, align 4
  br label %103

99:                                               ; preds = %31
  %100 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %100, i32* %4, align 4
  br label %103

101:                                              ; preds = %3
  %102 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %99, %96, %94, %84, %77, %64, %62, %55, %47, %45, %38, %29
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @oggpack_readinit(i32*, i32, i32) #1

declare dso_local i32 @oggpack_read(i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @_v_readstring(i32*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @_vorbis_unpack_info(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @_vorbis_unpack_comment(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @_vorbis_unpack_books(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
