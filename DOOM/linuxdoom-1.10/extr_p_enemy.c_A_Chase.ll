; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_Chase.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_Chase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i64, %struct.TYPE_13__*, %struct.TYPE_15__*, i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i64, i32 }

@ANG90 = common dso_local global i32 0, align 4
@MF_SHOOTABLE = common dso_local global i32 0, align 4
@MF_JUSTATTACKED = common dso_local global i32 0, align 4
@gameskill = common dso_local global i64 0, align 8
@sk_nightmare = common dso_local global i64 0, align 8
@fastparm = common dso_local global i32 0, align 4
@netgame = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @A_Chase(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %4 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 7
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = icmp ne %struct.TYPE_15__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23, %18
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  br label %38

33:                                               ; preds = %23
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %33, %30
  br label %39

39:                                               ; preds = %38, %13
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %44, label %78

44:                                               ; preds = %39
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, -536870912
  store i32 %48, i32* %46, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %54, 29
  %56 = sub nsw i32 %51, %55
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %44
  %60 = load i32, i32* @ANG90, align 4
  %61 = sdiv i32 %60, 2
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %77

66:                                               ; preds = %44
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* @ANG90, align 4
  %71 = sdiv i32 %70, 2
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %69, %66
  br label %77

77:                                               ; preds = %76, %59
  br label %78

78:                                               ; preds = %77, %39
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = icmp ne %struct.TYPE_15__* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @MF_SHOOTABLE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %83, %78
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = call i64 @P_LookForPlayers(%struct.TYPE_14__* %93, i32 1)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %254

97:                                               ; preds = %92
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @P_SetMobjState(%struct.TYPE_14__* %98, i64 %103)
  br label %254

105:                                              ; preds = %83
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @MF_JUSTATTACKED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %105
  %113 = load i32, i32* @MF_JUSTATTACKED, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load i64, i64* @gameskill, align 8
  %120 = load i64, i64* @sk_nightmare, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %112
  %123 = load i32, i32* @fastparm, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %127 = call i32 @P_NewChaseDir(%struct.TYPE_14__* %126)
  br label %128

128:                                              ; preds = %125, %122, %112
  br label %254

129:                                              ; preds = %105
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %163

136:                                              ; preds = %129
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %138 = call i64 @P_CheckMeleeRange(%struct.TYPE_14__* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %163

140:                                              ; preds = %136
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %140
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @S_StartSound(%struct.TYPE_14__* %148, i64 %153)
  br label %155

155:                                              ; preds = %147, %140
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @P_SetMobjState(%struct.TYPE_14__* %156, i64 %161)
  br label %254

163:                                              ; preds = %136, %129
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 4
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %201

170:                                              ; preds = %163
  %171 = load i64, i64* @gameskill, align 8
  %172 = load i64, i64* @sk_nightmare, align 8
  %173 = icmp slt i64 %171, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %170
  %175 = load i32, i32* @fastparm, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %174
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %202

183:                                              ; preds = %177, %174, %170
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %185 = call i32 @P_CheckMissileRange(%struct.TYPE_14__* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %183
  br label %202

188:                                              ; preds = %183
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 4
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @P_SetMobjState(%struct.TYPE_14__* %189, i64 %194)
  %196 = load i32, i32* @MF_JUSTATTACKED, align 4
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %254

201:                                              ; preds = %163
  br label %202

202:                                              ; preds = %201, %187, %182
  %203 = load i64, i64* @netgame, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %223

205:                                              ; preds = %202
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 6
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %223, label %210

210:                                              ; preds = %205
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 5
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %213, align 8
  %215 = call i32 @P_CheckSight(%struct.TYPE_14__* %211, %struct.TYPE_15__* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %210
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %219 = call i64 @P_LookForPlayers(%struct.TYPE_14__* %218, i32 1)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  br label %254

222:                                              ; preds = %217
  br label %223

223:                                              ; preds = %222, %210, %205, %202
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %226, -1
  store i64 %227, i64* %225, align 8
  %228 = icmp slt i64 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %223
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %231 = call i32 @P_Move(%struct.TYPE_14__* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %229, %223
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %235 = call i32 @P_NewChaseDir(%struct.TYPE_14__* %234)
  br label %236

236:                                              ; preds = %233, %229
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 4
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %236
  %244 = call i32 (...) @P_Random()
  %245 = icmp slt i32 %244, 3
  br i1 %245, label %246, label %254

246:                                              ; preds = %243
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 4
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = call i32 @S_StartSound(%struct.TYPE_14__* %247, i64 %252)
  br label %254

254:                                              ; preds = %96, %97, %128, %155, %188, %221, %246, %243, %236
  ret void
}

declare dso_local i64 @P_LookForPlayers(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @P_SetMobjState(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @P_NewChaseDir(%struct.TYPE_14__*) #1

declare dso_local i64 @P_CheckMeleeRange(%struct.TYPE_14__*) #1

declare dso_local i32 @S_StartSound(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @P_CheckMissileRange(%struct.TYPE_14__*) #1

declare dso_local i32 @P_CheckSight(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @P_Move(%struct.TYPE_14__*) #1

declare dso_local i32 @P_Random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
