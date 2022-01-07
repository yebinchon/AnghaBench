; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_backend.c_RE_StretchRaw.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_backend.c_RE_StretchRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_8__**, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 (...)*, i32 (i32, i8*, i32, i32, i32)*, i32 (i32, i8*, i32, i32)* }

@tr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@r_speeds = common dso_local global %struct.TYPE_7__* null, align 8
@ri = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Draw_StretchRaw: size not a power of 2: %i by %i\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RGB8 = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@PRINT_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"qglTexSubImage2D %i, %i: %i msec\0A\00", align 1
@GL_QUADS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RE_StretchRaw(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i64 %8, i64* %18, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 2), align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %9
  br label %250

26:                                               ; preds = %9
  %27 = call i32 (...) @R_SyncRenderThread()
  %28 = call i32 (...) @qglFinish()
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_speeds, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ri, i32 0, i32 0), align 8
  %35 = call i32 (...) %34()
  store i32 %35, i32* %21, align 4
  br label %36

36:                                               ; preds = %33, %26
  store i32 0, i32* %19, align 4
  br label %37

37:                                               ; preds = %43, %36
  %38 = load i32, i32* %19, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %19, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %19, align 4
  br label %37

46:                                               ; preds = %37
  store i32 0, i32* %20, align 4
  br label %47

47:                                               ; preds = %53, %46
  %48 = load i32, i32* %20, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %20, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %20, align 4
  br label %47

56:                                               ; preds = %47
  %57 = load i32, i32* %19, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %20, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %61, %56
  %67 = load i32 (i32, i8*, i32, i32)*, i32 (i32, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ri, i32 0, i32 2), align 8
  %68 = load i32, i32* @ERR_DROP, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 %67(i32 %68, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 1), align 8
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %73, i64 %75
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = call i32 @GL_Bind(%struct.TYPE_8__* %77)
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 1), align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %80, i64 %82
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %79, %86
  br i1 %87, label %98, label %88

88:                                               ; preds = %72
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 1), align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %90, i64 %92
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %89, %96
  br i1 %97, label %98, label %149

98:                                               ; preds = %88, %72
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 1), align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %100, i64 %102
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  store i32 %99, i32* %105, align 4
  %106 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 1), align 8
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %106, i64 %108
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 %99, i32* %111, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 1), align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %113, i64 %115
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  store i32 %112, i32* %118, align 4
  %119 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 1), align 8
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %119, i64 %121
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  store i32 %112, i32* %124, align 4
  %125 = load i32, i32* @GL_TEXTURE_2D, align 4
  %126 = load i32, i32* @GL_RGB8, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* @GL_RGBA, align 4
  %130 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %131 = load i32*, i32** %16, align 8
  %132 = call i32 @qglTexImage2D(i32 %125, i32 0, i32 %126, i32 %127, i32 %128, i32 0, i32 %129, i32 %130, i32* %131)
  %133 = load i32, i32* @GL_TEXTURE_2D, align 4
  %134 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %135 = load i32, i32* @GL_LINEAR, align 4
  %136 = call i32 @qglTexParameterf(i32 %133, i32 %134, i32 %135)
  %137 = load i32, i32* @GL_TEXTURE_2D, align 4
  %138 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %139 = load i32, i32* @GL_LINEAR, align 4
  %140 = call i32 @qglTexParameterf(i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* @GL_TEXTURE_2D, align 4
  %142 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %143 = load i32, i32* @GL_CLAMP, align 4
  %144 = call i32 @qglTexParameterf(i32 %141, i32 %142, i32 %143)
  %145 = load i32, i32* @GL_TEXTURE_2D, align 4
  %146 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %147 = load i32, i32* @GL_CLAMP, align 4
  %148 = call i32 @qglTexParameterf(i32 %145, i32 %146, i32 %147)
  br label %161

149:                                              ; preds = %88
  %150 = load i64, i64* %18, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %149
  %153 = load i32, i32* @GL_TEXTURE_2D, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* @GL_RGBA, align 4
  %157 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %158 = load i32*, i32** %16, align 8
  %159 = call i32 @qglTexSubImage2D(i32 %153, i32 0, i32 0, i32 0, i32 %154, i32 %155, i32 %156, i32 %157, i32* %158)
  br label %160

160:                                              ; preds = %152, %149
  br label %161

161:                                              ; preds = %160, %98
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_speeds, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %161
  %167 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ri, i32 0, i32 0), align 8
  %168 = call i32 (...) %167()
  store i32 %168, i32* %22, align 4
  %169 = load i32 (i32, i8*, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ri, i32 0, i32 1), align 8
  %170 = load i32, i32* @PRINT_ALL, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %22, align 4
  %174 = load i32, i32* %21, align 4
  %175 = sub nsw i32 %173, %174
  %176 = call i32 %169(i32 %170, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %171, i32 %172, i32 %175)
  br label %177

177:                                              ; preds = %166, %161
  %178 = call i32 (...) @RB_SetGL2D()
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %182 = call i32 @qglColor3f(i32 %179, i32 %180, i32 %181)
  %183 = load i32, i32* @GL_QUADS, align 4
  %184 = call i32 @qglBegin(i32 %183)
  %185 = load i32, i32* %14, align 4
  %186 = sitofp i32 %185 to float
  %187 = fdiv float 5.000000e-01, %186
  %188 = load i32, i32* %15, align 4
  %189 = sitofp i32 %188 to float
  %190 = fdiv float 5.000000e-01, %189
  %191 = fptosi float %190 to i32
  %192 = call i32 @qglTexCoord2f(float %187, i32 %191)
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %11, align 4
  %195 = call i32 @qglVertex2f(i32 %193, i32 %194)
  %196 = load i32, i32* %14, align 4
  %197 = sitofp i32 %196 to float
  %198 = fsub float %197, 5.000000e-01
  %199 = load i32, i32* %14, align 4
  %200 = sitofp i32 %199 to float
  %201 = fdiv float %198, %200
  %202 = load i32, i32* %15, align 4
  %203 = sitofp i32 %202 to float
  %204 = fdiv float 5.000000e-01, %203
  %205 = fptosi float %204 to i32
  %206 = call i32 @qglTexCoord2f(float %201, i32 %205)
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %207, %208
  %210 = load i32, i32* %11, align 4
  %211 = call i32 @qglVertex2f(i32 %209, i32 %210)
  %212 = load i32, i32* %14, align 4
  %213 = sitofp i32 %212 to float
  %214 = fsub float %213, 5.000000e-01
  %215 = load i32, i32* %14, align 4
  %216 = sitofp i32 %215 to float
  %217 = fdiv float %214, %216
  %218 = load i32, i32* %15, align 4
  %219 = sitofp i32 %218 to float
  %220 = fsub float %219, 5.000000e-01
  %221 = load i32, i32* %15, align 4
  %222 = sitofp i32 %221 to float
  %223 = fdiv float %220, %222
  %224 = fptosi float %223 to i32
  %225 = call i32 @qglTexCoord2f(float %217, i32 %224)
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %226, %227
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %13, align 4
  %231 = add nsw i32 %229, %230
  %232 = call i32 @qglVertex2f(i32 %228, i32 %231)
  %233 = load i32, i32* %14, align 4
  %234 = sitofp i32 %233 to float
  %235 = fdiv float 5.000000e-01, %234
  %236 = load i32, i32* %15, align 4
  %237 = sitofp i32 %236 to float
  %238 = fsub float %237, 5.000000e-01
  %239 = load i32, i32* %15, align 4
  %240 = sitofp i32 %239 to float
  %241 = fdiv float %238, %240
  %242 = fptosi float %241 to i32
  %243 = call i32 @qglTexCoord2f(float %235, i32 %242)
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* %13, align 4
  %247 = add nsw i32 %245, %246
  %248 = call i32 @qglVertex2f(i32 %244, i32 %247)
  %249 = call i32 (...) @qglEnd()
  br label %250

250:                                              ; preds = %177, %25
  ret void
}

declare dso_local i32 @R_SyncRenderThread(...) #1

declare dso_local i32 @qglFinish(...) #1

declare dso_local i32 @GL_Bind(%struct.TYPE_8__*) #1

declare dso_local i32 @qglTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @qglTexParameterf(i32, i32, i32) #1

declare dso_local i32 @qglTexSubImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @RB_SetGL2D(...) #1

declare dso_local i32 @qglColor3f(i32, i32, i32) #1

declare dso_local i32 @qglBegin(i32) #1

declare dso_local i32 @qglTexCoord2f(float, i32) #1

declare dso_local i32 @qglVertex2f(i32, i32) #1

declare dso_local i32 @qglEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
