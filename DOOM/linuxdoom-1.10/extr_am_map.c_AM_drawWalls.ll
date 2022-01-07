; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_drawWalls.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_drawWalls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64* }

@AM_drawWalls.l = internal global %struct.TYPE_17__ zeroinitializer, align 4
@numlines = common dso_local global i32 0, align 4
@lines = common dso_local global %struct.TYPE_19__* null, align 8
@cheating = common dso_local global i64 0, align 8
@ML_MAPPED = common dso_local global i32 0, align 4
@LINE_NEVERSEE = common dso_local global i32 0, align 4
@WALLCOLORS = common dso_local global i64 0, align 8
@lightlev = common dso_local global i64 0, align 8
@WALLRANGE = common dso_local global i32 0, align 4
@ML_SECRET = common dso_local global i32 0, align 4
@SECRETWALLCOLORS = common dso_local global i64 0, align 8
@FDWALLCOLORS = common dso_local global i64 0, align 8
@CDWALLCOLORS = common dso_local global i64 0, align 8
@TSWALLCOLORS = common dso_local global i64 0, align 8
@plr = common dso_local global %struct.TYPE_18__* null, align 8
@pw_allmap = common dso_local global i64 0, align 8
@GRAYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AM_drawWalls() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %202, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @numlines, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %205

6:                                                ; preds = %2
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** @lines, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @AM_drawWalls.l, i32 0, i32 1, i32 1), align 4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** @lines, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @AM_drawWalls.l, i32 0, i32 1, i32 0), align 4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** @lines, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @AM_drawWalls.l, i32 0, i32 0, i32 1), align 4
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** @lines, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @AM_drawWalls.l, i32 0, i32 0, i32 0), align 4
  %39 = load i64, i64* @cheating, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %6
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** @lines, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ML_MAPPED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %177

51:                                               ; preds = %41, %6
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** @lines, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @LINE_NEVERSEE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load i64, i64* @cheating, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %202

65:                                               ; preds = %61, %51
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** @lines, align 8
  %67 = load i32, i32* %1, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = icmp ne %struct.TYPE_15__* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %65
  %74 = load i64, i64* @WALLCOLORS, align 8
  %75 = load i64, i64* @lightlev, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @AM_drawMline(%struct.TYPE_17__* @AM_drawWalls.l, i64 %76)
  br label %176

78:                                               ; preds = %65
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** @lines, align 8
  %80 = load i32, i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 39
  br i1 %85, label %86, label %93

86:                                               ; preds = %78
  %87 = load i64, i64* @WALLCOLORS, align 8
  %88 = load i32, i32* @WALLRANGE, align 4
  %89 = sdiv i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %87, %90
  %92 = call i32 @AM_drawMline(%struct.TYPE_17__* @AM_drawWalls.l, i64 %91)
  br label %175

93:                                               ; preds = %78
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** @lines, align 8
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ML_SECRET, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %93
  %104 = load i64, i64* @cheating, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i64, i64* @SECRETWALLCOLORS, align 8
  %108 = load i64, i64* @lightlev, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @AM_drawMline(%struct.TYPE_17__* @AM_drawWalls.l, i64 %109)
  br label %116

111:                                              ; preds = %103
  %112 = load i64, i64* @WALLCOLORS, align 8
  %113 = load i64, i64* @lightlev, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @AM_drawMline(%struct.TYPE_17__* @AM_drawWalls.l, i64 %114)
  br label %116

116:                                              ; preds = %111, %106
  br label %174

117:                                              ; preds = %93
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** @lines, align 8
  %119 = load i32, i32* %1, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** @lines, align 8
  %127 = load i32, i32* %1, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %125, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %117
  %136 = load i64, i64* @FDWALLCOLORS, align 8
  %137 = load i64, i64* @lightlev, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @AM_drawMline(%struct.TYPE_17__* @AM_drawWalls.l, i64 %138)
  br label %173

140:                                              ; preds = %117
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** @lines, align 8
  %142 = load i32, i32* %1, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** @lines, align 8
  %150 = load i32, i32* %1, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %148, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %140
  %159 = load i64, i64* @CDWALLCOLORS, align 8
  %160 = load i64, i64* @lightlev, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @AM_drawMline(%struct.TYPE_17__* @AM_drawWalls.l, i64 %161)
  br label %172

163:                                              ; preds = %140
  %164 = load i64, i64* @cheating, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load i64, i64* @TSWALLCOLORS, align 8
  %168 = load i64, i64* @lightlev, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @AM_drawMline(%struct.TYPE_17__* @AM_drawWalls.l, i64 %169)
  br label %171

171:                                              ; preds = %166, %163
  br label %172

172:                                              ; preds = %171, %158
  br label %173

173:                                              ; preds = %172, %135
  br label %174

174:                                              ; preds = %173, %116
  br label %175

175:                                              ; preds = %174, %86
  br label %176

176:                                              ; preds = %175, %73
  br label %201

177:                                              ; preds = %41
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** @plr, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i64*, i64** %179, align 8
  %181 = load i64, i64* @pw_allmap, align 8
  %182 = getelementptr inbounds i64, i64* %180, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %200

185:                                              ; preds = %177
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** @lines, align 8
  %187 = load i32, i32* %1, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @LINE_NEVERSEE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %185
  %196 = load i64, i64* @GRAYS, align 8
  %197 = add nsw i64 %196, 3
  %198 = call i32 @AM_drawMline(%struct.TYPE_17__* @AM_drawWalls.l, i64 %197)
  br label %199

199:                                              ; preds = %195, %185
  br label %200

200:                                              ; preds = %199, %177
  br label %201

201:                                              ; preds = %200, %176
  br label %202

202:                                              ; preds = %201, %64
  %203 = load i32, i32* %1, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %1, align 4
  br label %2

205:                                              ; preds = %2
  ret void
}

declare dso_local i32 @AM_drawMline(%struct.TYPE_17__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
