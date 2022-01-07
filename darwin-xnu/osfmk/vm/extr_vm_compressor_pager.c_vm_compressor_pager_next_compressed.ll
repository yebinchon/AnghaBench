; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_pager.c_vm_compressor_pager_next_compressed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_pager.c_vm_compressor_pager_next_compressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64*, i64**, i64* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@COMPRESSOR_SLOTS_PER_CHUNK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_compressor_pager_next_compressed(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = call i32 @compressor_pager_lookup(i32 %13, %struct.TYPE_5__* %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = sdiv i32 %20, %21
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %143

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %143

32:                                               ; preds = %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @COMPRESSOR_SLOTS_PER_CHUNK, align 4
  %37 = add nsw i32 %35, %36
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* @COMPRESSOR_SLOTS_PER_CHUNK, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %83

43:                                               ; preds = %32
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 2
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  store i64* %52, i64** %11, align 8
  br label %59

53:                                               ; preds = %43
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  store i64* %58, i64** %11, align 8
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %79, %59
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %61
  %68 = load i64*, i64** %11, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = mul nsw i32 %75, %76
  store i32 %77, i32* %3, align 4
  br label %143

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %61

82:                                               ; preds = %61
  store i32 -1, i32* %3, align 4
  br label %143

83:                                               ; preds = %32
  store i64* null, i64** %11, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @COMPRESSOR_SLOTS_PER_CHUNK, align 4
  %86 = sdiv i32 %84, %85
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @COMPRESSOR_SLOTS_PER_CHUNK, align 4
  %89 = srem i32 %87, %88
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %139, %83
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %142

94:                                               ; preds = %90
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i64**, i64*** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64*, i64** %98, i64 %100
  %102 = load i64*, i64** %101, align 8
  store i64* %102, i64** %11, align 8
  %103 = load i64*, i64** %11, align 8
  %104 = icmp eq i64* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %139

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %135, %106
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @COMPRESSOR_SLOTS_PER_CHUNK, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %138

111:                                              ; preds = %107
  %112 = load i64*, i64** %11, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %111
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @COMPRESSOR_SLOTS_PER_CHUNK, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %121, %122
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp sge i32 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %118
  store i32 -1, i32* %3, align 4
  br label %143

130:                                              ; preds = %118
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @PAGE_SIZE, align 4
  %133 = mul nsw i32 %131, %132
  store i32 %133, i32* %3, align 4
  br label %143

134:                                              ; preds = %111
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %107

138:                                              ; preds = %107
  br label %139

139:                                              ; preds = %138, %105
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %90

142:                                              ; preds = %90
  store i32 -1, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %130, %129, %82, %74, %31, %24
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @compressor_pager_lookup(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
