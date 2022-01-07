; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_items.c_FinishSpawningItem.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_items.c_FinishSpawningItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i64, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__*, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i32*, i32, i32, i32, i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32*, i32, i64 }

@ITEM_RADIUS = common dso_local global i32 0, align 4
@ET_ITEM = common dso_local global i32 0, align 4
@bg_itemlist = common dso_local global i32 0, align 4
@CONTENTS_TRIGGER = common dso_local global i64 0, align 8
@Touch_Item = common dso_local global i32 0, align 4
@Use_Item = common dso_local global i32 0, align 4
@MASK_SOLID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"FinishSpawningItem: %s startsolid at %s\0A\00", align 1
@FL_TEAMSLAVE = common dso_local global i32 0, align 4
@EF_NODRAW = common dso_local global i32 0, align 4
@IT_POWERUP = common dso_local global i64 0, align 8
@level = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@RespawnItem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FinishSpawningItem(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_15__, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ITEM_RADIUS, align 4
  %11 = sub nsw i32 0, %10
  %12 = load i32, i32* @ITEM_RADIUS, align 4
  %13 = sub nsw i32 0, %12
  %14 = load i32, i32* @ITEM_RADIUS, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i32 @VectorSet(i32 %9, i32 %11, i32 %13, i32 %15)
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ITEM_RADIUS, align 4
  %22 = load i32, i32* @ITEM_RADIUS, align 4
  %23 = load i32, i32* @ITEM_RADIUS, align 4
  %24 = call i32 @VectorSet(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @ET_ITEM, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 6
  store i32 %25, i32* %28, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 6
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = load i32, i32* @bg_itemlist, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 0, %33
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i64 %34
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 5
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* @CONTENTS_TRIGGER, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load i32, i32* @Touch_Item, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 10
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @Use_Item, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %1
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @G_SetOrigin(%struct.TYPE_16__* %58, i32* %62)
  br label %130

64:                                               ; preds = %1
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 4096
  %85 = call i32 @VectorSet(i32 %65, i32 %71, i32 %77, i32 %84)
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @MASK_SOLID, align 4
  %104 = call i32 @trap_Trace(%struct.TYPE_15__* %3, i32* %89, i32 %93, i32 %97, i32 %98, i32 %102, i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %64
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @vtos(i32* %115)
  %117 = call i32 @G_Printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %116)
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %119 = call i32 @G_FreeEntity(%struct.TYPE_16__* %118)
  br label %188

120:                                              ; preds = %64
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @G_SetOrigin(%struct.TYPE_16__* %126, i32* %128)
  br label %130

130:                                              ; preds = %120, %57
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @FL_TEAMSLAVE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %130
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %137, %130
  %143 = load i32, i32* @EF_NODRAW, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %143
  store i32 %148, i32* %146, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  store i64 0, i64* %151, align 8
  br label %188

152:                                              ; preds = %137
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 6
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @IT_POWERUP, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %185

160:                                              ; preds = %152
  %161 = call i32 (...) @crandom()
  %162 = mul nsw i32 %161, 15
  %163 = add nsw i32 45, %162
  %164 = sitofp i32 %163 to float
  store float %164, float* %5, align 4
  %165 = load i32, i32* @EF_NODRAW, align 4
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %165
  store i32 %170, i32* %168, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  store i64 0, i64* %173, align 8
  %174 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 0), align 8
  %175 = sitofp i64 %174 to float
  %176 = load float, float* %5, align 4
  %177 = fmul float %176, 1.000000e+03
  %178 = fadd float %175, %177
  %179 = fptosi float %178 to i64
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 3
  store i64 %179, i64* %181, align 8
  %182 = load i32, i32* @RespawnItem, align 4
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  br label %188

185:                                              ; preds = %152
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %187 = call i32 @trap_LinkEntity(%struct.TYPE_16__* %186)
  br label %188

188:                                              ; preds = %185, %160, %142, %108
  ret void
}

declare dso_local i32 @VectorSet(i32, i32, i32, i32) #1

declare dso_local i32 @G_SetOrigin(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @trap_Trace(%struct.TYPE_15__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @G_Printf(i8*, i32, i32) #1

declare dso_local i32 @vtos(i32*) #1

declare dso_local i32 @G_FreeEntity(%struct.TYPE_16__*) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
