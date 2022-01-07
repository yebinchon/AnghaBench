; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_dsp_dma01.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_dsp_dma01.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i32, %struct.TYPE_6__, i8*** }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsp_dma01(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 255
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 8
  %14 = and i32 %13, 3
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 15
  %24 = and i32 %23, 7
  switch i32 %24, label %33 [
    i32 0, label %25
    i32 1, label %26
    i32 2, label %27
    i32 3, label %28
    i32 4, label %29
    i32 5, label %30
    i32 6, label %31
    i32 7, label %32
  ]

25:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %33

26:                                               ; preds = %2
  store i64 1, i64* %7, align 8
  br label %33

27:                                               ; preds = %2
  store i64 2, i64* %7, align 8
  br label %33

28:                                               ; preds = %2
  store i64 4, i64* %7, align 8
  br label %33

29:                                               ; preds = %2
  store i64 8, i64* %7, align 8
  br label %33

30:                                               ; preds = %2
  store i64 16, i64* %7, align 8
  br label %33

31:                                               ; preds = %2
  store i64 32, i64* %7, align 8
  br label %33

32:                                               ; preds = %2
  store i64 64, i64* %7, align 8
  br label %33

33:                                               ; preds = %2, %32, %31, %30, %29, %28, %27, %26, %25
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 1
  br i1 %35, label %36, label %82

36:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %78, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %81

41:                                               ; preds = %37
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %44, 2
  %46 = call i8* @MappedMemoryReadLong(i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load i8***, i8**** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i8**, i8*** %49, i64 %50
  %52 = load i8**, i8*** %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i8*, i8** %52, i64 %58
  store i8* %46, i8** %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = and i64 %72, 63
  store i64 %73, i64* %71, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %41
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %37

81:                                               ; preds = %37
  br label %128

82:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %124, %82
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %127

87:                                               ; preds = %83
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = shl i32 %90, 2
  %92 = call i8* @MappedMemoryReadLong(i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  %95 = load i8***, i8**** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds i8**, i8*** %95, i64 %96
  %98 = load i8**, i8*** %97, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* %6, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i8*, i8** %98, i64 %104
  store i8* %92, i8** %105, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %110, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* %6, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = and i64 %118, 63
  store i64 %119, i64* %117, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %87
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %83

127:                                              ; preds = %83
  br label %128

128:                                              ; preds = %127, %81
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i64 0, i64* %132, align 8
  ret void
}

declare dso_local i8* @MappedMemoryReadLong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
