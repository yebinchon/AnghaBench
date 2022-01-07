; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2DeleteSectorData.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2DeleteSectorData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_5__, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64, i32, i64, i32 }
%struct.TYPE_6__ = type { i64, i32*, %struct.TYPE_7__**, i32 }
%struct.TYPE_7__ = type { i64 }

@Cs2Area = common dso_local global %struct.TYPE_8__* null, align 8
@MAX_SELECTORS = common dso_local global i64 0, align 8
@CDB_STAT_REJECT = common dso_local global i32 0, align 4
@CDB_HIRQ_CMOK = common dso_local global i32 0, align 4
@CDB_HIRQ_EHST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No sectors available\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2DeleteSectorData() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %1, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = ashr i32 %12, 8
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %2, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @MAX_SELECTORS, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %0
  %23 = load i32, i32* @CDB_STAT_REJECT, align 4
  %24 = call i32 @doCDReport(i32 %23)
  %25 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %26 = load i32, i32* @CDB_HIRQ_EHST, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 8
  br label %155

33:                                               ; preds = %0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i64, i64* %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %33
  %43 = call i32 @CDLOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @CDB_STAT_REJECT, align 4
  %45 = call i32 @doCDReport(i32 %44)
  %46 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %47 = load i32, i32* @CDB_HIRQ_EHST, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 8
  br label %155

54:                                               ; preds = %33
  %55 = load i64, i64* %2, align 8
  %56 = call i32 @CalcSectorOffsetNumber(i64 %55, i64* %1, i64* %3)
  %57 = load i64, i64* %1, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %116, %54
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %1, align 8
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %60, %61
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %119

64:                                               ; preds = %58
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i64, i64* %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %70, align 8
  %72 = load i64, i64* %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %71, i64 %72
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i64, i64* %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %84, %76
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i64, i64* %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %92, align 8
  %94 = load i64, i64* %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %93, i64 %94
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = call i32 @Cs2FreeBlock(%struct.TYPE_7__* %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i64, i64* %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %103, align 8
  %105 = load i64, i64* %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %104, i64 %105
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %106, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i64, i64* %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* %4, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32 255, i32* %115, align 4
  br label %116

116:                                              ; preds = %64
  %117 = load i64, i64* %4, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %4, align 8
  br label %58

119:                                              ; preds = %58
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i64, i64* %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %123
  %125 = call i32 @Cs2SortBlocks(%struct.TYPE_6__* %124)
  %126 = load i64, i64* %3, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i64, i64* %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %133, %126
  store i64 %134, i64* %132, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 200
  br i1 %138, label %139, label %142

139:                                              ; preds = %119
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  store i64 0, i64* %141, align 8
  br label %142

142:                                              ; preds = %139, %119
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @doCDReport(i32 %145)
  %147 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %148 = load i32, i32* @CDB_HIRQ_EHST, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %149
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %142, %42, %22
  ret void
}

declare dso_local i32 @doCDReport(i32) #1

declare dso_local i32 @CDLOG(i8*) #1

declare dso_local i32 @CalcSectorOffsetNumber(i64, i64*, i64*) #1

declare dso_local i32 @Cs2FreeBlock(%struct.TYPE_7__*) #1

declare dso_local i32 @Cs2SortBlocks(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
