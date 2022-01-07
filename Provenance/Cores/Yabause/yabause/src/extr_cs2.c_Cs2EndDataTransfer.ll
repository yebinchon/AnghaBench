; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2EndDataTransfer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2EndDataTransfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, i32, %struct.TYPE_4__, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i32*, i64, i32** }

@Cs2Area = common dso_local global %struct.TYPE_6__* null, align 8
@CDB_HIRQ_EHST = common dso_local global i32 0, align 4
@CDB_HIRQ_CMOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2EndDataTransfer() #0 {
  %1 = alloca i64, align 8
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = ashr i32 %13, 17
  %15 = and i32 %14, 255
  %16 = or i32 %10, %15
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  br label %57

39:                                               ; preds = %0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = or i32 %43, 255
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 65535, i32* %50, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %39, %6
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %156 [
    i32 0, label %61
    i32 2, label %68
  ]

61:                                               ; preds = %57
  %62 = load i32, i32* @CDB_HIRQ_EHST, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 8
  br label %157

68:                                               ; preds = %57
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %157

76:                                               ; preds = %68
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i32 -1, i32* %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %1, align 8
  br label %82

82:                                               ; preds = %116, %76
  %83 = load i64, i64* %1, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %86, %89
  %91 = icmp ult i64 %83, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %82
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  %97 = load i32**, i32*** %96, align 8
  %98 = load i64, i64* %1, align 8
  %99 = getelementptr inbounds i32*, i32** %97, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @Cs2FreeBlock(i32* %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  %106 = load i32**, i32*** %105, align 8
  %107 = load i64, i64* %1, align 8
  %108 = getelementptr inbounds i32*, i32** %106, i64 %107
  store i32* null, i32** %108, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* %1, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32 255, i32* %115, align 4
  br label %116

116:                                              ; preds = %92
  %117 = load i64, i64* %1, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %1, align 8
  br label %82

119:                                              ; preds = %82
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = call i32 @Cs2SortBlocks(%struct.TYPE_5__* %122)
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, %126
  store i32 %132, i32* %130, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = sub i64 %140, %135
  store i64 %141, i64* %139, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 200
  br i1 %145, label %146, label %149

146:                                              ; preds = %119
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 7
  store i32 0, i32* %148, align 8
  br label %149

149:                                              ; preds = %146, %119
  %150 = load i32, i32* @CDB_HIRQ_EHST, align 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %150
  store i32 %155, i32* %153, align 8
  br label %157

156:                                              ; preds = %57
  br label %157

157:                                              ; preds = %156, %149, %75, %61
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  store i32 0, i32* %159, align 8
  %160 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %160
  store i32 %165, i32* %163, align 8
  ret void
}

declare dso_local i32 @Cs2FreeBlock(i32*) #1

declare dso_local i32 @Cs2SortBlocks(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
