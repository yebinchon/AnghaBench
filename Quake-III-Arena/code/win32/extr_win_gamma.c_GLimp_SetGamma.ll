; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_gamma.c_GLimp_SetGamma.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_gamma.c_GLimp_SetGamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }

@glConfig = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@r_ignorehwgamma = common dso_local global %struct.TYPE_7__* null, align 8
@glw_state = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@VER_PLATFORM_WIN32_NT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"performing W2K gamma clamp.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"skipping W2K gamma clamp.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"SetDeviceGammaRamp failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GLimp_SetGamma(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [3 x [256 x i16]], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glConfig, i32 0, i32 0), align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_ignorehwgamma, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @glw_state, i32 0, i32 0), align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %14, %3
  br label %225

23:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %88, %23
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 256
  br i1 %26, label %27, label %91

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i16
  %34 = zext i16 %33 to i32
  %35 = shl i32 %34, 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %35, %41
  %43 = trunc i32 %42 to i16
  %44 = getelementptr inbounds [3 x [256 x i16]], [3 x [256 x i16]]* %7, i64 0, i64 0
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [256 x i16], [256 x i16]* %44, i64 0, i64 %46
  store i16 %43, i16* %47, align 2
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i16
  %54 = zext i16 %53 to i32
  %55 = shl i32 %54, 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %55, %61
  %63 = trunc i32 %62 to i16
  %64 = getelementptr inbounds [3 x [256 x i16]], [3 x [256 x i16]]* %7, i64 0, i64 1
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [256 x i16], [256 x i16]* %64, i64 0, i64 %66
  store i16 %63, i16* %67, align 2
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i16
  %74 = zext i16 %73 to i32
  %75 = shl i32 %74, 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %75, %81
  %83 = trunc i32 %82 to i16
  %84 = getelementptr inbounds [3 x [256 x i16]], [3 x [256 x i16]]* %7, i64 0, i64 2
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [256 x i16], [256 x i16]* %84, i64 0, i64 %86
  store i16 %83, i16* %87, align 2
  br label %88

88:                                               ; preds = %27
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %24

91:                                               ; preds = %24
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 16, i32* %92, align 8
  %93 = call i32 @GetVersionEx(%struct.TYPE_6__* %11)
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 5
  br i1 %96, label %97, label %157

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @VER_PLATFORM_WIN32_NT, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %157

102:                                              ; preds = %97
  %103 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %153, %102
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 3
  br i1 %106, label %107, label %156

107:                                              ; preds = %104
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %136, %107
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 128
  br i1 %110, label %111, label %139

111:                                              ; preds = %108
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [3 x [256 x i16]], [3 x [256 x i16]]* %7, i64 0, i64 %113
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [256 x i16], [256 x i16]* %114, i64 0, i64 %116
  %118 = load i16, i16* %117, align 2
  %119 = zext i16 %118 to i32
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 128, %120
  %122 = shl i32 %121, 8
  %123 = icmp sgt i32 %119, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %111
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 128, %125
  %127 = shl i32 %126, 8
  %128 = trunc i32 %127 to i16
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [3 x [256 x i16]], [3 x [256 x i16]]* %7, i64 0, i64 %130
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [256 x i16], [256 x i16]* %131, i64 0, i64 %133
  store i16 %128, i16* %134, align 2
  br label %135

135:                                              ; preds = %124, %111
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %108

139:                                              ; preds = %108
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [3 x [256 x i16]], [3 x [256 x i16]]* %7, i64 0, i64 %141
  %143 = getelementptr inbounds [256 x i16], [256 x i16]* %142, i64 0, i64 127
  %144 = load i16, i16* %143, align 2
  %145 = zext i16 %144 to i32
  %146 = icmp sgt i32 %145, 65024
  br i1 %146, label %147, label %152

147:                                              ; preds = %139
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [3 x [256 x i16]], [3 x [256 x i16]]* %7, i64 0, i64 %149
  %151 = getelementptr inbounds [256 x i16], [256 x i16]* %150, i64 0, i64 127
  store i16 -512, i16* %151, align 2
  br label %152

152:                                              ; preds = %147, %139
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %104

156:                                              ; preds = %104
  br label %159

157:                                              ; preds = %97, %91
  %158 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %156
  store i32 0, i32* %9, align 4
  br label %160

160:                                              ; preds = %206, %159
  %161 = load i32, i32* %9, align 4
  %162 = icmp slt i32 %161, 3
  br i1 %162, label %163, label %209

163:                                              ; preds = %160
  store i32 1, i32* %8, align 4
  br label %164

164:                                              ; preds = %202, %163
  %165 = load i32, i32* %8, align 4
  %166 = icmp slt i32 %165, 256
  br i1 %166, label %167, label %205

167:                                              ; preds = %164
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [3 x [256 x i16]], [3 x [256 x i16]]* %7, i64 0, i64 %169
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [256 x i16], [256 x i16]* %170, i64 0, i64 %172
  %174 = load i16, i16* %173, align 2
  %175 = zext i16 %174 to i32
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [3 x [256 x i16]], [3 x [256 x i16]]* %7, i64 0, i64 %177
  %179 = load i32, i32* %8, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [256 x i16], [256 x i16]* %178, i64 0, i64 %181
  %183 = load i16, i16* %182, align 2
  %184 = zext i16 %183 to i32
  %185 = icmp slt i32 %175, %184
  br i1 %185, label %186, label %201

186:                                              ; preds = %167
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [3 x [256 x i16]], [3 x [256 x i16]]* %7, i64 0, i64 %188
  %190 = load i32, i32* %8, align 4
  %191 = sub nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [256 x i16], [256 x i16]* %189, i64 0, i64 %192
  %194 = load i16, i16* %193, align 2
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [3 x [256 x i16]], [3 x [256 x i16]]* %7, i64 0, i64 %196
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [256 x i16], [256 x i16]* %197, i64 0, i64 %199
  store i16 %194, i16* %200, align 2
  br label %201

201:                                              ; preds = %186, %167
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %164

205:                                              ; preds = %164
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  br label %160

209:                                              ; preds = %160
  br i1 true, label %210, label %215

210:                                              ; preds = %209
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @glw_state, i32 0, i32 0), align 4
  %212 = getelementptr inbounds [3 x [256 x i16]], [3 x [256 x i16]]* %7, i64 0, i64 0
  %213 = bitcast [256 x i16]* %212 to i16**
  %214 = call i32 @qwglSetDeviceGammaRamp3DFX(i32 %211, i16** %213)
  br label %225

215:                                              ; preds = %209
  %216 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @glw_state, i32 0, i32 0), align 4
  %217 = getelementptr inbounds [3 x [256 x i16]], [3 x [256 x i16]]* %7, i64 0, i64 0
  %218 = bitcast [256 x i16]* %217 to i16**
  %219 = call i32 @SetDeviceGammaRamp(i32 %216, i16** %218)
  store i32 %219, i32* %10, align 4
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %215
  %223 = call i32 @Com_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %224

224:                                              ; preds = %222, %215
  br label %225

225:                                              ; preds = %22, %224, %210
  ret void
}

declare dso_local i32 @GetVersionEx(%struct.TYPE_6__*) #1

declare dso_local i32 @Com_DPrintf(i8*) #1

declare dso_local i32 @qwglSetDeviceGammaRamp3DFX(i32, i16**) #1

declare dso_local i32 @SetDeviceGammaRamp(i32, i16**) #1

declare dso_local i32 @Com_Printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
