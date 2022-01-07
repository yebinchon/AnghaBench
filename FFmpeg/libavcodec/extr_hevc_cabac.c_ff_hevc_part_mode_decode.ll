; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_cabac.c_ff_hevc_part_mode_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_cabac.c_ff_hevc_part_mode_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@elem_offset = common dso_local global i64* null, align 8
@PART_MODE = common dso_local global i64 0, align 8
@PART_2Nx2N = common dso_local global i32 0, align 4
@MODE_INTRA = common dso_local global i64 0, align 8
@PART_NxN = common dso_local global i32 0, align 4
@PART_2NxN = common dso_local global i32 0, align 4
@PART_Nx2N = common dso_local global i32 0, align 4
@PART_2NxnD = common dso_local global i32 0, align 4
@PART_2NxnU = common dso_local global i32 0, align 4
@PART_nRx2N = common dso_local global i32 0, align 4
@PART_nLx2N = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_hevc_part_mode_decode(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64*, i64** @elem_offset, align 8
  %7 = load i64, i64* @PART_MODE, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @GET_CABAC(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @PART_2Nx2N, align 4
  store i32 %13, i32* %3, align 4
  br label %131

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %15, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %14
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MODE_INTRA, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @PART_NxN, align 4
  store i32 %33, i32* %3, align 4
  br label %131

34:                                               ; preds = %23
  %35 = load i64*, i64** @elem_offset, align 8
  %36 = load i64, i64* @PART_MODE, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  %40 = call i64 @GET_CABAC(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @PART_2NxN, align 4
  store i32 %43, i32* %3, align 4
  br label %131

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @PART_Nx2N, align 4
  store i32 %48, i32* %3, align 4
  br label %131

49:                                               ; preds = %44
  %50 = load i64*, i64** @elem_offset, align 8
  %51 = load i64, i64* @PART_MODE, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 2
  %55 = call i64 @GET_CABAC(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @PART_Nx2N, align 4
  store i32 %58, i32* %3, align 4
  br label %131

59:                                               ; preds = %49
  %60 = load i32, i32* @PART_NxN, align 4
  store i32 %60, i32* %3, align 4
  br label %131

61:                                               ; preds = %14
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %61
  %70 = load i64*, i64** @elem_offset, align 8
  %71 = load i64, i64* @PART_MODE, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  %75 = call i64 @GET_CABAC(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @PART_2NxN, align 4
  store i32 %78, i32* %3, align 4
  br label %131

79:                                               ; preds = %69
  %80 = load i32, i32* @PART_Nx2N, align 4
  store i32 %80, i32* %3, align 4
  br label %131

81:                                               ; preds = %61
  %82 = load i64*, i64** @elem_offset, align 8
  %83 = load i64, i64* @PART_MODE, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  %87 = call i64 @GET_CABAC(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %81
  %90 = load i64*, i64** @elem_offset, align 8
  %91 = load i64, i64* @PART_MODE, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 3
  %95 = call i64 @GET_CABAC(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* @PART_2NxN, align 4
  store i32 %98, i32* %3, align 4
  br label %131

99:                                               ; preds = %89
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = call i64 @get_cabac_bypass(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* @PART_2NxnD, align 4
  store i32 %107, i32* %3, align 4
  br label %131

108:                                              ; preds = %99
  %109 = load i32, i32* @PART_2NxnU, align 4
  store i32 %109, i32* %3, align 4
  br label %131

110:                                              ; preds = %81
  %111 = load i64*, i64** @elem_offset, align 8
  %112 = load i64, i64* @PART_MODE, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 3
  %116 = call i64 @GET_CABAC(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* @PART_Nx2N, align 4
  store i32 %119, i32* %3, align 4
  br label %131

120:                                              ; preds = %110
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = call i64 @get_cabac_bypass(i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* @PART_nRx2N, align 4
  store i32 %128, i32* %3, align 4
  br label %131

129:                                              ; preds = %120
  %130 = load i32, i32* @PART_nLx2N, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %127, %118, %108, %106, %97, %79, %77, %59, %57, %47, %42, %32, %12
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @GET_CABAC(i64) #1

declare dso_local i64 @get_cabac_bypass(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
