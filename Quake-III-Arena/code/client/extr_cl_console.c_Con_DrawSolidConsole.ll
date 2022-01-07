; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_console.c_Con_DrawSolidConsole.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_console.c_Con_DrawSolidConsole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { float, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i32, i16*, i64 }
%struct.TYPE_6__ = type { i32 (i32*)* }

@cls = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@con = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@SCREEN_HEIGHT = common dso_local global float 0.000000e+00, align 4
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@re = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@g_color_table = common dso_local global i32** null, align 8
@COLOR_RED = common dso_local global i32 0, align 4
@Q3_VERSION = common dso_local global i16* null, align 8
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@SMALLCHAR_HEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Con_DrawSolidConsole(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store float %0, float* %2, align 4
  %12 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0, i32 0), align 8
  %13 = load float, float* %2, align 4
  %14 = fmul float %12, %13
  %15 = fptosi float %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %251

19:                                               ; preds = %1
  %20 = load i32, i32* %9, align 4
  %21 = sitofp i32 %20 to float
  %22 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0, i32 0), align 8
  %23 = fcmp ogt float %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0, i32 0), align 8
  %26 = fptosi float %25 to i32
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %24, %19
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 7), align 8
  %28 = call i32 @SCR_AdjustFrom640(i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 7), i32* null, i32* null, i32* null)
  %29 = load float, float* %2, align 4
  %30 = load float, float* @SCREEN_HEIGHT, align 4
  %31 = fmul float %29, %30
  %32 = fsub float %31, 2.000000e+00
  %33 = fptosi float %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %42

37:                                               ; preds = %27
  %38 = load i32, i32* @SCREEN_WIDTH, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 1), align 8
  %41 = call i32 @SCR_DrawPic(i32 0, i32 0, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %36
  %43 = load i32*, i32** %11, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 1, i32* %44, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 0, i32* %46, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 0, i32* %48, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SCREEN_WIDTH, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @SCR_FillRect(i32 0, i32 %51, i32 %52, i32 2, i32* %53)
  %55 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @re, i32 0, i32 0), align 8
  %56 = load i32**, i32*** @g_color_table, align 8
  %57 = load i32, i32* @COLOR_RED, align 4
  %58 = call i64 @ColorIndex(i32 %57)
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 %55(i32* %60)
  %62 = load i16*, i16** @Q3_VERSION, align 8
  %63 = call i32 @strlen(i16* %62)
  store i32 %63, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %89, %42
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %64
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0, i32 1), align 8
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %4, align 4
  %72 = sub nsw i32 %70, %71
  %73 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %69, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %79 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %80 = sdiv i32 %79, 2
  %81 = add nsw i32 %78, %80
  %82 = sub nsw i32 %77, %81
  %83 = load i16*, i16** @Q3_VERSION, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i16, i16* %83, i64 %85
  %87 = load i16, i16* %86, align 2
  %88 = call i32 @SCR_DrawSmallChar(i64 %76, i32 %82, i16 signext %87)
  br label %89

89:                                               ; preds = %68
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %64

92:                                               ; preds = %64
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 0), align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %98 = sdiv i32 %96, %97
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %101 = mul nsw i32 %100, 3
  %102 = sub nsw i32 %99, %101
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 1), align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 2), align 8
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %137

106:                                              ; preds = %92
  %107 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @re, i32 0, i32 0), align 8
  %108 = load i32**, i32*** @g_color_table, align 8
  %109 = load i32, i32* @COLOR_RED, align 4
  %110 = call i64 @ColorIndex(i32 %109)
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 %107(i32* %112)
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %128, %106
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 3), align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 7), align 8
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %123 = mul nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %119, %124
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @SCR_DrawSmallChar(i64 %125, i32 %126, i16 signext 94)
  br label %128

128:                                              ; preds = %118
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 4
  store i32 %130, i32* %4, align 4
  br label %114

131:                                              ; preds = %114
  %132 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %133 = load i32, i32* %5, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %131, %92
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 1), align 4
  store i32 %138, i32* %8, align 4
  %139 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 4), align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %141, %137
  store i32 7, i32* %10, align 4
  %145 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @re, i32 0, i32 0), align 8
  %146 = load i32**, i32*** @g_color_table, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 %145(i32* %150)
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %239, %144
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %247

156:                                              ; preds = %152
  %157 = load i32, i32* %8, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %247

160:                                              ; preds = %156
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 2), align 8
  %162 = load i32, i32* %8, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 5), align 8
  %165 = icmp sge i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %239

167:                                              ; preds = %160
  %168 = load i16*, i16** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 6), align 8
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 5), align 8
  %171 = srem i32 %169, %170
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 3), align 4
  %173 = mul nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i16, i16* %168, i64 %174
  store i16* %175, i16** %7, align 8
  store i32 0, i32* %4, align 4
  br label %176

176:                                              ; preds = %235, %167
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 3), align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %238

180:                                              ; preds = %176
  %181 = load i16*, i16** %7, align 8
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i16, i16* %181, i64 %183
  %185 = load i16, i16* %184, align 2
  %186 = sext i16 %185 to i32
  %187 = and i32 %186, 255
  %188 = icmp eq i32 %187, 32
  br i1 %188, label %189, label %190

189:                                              ; preds = %180
  br label %235

190:                                              ; preds = %180
  %191 = load i16*, i16** %7, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i16, i16* %191, i64 %193
  %195 = load i16, i16* %194, align 2
  %196 = sext i16 %195 to i32
  %197 = ashr i32 %196, 8
  %198 = and i32 %197, 7
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %217

201:                                              ; preds = %190
  %202 = load i16*, i16** %7, align 8
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i16, i16* %202, i64 %204
  %206 = load i16, i16* %205, align 2
  %207 = sext i16 %206 to i32
  %208 = ashr i32 %207, 8
  %209 = and i32 %208, 7
  store i32 %209, i32* %10, align 4
  %210 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @re, i32 0, i32 0), align 8
  %211 = load i32**, i32*** @g_color_table, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32*, i32** %211, i64 %213
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 %210(i32* %215)
  br label %217

217:                                              ; preds = %201, %190
  %218 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @con, i32 0, i32 7), align 8
  %219 = load i32, i32* %4, align 4
  %220 = add nsw i32 %219, 1
  %221 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %222 = mul nsw i32 %220, %221
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %218, %223
  %225 = load i32, i32* %5, align 4
  %226 = load i16*, i16** %7, align 8
  %227 = load i32, i32* %4, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i16, i16* %226, i64 %228
  %230 = load i16, i16* %229, align 2
  %231 = sext i16 %230 to i32
  %232 = and i32 %231, 255
  %233 = trunc i32 %232 to i16
  %234 = call i32 @SCR_DrawSmallChar(i64 %224, i32 %225, i16 signext %233)
  br label %235

235:                                              ; preds = %217, %189
  %236 = load i32, i32* %4, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %4, align 4
  br label %176

238:                                              ; preds = %176
  br label %239

239:                                              ; preds = %238, %166
  %240 = load i32, i32* %3, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %3, align 4
  %242 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %243 = load i32, i32* %5, align 4
  %244 = sub nsw i32 %243, %242
  store i32 %244, i32* %5, align 4
  %245 = load i32, i32* %8, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %8, align 4
  br label %152

247:                                              ; preds = %159, %152
  %248 = call i32 (...) @Con_DrawInput()
  %249 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @re, i32 0, i32 0), align 8
  %250 = call i32 %249(i32* null)
  br label %251

251:                                              ; preds = %247, %18
  ret void
}

declare dso_local i32 @SCR_AdjustFrom640(i64*, i32*, i32*, i32*) #1

declare dso_local i32 @SCR_DrawPic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SCR_FillRect(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @ColorIndex(i32) #1

declare dso_local i32 @strlen(i16*) #1

declare dso_local i32 @SCR_DrawSmallChar(i64, i32, i16 signext) #1

declare dso_local i32 @Con_DrawInput(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
