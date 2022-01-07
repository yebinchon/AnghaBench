; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_extract_uid_seq.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_extract_uid_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i32 0, align 4
@UUID_DESC_TYPE = common dso_local global i32 0, align 4
@MAX_UUIDS_PER_SEQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sdpu_extract_uid_seq(i32* %0, i64 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @BE_STREAM_TO_UINT8(i64 %17, i32* %18)
  %20 = load i32, i32* %9, align 4
  %21 = ashr i32 %20, 3
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, 7
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %142

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  switch i32 %29, label %45 [
    i32 128, label %30
    i32 133, label %31
    i32 129, label %32
    i32 132, label %33
    i32 130, label %37
    i32 131, label %41
  ]

30:                                               ; preds = %28
  store i64 2, i64* %12, align 8
  br label %46

31:                                               ; preds = %28
  store i64 4, i64* %12, align 8
  br label %46

32:                                               ; preds = %28
  store i64 16, i64* %12, align 8
  br label %46

33:                                               ; preds = %28
  %34 = load i64, i64* %12, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @BE_STREAM_TO_UINT8(i64 %34, i32* %35)
  br label %46

37:                                               ; preds = %28
  %38 = load i64, i64* %12, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @BE_STREAM_TO_UINT16(i64 %38, i32* %39)
  br label %46

41:                                               ; preds = %28
  %42 = load i64, i64* %12, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @BE_STREAM_TO_UINT32(i64 %42, i32* %43)
  br label %46

45:                                               ; preds = %28
  store i32* null, i32** %4, align 8
  br label %142

46:                                               ; preds = %41, %37, %33, %32, %31, %30
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32* null, i32** %4, align 8
  br label %142

51:                                               ; preds = %46
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %8, align 8
  br label %55

55:                                               ; preds = %134, %51
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ult i32* %56, %57
  br i1 %58, label %59, label %135

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @BE_STREAM_TO_UINT8(i64 %61, i32* %62)
  %64 = load i32, i32* %9, align 4
  %65 = ashr i32 %64, 3
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, 7
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @UUID_DESC_TYPE, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  store i32* null, i32** %4, align 8
  br label %142

72:                                               ; preds = %59
  %73 = load i32, i32* %11, align 4
  switch i32 %73, label %89 [
    i32 128, label %74
    i32 133, label %75
    i32 129, label %76
    i32 132, label %77
    i32 130, label %81
    i32 131, label %85
  ]

74:                                               ; preds = %72
  store i64 2, i64* %13, align 8
  br label %90

75:                                               ; preds = %72
  store i64 4, i64* %13, align 8
  br label %90

76:                                               ; preds = %72
  store i64 16, i64* %13, align 8
  br label %90

77:                                               ; preds = %72
  %78 = load i64, i64* %13, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @BE_STREAM_TO_UINT8(i64 %78, i32* %79)
  br label %90

81:                                               ; preds = %72
  %82 = load i64, i64* %13, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @BE_STREAM_TO_UINT16(i64 %82, i32* %83)
  br label %90

85:                                               ; preds = %72
  %86 = load i64, i64* %13, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @BE_STREAM_TO_UINT32(i64 %86, i32* %87)
  br label %90

89:                                               ; preds = %72
  store i32* null, i32** %4, align 8
  br label %142

90:                                               ; preds = %85, %81, %77, %76, %75, %74
  %91 = load i64, i64* %13, align 8
  %92 = icmp eq i64 %91, 2
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %13, align 8
  %95 = icmp eq i64 %94, 4
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* %13, align 8
  %98 = icmp eq i64 %97, 16
  br i1 %98, label %99, label %126

99:                                               ; preds = %96, %93, %90
  %100 = load i64, i64* %13, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store i64 %100, i64* %108, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i64, i64* %13, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @BE_STREAM_TO_ARRAY(i32* %109, i32 %118, i32 %120)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %123, align 8
  br label %127

126:                                              ; preds = %96
  store i32* null, i32** %4, align 8
  br label %142

127:                                              ; preds = %99
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @MAX_UUIDS_PER_SEQ, align 8
  %132 = icmp uge i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32* null, i32** %4, align 8
  br label %142

134:                                              ; preds = %127
  br label %55

135:                                              ; preds = %55
  %136 = load i32*, i32** %5, align 8
  %137 = load i32*, i32** %8, align 8
  %138 = icmp ne i32* %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i32* null, i32** %4, align 8
  br label %142

140:                                              ; preds = %135
  %141 = load i32*, i32** %5, align 8
  store i32* %141, i32** %4, align 8
  br label %142

142:                                              ; preds = %140, %139, %133, %126, %89, %71, %50, %45, %27
  %143 = load i32*, i32** %4, align 8
  ret i32* %143
}

declare dso_local i32 @BE_STREAM_TO_UINT8(i64, i32*) #1

declare dso_local i32 @BE_STREAM_TO_UINT16(i64, i32*) #1

declare dso_local i32 @BE_STREAM_TO_UINT32(i64, i32*) #1

declare dso_local i32 @BE_STREAM_TO_ARRAY(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
