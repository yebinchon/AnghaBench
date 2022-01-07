; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_me_loop_d.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_me_loop_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32, i32)*, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"no enabled menu entries\0A\00", align 1
@PBTN_MOK = common dso_local global i32 0, align 4
@PBTN_MBACK = common dso_local global i32 0, align 4
@PBTN_MENU = common dso_local global i32 0, align 4
@PBTN_UP = common dso_local global i32 0, align 4
@PBTN_DOWN = common dso_local global i32 0, align 4
@PBTN_LEFT = common dso_local global i32 0, align 4
@PBTN_RIGHT = common dso_local global i32 0, align 4
@PBTN_L = common dso_local global i32 0, align 4
@PBTN_R = common dso_local global i32 0, align 4
@MB_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, void ()*, void ()*)* @me_loop_d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @me_loop_d(%struct.TYPE_6__* %0, i32* %1, void ()* %2, void ()* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca void ()*, align 8
  %9 = alloca void ()*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store void ()* %2, void ()** %8, align 8
  store void ()* %3, void ()** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = call i32 @me_count(%struct.TYPE_6__* %16)
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = call i32 @lprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %276

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %46, %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %32, %24
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  br label %44

44:                                               ; preds = %40, %32
  %45 = phi i1 [ false, %32 ], [ %43, %40 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %24

49:                                               ; preds = %44
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @me_draw(%struct.TYPE_6__* %50, i32 %51, void (...)* null)
  br label %53

53:                                               ; preds = %62, %49
  %54 = call i32 @in_menu_wait_any(i32* null, i32 50)
  %55 = load i32, i32* @PBTN_MOK, align 4
  %56 = load i32, i32* @PBTN_MBACK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @PBTN_MENU, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %54, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %53

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %271, %211, %63
  %65 = load void ()*, void ()** %8, align 8
  %66 = icmp ne void ()* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load void ()*, void ()** %8, align 8
  call void %68()
  br label %69

69:                                               ; preds = %67, %64
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load void ()*, void ()** %9, align 8
  %73 = bitcast void ()* %72 to void (...)*
  %74 = call i32 @me_draw(%struct.TYPE_6__* %70, i32 %71, void (...)* %73)
  %75 = load i32, i32* @PBTN_UP, align 4
  %76 = load i32, i32* @PBTN_DOWN, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @PBTN_LEFT, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @PBTN_RIGHT, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @PBTN_MOK, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @PBTN_MBACK, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @PBTN_MENU, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @PBTN_L, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @PBTN_R, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @in_menu_wait(i32 %91, i32* null, i32 70)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @PBTN_MENU, align 4
  %95 = load i32, i32* @PBTN_MBACK, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %69
  br label %272

100:                                              ; preds = %69
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @PBTN_UP, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %134

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %131, %105
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %111, %106
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %114
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  br label %131

131:                                              ; preds = %122, %114
  %132 = phi i1 [ true, %114 ], [ %130, %122 ]
  br i1 %132, label %106, label %133

133:                                              ; preds = %131
  br label %134

134:                                              ; preds = %133, %100
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @PBTN_DOWN, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %168

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %165, %139
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  store i32 0, i32* %12, align 4
  br label %147

147:                                              ; preds = %146, %140
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %148
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  br label %165

165:                                              ; preds = %156, %148
  %166 = phi i1 [ true, %148 ], [ %164, %156 ]
  br i1 %166, label %140, label %167

167:                                              ; preds = %165
  br label %168

168:                                              ; preds = %167, %134
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @PBTN_L, align 4
  %171 = load i32, i32* @PBTN_R, align 4
  %172 = or i32 %170, %171
  %173 = and i32 %169, %172
  %174 = load i32, i32* @PBTN_L, align 4
  %175 = load i32, i32* @PBTN_R, align 4
  %176 = or i32 %174, %175
  %177 = icmp eq i32 %173, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %168
  %179 = call i32 (...) @debug_menu_loop()
  br label %180

180:                                              ; preds = %178, %168
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* @PBTN_LEFT, align 4
  %183 = load i32, i32* @PBTN_RIGHT, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @PBTN_L, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @PBTN_R, align 4
  %188 = or i32 %186, %187
  %189 = and i32 %181, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %213

191:                                              ; preds = %180
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i64 %194
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* @PBTN_RIGHT, align 4
  %198 = load i32, i32* @PBTN_R, align 4
  %199 = or i32 %197, %198
  %200 = and i32 %196, %199
  %201 = icmp ne i32 %200, 0
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i32 1, i32 0
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* @PBTN_L, align 4
  %206 = load i32, i32* @PBTN_R, align 4
  %207 = or i32 %205, %206
  %208 = and i32 %204, %207
  %209 = call i64 @me_process(%struct.TYPE_6__* %195, i32 %203, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %191
  br label %64

212:                                              ; preds = %191
  br label %213

213:                                              ; preds = %212, %180
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* @PBTN_MOK, align 4
  %216 = load i32, i32* @PBTN_LEFT, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @PBTN_RIGHT, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @PBTN_L, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @PBTN_R, align 4
  %223 = or i32 %221, %222
  %224 = and i32 %214, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %271

226:                                              ; preds = %213
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i32 (i32, i32)*, i32 (i32, i32)** %231, align 8
  %233 = icmp ne i32 (i32, i32)* %232, null
  br i1 %233, label %234, label %270

234:                                              ; preds = %226
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %236 = load i32, i32* %12, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @MB_NONE, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %248, label %243

243:                                              ; preds = %234
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* @PBTN_MOK, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %270

248:                                              ; preds = %243, %234
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %250 = load i32, i32* %12, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = load i32 (i32, i32)*, i32 (i32, i32)** %253, align 8
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* %11, align 4
  %262 = call i32 %254(i32 %260, i32 %261)
  store i32 %262, i32* %10, align 4
  %263 = load i32, i32* %10, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %248
  br label %272

266:                                              ; preds = %248
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %268 = call i32 @me_count(%struct.TYPE_6__* %267)
  %269 = sub nsw i32 %268, 1
  store i32 %269, i32* %13, align 4
  br label %270

270:                                              ; preds = %266, %243, %226
  br label %271

271:                                              ; preds = %270, %213
  br label %64

272:                                              ; preds = %265, %99
  %273 = load i32, i32* %12, align 4
  %274 = load i32*, i32** %7, align 8
  store i32 %273, i32* %274, align 4
  %275 = load i32, i32* %10, align 4
  store i32 %275, i32* %5, align 4
  br label %276

276:                                              ; preds = %272, %21
  %277 = load i32, i32* %5, align 4
  ret i32 %277
}

declare dso_local i32 @me_count(%struct.TYPE_6__*) #1

declare dso_local i32 @lprintf(i8*) #1

declare dso_local i32 @me_draw(%struct.TYPE_6__*, i32, void (...)*) #1

declare dso_local i32 @in_menu_wait_any(i32*, i32) #1

declare dso_local i32 @in_menu_wait(i32, i32*, i32) #1

declare dso_local i32 @debug_menu_loop(...) #1

declare dso_local i64 @me_process(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
