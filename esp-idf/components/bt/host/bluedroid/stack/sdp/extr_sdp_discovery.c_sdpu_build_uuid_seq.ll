; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_discovery.c_sdpu_build_uuid_seq.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_discovery.c_sdpu_build_uuid_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i32 0, align 4
@SIZE_IN_NEXT_BYTE = common dso_local global i32 0, align 4
@UUID_DESC_TYPE = common dso_local global i32 0, align 4
@SIZE_TWO_BYTES = common dso_local global i32 0, align 4
@SIZE_FOUR_BYTES = common dso_local global i32 0, align 4
@SIZE_SIXTEEN_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, %struct.TYPE_5__*)* @sdpu_build_uuid_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @sdpu_build_uuid_seq(i32* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %11 = shl i32 %10, 3
  %12 = load i32, i32* @SIZE_IN_NEXT_BYTE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @UINT8_TO_BE_STREAM(i32* %9, i32 %13)
  %15 = load i32*, i32** %4, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32* %17, i32** %4, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %76, %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %81

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @UUID_DESC_TYPE, align 4
  %30 = shl i32 %29, 3
  %31 = load i32, i32* @SIZE_TWO_BYTES, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @UINT8_TO_BE_STREAM(i32* %28, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @UINT16_TO_BE_STREAM(i32* %34, i32 %38)
  br label %75

40:                                               ; preds = %22
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @UUID_DESC_TYPE, align 4
  %48 = shl i32 %47, 3
  %49 = load i32, i32* @SIZE_FOUR_BYTES, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @UINT8_TO_BE_STREAM(i32* %46, i32 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @UINT32_TO_BE_STREAM(i32* %52, i32 %56)
  br label %74

58:                                               ; preds = %40
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @UUID_DESC_TYPE, align 4
  %61 = shl i32 %60, 3
  %62 = load i32, i32* @SIZE_SIXTEEN_BYTES, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @UINT8_TO_BE_STREAM(i32* %59, i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ARRAY_TO_BE_STREAM(i32* %65, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %58, %45
  br label %75

75:                                               ; preds = %74, %27
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 1
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %6, align 8
  br label %18

81:                                               ; preds = %18
  %82 = load i32*, i32** %4, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = ptrtoint i32* %82 to i64
  %85 = ptrtoint i32* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 4
  %88 = sub nsw i64 %87, 1
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %7, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @UINT8_TO_BE_STREAM(i32* %90, i32 %91)
  %93 = load i32*, i32** %4, align 8
  ret i32* %93
}

declare dso_local i32 @UINT8_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @UINT16_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @UINT32_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @ARRAY_TO_BE_STREAM(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
