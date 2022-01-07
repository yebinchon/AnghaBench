; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_floor.c_EV_BuildStairs.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_floor.c_EV_BuildStairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_8__** }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__* }

@sectors = common dso_local global %struct.TYPE_10__* null, align 8
@PU_LEVSPEC = common dso_local global i32 0, align 4
@T_MoveFloor = common dso_local global i64 0, align 8
@FLOORSPEED = common dso_local global i32 0, align 4
@FRACUNIT = common dso_local global i32 0, align 4
@ML_TWOSIDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EV_BuildStairs(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %187, %31, %2
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @P_FindSectorFromLineTag(i32* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %188

22:                                               ; preds = %17
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sectors, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 %25
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %12, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %17

32:                                               ; preds = %22
  store i32 1, i32* %11, align 4
  %33 = load i32, i32* @PU_LEVSPEC, align 4
  %34 = call %struct.TYPE_11__* @Z_Malloc(i32 32, i32 %33, i32 0)
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %14, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 4
  %37 = call i32 @P_AddThinker(%struct.TYPE_12__* %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %40, align 8
  %41 = load i64, i64* @T_MoveFloor, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i8* %42, i8** %46, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 3
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %51, align 8
  %52 = load i32, i32* %4, align 4
  switch i32 %52, label %63 [
    i32 129, label %53
    i32 128, label %58
  ]

53:                                               ; preds = %32
  %54 = load i32, i32* @FLOORSPEED, align 4
  %55 = sdiv i32 %54, 4
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* @FRACUNIT, align 4
  %57 = mul nsw i32 8, %56
  store i32 %57, i32* %15, align 4
  br label %63

58:                                               ; preds = %32
  %59 = load i32, i32* @FLOORSPEED, align 4
  %60 = mul nsw i32 %59, 4
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* @FRACUNIT, align 4
  %62 = mul nsw i32 16, %61
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %32, %58, %53
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %184, %63
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %180, %78
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %183

85:                                               ; preds = %79
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %88, i64 %90
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ML_TWOSIDED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %85
  br label %180

99:                                               ; preds = %85
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %102, i64 %104
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  store %struct.TYPE_10__* %108, %struct.TYPE_10__** %13, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sectors, align 8
  %111 = ptrtoint %struct.TYPE_10__* %109 to i64
  %112 = ptrtoint %struct.TYPE_10__* %110 to i64
  %113 = sub i64 %111, %112
  %114 = sdiv exact i64 %113, 32
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %99
  br label %180

120:                                              ; preds = %99
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %123, i64 %125
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  store %struct.TYPE_10__* %129, %struct.TYPE_10__** %13, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sectors, align 8
  %132 = ptrtoint %struct.TYPE_10__* %130 to i64
  %133 = ptrtoint %struct.TYPE_10__* %131 to i64
  %134 = sub i64 %132, %133
  %135 = sdiv exact i64 %134, 32
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %8, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %120
  br label %180

143:                                              ; preds = %120
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %6, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = icmp ne %struct.TYPE_11__* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  br label %180

152:                                              ; preds = %143
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %153, %struct.TYPE_10__** %12, align 8
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* @PU_LEVSPEC, align 4
  %156 = call %struct.TYPE_11__* @Z_Malloc(i32 32, i32 %155, i32 0)
  store %struct.TYPE_11__* %156, %struct.TYPE_11__** %14, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 4
  %159 = call i32 @P_AddThinker(%struct.TYPE_12__* %158)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 3
  store %struct.TYPE_11__* %160, %struct.TYPE_11__** %162, align 8
  %163 = load i64, i64* @T_MoveFloor, align 8
  %164 = inttoptr i64 %163 to i8*
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  store i8* %164, i8** %168, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 3
  store %struct.TYPE_10__* %171, %struct.TYPE_10__** %173, align 8
  %174 = load i32, i32* %16, align 4
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* %6, align 4
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  store i32 1, i32* %10, align 4
  br label %183

180:                                              ; preds = %151, %142, %119, %98
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %7, align 4
  br label %79

183:                                              ; preds = %152, %79
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %78, label %187

187:                                              ; preds = %184
  br label %17

188:                                              ; preds = %17
  %189 = load i32, i32* %11, align 4
  ret i32 %189
}

declare dso_local i32 @P_FindSectorFromLineTag(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @Z_Malloc(i32, i32, i32) #1

declare dso_local i32 @P_AddThinker(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
