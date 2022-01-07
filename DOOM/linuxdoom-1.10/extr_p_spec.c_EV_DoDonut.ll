; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_spec.c_EV_DoDonut.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_spec.c_EV_DoDonut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_13__** }
%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_11__*, i32, %struct.TYPE_14__, i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32 }

@sectors = common dso_local global %struct.TYPE_11__* null, align 8
@ML_TWOSIDED = common dso_local global i32 0, align 4
@PU_LEVSPEC = common dso_local global i32 0, align 4
@T_MoveFloor = common dso_local global i64 0, align 8
@donutRaise = common dso_local global i32 0, align 4
@FLOORSPEED = common dso_local global i32 0, align 4
@lowerFloor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EV_DoDonut(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %2, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %154, %24, %1
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @P_FindSectorFromLineTag(i32* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %155

15:                                               ; preds = %10
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sectors, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i64 %18
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %3, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %10

25:                                               ; preds = %15
  store i32 1, i32* %7, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %28, i64 0
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = call %struct.TYPE_11__* @getNextSector(%struct.TYPE_13__* %30, %struct.TYPE_11__* %31)
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %4, align 8
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %151, %25
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %154

39:                                               ; preds = %33
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %42, i64 %44
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* @ML_TWOSIDED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %39
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %58, i64 %60
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = icmp eq %struct.TYPE_11__* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %55, %39
  br label %151

68:                                               ; preds = %55
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %71, i64 %73
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %5, align 8
  %78 = load i32, i32* @PU_LEVSPEC, align 4
  %79 = call %struct.TYPE_12__* @Z_Malloc(i32 56, i32 %78, i32 0)
  store %struct.TYPE_12__* %79, %struct.TYPE_12__** %9, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 6
  %82 = call i32 @P_AddThinker(%struct.TYPE_14__* %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %85, align 8
  %86 = load i64, i64* @T_MoveFloor, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store i8* %87, i8** %91, align 8
  %92 = load i32, i32* @donutRaise, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 4
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %101, align 8
  %102 = load i32, i32* @FLOORSPEED, align 4
  %103 = sdiv i32 %102, 2
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 7
  store i64 0, i64* %112, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @PU_LEVSPEC, align 4
  %119 = call %struct.TYPE_12__* @Z_Malloc(i32 56, i32 %118, i32 0)
  store %struct.TYPE_12__* %119, %struct.TYPE_12__** %9, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 6
  %122 = call i32 @P_AddThinker(%struct.TYPE_14__* %121)
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  store %struct.TYPE_12__* %123, %struct.TYPE_12__** %125, align 8
  %126 = load i64, i64* @T_MoveFloor, align 8
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  store i8* %127, i8** %131, align 8
  %132 = load i32, i32* @lowerFloor, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  store i32 0, i32* %136, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  store i32 -1, i32* %138, align 4
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 4
  store %struct.TYPE_11__* %139, %struct.TYPE_11__** %141, align 8
  %142 = load i32, i32* @FLOORSPEED, align 4
  %143 = sdiv i32 %142, 2
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  br label %154

151:                                              ; preds = %67
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %33

154:                                              ; preds = %68, %33
  br label %10

155:                                              ; preds = %10
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @P_FindSectorFromLineTag(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @getNextSector(%struct.TYPE_13__*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @Z_Malloc(i32, i32, i32) #1

declare dso_local i32 @P_AddThinker(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
