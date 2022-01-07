; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_build_attrib_entry.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_build_attrib_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@UINT_DESC_TYPE = common dso_local global i32 0, align 4
@SIZE_TWO_BYTES = common dso_local global i32 0, align 4
@SIZE_IN_NEXT_BYTE = common dso_local global i32 0, align 4
@SIZE_ONE_BYTE = common dso_local global i32 0, align 4
@SIZE_FOUR_BYTES = common dso_local global i32 0, align 4
@SIZE_EIGHT_BYTES = common dso_local global i32 0, align 4
@SIZE_SIXTEEN_BYTES = common dso_local global i32 0, align 4
@SIZE_IN_NEXT_LONG = common dso_local global i32 0, align 4
@SIZE_IN_NEXT_WORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sdpu_build_attrib_entry(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* @UINT_DESC_TYPE, align 4
  %8 = shl i32 %7, 3
  %9 = load i32, i32* @SIZE_TWO_BYTES, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @UINT8_TO_BE_STREAM(i32* %6, i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @UINT16_TO_BE_STREAM(i32* %12, i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %49 [
    i32 129, label %20
    i32 130, label %20
    i32 131, label %20
    i32 128, label %20
  ]

20:                                               ; preds = %2, %2, %2, %2
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 3
  %26 = load i32, i32* @SIZE_IN_NEXT_BYTE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @UINT8_TO_BE_STREAM(i32* %21, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @UINT8_TO_BE_STREAM(i32* %29, i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %20
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ARRAY_TO_BE_STREAM(i32* %39, i32* %42, i32 %45)
  br label %47

47:                                               ; preds = %38, %20
  %48 = load i32*, i32** %4, align 8
  store i32* %48, i32** %3, align 8
  br label %128

49:                                               ; preds = %2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %98 [
    i32 1, label %53
    i32 2, label %62
    i32 4, label %71
    i32 8, label %80
    i32 16, label %89
  ]

53:                                               ; preds = %49
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 3
  %59 = load i32, i32* @SIZE_ONE_BYTE, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @UINT8_TO_BE_STREAM(i32* %54, i32 %60)
  br label %112

62:                                               ; preds = %49
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 3
  %68 = load i32, i32* @SIZE_TWO_BYTES, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @UINT8_TO_BE_STREAM(i32* %63, i32 %69)
  br label %112

71:                                               ; preds = %49
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 3
  %77 = load i32, i32* @SIZE_FOUR_BYTES, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @UINT8_TO_BE_STREAM(i32* %72, i32 %78)
  br label %112

80:                                               ; preds = %49
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 3
  %86 = load i32, i32* @SIZE_EIGHT_BYTES, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @UINT8_TO_BE_STREAM(i32* %81, i32 %87)
  br label %112

89:                                               ; preds = %49
  %90 = load i32*, i32** %4, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 3
  %95 = load i32, i32* @SIZE_SIXTEEN_BYTES, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @UINT8_TO_BE_STREAM(i32* %90, i32 %96)
  br label %112

98:                                               ; preds = %49
  %99 = load i32*, i32** %4, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 3
  %104 = load i32, i32* @SIZE_IN_NEXT_BYTE, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @UINT8_TO_BE_STREAM(i32* %99, i32 %105)
  %107 = load i32*, i32** %4, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @UINT8_TO_BE_STREAM(i32* %107, i32 %110)
  br label %112

112:                                              ; preds = %98, %89, %80, %71, %62, %53
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load i32*, i32** %4, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @ARRAY_TO_BE_STREAM(i32* %118, i32* %121, i32 %124)
  br label %126

126:                                              ; preds = %117, %112
  %127 = load i32*, i32** %4, align 8
  store i32* %127, i32** %3, align 8
  br label %128

128:                                              ; preds = %126, %47
  %129 = load i32*, i32** %3, align 8
  ret i32* %129
}

declare dso_local i32 @UINT8_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @UINT16_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @ARRAY_TO_BE_STREAM(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
