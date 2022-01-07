; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_PTR_AimTraverse.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_PTR_AimTraverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }

@ML_TWOSIDED = common dso_local global i32 0, align 4
@openbottom = common dso_local global i64 0, align 8
@opentop = common dso_local global i64 0, align 8
@attackrange = common dso_local global i32 0, align 4
@shootz = common dso_local global i64 0, align 8
@bottomslope = common dso_local global i64 0, align 8
@topslope = common dso_local global i64 0, align 8
@shootthing = common dso_local global %struct.TYPE_14__* null, align 8
@MF_SHOOTABLE = common dso_local global i32 0, align 4
@aimslope = common dso_local global i64 0, align 8
@linetarget = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PTR_AimTraverse(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %92

14:                                               ; preds = %1
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %4, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ML_TWOSIDED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %160

26:                                               ; preds = %14
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = call i32 @P_LineOpening(%struct.TYPE_15__* %27)
  %29 = load i64, i64* @openbottom, align 8
  %30 = load i64, i64* @opentop, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %160

33:                                               ; preds = %26
  %34 = load i32, i32* @attackrange, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @FixedMul(i32 %34, i32 %37)
  store i64 %38, i64* %9, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %43, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %33
  %51 = load i64, i64* @openbottom, align 8
  %52 = load i64, i64* @shootz, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @FixedDiv(i64 %53, i64 %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @bottomslope, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i64, i64* %6, align 8
  store i64 %60, i64* @bottomslope, align 8
  br label %61

61:                                               ; preds = %59, %50
  br label %62

62:                                               ; preds = %61, %33
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %67, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %62
  %75 = load i64, i64* @opentop, align 8
  %76 = load i64, i64* @shootz, align 8
  %77 = sub nsw i64 %75, %76
  %78 = load i64, i64* %9, align 8
  %79 = call i64 @FixedDiv(i64 %77, i64 %78)
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @topslope, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i64, i64* %6, align 8
  store i64 %84, i64* @topslope, align 8
  br label %85

85:                                               ; preds = %83, %74
  br label %86

86:                                               ; preds = %85, %62
  %87 = load i64, i64* @topslope, align 8
  %88 = load i64, i64* @bottomslope, align 8
  %89 = icmp sle i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %160

91:                                               ; preds = %86
  store i32 1, i32* %2, align 4
  br label %160

92:                                               ; preds = %1
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  store %struct.TYPE_14__* %96, %struct.TYPE_14__** %5, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** @shootthing, align 8
  %99 = icmp eq %struct.TYPE_14__* %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store i32 1, i32* %2, align 4
  br label %160

101:                                              ; preds = %92
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @MF_SHOOTABLE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  store i32 1, i32* %2, align 4
  br label %160

109:                                              ; preds = %101
  %110 = load i32, i32* @attackrange, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @FixedMul(i32 %110, i32 %113)
  store i64 %114, i64* %9, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load i64, i64* @shootz, align 8
  %123 = sub nsw i64 %121, %122
  %124 = load i64, i64* %9, align 8
  %125 = call i64 @FixedDiv(i64 %123, i64 %124)
  store i64 %125, i64* %7, align 8
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* @bottomslope, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %109
  store i32 1, i32* %2, align 4
  br label %160

130:                                              ; preds = %109
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @shootz, align 8
  %135 = sub nsw i64 %133, %134
  %136 = load i64, i64* %9, align 8
  %137 = call i64 @FixedDiv(i64 %135, i64 %136)
  store i64 %137, i64* %8, align 8
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* @topslope, align 8
  %140 = icmp sgt i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %130
  store i32 1, i32* %2, align 4
  br label %160

142:                                              ; preds = %130
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* @topslope, align 8
  %145 = icmp sgt i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i64, i64* @topslope, align 8
  store i64 %147, i64* %7, align 8
  br label %148

148:                                              ; preds = %146, %142
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* @bottomslope, align 8
  %151 = icmp slt i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i64, i64* @bottomslope, align 8
  store i64 %153, i64* %8, align 8
  br label %154

154:                                              ; preds = %152, %148
  %155 = load i64, i64* %7, align 8
  %156 = load i64, i64* %8, align 8
  %157 = add nsw i64 %155, %156
  %158 = sdiv i64 %157, 2
  store i64 %158, i64* @aimslope, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %159, %struct.TYPE_14__** @linetarget, align 8
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %154, %141, %129, %108, %100, %91, %90, %32, %25
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @P_LineOpening(%struct.TYPE_15__*) #1

declare dso_local i64 @FixedMul(i32, i32) #1

declare dso_local i64 @FixedDiv(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
