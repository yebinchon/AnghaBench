; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_pspr.c_P_CheckAmmo.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_pspr.c_P_CheckAmmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32*, i64, i64* }

@weaponinfo = common dso_local global %struct.TYPE_6__* null, align 8
@wp_bfg = common dso_local global i64 0, align 8
@BFGCELLS = common dso_local global i32 0, align 4
@wp_supershotgun = common dso_local global i64 0, align 8
@am_noammo = common dso_local global i64 0, align 8
@wp_plasma = common dso_local global i64 0, align 8
@am_cell = common dso_local global i64 0, align 8
@gamemode = common dso_local global i64 0, align 8
@shareware = common dso_local global i64 0, align 8
@am_shell = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@wp_chaingun = common dso_local global i64 0, align 8
@am_clip = common dso_local global i64 0, align 8
@wp_shotgun = common dso_local global i64 0, align 8
@wp_pistol = common dso_local global i64 0, align 8
@wp_chainsaw = common dso_local global i64 0, align 8
@wp_missile = common dso_local global i64 0, align 8
@am_misl = common dso_local global i64 0, align 8
@wp_fist = common dso_local global i64 0, align 8
@wp_nochange = common dso_local global i64 0, align 8
@ps_weapon = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @P_CheckAmmo(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @weaponinfo, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @wp_bfg, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @BFGCELLS, align 4
  store i32 %19, i32* %5, align 4
  br label %29

20:                                               ; preds = %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @wp_supershotgun, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 2, i32* %5, align 4
  br label %28

27:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @am_noammo, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33, %29
  store i32 1, i32* %2, align 4
  br label %229

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %212, %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @wp_plasma, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %44
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @am_cell, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = load i64, i64* @gamemode, align 8
  %62 = load i64, i64* @shareware, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i64, i64* @wp_plasma, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  br label %211

68:                                               ; preds = %60, %52, %44
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @wp_supershotgun, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %68
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @am_shell, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 2
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = load i64, i64* @gamemode, align 8
  %86 = load i64, i64* @commercial, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i64, i64* @wp_supershotgun, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  br label %210

92:                                               ; preds = %84, %76, %68
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* @wp_chaingun, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %92
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @am_clip, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load i64, i64* @wp_chaingun, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  br label %209

112:                                              ; preds = %100, %92
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 3
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* @wp_shotgun, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %112
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @am_shell, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  %129 = load i64, i64* @wp_shotgun, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  store i64 %129, i64* %131, align 8
  br label %208

132:                                              ; preds = %120, %112
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* @am_clip, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %132
  %141 = load i64, i64* @wp_pistol, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  br label %207

144:                                              ; preds = %132
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 3
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* @wp_chainsaw, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %144
  %153 = load i64, i64* @wp_chainsaw, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  store i64 %153, i64* %155, align 8
  br label %206

156:                                              ; preds = %144
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 3
  %159 = load i64*, i64** %158, align 8
  %160 = load i64, i64* @wp_missile, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %156
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* @am_misl, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %164
  %173 = load i64, i64* @wp_missile, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  store i64 %173, i64* %175, align 8
  br label %205

176:                                              ; preds = %164, %156
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 3
  %179 = load i64*, i64** %178, align 8
  %180 = load i64, i64* @wp_bfg, align 8
  %181 = getelementptr inbounds i64, i64* %179, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %200

184:                                              ; preds = %176
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @am_cell, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = icmp sgt i32 %190, 40
  br i1 %191, label %192, label %200

192:                                              ; preds = %184
  %193 = load i64, i64* @gamemode, align 8
  %194 = load i64, i64* @shareware, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = load i64, i64* @wp_bfg, align 8
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 2
  store i64 %197, i64* %199, align 8
  br label %204

200:                                              ; preds = %192, %184, %176
  %201 = load i64, i64* @wp_fist, align 8
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 2
  store i64 %201, i64* %203, align 8
  br label %204

204:                                              ; preds = %200, %196
  br label %205

205:                                              ; preds = %204, %172
  br label %206

206:                                              ; preds = %205, %152
  br label %207

207:                                              ; preds = %206, %140
  br label %208

208:                                              ; preds = %207, %128
  br label %209

209:                                              ; preds = %208, %108
  br label %210

210:                                              ; preds = %209, %88
  br label %211

211:                                              ; preds = %210, %64
  br label %212

212:                                              ; preds = %211
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @wp_nochange, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %44, label %218

218:                                              ; preds = %212
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %220 = load i32, i32* @ps_weapon, align 4
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** @weaponinfo, align 8
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @P_SetPsprite(%struct.TYPE_5__* %219, i32 %220, i32 %227)
  store i32 0, i32* %2, align 4
  br label %229

229:                                              ; preds = %218, %42
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local i32 @P_SetPsprite(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
