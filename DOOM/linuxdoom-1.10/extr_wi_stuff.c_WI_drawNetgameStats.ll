; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawNetgameStats.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawNetgameStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@percent = common dso_local global %struct.TYPE_10__* null, align 8
@NG_STATSX = common dso_local global i32 0, align 4
@NG_SPACINGX = common dso_local global i32 0, align 4
@kills = common dso_local global %struct.TYPE_9__* null, align 8
@NG_STATSY = common dso_local global i32 0, align 4
@FB = common dso_local global i32 0, align 4
@items = common dso_local global %struct.TYPE_9__* null, align 8
@secret = common dso_local global %struct.TYPE_9__* null, align 8
@dofrags = common dso_local global i64 0, align 8
@frags = common dso_local global %struct.TYPE_9__* null, align 8
@MAXPLAYERS = common dso_local global i32 0, align 4
@playeringame = common dso_local global i32* null, align 8
@p = common dso_local global %struct.TYPE_9__** null, align 8
@me = common dso_local global i32 0, align 4
@star = common dso_local global %struct.TYPE_9__* null, align 8
@cnt_kills = common dso_local global i32* null, align 8
@cnt_items = common dso_local global i32* null, align 8
@cnt_secret = common dso_local global i32* null, align 8
@cnt_frags = common dso_local global i32* null, align 8
@WI_SPACINGY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_drawNetgameStats() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** @percent, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @SHORT(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @WI_slamBackground()
  %10 = call i32 (...) @WI_drawAnimatedBack()
  %11 = call i32 (...) @WI_drawLF()
  %12 = load i32, i32* @NG_STATSX, align 4
  %13 = load i32, i32* @NG_SPACINGX, align 4
  %14 = add nsw i32 %12, %13
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kills, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @SHORT(i32 %17)
  %19 = sub nsw i32 %14, %18
  %20 = load i32, i32* @NG_STATSY, align 4
  %21 = load i32, i32* @FB, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kills, align 8
  %23 = call i32 @V_DrawPatch(i32 %19, i32 %20, i32 %21, %struct.TYPE_9__* %22)
  %24 = load i32, i32* @NG_STATSX, align 4
  %25 = load i32, i32* @NG_SPACINGX, align 4
  %26 = mul nsw i32 2, %25
  %27 = add nsw i32 %24, %26
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @items, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @SHORT(i32 %30)
  %32 = sub nsw i32 %27, %31
  %33 = load i32, i32* @NG_STATSY, align 4
  %34 = load i32, i32* @FB, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @items, align 8
  %36 = call i32 @V_DrawPatch(i32 %32, i32 %33, i32 %34, %struct.TYPE_9__* %35)
  %37 = load i32, i32* @NG_STATSX, align 4
  %38 = load i32, i32* @NG_SPACINGX, align 4
  %39 = mul nsw i32 3, %38
  %40 = add nsw i32 %37, %39
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @secret, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @SHORT(i32 %43)
  %45 = sub nsw i32 %40, %44
  %46 = load i32, i32* @NG_STATSY, align 4
  %47 = load i32, i32* @FB, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @secret, align 8
  %49 = call i32 @V_DrawPatch(i32 %45, i32 %46, i32 %47, %struct.TYPE_9__* %48)
  %50 = load i64, i64* @dofrags, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %0
  %53 = load i32, i32* @NG_STATSX, align 4
  %54 = load i32, i32* @NG_SPACINGX, align 4
  %55 = mul nsw i32 4, %54
  %56 = add nsw i32 %53, %55
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frags, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @SHORT(i32 %59)
  %61 = sub nsw i32 %56, %60
  %62 = load i32, i32* @NG_STATSY, align 4
  %63 = load i32, i32* @FB, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frags, align 8
  %65 = call i32 @V_DrawPatch(i32 %61, i32 %62, i32 %63, %struct.TYPE_9__* %64)
  br label %66

66:                                               ; preds = %52, %0
  %67 = load i32, i32* @NG_STATSY, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kills, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SHORT(i32 %70)
  %72 = add nsw i32 %67, %71
  store i32 %72, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %73

73:                                               ; preds = %187, %66
  %74 = load i32, i32* %1, align 4
  %75 = load i32, i32* @MAXPLAYERS, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %190

77:                                               ; preds = %73
  %78 = load i32*, i32** @playeringame, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  br label %187

85:                                               ; preds = %77
  %86 = load i32, i32* @NG_STATSX, align 4
  store i32 %86, i32* %2, align 4
  %87 = load i32, i32* %2, align 4
  %88 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @p, align 8
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %88, i64 %90
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @SHORT(i32 %94)
  %96 = sub nsw i32 %87, %95
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @FB, align 4
  %99 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @p, align 8
  %100 = load i32, i32* %1, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %99, i64 %101
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = call i32 @V_DrawPatch(i32 %96, i32 %97, i32 %98, %struct.TYPE_9__* %103)
  %105 = load i32, i32* %1, align 4
  %106 = load i32, i32* @me, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %85
  %109 = load i32, i32* %2, align 4
  %110 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @p, align 8
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %110, i64 %112
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @SHORT(i32 %116)
  %118 = sub nsw i32 %109, %117
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @FB, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** @star, align 8
  %122 = call i32 @V_DrawPatch(i32 %118, i32 %119, i32 %120, %struct.TYPE_9__* %121)
  br label %123

123:                                              ; preds = %108, %85
  %124 = load i32, i32* @NG_SPACINGX, align 4
  %125 = load i32, i32* %2, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %2, align 4
  %127 = load i32, i32* %2, align 4
  %128 = load i32, i32* %4, align 4
  %129 = sub nsw i32 %127, %128
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %130, 10
  %132 = load i32*, i32** @cnt_kills, align 8
  %133 = load i32, i32* %1, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @WI_drawPercent(i32 %129, i32 %131, i32 %136)
  %138 = load i32, i32* @NG_SPACINGX, align 4
  %139 = load i32, i32* %2, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %2, align 4
  %141 = load i32, i32* %2, align 4
  %142 = load i32, i32* %4, align 4
  %143 = sub nsw i32 %141, %142
  %144 = load i32, i32* %3, align 4
  %145 = add nsw i32 %144, 10
  %146 = load i32*, i32** @cnt_items, align 8
  %147 = load i32, i32* %1, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @WI_drawPercent(i32 %143, i32 %145, i32 %150)
  %152 = load i32, i32* @NG_SPACINGX, align 4
  %153 = load i32, i32* %2, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %2, align 4
  %155 = load i32, i32* %2, align 4
  %156 = load i32, i32* %4, align 4
  %157 = sub nsw i32 %155, %156
  %158 = load i32, i32* %3, align 4
  %159 = add nsw i32 %158, 10
  %160 = load i32*, i32** @cnt_secret, align 8
  %161 = load i32, i32* %1, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @WI_drawPercent(i32 %157, i32 %159, i32 %164)
  %166 = load i32, i32* @NG_SPACINGX, align 4
  %167 = load i32, i32* %2, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %2, align 4
  %169 = load i64, i64* @dofrags, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %123
  %172 = load i32, i32* %2, align 4
  %173 = load i32, i32* %3, align 4
  %174 = add nsw i32 %173, 10
  %175 = load i32*, i32** @cnt_frags, align 8
  %176 = load i32, i32* %1, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @WI_drawNum(i32 %172, i32 %174, i32 %179, i32 -1)
  br label %181

181:                                              ; preds = %171, %123
  %182 = load i64, i64* @WI_SPACINGY, align 8
  %183 = load i32, i32* %3, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %181, %84
  %188 = load i32, i32* %1, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %1, align 4
  br label %73

190:                                              ; preds = %73
  ret void
}

declare dso_local i32 @SHORT(i32) #1

declare dso_local i32 @WI_slamBackground(...) #1

declare dso_local i32 @WI_drawAnimatedBack(...) #1

declare dso_local i32 @WI_drawLF(...) #1

declare dso_local i32 @V_DrawPatch(i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @WI_drawPercent(i32, i32, i32) #1

declare dso_local i32 @WI_drawNum(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
