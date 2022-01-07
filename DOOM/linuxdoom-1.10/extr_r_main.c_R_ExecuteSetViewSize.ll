; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_ExecuteSetViewSize.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_ExecuteSetViewSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@setsizeneeded = common dso_local global i32 0, align 4
@setblocks = common dso_local global i32 0, align 4
@SCREENWIDTH = common dso_local global i32 0, align 4
@scaledviewwidth = common dso_local global i32 0, align 4
@SCREENHEIGHT = common dso_local global i32 0, align 4
@viewheight = common dso_local global i32 0, align 4
@setdetail = common dso_local global i32 0, align 4
@detailshift = common dso_local global i32 0, align 4
@viewwidth = common dso_local global i32 0, align 4
@centery = common dso_local global i32 0, align 4
@centerx = common dso_local global i32 0, align 4
@FRACBITS = common dso_local global i32 0, align 4
@centerxfrac = common dso_local global i32 0, align 4
@centeryfrac = common dso_local global i32 0, align 4
@projection = common dso_local global i32 0, align 4
@R_DrawColumn = common dso_local global i32 0, align 4
@basecolfunc = common dso_local global i32 0, align 4
@colfunc = common dso_local global i32 0, align 4
@R_DrawFuzzColumn = common dso_local global i32 0, align 4
@fuzzcolfunc = common dso_local global i32 0, align 4
@R_DrawTranslatedColumn = common dso_local global i32 0, align 4
@transcolfunc = common dso_local global i32 0, align 4
@R_DrawSpan = common dso_local global i32 0, align 4
@spanfunc = common dso_local global i32 0, align 4
@R_DrawColumnLow = common dso_local global i32 0, align 4
@R_DrawSpanLow = common dso_local global i32 0, align 4
@FRACUNIT = common dso_local global i32 0, align 4
@pspritescale = common dso_local global i32 0, align 4
@pspriteiscale = common dso_local global i32 0, align 4
@screenheightarray = common dso_local global i32* null, align 8
@yslope = common dso_local global i8** null, align 8
@finecosine = common dso_local global i32* null, align 8
@xtoviewangle = common dso_local global i64* null, align 8
@ANGLETOFINESHIFT = common dso_local global i64 0, align 8
@distscale = common dso_local global i8** null, align 8
@LIGHTLEVELS = common dso_local global i32 0, align 4
@NUMCOLORMAPS = common dso_local global i32 0, align 4
@MAXLIGHTSCALE = common dso_local global i32 0, align 4
@DISTMAP = common dso_local global i32 0, align 4
@colormaps = common dso_local global i64 0, align 8
@scalelight = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_ExecuteSetViewSize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* @setsizeneeded, align 4
  %7 = load i32, i32* @setblocks, align 4
  %8 = icmp eq i32 %7, 11
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @SCREENWIDTH, align 4
  store i32 %10, i32* @scaledviewwidth, align 4
  %11 = load i32, i32* @SCREENHEIGHT, align 4
  store i32 %11, i32* @viewheight, align 4
  br label %19

12:                                               ; preds = %0
  %13 = load i32, i32* @setblocks, align 4
  %14 = mul nsw i32 %13, 32
  store i32 %14, i32* @scaledviewwidth, align 4
  %15 = load i32, i32* @setblocks, align 4
  %16 = mul nsw i32 %15, 168
  %17 = sdiv i32 %16, 10
  %18 = and i32 %17, -8
  store i32 %18, i32* @viewheight, align 4
  br label %19

19:                                               ; preds = %12, %9
  %20 = load i32, i32* @setdetail, align 4
  store i32 %20, i32* @detailshift, align 4
  %21 = load i32, i32* @scaledviewwidth, align 4
  %22 = load i32, i32* @detailshift, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* @viewwidth, align 4
  %24 = load i32, i32* @viewheight, align 4
  %25 = sdiv i32 %24, 2
  store i32 %25, i32* @centery, align 4
  %26 = load i32, i32* @viewwidth, align 4
  %27 = sdiv i32 %26, 2
  store i32 %27, i32* @centerx, align 4
  %28 = load i32, i32* @centerx, align 4
  %29 = load i32, i32* @FRACBITS, align 4
  %30 = shl i32 %28, %29
  store i32 %30, i32* @centerxfrac, align 4
  %31 = load i32, i32* @centery, align 4
  %32 = load i32, i32* @FRACBITS, align 4
  %33 = shl i32 %31, %32
  store i32 %33, i32* @centeryfrac, align 4
  %34 = load i32, i32* @centerxfrac, align 4
  store i32 %34, i32* @projection, align 4
  %35 = load i32, i32* @detailshift, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %19
  %38 = load i32, i32* @R_DrawColumn, align 4
  store i32 %38, i32* @basecolfunc, align 4
  store i32 %38, i32* @colfunc, align 4
  %39 = load i32, i32* @R_DrawFuzzColumn, align 4
  store i32 %39, i32* @fuzzcolfunc, align 4
  %40 = load i32, i32* @R_DrawTranslatedColumn, align 4
  store i32 %40, i32* @transcolfunc, align 4
  %41 = load i32, i32* @R_DrawSpan, align 4
  store i32 %41, i32* @spanfunc, align 4
  br label %47

42:                                               ; preds = %19
  %43 = load i32, i32* @R_DrawColumnLow, align 4
  store i32 %43, i32* @basecolfunc, align 4
  store i32 %43, i32* @colfunc, align 4
  %44 = load i32, i32* @R_DrawFuzzColumn, align 4
  store i32 %44, i32* @fuzzcolfunc, align 4
  %45 = load i32, i32* @R_DrawTranslatedColumn, align 4
  store i32 %45, i32* @transcolfunc, align 4
  %46 = load i32, i32* @R_DrawSpanLow, align 4
  store i32 %46, i32* @spanfunc, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* @scaledviewwidth, align 4
  %49 = load i32, i32* @viewheight, align 4
  %50 = call i32 @R_InitBuffer(i32 %48, i32 %49)
  %51 = call i32 (...) @R_InitTextureMapping()
  %52 = load i32, i32* @FRACUNIT, align 4
  %53 = load i32, i32* @viewwidth, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* @SCREENWIDTH, align 4
  %56 = sdiv i32 %54, %55
  store i32 %56, i32* @pspritescale, align 4
  %57 = load i32, i32* @FRACUNIT, align 4
  %58 = load i32, i32* @SCREENWIDTH, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* @viewwidth, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* @pspriteiscale, align 4
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %72, %47
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @viewwidth, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32, i32* @viewheight, align 4
  %68 = load i32*, i32** @screenheightarray, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %62

75:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %104, %75
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @viewheight, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %76
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @viewheight, align 4
  %83 = sdiv i32 %82, 2
  %84 = sub nsw i32 %81, %83
  %85 = load i32, i32* @FRACBITS, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* @FRACUNIT, align 4
  %88 = sdiv i32 %87, 2
  %89 = add nsw i32 %86, %88
  store i32 %89, i32* %2, align 4
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @abs(i32 %90) #3
  store i32 %91, i32* %2, align 4
  %92 = load i32, i32* @viewwidth, align 4
  %93 = load i32, i32* @detailshift, align 4
  %94 = shl i32 %92, %93
  %95 = sdiv i32 %94, 2
  %96 = load i32, i32* @FRACUNIT, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %2, align 4
  %99 = call i8* @FixedDiv(i32 %97, i32 %98)
  %100 = load i8**, i8*** @yslope, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  store i8* %99, i8** %103, align 8
  br label %104

104:                                              ; preds = %80
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %76

107:                                              ; preds = %76
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %131, %107
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @viewwidth, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %108
  %113 = load i32*, i32** @finecosine, align 8
  %114 = load i64*, i64** @xtoviewangle, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @ANGLETOFINESHIFT, align 8
  %120 = lshr i64 %118, %119
  %121 = getelementptr inbounds i32, i32* %113, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @abs(i32 %122) #3
  store i32 %123, i32* %1, align 4
  %124 = load i32, i32* @FRACUNIT, align 4
  %125 = load i32, i32* %1, align 4
  %126 = call i8* @FixedDiv(i32 %124, i32 %125)
  %127 = load i8**, i8*** @distscale, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  store i8* %126, i8** %130, align 8
  br label %131

131:                                              ; preds = %112
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %3, align 4
  br label %108

134:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %193, %134
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @LIGHTLEVELS, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %196

139:                                              ; preds = %135
  %140 = load i32, i32* @LIGHTLEVELS, align 4
  %141 = sub nsw i32 %140, 1
  %142 = load i32, i32* %3, align 4
  %143 = sub nsw i32 %141, %142
  %144 = mul nsw i32 %143, 2
  %145 = load i32, i32* @NUMCOLORMAPS, align 4
  %146 = mul nsw i32 %144, %145
  %147 = load i32, i32* @LIGHTLEVELS, align 4
  %148 = sdiv i32 %146, %147
  store i32 %148, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %189, %139
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @MAXLIGHTSCALE, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %192

153:                                              ; preds = %149
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @SCREENWIDTH, align 4
  %157 = mul nsw i32 %155, %156
  %158 = load i32, i32* @viewwidth, align 4
  %159 = load i32, i32* @detailshift, align 4
  %160 = shl i32 %158, %159
  %161 = sdiv i32 %157, %160
  %162 = load i32, i32* @DISTMAP, align 4
  %163 = sdiv i32 %161, %162
  %164 = sub nsw i32 %154, %163
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %153
  store i32 0, i32* %5, align 4
  br label %168

168:                                              ; preds = %167, %153
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @NUMCOLORMAPS, align 4
  %171 = icmp sge i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* @NUMCOLORMAPS, align 4
  %174 = sub nsw i32 %173, 1
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %172, %168
  %176 = load i64, i64* @colormaps, align 8
  %177 = load i32, i32* %5, align 4
  %178 = mul nsw i32 %177, 256
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %176, %179
  %181 = load i64**, i64*** @scalelight, align 8
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64*, i64** %181, i64 %183
  %185 = load i64*, i64** %184, align 8
  %186 = load i32, i32* %4, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  store i64 %180, i64* %188, align 8
  br label %189

189:                                              ; preds = %175
  %190 = load i32, i32* %4, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %4, align 4
  br label %149

192:                                              ; preds = %149
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %3, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %3, align 4
  br label %135

196:                                              ; preds = %135
  ret void
}

declare dso_local i32 @R_InitBuffer(i32, i32) #1

declare dso_local i32 @R_InitTextureMapping(...) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i8* @FixedDiv(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
