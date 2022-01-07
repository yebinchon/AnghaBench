; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawDeathmatchStats.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawDeathmatchStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@WI_SPACINGY = common dso_local global i32 0, align 4
@DM_TOTALSX = common dso_local global i32 0, align 4
@total = common dso_local global %struct.TYPE_9__* null, align 8
@DM_MATRIXY = common dso_local global i32 0, align 4
@FB = common dso_local global i32 0, align 4
@DM_KILLERSX = common dso_local global i32 0, align 4
@DM_KILLERSY = common dso_local global i32 0, align 4
@killers = common dso_local global %struct.TYPE_9__* null, align 8
@DM_VICTIMSX = common dso_local global i32 0, align 4
@DM_VICTIMSY = common dso_local global i32 0, align 4
@victims = common dso_local global %struct.TYPE_9__* null, align 8
@DM_MATRIXX = common dso_local global i32 0, align 4
@DM_SPACINGX = common dso_local global i32 0, align 4
@MAXPLAYERS = common dso_local global i32 0, align 4
@playeringame = common dso_local global i64* null, align 8
@p = common dso_local global %struct.TYPE_9__** null, align 8
@me = common dso_local global i32 0, align 4
@bstar = common dso_local global %struct.TYPE_9__* null, align 8
@star = common dso_local global %struct.TYPE_9__* null, align 8
@num = common dso_local global %struct.TYPE_10__** null, align 8
@dm_frags = common dso_local global i32** null, align 8
@dm_totals = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_drawDeathmatchStats() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @WI_SPACINGY, align 4
  store i32 %7, i32* %6, align 4
  %8 = call i32 (...) @WI_slamBackground()
  %9 = call i32 (...) @WI_drawAnimatedBack()
  %10 = call i32 (...) @WI_drawLF()
  %11 = load i32, i32* @DM_TOTALSX, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @total, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @SHORT(i32 %14)
  %16 = sdiv i32 %15, 2
  %17 = sub nsw i32 %11, %16
  %18 = load i32, i32* @DM_MATRIXY, align 4
  %19 = load i32, i32* @WI_SPACINGY, align 4
  %20 = sub nsw i32 %18, %19
  %21 = add nsw i32 %20, 10
  %22 = load i32, i32* @FB, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @total, align 8
  %24 = call i32 @V_DrawPatch(i32 %17, i32 %21, i32 %22, %struct.TYPE_9__* %23)
  %25 = load i32, i32* @DM_KILLERSX, align 4
  %26 = load i32, i32* @DM_KILLERSY, align 4
  %27 = load i32, i32* @FB, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @killers, align 8
  %29 = call i32 @V_DrawPatch(i32 %25, i32 %26, i32 %27, %struct.TYPE_9__* %28)
  %30 = load i32, i32* @DM_VICTIMSX, align 4
  %31 = load i32, i32* @DM_VICTIMSY, align 4
  %32 = load i32, i32* @FB, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @victims, align 8
  %34 = call i32 @V_DrawPatch(i32 %30, i32 %31, i32 %32, %struct.TYPE_9__* %33)
  %35 = load i32, i32* @DM_MATRIXX, align 4
  %36 = load i32, i32* @DM_SPACINGX, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @DM_MATRIXY, align 4
  store i32 %38, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %39

39:                                               ; preds = %136, %0
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @MAXPLAYERS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %139

43:                                               ; preds = %39
  %44 = load i64*, i64** @playeringame, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %128

50:                                               ; preds = %43
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @p, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %52, i64 %54
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @SHORT(i32 %58)
  %60 = sdiv i32 %59, 2
  %61 = sub nsw i32 %51, %60
  %62 = load i32, i32* @DM_MATRIXY, align 4
  %63 = load i32, i32* @WI_SPACINGY, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load i32, i32* @FB, align 4
  %66 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @p, align 8
  %67 = load i32, i32* %1, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %66, i64 %68
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = call i32 @V_DrawPatch(i32 %61, i32 %64, i32 %65, %struct.TYPE_9__* %70)
  %72 = load i32, i32* @DM_MATRIXX, align 4
  %73 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @p, align 8
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %73, i64 %75
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @SHORT(i32 %79)
  %81 = sdiv i32 %80, 2
  %82 = sub nsw i32 %72, %81
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @FB, align 4
  %85 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @p, align 8
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %85, i64 %87
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = call i32 @V_DrawPatch(i32 %82, i32 %83, i32 %84, %struct.TYPE_9__* %89)
  %91 = load i32, i32* %1, align 4
  %92 = load i32, i32* @me, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %127

94:                                               ; preds = %50
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @p, align 8
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %96, i64 %98
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @SHORT(i32 %102)
  %104 = sdiv i32 %103, 2
  %105 = sub nsw i32 %95, %104
  %106 = load i32, i32* @DM_MATRIXY, align 4
  %107 = load i32, i32* @WI_SPACINGY, align 4
  %108 = sub nsw i32 %106, %107
  %109 = load i32, i32* @FB, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bstar, align 8
  %111 = call i32 @V_DrawPatch(i32 %105, i32 %108, i32 %109, %struct.TYPE_9__* %110)
  %112 = load i32, i32* @DM_MATRIXX, align 4
  %113 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @p, align 8
  %114 = load i32, i32* %1, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %113, i64 %115
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @SHORT(i32 %119)
  %121 = sdiv i32 %120, 2
  %122 = sub nsw i32 %112, %121
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @FB, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** @star, align 8
  %126 = call i32 @V_DrawPatch(i32 %122, i32 %123, i32 %124, %struct.TYPE_9__* %125)
  br label %127

127:                                              ; preds = %94, %50
  br label %129

128:                                              ; preds = %43
  br label %129

129:                                              ; preds = %128, %127
  %130 = load i32, i32* @DM_SPACINGX, align 4
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* @WI_SPACINGY, align 4
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %129
  %137 = load i32, i32* %1, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %1, align 4
  br label %39

139:                                              ; preds = %39
  %140 = load i32, i32* @DM_MATRIXY, align 4
  %141 = add nsw i32 %140, 10
  store i32 %141, i32* %4, align 4
  %142 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @num, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %142, i64 0
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @SHORT(i32 %146)
  store i32 %147, i32* %5, align 4
  store i32 0, i32* %1, align 4
  br label %148

148:                                              ; preds = %211, %139
  %149 = load i32, i32* %1, align 4
  %150 = load i32, i32* @MAXPLAYERS, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %214

152:                                              ; preds = %148
  %153 = load i32, i32* @DM_MATRIXX, align 4
  %154 = load i32, i32* @DM_SPACINGX, align 4
  %155 = add nsw i32 %153, %154
  store i32 %155, i32* %3, align 4
  %156 = load i64*, i64** @playeringame, align 8
  %157 = load i32, i32* %1, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %207

162:                                              ; preds = %152
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %193, %162
  %164 = load i32, i32* %2, align 4
  %165 = load i32, i32* @MAXPLAYERS, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %196

167:                                              ; preds = %163
  %168 = load i64*, i64** @playeringame, align 8
  %169 = load i32, i32* %2, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %167
  %175 = load i32, i32* %3, align 4
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %175, %176
  %178 = load i32, i32* %4, align 4
  %179 = load i32**, i32*** @dm_frags, align 8
  %180 = load i32, i32* %1, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32*, i32** %179, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %2, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @WI_drawNum(i32 %177, i32 %178, i32 %187, i32 2)
  br label %189

189:                                              ; preds = %174, %167
  %190 = load i32, i32* @DM_SPACINGX, align 4
  %191 = load i32, i32* %3, align 4
  %192 = add nsw i32 %191, %190
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %189
  %194 = load i32, i32* %2, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %2, align 4
  br label %163

196:                                              ; preds = %163
  %197 = load i32, i32* @DM_TOTALSX, align 4
  %198 = load i32, i32* %5, align 4
  %199 = add nsw i32 %197, %198
  %200 = load i32, i32* %4, align 4
  %201 = load i32*, i32** @dm_totals, align 8
  %202 = load i32, i32* %1, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @WI_drawNum(i32 %199, i32 %200, i32 %205, i32 2)
  br label %207

207:                                              ; preds = %196, %152
  %208 = load i32, i32* @WI_SPACINGY, align 4
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 %209, %208
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %207
  %212 = load i32, i32* %1, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %1, align 4
  br label %148

214:                                              ; preds = %148
  ret void
}

declare dso_local i32 @WI_slamBackground(...) #1

declare dso_local i32 @WI_drawAnimatedBack(...) #1

declare dso_local i32 @WI_drawLF(...) #1

declare dso_local i32 @V_DrawPatch(i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @SHORT(i32) #1

declare dso_local i32 @WI_drawNum(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
