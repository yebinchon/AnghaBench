; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_permacjoy.c_PERMacJoyHandleEvents.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_permacjoy.c_PERMacJoyHandleEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@joycount = common dso_local global i32 0, align 4
@joys = common dso_local global %struct.TYPE_11__** null, align 8
@AXIS_POSITIVE_VALUE = common dso_local global i32 0, align 4
@AXIS_NEGATIVE_VALUE = common dso_local global i32 0, align 4
@HAT_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PERMacJoyHandleEvents() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %251, %0
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @joycount, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %254

12:                                               ; preds = %8
  %13 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @joys, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %13, i64 %15
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %6, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %251

21:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %141, %21
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %144

28:                                               ; preds = %22
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MIDDLE(i32 %36, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @joy_read_axis(%struct.TYPE_11__* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %28
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @MIDDLE(i32 %60, i32 %68)
  %70 = icmp sgt i32 %59, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %58
  %72 = load i32, i32* %2, align 4
  %73 = shl i32 %72, 24
  %74 = load i32, i32* @AXIS_POSITIVE_VALUE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @PerKeyDown(i32 %77)
  %79 = load i32, i32* %2, align 4
  %80 = shl i32 %79, 24
  %81 = load i32, i32* @AXIS_NEGATIVE_VALUE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @PerKeyUp(i32 %84)
  br label %140

86:                                               ; preds = %58, %28
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %86
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 5
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @MIDDLE(i32 %98, i32 %106)
  %108 = icmp slt i32 %97, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %96
  %110 = load i32, i32* %2, align 4
  %111 = shl i32 %110, 24
  %112 = load i32, i32* @AXIS_POSITIVE_VALUE, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %3, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @PerKeyUp(i32 %115)
  %117 = load i32, i32* %2, align 4
  %118 = shl i32 %117, 24
  %119 = load i32, i32* @AXIS_NEGATIVE_VALUE, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %3, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @PerKeyDown(i32 %122)
  br label %139

124:                                              ; preds = %96, %86
  %125 = load i32, i32* %2, align 4
  %126 = shl i32 %125, 24
  %127 = load i32, i32* @AXIS_POSITIVE_VALUE, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* %3, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @PerKeyUp(i32 %130)
  %132 = load i32, i32* %2, align 4
  %133 = shl i32 %132, 24
  %134 = load i32, i32* @AXIS_NEGATIVE_VALUE, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* %3, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @PerKeyUp(i32 %137)
  br label %139

139:                                              ; preds = %124, %109
  br label %140

140:                                              ; preds = %139, %71
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %3, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %3, align 4
  br label %22

144:                                              ; preds = %22
  store i32 1, i32* %3, align 4
  br label %145

145:                                              ; preds = %178, %144
  %146 = load i32, i32* %3, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp sle i32 %146, %149
  br i1 %150, label %151, label %181

151:                                              ; preds = %145
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @joy_read_button(%struct.TYPE_11__* %152, i32 %153)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = load i32, i32* %3, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %155, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %151
  %166 = load i32, i32* %2, align 4
  %167 = shl i32 %166, 24
  %168 = load i32, i32* %3, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @PerKeyDown(i32 %169)
  br label %177

171:                                              ; preds = %151
  %172 = load i32, i32* %2, align 4
  %173 = shl i32 %172, 24
  %174 = load i32, i32* %3, align 4
  %175 = or i32 %173, %174
  %176 = call i32 @PerKeyUp(i32 %175)
  br label %177

177:                                              ; preds = %171, %165
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %3, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %3, align 4
  br label %145

181:                                              ; preds = %145
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %247, %181
  %183 = load i32, i32* %3, align 4
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %250

188:                                              ; preds = %182
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 3
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %191, align 8
  %193 = load i32, i32* %3, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i64 %194
  %196 = call i32 @joy_read_element(%struct.TYPE_11__* %189, %struct.TYPE_12__* %195)
  store i32 %196, i32* %5, align 4
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = load i32, i32* %3, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %4, align 4
  br label %205

205:                                              ; preds = %243, %188
  %206 = load i32, i32* %4, align 4
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 3
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %208, align 8
  %210 = load i32, i32* %3, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %206, %214
  br i1 %215, label %216, label %246

216:                                              ; preds = %205
  %217 = load i32, i32* %5, align 4
  %218 = load i32, i32* %4, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %231

220:                                              ; preds = %216
  %221 = load i32, i32* %2, align 4
  %222 = shl i32 %221, 24
  %223 = load i32, i32* @HAT_VALUE, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* %4, align 4
  %226 = shl i32 %225, 8
  %227 = or i32 %224, %226
  %228 = load i32, i32* %3, align 4
  %229 = or i32 %227, %228
  %230 = call i32 @PerKeyDown(i32 %229)
  br label %242

231:                                              ; preds = %216
  %232 = load i32, i32* %2, align 4
  %233 = shl i32 %232, 24
  %234 = load i32, i32* @HAT_VALUE, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* %4, align 4
  %237 = shl i32 %236, 8
  %238 = or i32 %235, %237
  %239 = load i32, i32* %3, align 4
  %240 = or i32 %238, %239
  %241 = call i32 @PerKeyUp(i32 %240)
  br label %242

242:                                              ; preds = %231, %220
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %4, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %4, align 4
  br label %205

246:                                              ; preds = %205
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %3, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %3, align 4
  br label %182

250:                                              ; preds = %182
  br label %251

251:                                              ; preds = %250, %20
  %252 = load i32, i32* %2, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %2, align 4
  br label %8

254:                                              ; preds = %8
  %255 = call i64 (...) @YabauseExec()
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  store i32 -1, i32* %1, align 4
  br label %259

258:                                              ; preds = %254
  store i32 0, i32* %1, align 4
  br label %259

259:                                              ; preds = %258, %257
  %260 = load i32, i32* %1, align 4
  ret i32 %260
}

declare dso_local i32 @MIDDLE(i32, i32) #1

declare dso_local i32 @joy_read_axis(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @PerKeyDown(i32) #1

declare dso_local i32 @PerKeyUp(i32) #1

declare dso_local i32 @joy_read_button(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @joy_read_element(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i64 @YabauseExec(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
