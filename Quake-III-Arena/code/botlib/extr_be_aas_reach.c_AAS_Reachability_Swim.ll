; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_reach.c_AAS_Reachability_Swim.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_reach.c_AAS_Reachability_Swim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, %struct.TYPE_9__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_13__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64*, i64*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_10__*, i32, i32, i32, i64 }

@qfalse = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@PRESENCE_NORMAL = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@INSIDEUNITS = common dso_local global i32 0, align 4
@TRAVEL_SWIM = common dso_local global i32 0, align 4
@areareachability = common dso_local global %struct.TYPE_10__** null, align 8
@reach_swim = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_Reachability_Swim(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @AAS_AreaSwim(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @AAS_AreaSwim(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* @qfalse, align 4
  store i32 %26, i32* %3, align 4
  br label %236

27:                                               ; preds = %21
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 2), align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PRESENCE_NORMAL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @qfalse, align 4
  store i32 %38, i32* %3, align 4
  br label %236

39:                                               ; preds = %27
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 4), align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i64 %42
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %11, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 4), align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i64 %46
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %12, align 8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %90, %39
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %51, label %93

51:                                               ; preds = %48
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 10
  %67 = icmp sgt i64 %58, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %51
  %69 = load i32, i32* @qfalse, align 4
  store i32 %69, i32* %3, align 4
  br label %236

70:                                               ; preds = %51
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, 10
  %86 = icmp slt i64 %77, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %70
  %88 = load i32, i32* @qfalse, align 4
  store i32 %88, i32* %3, align 4
  br label %236

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %48

93:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %231, %93
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %234

100:                                              ; preds = %94
  %101 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 0), align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %101, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 0
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @abs(i32 %113) #3
  store i32 %114, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %115

115:                                              ; preds = %227, %100
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %230

121:                                              ; preds = %115
  %122 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 0), align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %122, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @abs(i32 %130) #3
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %226

135:                                              ; preds = %121
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %17, align 4
  %138 = call i32 @AAS_FaceCenter(i32 %136, i32 %137)
  %139 = load i32, i32* %17, align 4
  %140 = call i32 @AAS_PointContents(i32 %139)
  %141 = load i32, i32* @CONTENTS_LAVA, align 4
  %142 = load i32, i32* @CONTENTS_SLIME, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @CONTENTS_WATER, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %140, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %225

148:                                              ; preds = %135
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 3), align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i64 %151
  store %struct.TYPE_11__* %152, %struct.TYPE_11__** %15, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 2), align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i64 %155
  store %struct.TYPE_12__* %156, %struct.TYPE_12__** %13, align 8
  %157 = call %struct.TYPE_10__* (...) @AAS_AllocReachability()
  store %struct.TYPE_10__* %157, %struct.TYPE_10__** %14, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %159 = icmp ne %struct.TYPE_10__* %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %148
  %161 = load i32, i32* @qfalse, align 4
  store i32 %161, i32* %3, align 4
  br label %236

162:                                              ; preds = %148
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 7
  store i64 0, i64* %170, align 8
  %171 = load i32, i32* %17, align 4
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @VectorCopy(i32 %171, i32 %174)
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 1), align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %10, align 4
  %181 = xor i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i64 %182
  store %struct.TYPE_9__* %183, %struct.TYPE_9__** %16, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @INSIDEUNITS, align 4
  %188 = sub nsw i32 0, %187
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @VectorMA(i32 %186, i32 %188, i32 %191, i32 %194)
  %196 = load i32, i32* @TRAVEL_SWIM, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 4
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 2
  store i32 1, i32* %200, align 8
  %201 = load i32, i32* %5, align 4
  %202 = call i32 @AAS_AreaVolume(i32 %201)
  %203 = icmp slt i32 %202, 800
  br i1 %203, label %204, label %209

204:                                              ; preds = %162
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 200
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %204, %162
  %210 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @areareachability, align 8
  %211 = load i32, i32* %4, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %210, i64 %212
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 3
  store %struct.TYPE_10__* %214, %struct.TYPE_10__** %216, align 8
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %218 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @areareachability, align 8
  %219 = load i32, i32* %4, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %218, i64 %220
  store %struct.TYPE_10__* %217, %struct.TYPE_10__** %221, align 8
  %222 = load i32, i32* @reach_swim, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* @reach_swim, align 4
  %224 = load i32, i32* @qtrue, align 4
  store i32 %224, i32* %3, align 4
  br label %236

225:                                              ; preds = %135
  br label %226

226:                                              ; preds = %225, %121
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %7, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %7, align 4
  br label %115

230:                                              ; preds = %115
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %6, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %6, align 4
  br label %94

234:                                              ; preds = %94
  %235 = load i32, i32* @qfalse, align 4
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %234, %209, %160, %87, %68, %37, %25
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i32 @AAS_AreaSwim(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @AAS_FaceCenter(i32, i32) #1

declare dso_local i32 @AAS_PointContents(i32) #1

declare dso_local %struct.TYPE_10__* @AAS_AllocReachability(...) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @AAS_AreaVolume(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
