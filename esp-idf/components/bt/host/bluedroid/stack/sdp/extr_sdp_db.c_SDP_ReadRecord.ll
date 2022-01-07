; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_ReadRecord.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_ReadRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i32 0, align 4
@SIZE_IN_NEXT_WORD = common dso_local global i32 0, align 4
@SIZE_IN_NEXT_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDP_ReadRecord(i64 %0, i64* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 65535, i32* %11, align 4
  %15 = load i64, i64* %4, align 8
  %16 = call i32* @sdp_db_find_record(i64 %15)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %108

19:                                               ; preds = %3
  %20 = load i64*, i64** %5, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %108

22:                                               ; preds = %19
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %108

25:                                               ; preds = %22
  %26 = load i64*, i64** %5, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 3
  store i64* %27, i64** %14, align 8
  br label %28

28:                                               ; preds = %53, %25
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call %struct.TYPE_4__* @sdp_db_find_attr_in_rec(i32* %29, i32 %30, i32 %31)
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %12, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %61

34:                                               ; preds = %28
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i64*, i64** %14, align 8
  %38 = load i64*, i64** %5, align 8
  %39 = ptrtoint i64* %37 to i64
  %40 = ptrtoint i64* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 8
  %43 = trunc i64 %42 to i32
  %44 = sub nsw i32 %36, %43
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sub nsw i32 %48, 6
  %50 = sext i32 %49 to i64
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  br label %61

53:                                               ; preds = %34
  %54 = load i64*, i64** %14, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %56 = call i64* @sdpu_build_attrib_entry(i64* %54, %struct.TYPE_4__* %55)
  store i64* %56, i64** %14, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %28

61:                                               ; preds = %52, %28
  %62 = load i64*, i64** %14, align 8
  %63 = load i64*, i64** %5, align 8
  %64 = ptrtoint i64* %62 to i64
  %65 = ptrtoint i64* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp sgt i32 %69, 255
  br i1 %70, label %71, label %90

71:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  %72 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %73 = shl i32 %72, 3
  %74 = load i32, i32* @SIZE_IN_NEXT_WORD, align 4
  %75 = or i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = load i64*, i64** %5, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %79, 3
  %81 = ashr i32 %80, 8
  %82 = sext i32 %81 to i64
  %83 = load i64*, i64** %5, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %85, 3
  %87 = sext i32 %86 to i64
  %88 = load i64*, i64** %5, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 2
  store i64 %87, i64* %89, align 8
  br label %105

90:                                               ; preds = %61
  store i32 1, i32* %7, align 4
  %91 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %92 = shl i32 %91, 3
  %93 = load i32, i32* @SIZE_IN_NEXT_BYTE, align 4
  %94 = or i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = load i64*, i64** %5, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  store i64 %95, i64* %97, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 %98, 3
  %100 = sext i32 %99 to i64
  %101 = load i64*, i64** %5, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 2
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %90, %71
  %106 = load i32, i32* %8, align 4
  %107 = load i32*, i32** %6, align 8
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %22, %19, %3
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32* @sdp_db_find_record(i64) #1

declare dso_local %struct.TYPE_4__* @sdp_db_find_attr_in_rec(i32*, i32, i32) #1

declare dso_local i64* @sdpu_build_attrib_entry(i64*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
