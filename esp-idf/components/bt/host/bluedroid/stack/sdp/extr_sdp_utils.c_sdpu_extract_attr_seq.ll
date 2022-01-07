; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_extract_attr_seq.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_extract_attr_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i32 0, align 4
@UINT_DESC_TYPE = common dso_local global i32 0, align 4
@MAX_ATTR_PER_SEQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sdpu_extract_attr_seq(i32* %0, i64 %1, %struct.TYPE_5__* %2) #0 {
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
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  store i32* %28, i32** %4, align 8
  br label %161

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  switch i32 %30, label %43 [
    i32 131, label %31
    i32 129, label %35
    i32 130, label %39
  ]

31:                                               ; preds = %29
  %32 = load i64, i64* %12, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @BE_STREAM_TO_UINT8(i64 %32, i32* %33)
  br label %45

35:                                               ; preds = %29
  %36 = load i64, i64* %12, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @BE_STREAM_TO_UINT16(i64 %36, i32* %37)
  br label %45

39:                                               ; preds = %29
  %40 = load i64, i64* %12, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @BE_STREAM_TO_UINT32(i64 %40, i32* %41)
  br label %45

43:                                               ; preds = %29
  %44 = load i32*, i32** %5, align 8
  store i32* %44, i32** %4, align 8
  br label %161

45:                                               ; preds = %39, %35, %31
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32*, i32** %5, align 8
  store i32* %50, i32** %4, align 8
  br label %161

51:                                               ; preds = %45
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %8, align 8
  br label %55

55:                                               ; preds = %158, %51
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ult i32* %56, %57
  br i1 %58, label %59, label %159

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
  %69 = load i32, i32* @UINT_DESC_TYPE, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i32*, i32** %5, align 8
  store i32* %72, i32** %4, align 8
  br label %161

73:                                               ; preds = %59
  %74 = load i32, i32* %11, align 4
  switch i32 %74, label %89 [
    i32 128, label %75
    i32 132, label %76
    i32 131, label %77
    i32 129, label %81
    i32 130, label %85
  ]

75:                                               ; preds = %73
  store i64 2, i64* %13, align 8
  br label %90

76:                                               ; preds = %73
  store i64 4, i64* %13, align 8
  br label %90

77:                                               ; preds = %73
  %78 = load i64, i64* %13, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @BE_STREAM_TO_UINT8(i64 %78, i32* %79)
  br label %90

81:                                               ; preds = %73
  %82 = load i64, i64* %13, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @BE_STREAM_TO_UINT16(i64 %82, i32* %83)
  br label %90

85:                                               ; preds = %73
  %86 = load i64, i64* %13, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @BE_STREAM_TO_UINT32(i64 %86, i32* %87)
  br label %90

89:                                               ; preds = %73
  store i32* null, i32** %4, align 8
  br label %161

90:                                               ; preds = %85, %81, %77, %76, %75
  %91 = load i64, i64* %13, align 8
  %92 = icmp eq i64 %91, 2
  br i1 %92, label %93, label %122

93:                                               ; preds = %90
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @BE_STREAM_TO_UINT16(i64 %102, i32* %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i64 %113, i64* %121, align 8
  br label %150

122:                                              ; preds = %90
  %123 = load i64, i64* %13, align 8
  %124 = icmp eq i64 %123, 4
  br i1 %124, label %125, label %148

125:                                              ; preds = %122
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @BE_STREAM_TO_UINT16(i64 %134, i32* %135)
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @BE_STREAM_TO_UINT16(i64 %145, i32* %146)
  br label %149

148:                                              ; preds = %122
  store i32* null, i32** %4, align 8
  br label %161

149:                                              ; preds = %125
  br label %150

150:                                              ; preds = %149, %93
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %152, align 8
  %155 = load i64, i64* @MAX_ATTR_PER_SEQ, align 8
  %156 = icmp uge i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  store i32* null, i32** %4, align 8
  br label %161

158:                                              ; preds = %150
  br label %55

159:                                              ; preds = %55
  %160 = load i32*, i32** %5, align 8
  store i32* %160, i32** %4, align 8
  br label %161

161:                                              ; preds = %159, %157, %148, %89, %71, %49, %43, %27
  %162 = load i32*, i32** %4, align 8
  ret i32* %162
}

declare dso_local i32 @BE_STREAM_TO_UINT8(i64, i32*) #1

declare dso_local i32 @BE_STREAM_TO_UINT16(i64, i32*) #1

declare dso_local i32 @BE_STREAM_TO_UINT32(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
