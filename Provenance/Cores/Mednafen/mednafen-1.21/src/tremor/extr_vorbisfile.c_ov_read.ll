; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_vorbisfile.c_ov_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_vorbisfile.c_ov_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@OPENED = common dso_local global i64 0, align 8
@OV_EINVAL = common dso_local global i64 0, align 8
@INITSET = common dso_local global i64 0, align 8
@OV_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ov_read(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i16*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OPENED, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @OV_EINVAL, align 8
  store i64 %24, i64* %5, align 8
  br label %140

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25, %53
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @INITSET, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = call i64 @vorbis_synthesis_pcmout(i32* %34, i32*** %12)
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %13, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %54

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %26
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = call i32 @_fetch_and_process_packet(%struct.TYPE_6__* %41, i32* null, i32 1, i32 1)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @OV_EOF, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i64 0, i64* %5, align 8
  br label %140

47:                                               ; preds = %40
  %48 = load i32, i32* %14, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %5, align 8
  br label %140

53:                                               ; preds = %47
  br label %26

54:                                               ; preds = %38
  %55 = load i64, i64* %13, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %138

57:                                               ; preds = %54
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = call %struct.TYPE_7__* @ov_info(%struct.TYPE_6__* %58, i32 -1)
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %15, align 8
  %66 = mul nsw i64 2, %65
  %67 = sdiv i64 %64, %66
  %68 = icmp sgt i64 %62, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %57
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %15, align 8
  %73 = mul nsw i64 2, %72
  %74 = sdiv i64 %71, %73
  store i64 %74, i64* %13, align 8
  br label %75

75:                                               ; preds = %69, %57
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %113, %75
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %15, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %116

81:                                               ; preds = %76
  %82 = load i32**, i32*** %12, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %16, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = bitcast i8* %87 to i16*
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i16, i16* %88, i64 %90
  store i16* %91, i16** %17, align 8
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %109, %81
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %13, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 9
  %104 = call signext i16 @CLIP_TO_15(i32 %103)
  %105 = load i16*, i16** %17, align 8
  store i16 %104, i16* %105, align 2
  %106 = load i64, i64* %15, align 8
  %107 = load i16*, i16** %17, align 8
  %108 = getelementptr inbounds i16, i16* %107, i64 %106
  store i16* %108, i16** %17, align 8
  br label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %92

112:                                              ; preds = %92
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %76

116:                                              ; preds = %76
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  %119 = load i64, i64* %13, align 8
  %120 = call i32 @vorbis_synthesis_read(i32* %118, i64 %119)
  %121 = load i64, i64* %13, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, %121
  store i64 %125, i64* %123, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %116
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %9, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %128, %116
  %134 = load i64, i64* %13, align 8
  %135 = mul nsw i64 %134, 2
  %136 = load i64, i64* %15, align 8
  %137 = mul nsw i64 %135, %136
  store i64 %137, i64* %5, align 8
  br label %140

138:                                              ; preds = %54
  %139 = load i64, i64* %13, align 8
  store i64 %139, i64* %5, align 8
  br label %140

140:                                              ; preds = %138, %133, %50, %46, %23
  %141 = load i64, i64* %5, align 8
  ret i64 %141
}

declare dso_local i64 @vorbis_synthesis_pcmout(i32*, i32***) #1

declare dso_local i32 @_fetch_and_process_packet(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @ov_info(%struct.TYPE_6__*, i32) #1

declare dso_local signext i16 @CLIP_TO_15(i32) #1

declare dso_local i32 @vorbis_synthesis_read(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
