; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_finale.c_F_CastTicker.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_finale.c_F_CastTicker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32, i64, i64, i64 }

@casttics = common dso_local global i64 0, align 8
@caststate = common dso_local global %struct.TYPE_5__* null, align 8
@S_NULL = common dso_local global i64 0, align 8
@castnum = common dso_local global i64 0, align 8
@castdeath = common dso_local global i32 0, align 4
@castorder = common dso_local global %struct.TYPE_7__* null, align 8
@mobjinfo = common dso_local global %struct.TYPE_6__* null, align 8
@states = common dso_local global %struct.TYPE_5__* null, align 8
@castframes = common dso_local global i32 0, align 4
@sfx_dshtgn = common dso_local global i32 0, align 4
@sfx_pistol = common dso_local global i32 0, align 4
@sfx_shotgn = common dso_local global i32 0, align 4
@sfx_vilatk = common dso_local global i32 0, align 4
@sfx_skeswg = common dso_local global i32 0, align 4
@sfx_skepch = common dso_local global i32 0, align 4
@sfx_skeatk = common dso_local global i32 0, align 4
@sfx_firsht = common dso_local global i32 0, align 4
@sfx_claw = common dso_local global i32 0, align 4
@sfx_sgtatk = common dso_local global i32 0, align 4
@sfx_sklatk = common dso_local global i32 0, align 4
@sfx_plasma = common dso_local global i32 0, align 4
@sfx_rlaunc = common dso_local global i32 0, align 4
@castattacking = common dso_local global i32 0, align 4
@castonmelee = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @F_CastTicker() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @casttics, align 8
  %4 = add nsw i64 %3, -1
  store i64 %4, i64* @casttics, align 8
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %231

7:                                                ; preds = %0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @caststate, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @caststate, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @S_NULL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %12, %7
  %19 = load i64, i64* @castnum, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* @castnum, align 8
  store i32 0, i32* @castdeath, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @castorder, align 8
  %22 = load i64, i64* @castnum, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i64 0, i64* @castnum, align 8
  br label %28

28:                                               ; preds = %27, %18
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mobjinfo, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @castorder, align 8
  %31 = load i64, i64* @castnum, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %28
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mobjinfo, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @castorder, align 8
  %42 = load i64, i64* @castnum, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @S_StartSound(i32* null, i32 %48)
  br label %50

50:                                               ; preds = %39, %28
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @states, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mobjinfo, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @castorder, align 8
  %54 = load i64, i64* @castnum, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %60
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** @caststate, align 8
  store i32 0, i32* @castframes, align 4
  br label %122

62:                                               ; preds = %12
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @caststate, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @states, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 139
  %66 = icmp eq %struct.TYPE_5__* %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %210

68:                                               ; preds = %62
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @caststate, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %1, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @states, align 8
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** @caststate, align 8
  %77 = load i32, i32* @castframes, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @castframes, align 4
  %79 = load i32, i32* %1, align 4
  switch i32 %79, label %114 [
    i32 139, label %80
    i32 138, label %82
    i32 130, label %84
    i32 128, label %86
    i32 136, label %88
    i32 135, label %90
    i32 134, label %92
    i32 142, label %94
    i32 143, label %94
    i32 144, label %94
    i32 150, label %96
    i32 149, label %96
    i32 148, label %96
    i32 129, label %98
    i32 137, label %100
    i32 152, label %102
    i32 153, label %102
    i32 141, label %102
    i32 133, label %104
    i32 132, label %106
    i32 131, label %106
    i32 151, label %108
    i32 147, label %110
    i32 146, label %110
    i32 145, label %110
    i32 140, label %112
  ]

80:                                               ; preds = %68
  %81 = load i32, i32* @sfx_dshtgn, align 4
  store i32 %81, i32* %2, align 4
  br label %115

82:                                               ; preds = %68
  %83 = load i32, i32* @sfx_pistol, align 4
  store i32 %83, i32* %2, align 4
  br label %115

84:                                               ; preds = %68
  %85 = load i32, i32* @sfx_shotgn, align 4
  store i32 %85, i32* %2, align 4
  br label %115

86:                                               ; preds = %68
  %87 = load i32, i32* @sfx_vilatk, align 4
  store i32 %87, i32* %2, align 4
  br label %115

88:                                               ; preds = %68
  %89 = load i32, i32* @sfx_skeswg, align 4
  store i32 %89, i32* %2, align 4
  br label %115

90:                                               ; preds = %68
  %91 = load i32, i32* @sfx_skepch, align 4
  store i32 %91, i32* %2, align 4
  br label %115

92:                                               ; preds = %68
  %93 = load i32, i32* @sfx_skeatk, align 4
  store i32 %93, i32* %2, align 4
  br label %115

94:                                               ; preds = %68, %68, %68
  %95 = load i32, i32* @sfx_firsht, align 4
  store i32 %95, i32* %2, align 4
  br label %115

96:                                               ; preds = %68, %68, %68
  %97 = load i32, i32* @sfx_shotgn, align 4
  store i32 %97, i32* %2, align 4
  br label %115

98:                                               ; preds = %68
  %99 = load i32, i32* @sfx_claw, align 4
  store i32 %99, i32* %2, align 4
  br label %115

100:                                              ; preds = %68
  %101 = load i32, i32* @sfx_sgtatk, align 4
  store i32 %101, i32* %2, align 4
  br label %115

102:                                              ; preds = %68, %68, %68
  %103 = load i32, i32* @sfx_firsht, align 4
  store i32 %103, i32* %2, align 4
  br label %115

104:                                              ; preds = %68
  %105 = load i32, i32* @sfx_sklatk, align 4
  store i32 %105, i32* %2, align 4
  br label %115

106:                                              ; preds = %68, %68
  %107 = load i32, i32* @sfx_shotgn, align 4
  store i32 %107, i32* %2, align 4
  br label %115

108:                                              ; preds = %68
  %109 = load i32, i32* @sfx_plasma, align 4
  store i32 %109, i32* %2, align 4
  br label %115

110:                                              ; preds = %68, %68, %68
  %111 = load i32, i32* @sfx_rlaunc, align 4
  store i32 %111, i32* %2, align 4
  br label %115

112:                                              ; preds = %68
  %113 = load i32, i32* @sfx_sklatk, align 4
  store i32 %113, i32* %2, align 4
  br label %115

114:                                              ; preds = %68
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %112, %110, %108, %106, %104, %102, %100, %98, %96, %94, %92, %90, %88, %86, %84, %82, %80
  %116 = load i32, i32* %2, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %2, align 4
  %120 = call i32 @S_StartSound(i32* null, i32 %119)
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121, %50
  %123 = load i32, i32* @castframes, align 4
  %124 = icmp eq i32 %123, 12
  br i1 %124, label %125, label %189

125:                                              ; preds = %122
  store i32 1, i32* @castattacking, align 4
  %126 = load i32, i32* @castonmelee, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %125
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** @states, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mobjinfo, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** @castorder, align 8
  %132 = load i64, i64* @castnum, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 %138
  store %struct.TYPE_5__* %139, %struct.TYPE_5__** @caststate, align 8
  br label %152

140:                                              ; preds = %125
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** @states, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mobjinfo, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** @castorder, align 8
  %144 = load i64, i64* @castnum, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i64 %150
  store %struct.TYPE_5__* %151, %struct.TYPE_5__** @caststate, align 8
  br label %152

152:                                              ; preds = %140, %128
  %153 = load i32, i32* @castonmelee, align 4
  %154 = xor i32 %153, 1
  store i32 %154, i32* @castonmelee, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** @caststate, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** @states, align 8
  %157 = load i64, i64* @S_NULL, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i64 %157
  %159 = icmp eq %struct.TYPE_5__* %155, %158
  br i1 %159, label %160, label %188

160:                                              ; preds = %152
  %161 = load i32, i32* @castonmelee, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %160
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** @states, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mobjinfo, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** @castorder, align 8
  %167 = load i64, i64* @castnum, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 %173
  store %struct.TYPE_5__* %174, %struct.TYPE_5__** @caststate, align 8
  br label %187

175:                                              ; preds = %160
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** @states, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mobjinfo, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** @castorder, align 8
  %179 = load i64, i64* @castnum, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i64 %185
  store %struct.TYPE_5__* %186, %struct.TYPE_5__** @caststate, align 8
  br label %187

187:                                              ; preds = %175, %163
  br label %188

188:                                              ; preds = %187, %152
  br label %189

189:                                              ; preds = %188, %122
  %190 = load i32, i32* @castattacking, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %223

192:                                              ; preds = %189
  %193 = load i32, i32* @castframes, align 4
  %194 = icmp eq i32 %193, 24
  br i1 %194, label %209, label %195

195:                                              ; preds = %192
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** @caststate, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** @states, align 8
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mobjinfo, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** @castorder, align 8
  %200 = load i64, i64* @castnum, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i64 %206
  %208 = icmp eq %struct.TYPE_5__* %196, %207
  br i1 %208, label %209, label %222

209:                                              ; preds = %195, %192
  br label %210

210:                                              ; preds = %209, %67
  store i32 0, i32* @castattacking, align 4
  store i32 0, i32* @castframes, align 4
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** @states, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mobjinfo, align 8
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** @castorder, align 8
  %214 = load i64, i64* @castnum, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i64 %220
  store %struct.TYPE_5__* %221, %struct.TYPE_5__** @caststate, align 8
  br label %222

222:                                              ; preds = %210, %195
  br label %223

223:                                              ; preds = %222, %189
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** @caststate, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  store i64 %227, i64* @casttics, align 8
  %228 = load i64, i64* @casttics, align 8
  %229 = icmp eq i64 %228, -1
  br i1 %229, label %230, label %231

230:                                              ; preds = %223
  store i64 15, i64* @casttics, align 8
  br label %231

231:                                              ; preds = %6, %230, %223
  ret void
}

declare dso_local i32 @S_StartSound(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
