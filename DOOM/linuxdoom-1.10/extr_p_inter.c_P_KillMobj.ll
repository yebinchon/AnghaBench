; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_inter.c_P_KillMobj.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_inter.c_P_KillMobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64, i64, i32 }

@MF_SHOOTABLE = common dso_local global i32 0, align 4
@MF_FLOAT = common dso_local global i32 0, align 4
@MF_SKULLFLY = common dso_local global i32 0, align 4
@MT_SKULL = common dso_local global i32 0, align 4
@MF_NOGRAVITY = common dso_local global i32 0, align 4
@MF_CORPSE = common dso_local global i32 0, align 4
@MF_DROPOFF = common dso_local global i32 0, align 4
@MF_COUNTKILL = common dso_local global i32 0, align 4
@players = common dso_local global %struct.TYPE_11__* null, align 8
@netgame = common dso_local global i32 0, align 4
@MF_SOLID = common dso_local global i32 0, align 4
@PST_DEAD = common dso_local global i32 0, align 4
@consoleplayer = common dso_local global i64 0, align 8
@automapactive = common dso_local global i64 0, align 8
@MT_CLIP = common dso_local global i32 0, align 4
@MT_SHOTGUN = common dso_local global i32 0, align 4
@MT_CHAINGUN = common dso_local global i32 0, align 4
@ONFLOORZ = common dso_local global i32 0, align 4
@MF_DROPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_KillMobj(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %7 = load i32, i32* @MF_SHOOTABLE, align 4
  %8 = load i32, i32* @MF_FLOAT, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MF_SKULLFLY, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MT_SKULL, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i32, i32* @MF_NOGRAVITY, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %22, %2
  %30 = load i32, i32* @MF_CORPSE, align 4
  %31 = load i32, i32* @MF_DROPOFF, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 2
  store i32 %40, i32* %38, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = icmp ne %struct.TYPE_10__* %41, null
  br i1 %42, label %43, label %85

43:                                               ; preds = %29
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = icmp ne %struct.TYPE_11__* %46, null
  br i1 %47, label %48, label %85

48:                                               ; preds = %43
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MF_COUNTKILL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %55, %48
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = icmp ne %struct.TYPE_11__* %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %62
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** @players, align 8
  %77 = ptrtoint %struct.TYPE_11__* %75 to i64
  %78 = ptrtoint %struct.TYPE_11__* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 24
  %81 = getelementptr inbounds i32, i32* %72, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %67, %62
  br label %102

85:                                               ; preds = %43, %29
  %86 = load i32, i32* @netgame, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %85
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @MF_COUNTKILL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** @players, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %88, %85
  br label %102

102:                                              ; preds = %101, %84
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = icmp ne %struct.TYPE_11__* %105, null
  br i1 %106, label %107, label %156

107:                                              ; preds = %102
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %109 = icmp ne %struct.TYPE_10__* %108, null
  br i1 %109, label %127, label %110

110:                                              ; preds = %107
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** @players, align 8
  %120 = ptrtoint %struct.TYPE_11__* %118 to i64
  %121 = ptrtoint %struct.TYPE_11__* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 24
  %124 = getelementptr inbounds i32, i32* %115, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %110, %107
  %128 = load i32, i32* @MF_SOLID, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 8
  %134 = load i32, i32* @PST_DEAD, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  store i32 %134, i32* %138, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = call i32 @P_DropWeapon(%struct.TYPE_11__* %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** @players, align 8
  %147 = load i64, i64* @consoleplayer, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i64 %147
  %149 = icmp eq %struct.TYPE_11__* %145, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %127
  %151 = load i64, i64* @automapactive, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = call i32 (...) @AM_Stop()
  br label %155

155:                                              ; preds = %153, %150, %127
  br label %156

156:                                              ; preds = %155, %102
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 6
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 0, %164
  %166 = icmp slt i32 %159, %165
  br i1 %166, label %167, label %182

167:                                              ; preds = %156
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 6
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %167
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 6
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @P_SetMobjState(%struct.TYPE_10__* %175, i64 %180)
  br label %190

182:                                              ; preds = %167, %156
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 6
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @P_SetMobjState(%struct.TYPE_10__* %183, i64 %188)
  br label %190

190:                                              ; preds = %182, %174
  %191 = call i32 (...) @P_Random()
  %192 = and i32 %191, 3
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %195, %192
  store i32 %196, i32* %194, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %199, 1
  br i1 %200, label %201, label %204

201:                                              ; preds = %190
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 3
  store i32 1, i32* %203, align 4
  br label %204

204:                                              ; preds = %201, %190
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  switch i32 %207, label %214 [
    i32 128, label %208
    i32 130, label %208
    i32 129, label %210
    i32 131, label %212
  ]

208:                                              ; preds = %204, %204
  %209 = load i32, i32* @MT_CLIP, align 4
  store i32 %209, i32* %5, align 4
  br label %215

210:                                              ; preds = %204
  %211 = load i32, i32* @MT_SHOTGUN, align 4
  store i32 %211, i32* %5, align 4
  br label %215

212:                                              ; preds = %204
  %213 = load i32, i32* @MT_CHAINGUN, align 4
  store i32 %213, i32* %5, align 4
  br label %215

214:                                              ; preds = %204
  br label %230

215:                                              ; preds = %212, %210, %208
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @ONFLOORZ, align 4
  %223 = load i32, i32* %5, align 4
  %224 = call %struct.TYPE_10__* @P_SpawnMobj(i32 %218, i32 %221, i32 %222, i32 %223)
  store %struct.TYPE_10__* %224, %struct.TYPE_10__** %6, align 8
  %225 = load i32, i32* @MF_DROPPED, align 4
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  br label %230

230:                                              ; preds = %215, %214
  ret void
}

declare dso_local i32 @P_DropWeapon(%struct.TYPE_11__*) #1

declare dso_local i32 @AM_Stop(...) #1

declare dso_local i32 @P_SetMobjState(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @P_Random(...) #1

declare dso_local %struct.TYPE_10__* @P_SpawnMobj(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
