; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_FillBackScreen.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_FillBackScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.R_FillBackScreen.name1 = private unnamed_addr constant [9 x i8] c"FLOOR7_2\00", align 1
@__const.R_FillBackScreen.name2 = private unnamed_addr constant [8 x i8] c"GRNROCK\00", align 1
@scaledviewwidth = common dso_local global i32 0, align 4
@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@PU_CACHE = common dso_local global i32 0, align 4
@screens = common dso_local global i32** null, align 8
@SCREENHEIGHT = common dso_local global i32 0, align 4
@SBARHEIGHT = common dso_local global i32 0, align 4
@SCREENWIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"brdr_t\00", align 1
@viewwindowx = common dso_local global i64 0, align 8
@viewwindowy = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"brdr_b\00", align 1
@viewheight = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"brdr_l\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"brdr_r\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"brdr_tl\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"brdr_tr\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"brdr_bl\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"brdr_br\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_FillBackScreen() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [9 x i8], align 1
  %7 = alloca [8 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = bitcast [9 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.R_FillBackScreen.name1, i32 0, i32 0), i64 9, i1 false)
  %10 = bitcast [8 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.R_FillBackScreen.name2, i32 0, i32 0), i64 8, i1 false)
  %11 = load i32, i32* @scaledviewwidth, align 4
  %12 = icmp eq i32 %11, 320
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  br label %196

14:                                               ; preds = %0
  %15 = load i64, i64* @gamemode, align 8
  %16 = load i64, i64* @commercial, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  store i8* %19, i8** %8, align 8
  br label %22

20:                                               ; preds = %14
  %21 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  store i8* %21, i8** %8, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* @PU_CACHE, align 4
  %25 = call i32* @W_CacheLumpName(i8* %23, i32 %24)
  store i32* %25, i32** %1, align 8
  %26 = load i32**, i32*** @screens, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %2, align 8
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %76, %22
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SCREENHEIGHT, align 4
  %32 = load i32, i32* @SBARHEIGHT, align 4
  %33 = sub nsw i32 %31, %32
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %79

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SCREENWIDTH, align 4
  %39 = sdiv i32 %38, 64
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load i32*, i32** %2, align 8
  %43 = load i32*, i32** %1, align 8
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 63
  %46 = shl i32 %45, 6
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = call i32 @memcpy(i32* %42, i32* %48, i32 64)
  %50 = load i32*, i32** %2, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 64
  store i32* %51, i32** %2, align 8
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %36

55:                                               ; preds = %36
  %56 = load i32, i32* @SCREENWIDTH, align 4
  %57 = and i32 %56, 63
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load i32*, i32** %2, align 8
  %61 = load i32*, i32** %1, align 8
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, 63
  %64 = shl i32 %63, 6
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* @SCREENWIDTH, align 4
  %68 = and i32 %67, 63
  %69 = call i32 @memcpy(i32* %60, i32* %66, i32 %68)
  %70 = load i32, i32* @SCREENWIDTH, align 4
  %71 = and i32 %70, 63
  %72 = load i32*, i32** %2, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %2, align 8
  br label %75

75:                                               ; preds = %59, %55
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %29

79:                                               ; preds = %29
  %80 = load i32, i32* @PU_CACHE, align 4
  %81 = call i32* @W_CacheLumpName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %80)
  store i32* %81, i32** %5, align 8
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %95, %79
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @scaledviewwidth, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load i64, i64* @viewwindowx, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = load i64, i64* @viewwindowy, align 8
  %92 = sub nsw i64 %91, 8
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @V_DrawPatch(i64 %90, i64 %92, i32 1, i32* %93)
  br label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 8
  store i32 %97, i32* %3, align 4
  br label %82

98:                                               ; preds = %82
  %99 = load i32, i32* @PU_CACHE, align 4
  %100 = call i32* @W_CacheLumpName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  store i32* %100, i32** %5, align 8
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %116, %98
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @scaledviewwidth, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %101
  %106 = load i64, i64* @viewwindowx, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = load i64, i64* @viewwindowy, align 8
  %111 = load i32, i32* @viewheight, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @V_DrawPatch(i64 %109, i64 %113, i32 1, i32* %114)
  br label %116

116:                                              ; preds = %105
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 8
  store i32 %118, i32* %3, align 4
  br label %101

119:                                              ; preds = %101
  %120 = load i32, i32* @PU_CACHE, align 4
  %121 = call i32* @W_CacheLumpName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  store i32* %121, i32** %5, align 8
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %135, %119
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @viewheight, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = load i64, i64* @viewwindowx, align 8
  %128 = sub nsw i64 %127, 8
  %129 = load i64, i64* @viewwindowy, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %129, %131
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 @V_DrawPatch(i64 %128, i64 %132, i32 1, i32* %133)
  br label %135

135:                                              ; preds = %126
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 8
  store i32 %137, i32* %4, align 4
  br label %122

138:                                              ; preds = %122
  %139 = load i32, i32* @PU_CACHE, align 4
  %140 = call i32* @W_CacheLumpName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  store i32* %140, i32** %5, align 8
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %156, %138
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @viewheight, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %141
  %146 = load i64, i64* @viewwindowx, align 8
  %147 = load i32, i32* @scaledviewwidth, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %146, %148
  %150 = load i64, i64* @viewwindowy, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %150, %152
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @V_DrawPatch(i64 %149, i64 %153, i32 1, i32* %154)
  br label %156

156:                                              ; preds = %145
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 8
  store i32 %158, i32* %4, align 4
  br label %141

159:                                              ; preds = %141
  %160 = load i64, i64* @viewwindowx, align 8
  %161 = sub nsw i64 %160, 8
  %162 = load i64, i64* @viewwindowy, align 8
  %163 = sub nsw i64 %162, 8
  %164 = load i32, i32* @PU_CACHE, align 4
  %165 = call i32* @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %164)
  %166 = call i32 @V_DrawPatch(i64 %161, i64 %163, i32 1, i32* %165)
  %167 = load i64, i64* @viewwindowx, align 8
  %168 = load i32, i32* @scaledviewwidth, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %167, %169
  %171 = load i64, i64* @viewwindowy, align 8
  %172 = sub nsw i64 %171, 8
  %173 = load i32, i32* @PU_CACHE, align 4
  %174 = call i32* @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %173)
  %175 = call i32 @V_DrawPatch(i64 %170, i64 %172, i32 1, i32* %174)
  %176 = load i64, i64* @viewwindowx, align 8
  %177 = sub nsw i64 %176, 8
  %178 = load i64, i64* @viewwindowy, align 8
  %179 = load i32, i32* @viewheight, align 4
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %178, %180
  %182 = load i32, i32* @PU_CACHE, align 4
  %183 = call i32* @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  %184 = call i32 @V_DrawPatch(i64 %177, i64 %181, i32 1, i32* %183)
  %185 = load i64, i64* @viewwindowx, align 8
  %186 = load i32, i32* @scaledviewwidth, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %185, %187
  %189 = load i64, i64* @viewwindowy, align 8
  %190 = load i32, i32* @viewheight, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %189, %191
  %193 = load i32, i32* @PU_CACHE, align 4
  %194 = call i32* @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %193)
  %195 = call i32 @V_DrawPatch(i64 %188, i64 %192, i32 1, i32* %194)
  br label %196

196:                                              ; preds = %159, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @W_CacheLumpName(i8*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @V_DrawPatch(i64, i64, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
