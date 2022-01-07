; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_PIT_CheckThing.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_PIT_CheckThing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i64, i64, %struct.TYPE_12__*, %struct.TYPE_11__*, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i32 }

@MF_SOLID = common dso_local global i32 0, align 4
@MF_SPECIAL = common dso_local global i32 0, align 4
@MF_SHOOTABLE = common dso_local global i32 0, align 4
@tmthing = common dso_local global %struct.TYPE_12__* null, align 8
@tmx = common dso_local global i64 0, align 8
@tmy = common dso_local global i64 0, align 8
@MF_SKULLFLY = common dso_local global i32 0, align 4
@MF_MISSILE = common dso_local global i32 0, align 4
@MT_KNIGHT = common dso_local global i64 0, align 8
@MT_BRUISER = common dso_local global i64 0, align 8
@MT_PLAYER = common dso_local global i64 0, align 8
@tmflags = common dso_local global i32 0, align 4
@MF_PICKUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PIT_CheckThing(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MF_SOLID, align 4
  %11 = load i32, i32* @MF_SPECIAL, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MF_SHOOTABLE, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %9, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %249

18:                                               ; preds = %1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  store i64 %25, i64* %4, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 11
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @tmx, align 8
  %30 = sub nsw i64 %28, %29
  %31 = call i64 @abs(i64 %30)
  %32 = load i64, i64* %4, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %18
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 10
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @tmy, align 8
  %39 = sub nsw i64 %37, %38
  %40 = call i64 @abs(i64 %39)
  %41 = load i64, i64* %4, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34, %18
  store i32 1, i32* %2, align 4
  br label %249

44:                                               ; preds = %34
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %47 = icmp eq %struct.TYPE_12__* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %249

49:                                               ; preds = %44
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MF_SKULLFLY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %90

56:                                               ; preds = %49
  %57 = call i32 (...) @P_Random()
  %58 = srem i32 %57, 8
  %59 = add nsw i32 %58, 1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 6
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %59, %64
  store i32 %65, i32* %6, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @P_DamageMobj(%struct.TYPE_12__* %66, %struct.TYPE_12__* %67, %struct.TYPE_12__* %68, i32 %69)
  %71 = load i32, i32* @MF_SKULLFLY, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 7
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 8
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 9
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 6
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @P_SetMobjState(%struct.TYPE_12__* %83, i32 %88)
  store i32 0, i32* %2, align 4
  br label %249

90:                                               ; preds = %49
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @MF_MISSILE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %214

97:                                               ; preds = %90
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %103, %106
  %108 = icmp sgt i64 %100, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  store i32 1, i32* %2, align 4
  br label %249

110:                                              ; preds = %97
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %117, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %110
  store i32 1, i32* %2, align 4
  br label %249

123:                                              ; preds = %110
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 5
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = icmp ne %struct.TYPE_12__* %126, null
  br i1 %127, label %128, label %181

128:                                              ; preds = %123
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %133, %136
  br i1 %137, label %166, label %138

138:                                              ; preds = %128
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @MT_KNIGHT, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %138
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @MT_BRUISER, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %166, label %152

152:                                              ; preds = %146, %138
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 5
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @MT_BRUISER, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %181

160:                                              ; preds = %152
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @MT_KNIGHT, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %181

166:                                              ; preds = %160, %146, %128
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 5
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = icmp eq %struct.TYPE_12__* %167, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  store i32 1, i32* %2, align 4
  br label %249

173:                                              ; preds = %166
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @MT_PLAYER, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  store i32 0, i32* %2, align 4
  br label %249

180:                                              ; preds = %173
  br label %181

181:                                              ; preds = %180, %160, %152, %123
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @MF_SHOOTABLE, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %197, label %188

188:                                              ; preds = %181
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @MF_SOLID, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  store i32 %196, i32* %2, align 4
  br label %249

197:                                              ; preds = %181
  %198 = call i32 (...) @P_Random()
  %199 = srem i32 %198, 8
  %200 = add nsw i32 %199, 1
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 6
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %200, %205
  store i32 %206, i32* %6, align 4
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 5
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @P_DamageMobj(%struct.TYPE_12__* %207, %struct.TYPE_12__* %208, %struct.TYPE_12__* %211, i32 %212)
  store i32 0, i32* %2, align 4
  br label %249

214:                                              ; preds = %90
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @MF_SPECIAL, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %240

221:                                              ; preds = %214
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @MF_SOLID, align 4
  %226 = and i32 %224, %225
  store i32 %226, i32* %5, align 4
  %227 = load i32, i32* @tmflags, align 4
  %228 = load i32, i32* @MF_PICKUP, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %221
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** @tmthing, align 8
  %234 = call i32 @P_TouchSpecialThing(%struct.TYPE_12__* %232, %struct.TYPE_12__* %233)
  br label %235

235:                                              ; preds = %231, %221
  %236 = load i32, i32* %5, align 4
  %237 = icmp ne i32 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  store i32 %239, i32* %2, align 4
  br label %249

240:                                              ; preds = %214
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @MF_SOLID, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  %247 = xor i1 %246, true
  %248 = zext i1 %247 to i32
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %240, %235, %197, %188, %179, %172, %122, %109, %56, %48, %43, %17
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @P_Random(...) #1

declare dso_local i32 @P_DamageMobj(%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @P_SetMobjState(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @P_TouchSpecialThing(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
