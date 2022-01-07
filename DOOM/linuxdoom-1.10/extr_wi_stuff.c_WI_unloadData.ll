; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_unloadData.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_unloadData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@wiminus = common dso_local global i32 0, align 4
@PU_CACHE = common dso_local global i32 0, align 4
@num = common dso_local global i32* null, align 8
@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@NUMCMAPS = common dso_local global i32 0, align 4
@lnames = common dso_local global i32* null, align 8
@yah = common dso_local global i32* null, align 8
@splat = common dso_local global i32 0, align 4
@NUMMAPS = common dso_local global i32 0, align 4
@wbs = common dso_local global %struct.TYPE_3__* null, align 8
@NUMANIMS = common dso_local global i32* null, align 8
@anims = common dso_local global %struct.TYPE_4__** null, align 8
@percent = common dso_local global i32 0, align 4
@colon = common dso_local global i32 0, align 4
@finished = common dso_local global i32 0, align 4
@entering = common dso_local global i32 0, align 4
@kills = common dso_local global i32 0, align 4
@secret = common dso_local global i32 0, align 4
@sp_secret = common dso_local global i32 0, align 4
@items = common dso_local global i32 0, align 4
@frags = common dso_local global i32 0, align 4
@time = common dso_local global i32 0, align 4
@sucks = common dso_local global i32 0, align 4
@par = common dso_local global i32 0, align 4
@victims = common dso_local global i32 0, align 4
@killers = common dso_local global i32 0, align 4
@total = common dso_local global i32 0, align 4
@MAXPLAYERS = common dso_local global i32 0, align 4
@p = common dso_local global i32* null, align 8
@bp = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_unloadData() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @wiminus, align 4
  %4 = load i32, i32* @PU_CACHE, align 4
  %5 = call i32 @Z_ChangeTag(i32 %3, i32 %4)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %17, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load i32*, i32** @num, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PU_CACHE, align 4
  %16 = call i32 @Z_ChangeTag(i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %9
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %6

20:                                               ; preds = %6
  %21 = load i64, i64* @gamemode, align 8
  %22 = load i64, i64* @commercial, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @NUMCMAPS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i32*, i32** @lnames, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PU_CACHE, align 4
  %36 = call i32 @Z_ChangeTag(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %25

40:                                               ; preds = %25
  br label %139

41:                                               ; preds = %20
  %42 = load i32*, i32** @yah, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PU_CACHE, align 4
  %46 = call i32 @Z_ChangeTag(i32 %44, i32 %45)
  %47 = load i32*, i32** @yah, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PU_CACHE, align 4
  %51 = call i32 @Z_ChangeTag(i32 %49, i32 %50)
  %52 = load i32, i32* @splat, align 4
  %53 = load i32, i32* @PU_CACHE, align 4
  %54 = call i32 @Z_ChangeTag(i32 %52, i32 %53)
  store i32 0, i32* %1, align 4
  br label %55

55:                                               ; preds = %67, %41
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @NUMMAPS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i32*, i32** @lnames, align 8
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PU_CACHE, align 4
  %66 = call i32 @Z_ChangeTag(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %1, align 4
  br label %55

70:                                               ; preds = %55
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %73, 3
  br i1 %74, label %75, label %138

75:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %134, %75
  %77 = load i32, i32* %2, align 4
  %78 = load i32*, i32** @NUMANIMS, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %77, %84
  br i1 %85, label %86, label %137

86:                                               ; preds = %76
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %2, align 4
  %93 = icmp ne i32 %92, 8
  br i1 %93, label %94, label %133

94:                                               ; preds = %91, %86
  store i32 0, i32* %1, align 4
  br label %95

95:                                               ; preds = %129, %94
  %96 = load i32, i32* %1, align 4
  %97 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @anims, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %97, i64 %101
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %96, %108
  br i1 %109, label %110, label %132

110:                                              ; preds = %95
  %111 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @anims, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %111, i64 %115
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %2, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %1, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @PU_CACHE, align 4
  %128 = call i32 @Z_ChangeTag(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %110
  %130 = load i32, i32* %1, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %1, align 4
  br label %95

132:                                              ; preds = %95
  br label %133

133:                                              ; preds = %132, %91
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %2, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %2, align 4
  br label %76

137:                                              ; preds = %76
  br label %138

138:                                              ; preds = %137, %70
  br label %139

139:                                              ; preds = %138, %40
  %140 = load i32*, i32** @lnames, align 8
  %141 = call i32 @Z_Free(i32* %140)
  %142 = load i32, i32* @percent, align 4
  %143 = load i32, i32* @PU_CACHE, align 4
  %144 = call i32 @Z_ChangeTag(i32 %142, i32 %143)
  %145 = load i32, i32* @colon, align 4
  %146 = load i32, i32* @PU_CACHE, align 4
  %147 = call i32 @Z_ChangeTag(i32 %145, i32 %146)
  %148 = load i32, i32* @finished, align 4
  %149 = load i32, i32* @PU_CACHE, align 4
  %150 = call i32 @Z_ChangeTag(i32 %148, i32 %149)
  %151 = load i32, i32* @entering, align 4
  %152 = load i32, i32* @PU_CACHE, align 4
  %153 = call i32 @Z_ChangeTag(i32 %151, i32 %152)
  %154 = load i32, i32* @kills, align 4
  %155 = load i32, i32* @PU_CACHE, align 4
  %156 = call i32 @Z_ChangeTag(i32 %154, i32 %155)
  %157 = load i32, i32* @secret, align 4
  %158 = load i32, i32* @PU_CACHE, align 4
  %159 = call i32 @Z_ChangeTag(i32 %157, i32 %158)
  %160 = load i32, i32* @sp_secret, align 4
  %161 = load i32, i32* @PU_CACHE, align 4
  %162 = call i32 @Z_ChangeTag(i32 %160, i32 %161)
  %163 = load i32, i32* @items, align 4
  %164 = load i32, i32* @PU_CACHE, align 4
  %165 = call i32 @Z_ChangeTag(i32 %163, i32 %164)
  %166 = load i32, i32* @frags, align 4
  %167 = load i32, i32* @PU_CACHE, align 4
  %168 = call i32 @Z_ChangeTag(i32 %166, i32 %167)
  %169 = load i32, i32* @time, align 4
  %170 = load i32, i32* @PU_CACHE, align 4
  %171 = call i32 @Z_ChangeTag(i32 %169, i32 %170)
  %172 = load i32, i32* @sucks, align 4
  %173 = load i32, i32* @PU_CACHE, align 4
  %174 = call i32 @Z_ChangeTag(i32 %172, i32 %173)
  %175 = load i32, i32* @par, align 4
  %176 = load i32, i32* @PU_CACHE, align 4
  %177 = call i32 @Z_ChangeTag(i32 %175, i32 %176)
  %178 = load i32, i32* @victims, align 4
  %179 = load i32, i32* @PU_CACHE, align 4
  %180 = call i32 @Z_ChangeTag(i32 %178, i32 %179)
  %181 = load i32, i32* @killers, align 4
  %182 = load i32, i32* @PU_CACHE, align 4
  %183 = call i32 @Z_ChangeTag(i32 %181, i32 %182)
  %184 = load i32, i32* @total, align 4
  %185 = load i32, i32* @PU_CACHE, align 4
  %186 = call i32 @Z_ChangeTag(i32 %184, i32 %185)
  store i32 0, i32* %1, align 4
  br label %187

187:                                              ; preds = %199, %139
  %188 = load i32, i32* %1, align 4
  %189 = load i32, i32* @MAXPLAYERS, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %187
  %192 = load i32*, i32** @p, align 8
  %193 = load i32, i32* %1, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @PU_CACHE, align 4
  %198 = call i32 @Z_ChangeTag(i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %191
  %200 = load i32, i32* %1, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %1, align 4
  br label %187

202:                                              ; preds = %187
  store i32 0, i32* %1, align 4
  br label %203

203:                                              ; preds = %215, %202
  %204 = load i32, i32* %1, align 4
  %205 = load i32, i32* @MAXPLAYERS, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %203
  %208 = load i32*, i32** @bp, align 8
  %209 = load i32, i32* %1, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @PU_CACHE, align 4
  %214 = call i32 @Z_ChangeTag(i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %207
  %216 = load i32, i32* %1, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %1, align 4
  br label %203

218:                                              ; preds = %203
  ret void
}

declare dso_local i32 @Z_ChangeTag(i32, i32) #1

declare dso_local i32 @Z_Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
