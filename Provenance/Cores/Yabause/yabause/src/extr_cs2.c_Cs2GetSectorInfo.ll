; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2GetSectorInfo.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2GetSectorInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@Cs2Area = common dso_local global %struct.TYPE_8__* null, align 8
@MAX_SELECTORS = common dso_local global i64 0, align 8
@CDB_HIRQ_CMOK = common dso_local global i32 0, align 4
@CDB_HIRQ_ESEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"cs2\09: getSectorInfo: Unsupported Partition Number\0A\00", align 1
@CDB_STAT_REJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2GetSectorInfo() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 255
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %1, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 8
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %2, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @MAX_SELECTORS, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %141

18:                                               ; preds = %0
  %19 = load i64, i64* %1, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i64, i64* %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %19, %26
  br i1 %27, label %28, label %138

28:                                               ; preds = %18
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i64, i64* %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %38, align 8
  %40 = load i64, i64* %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %39, i64 %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = or i32 %32, %46
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i64, i64* %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %59, align 8
  %61 = load i64, i64* %1, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %60, i64 %61
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i64, i64* %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %77, align 8
  %79 = load i64, i64* %1, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %78, i64 %79
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i64, i64* %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %90, align 8
  %92 = load i64, i64* %1, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %91, i64 %92
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %84, %96
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i64, i64* %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %106, align 8
  %108 = load i64, i64* %1, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %107, i64 %108
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load i64, i64* %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %119, align 8
  %121 = load i64, i64* %1, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %120, i64 %121
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %113, %125
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %131 = load i32, i32* @CDB_HIRQ_ESEL, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 4
  br label %161

138:                                              ; preds = %18
  %139 = call i32 @CDLOG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138
  br label %141

141:                                              ; preds = %140, %0
  %142 = load i32, i32* @CDB_STAT_REJECT, align 4
  %143 = shl i32 %142, 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 255
  %149 = or i32 %143, %148
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %154 = load i32, i32* @CDB_HIRQ_ESEL, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Cs2Area, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %155
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %141, %28
  ret void
}

declare dso_local i32 @CDLOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
