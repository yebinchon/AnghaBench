; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_bsp.c_R_AddLine.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_bsp.c_R_AddLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_14__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i64 }

@curline = common dso_local global %struct.TYPE_12__* null, align 8
@ANG180 = common dso_local global i32 0, align 4
@rw_angle1 = common dso_local global i32 0, align 4
@viewangle = common dso_local global i64 0, align 8
@clipangle = common dso_local global i32 0, align 4
@ANG90 = common dso_local global i32 0, align 4
@ANGLETOFINESHIFT = common dso_local global i32 0, align 4
@viewangletox = common dso_local global i32* null, align 8
@backsector = common dso_local global %struct.TYPE_14__* null, align 8
@frontsector = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_AddLine(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** @curline, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @R_PointToAngle(i32 %14, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @R_PointToAngle(i32 %25, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @ANG180, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  br label %198

39:                                               ; preds = %1
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* @rw_angle1, align 4
  %41 = load i64, i64* @viewangle, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %5, align 4
  %46 = load i64, i64* @viewangle, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @clipangle, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @clipangle, align 4
  %56 = mul nsw i32 2, %55
  %57 = icmp sgt i32 %54, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %39
  %59 = load i32, i32* @clipangle, align 4
  %60 = mul nsw i32 2, %59
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %198

67:                                               ; preds = %58
  %68 = load i32, i32* @clipangle, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %39
  %70 = load i32, i32* @clipangle, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @clipangle, align 4
  %75 = mul nsw i32 2, %74
  %76 = icmp sgt i32 %73, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %69
  %78 = load i32, i32* @clipangle, align 4
  %79 = mul nsw i32 2, %78
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %198

86:                                               ; preds = %77
  %87 = load i32, i32* @clipangle, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %86, %69
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @ANG90, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* @ANGLETOFINESHIFT, align 4
  %94 = ashr i32 %92, %93
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @ANG90, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* @ANGLETOFINESHIFT, align 4
  %99 = ashr i32 %97, %98
  store i32 %99, i32* %6, align 4
  %100 = load i32*, i32** @viewangletox, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %3, align 4
  %105 = load i32*, i32** @viewangletox, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %89
  br label %198

114:                                              ; preds = %89
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  store %struct.TYPE_14__* %117, %struct.TYPE_14__** @backsector, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** @backsector, align 8
  %119 = icmp ne %struct.TYPE_14__* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  br label %193

121:                                              ; preds = %114
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** @backsector, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** @frontsector, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sle i64 %124, %127
  br i1 %128, label %137, label %129

129:                                              ; preds = %121
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** @backsector, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** @frontsector, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp sge i64 %132, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %129, %121
  br label %193

138:                                              ; preds = %129
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** @backsector, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** @frontsector, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %141, %144
  br i1 %145, label %154, label %146

146:                                              ; preds = %138
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** @backsector, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** @frontsector, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %149, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %146, %138
  br label %188

155:                                              ; preds = %146
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** @backsector, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** @frontsector, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %158, %161
  br i1 %162, label %163, label %187

163:                                              ; preds = %155
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** @backsector, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** @frontsector, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %166, %169
  br i1 %170, label %171, label %187

171:                                              ; preds = %163
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** @backsector, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** @frontsector, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %174, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %171
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curline, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  br label %198

187:                                              ; preds = %179, %171, %163, %155
  br label %188

188:                                              ; preds = %187, %154
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* %4, align 4
  %191 = sub nsw i32 %190, 1
  %192 = call i32 @R_ClipPassWallSegment(i32 %189, i32 %191)
  br label %198

193:                                              ; preds = %137, %120
  %194 = load i32, i32* %3, align 4
  %195 = load i32, i32* %4, align 4
  %196 = sub nsw i32 %195, 1
  %197 = call i32 @R_ClipSolidWallSegment(i32 %194, i32 %196)
  br label %198

198:                                              ; preds = %193, %188, %186, %113, %85, %66, %38
  ret void
}

declare dso_local i32 @R_PointToAngle(i32, i32) #1

declare dso_local i32 @R_ClipPassWallSegment(i32, i32) #1

declare dso_local i32 @R_ClipSolidWallSegment(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
