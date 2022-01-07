; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_P_NewChaseDir.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_P_NewChaseDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"P_NewChaseDir: called with no target\00", align 1
@opposite = common dso_local global i64* null, align 8
@FRACUNIT = common dso_local global i32 0, align 4
@DI_EAST = common dso_local global i32 0, align 4
@DI_WEST = common dso_local global i64 0, align 8
@DI_NODIR = common dso_local global i64 0, align 8
@DI_SOUTH = common dso_local global i64 0, align 8
@DI_NORTH = common dso_local global i64 0, align 8
@diags = common dso_local global i64* null, align 8
@DI_SOUTHEAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_NewChaseDir(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x i64], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @I_Error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64*, i64** @opposite, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %27, %30
  store i32 %31, i32* %3, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @FRACUNIT, align 4
  %43 = mul nsw i32 10, %42
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %15
  %46 = load i32, i32* @DI_EAST, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  store i64 %47, i64* %48, align 8
  br label %61

49:                                               ; preds = %15
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @FRACUNIT, align 4
  %52 = mul nsw i32 -10, %51
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i64, i64* @DI_WEST, align 8
  %56 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  store i64 %55, i64* %56, align 8
  br label %60

57:                                               ; preds = %49
  %58 = load i64, i64* @DI_NODIR, align 8
  %59 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %45
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @FRACUNIT, align 4
  %64 = mul nsw i32 -10, %63
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i64, i64* @DI_SOUTH, align 8
  %68 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  store i64 %67, i64* %68, align 16
  br label %81

69:                                               ; preds = %61
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @FRACUNIT, align 4
  %72 = mul nsw i32 10, %71
  %73 = icmp sgt i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i64, i64* @DI_NORTH, align 8
  %76 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  store i64 %75, i64* %76, align 16
  br label %80

77:                                               ; preds = %69
  %78 = load i64, i64* @DI_NODIR, align 8
  %79 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  store i64 %78, i64* %79, align 16
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80, %66
  %82 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DI_NODIR, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %117

86:                                               ; preds = %81
  %87 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  %88 = load i64, i64* %87, align 16
  %89 = load i64, i64* @DI_NODIR, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %117

91:                                               ; preds = %86
  %92 = load i64*, i64** @diags, align 8
  %93 = load i32, i32* %4, align 4
  %94 = icmp slt i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = shl i32 %95, 1
  %97 = load i32, i32* %3, align 4
  %98 = icmp sgt i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = add nsw i32 %96, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %92, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %91
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %113 = call i64 @P_TryWalk(%struct.TYPE_6__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %269

116:                                              ; preds = %111, %91
  br label %117

117:                                              ; preds = %116, %86, %81
  %118 = call i32 (...) @P_Random()
  %119 = icmp sgt i32 %118, 200
  br i1 %119, label %126, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %4, align 4
  %122 = call i64 @abs(i32 %121)
  %123 = load i32, i32* %3, align 4
  %124 = call i64 @abs(i32 %123)
  %125 = icmp sgt i64 %122, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %120, %117
  %127 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %6, align 4
  %130 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  %131 = load i64, i64* %130, align 16
  %132 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  store i64 %131, i64* %132, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  store i64 %134, i64* %135, align 16
  br label %136

136:                                              ; preds = %126, %120
  %137 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %8, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i64, i64* @DI_NODIR, align 8
  %143 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  store i64 %142, i64* %143, align 8
  br label %144

144:                                              ; preds = %141, %136
  %145 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  %146 = load i64, i64* %145, align 16
  %147 = load i64, i64* %8, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i64, i64* @DI_NODIR, align 8
  %151 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  store i64 %150, i64* %151, align 16
  br label %152

152:                                              ; preds = %149, %144
  %153 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @DI_NODIR, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %152
  %158 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %163 = call i64 @P_TryWalk(%struct.TYPE_6__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  br label %269

166:                                              ; preds = %157
  br label %167

167:                                              ; preds = %166, %152
  %168 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  %169 = load i64, i64* %168, align 16
  %170 = load i64, i64* @DI_NODIR, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %167
  %173 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  %174 = load i64, i64* %173, align 16
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %178 = call i64 @P_TryWalk(%struct.TYPE_6__* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  br label %269

181:                                              ; preds = %172
  br label %182

182:                                              ; preds = %181, %167
  %183 = load i64, i64* %7, align 8
  %184 = load i64, i64* @DI_NODIR, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %182
  %187 = load i64, i64* %7, align 8
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %191 = call i64 @P_TryWalk(%struct.TYPE_6__* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  br label %269

194:                                              ; preds = %186
  br label %195

195:                                              ; preds = %194, %182
  %196 = call i32 (...) @P_Random()
  %197 = and i32 %196, 1
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %225

199:                                              ; preds = %195
  %200 = load i32, i32* @DI_EAST, align 4
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %221, %199
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* @DI_SOUTHEAST, align 4
  %204 = icmp sle i32 %202, %203
  br i1 %204, label %205, label %224

205:                                              ; preds = %201
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = load i64, i64* %8, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %220

210:                                              ; preds = %205
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  store i64 %212, i64* %214, align 8
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %216 = call i64 @P_TryWalk(%struct.TYPE_6__* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %210
  br label %269

219:                                              ; preds = %210
  br label %220

220:                                              ; preds = %219, %205
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %6, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %6, align 4
  br label %201

224:                                              ; preds = %201
  br label %252

225:                                              ; preds = %195
  %226 = load i32, i32* @DI_SOUTHEAST, align 4
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %248, %225
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* @DI_EAST, align 4
  %230 = sub nsw i32 %229, 1
  %231 = icmp ne i32 %228, %230
  br i1 %231, label %232, label %251

232:                                              ; preds = %227
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = load i64, i64* %8, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %247

237:                                              ; preds = %232
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  store i64 %239, i64* %241, align 8
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %243 = call i64 @P_TryWalk(%struct.TYPE_6__* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %237
  br label %269

246:                                              ; preds = %237
  br label %247

247:                                              ; preds = %246, %232
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %6, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %6, align 4
  br label %227

251:                                              ; preds = %227
  br label %252

252:                                              ; preds = %251, %224
  %253 = load i64, i64* %8, align 8
  %254 = load i64, i64* @DI_NODIR, align 8
  %255 = icmp ne i64 %253, %254
  br i1 %255, label %256, label %265

256:                                              ; preds = %252
  %257 = load i64, i64* %8, align 8
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  store i64 %257, i64* %259, align 8
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %261 = call i64 @P_TryWalk(%struct.TYPE_6__* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  br label %269

264:                                              ; preds = %256
  br label %265

265:                                              ; preds = %264, %252
  %266 = load i64, i64* @DI_NODIR, align 8
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  store i64 %266, i64* %268, align 8
  br label %269

269:                                              ; preds = %265, %263, %245, %218, %193, %180, %165, %115
  ret void
}

declare dso_local i32 @I_Error(i8*) #1

declare dso_local i64 @P_TryWalk(%struct.TYPE_6__*) #1

declare dso_local i32 @P_Random(...) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
