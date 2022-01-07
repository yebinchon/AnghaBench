; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_wavelet.c_encodeMuLaw.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_wavelet.c_encodeMuLaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_5__* }

@madeTable = common dso_local global i64 0, align 8
@mulawToShort = common dso_local global i32* null, align 8
@qtrue = common dso_local global i64 0, align 8
@SND_CHUNK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encodeMuLaw(%struct.TYPE_6__* %0, i16* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i16* %1, i16** %4, align 8
  %13 = load i64, i64* @madeTable, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %29, %15
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 256
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = call i64 @MuLawDecode(i64 %21)
  %23 = sitofp i64 %22 to float
  %24 = fptosi float %23 to i32
  %25 = load i32*, i32** @mulawToShort, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  br label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %16

32:                                               ; preds = %16
  %33 = load i64, i64* @qtrue, align 8
  store i64 %33, i64* @madeTable, align 8
  br label %34

34:                                               ; preds = %32, %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %112, %34
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %119

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %45 = mul nsw i32 %44, 2
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %49 = mul nsw i32 %48, 2
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = call %struct.TYPE_5__* (...) @SND_malloc()
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %10, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = icmp eq %struct.TYPE_5__* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %59, align 8
  br label %64

60:                                               ; preds = %50
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %63, align 8
  br label %64

64:                                               ; preds = %60, %56
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %11, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i64*
  store i64* %69, i64** %12, align 8
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %109, %64
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %112

74:                                               ; preds = %70
  %75 = load i16*, i16** %4, align 8
  %76 = getelementptr inbounds i16, i16* %75, i64 0
  %77 = load i16, i16* %76, align 2
  %78 = sext i16 %77 to i32
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp sgt i32 %81, 32767
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  store i32 32767, i32* %9, align 4
  br label %89

84:                                               ; preds = %74
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, -32768
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 -32768, i32* %9, align 4
  br label %88

88:                                               ; preds = %87, %84
  br label %89

89:                                               ; preds = %88, %83
  %90 = load i32, i32* %9, align 4
  %91 = trunc i32 %90 to i16
  %92 = call i64 @MuLawEncode(i16 signext %91)
  %93 = load i64*, i64** %12, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 %92, i64* %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32*, i32** @mulawToShort, align 8
  %99 = load i64*, i64** %12, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %98, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %97, %105
  store i32 %106, i32* %8, align 4
  %107 = load i16*, i16** %4, align 8
  %108 = getelementptr inbounds i16, i16* %107, i32 1
  store i16* %108, i16** %4, align 8
  br label %109

109:                                              ; preds = %89
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %70

112:                                              ; preds = %70
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %6, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %6, align 4
  br label %38

119:                                              ; preds = %38
  ret void
}

declare dso_local i64 @MuLawDecode(i64) #1

declare dso_local %struct.TYPE_5__* @SND_malloc(...) #1

declare dso_local i64 @MuLawEncode(i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
