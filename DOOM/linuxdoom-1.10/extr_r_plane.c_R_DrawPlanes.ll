; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_plane.c_R_DrawPlanes.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_plane.c_R_DrawPlanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64*, i64*, i32, i64 }

@visplanes = common dso_local global %struct.TYPE_4__* null, align 8
@lastvisplane = common dso_local global %struct.TYPE_4__* null, align 8
@skyflatnum = common dso_local global i64 0, align 8
@pspriteiscale = common dso_local global i32 0, align 4
@detailshift = common dso_local global i32 0, align 4
@dc_iscale = common dso_local global i32 0, align 4
@colormaps = common dso_local global i32 0, align 4
@dc_colormap = common dso_local global i32 0, align 4
@skytexturemid = common dso_local global i32 0, align 4
@dc_texturemid = common dso_local global i32 0, align 4
@dc_yl = common dso_local global i64 0, align 8
@dc_yh = common dso_local global i64 0, align 8
@viewangle = common dso_local global i32 0, align 4
@xtoviewangle = common dso_local global i32* null, align 8
@ANGLETOSKYSHIFT = common dso_local global i32 0, align 4
@dc_x = common dso_local global i32 0, align 4
@skytexture = common dso_local global i32 0, align 4
@dc_source = common dso_local global i32 0, align 4
@firstflat = common dso_local global i64 0, align 8
@flattranslation = common dso_local global i64* null, align 8
@PU_STATIC = common dso_local global i32 0, align 4
@ds_source = common dso_local global i32 0, align 4
@viewz = common dso_local global i64 0, align 8
@planeheight = common dso_local global i32 0, align 4
@LIGHTSEGSHIFT = common dso_local global i32 0, align 4
@extralight = common dso_local global i32 0, align 4
@LIGHTLEVELS = common dso_local global i32 0, align 4
@zlight = common dso_local global i32* null, align 8
@planezlight = common dso_local global i32 0, align 4
@PU_CACHE = common dso_local global i32 0, align 4
@MAXDRAWSEGS = common dso_local global i64 0, align 8
@MAXOPENINGS = common dso_local global i64 0, align 8
@MAXVISPLANES = common dso_local global i32 0, align 4
@drawsegs = common dso_local global i64 0, align 8
@ds_p = common dso_local global i64 0, align 8
@lastopening = common dso_local global i64 0, align 8
@openings = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_DrawPlanes() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @visplanes, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %1, align 8
  br label %7

7:                                                ; preds = %190, %0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lastvisplane, align 8
  %10 = icmp ult %struct.TYPE_4__* %8, %9
  br i1 %10, label %11, label %193

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %190

20:                                               ; preds = %11
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @skyflatnum, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %20
  %27 = load i32, i32* @pspriteiscale, align 4
  %28 = load i32, i32* @detailshift, align 4
  %29 = ashr i32 %27, %28
  store i32 %29, i32* @dc_iscale, align 4
  %30 = load i32, i32* @colormaps, align 4
  store i32 %30, i32* @dc_colormap, align 4
  %31 = load i32, i32* @skytexturemid, align 4
  store i32 %31, i32* @dc_texturemid, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %75, %26
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %36, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %35
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* @dc_yl, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* @dc_yh, align 8
  %56 = load i64, i64* @dc_yl, align 8
  %57 = load i64, i64* @dc_yh, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %41
  %60 = load i32, i32* @viewangle, align 4
  %61 = load i32*, i32** @xtoviewangle, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %60, %65
  %67 = load i32, i32* @ANGLETOSKYSHIFT, align 4
  %68 = ashr i32 %66, %67
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %3, align 4
  store i32 %69, i32* @dc_x, align 4
  %70 = load i32, i32* @skytexture, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @R_GetColumn(i32 %70, i32 %71)
  store i32 %72, i32* @dc_source, align 4
  %73 = call i32 (...) @colfunc()
  br label %74

74:                                               ; preds = %59, %41
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %35

78:                                               ; preds = %35
  br label %190

79:                                               ; preds = %20
  %80 = load i64, i64* @firstflat, align 8
  %81 = load i64*, i64** @flattranslation, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i64, i64* %81, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %80, %86
  %88 = load i32, i32* @PU_STATIC, align 4
  %89 = call i32 @W_CacheLumpNum(i64 %87, i32 %88)
  store i32 %89, i32* @ds_source, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @viewz, align 8
  %94 = sub nsw i64 %92, %93
  %95 = call i32 @abs(i64 %94)
  store i32 %95, i32* @planeheight, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @LIGHTSEGSHIFT, align 4
  %100 = ashr i32 %98, %99
  %101 = load i32, i32* @extralight, align 4
  %102 = add nsw i32 %100, %101
  store i32 %102, i32* %2, align 4
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* @LIGHTLEVELS, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %79
  %107 = load i32, i32* @LIGHTLEVELS, align 4
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %106, %79
  %110 = load i32, i32* %2, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %109
  %114 = load i32*, i32** @zlight, align 8
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* @planezlight, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  %121 = load i64*, i64** %120, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %121, i64 %126
  store i64 255, i64* %127, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load i64*, i64** %129, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %130, i64 %135
  store i64 255, i64* %136, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %183, %113
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %148, label %186

148:                                              ; preds = %144
  %149 = load i32, i32* %3, align 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 3
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %3, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %152, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 4
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %3, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %161, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 3
  %169 = load i64*, i64** %168, align 8
  %170 = load i32, i32* %3, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 4
  %177 = load i64*, i64** %176, align 8
  %178 = load i32, i32* %3, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @R_MakeSpans(i32 %149, i32 %158, i64 %166, i32 %174, i64 %181)
  br label %183

183:                                              ; preds = %148
  %184 = load i32, i32* %3, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %3, align 4
  br label %144

186:                                              ; preds = %144
  %187 = load i32, i32* @ds_source, align 4
  %188 = load i32, i32* @PU_CACHE, align 4
  %189 = call i32 @Z_ChangeTag(i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %186, %78, %19
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 1
  store %struct.TYPE_4__* %192, %struct.TYPE_4__** %1, align 8
  br label %7

193:                                              ; preds = %7
  ret void
}

declare dso_local i32 @R_GetColumn(i32, i32) #1

declare dso_local i32 @colfunc(...) #1

declare dso_local i32 @W_CacheLumpNum(i64, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @R_MakeSpans(i32, i32, i64, i32, i64) #1

declare dso_local i32 @Z_ChangeTag(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
