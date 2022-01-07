; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2DrawNBG2.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2DrawNBG2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, void (i8*, i32)*, i32, i32* }

@Vdp2Regs = common dso_local global %struct.TYPE_6__* null, align 8
@Vdp2External = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@DoColorCalcWithColorOffset = common dso_local global i32 0, align 4
@DoColorOffset = common dso_local global i32 0, align 4
@DoColorCalc = common dso_local global i32 0, align 4
@DoNothing = common dso_local global i32 0, align 4
@nbg2priority = common dso_local global i32 0, align 4
@Vdp2NBG2PlaneAddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @Vdp2DrawNBG2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Vdp2DrawNBG2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 4
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Vdp2External, i32 0, i32 0), align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %265

14:                                               ; preds = %0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 1024
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 4
  %27 = and i32 %26, 3
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 2
  %33 = ashr i32 %32, 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  store i32 2, i32* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 48
  %40 = ashr i32 %39, 4
  switch i32 %40, label %50 [
    i32 0, label %41
    i32 1, label %44
    i32 3, label %47
  ]

41:                                               ; preds = %14
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 6
  store i32 1, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 5
  store i32 1, i32* %43, align 4
  br label %53

44:                                               ; preds = %14
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 5
  store i32 2, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 6
  store i32 1, i32* %46, align 8
  br label %53

47:                                               ; preds = %14
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 6
  store i32 2, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 5
  store i32 2, i32* %49, align 4
  br label %53

50:                                               ; preds = %14
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 6
  store i32 1, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 5
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47, %44, %41
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 2047
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 512, %59
  %61 = srem i32 %57, %60
  %62 = sub nsw i32 0, %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 7
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 2047
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 512, %69
  %71 = srem i32 %67, %70
  %72 = sub nsw i32 0, %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 8
  store i32 %72, i32* %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 32768
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %53
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 9
  store i32 1, i32* %80, align 4
  br label %83

81:                                               ; preds = %53
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 9
  store i32 2, i32* %82, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 10
  store i32 2, i32* %90, align 8
  br label %93

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 10
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 10
  %95 = load i32, i32* %94, align 8
  %96 = sdiv i32 64, %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 11
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 13
  store i32 8, i32* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 12
  store i32 8, i32* %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 1023
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 14
  store i32 %103, i32* %104, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 16384
  %109 = ashr i32 %108, 14
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 15
  store i32 %109, i32* %110, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %93
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 4
  %120 = xor i32 %119, -1
  %121 = and i32 %120, 31
  %122 = shl i32 %121, 3
  %123 = add nsw i32 %122, 7
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 16
  store i32 %123, i32* %124, align 8
  br label %127

125:                                              ; preds = %93
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 16
  store i32 255, i32* %126, align 8
  br label %127

127:                                              ; preds = %125, %116
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 1792
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 17
  store i32 %131, i32* %132, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 10
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %247

138:                                              ; preds = %127
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 11
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %190

144:                                              ; preds = %138
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 12
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 255
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 18
  store i32 %148, i32* %149, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 12
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 256
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %144
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 18
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, -256
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %155, %144
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 13
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 255
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 19
  store i32 %163, i32* %164, align 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 13
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, 256
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %159
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 19
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, -256
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %170, %159
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 14
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 255
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 20
  store i32 %178, i32* %179, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 14
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 256
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %174
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 20
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, -256
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %185, %174
  br label %236

190:                                              ; preds = %138
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 15
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 255
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 18
  store i32 %194, i32* %195, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 15
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 256
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %190
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 18
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, -256
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %201, %190
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 16
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, 255
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 19
  store i32 %209, i32* %210, align 4
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 16
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, 256
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %205
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 19
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, -256
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %216, %205
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 17
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %223, 255
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 20
  store i32 %224, i32* %225, align 8
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 17
  %228 = load i32, i32* %227, align 4
  %229 = and i32 %228, 256
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %220
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 20
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, -256
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %231, %220
  br label %236

236:                                              ; preds = %235, %189
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 25
  store i32* @DoColorCalcWithColorOffset, i32** %243, align 8
  br label %246

244:                                              ; preds = %236
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 25
  store i32* @DoColorOffset, i32** %245, align 8
  br label %246

246:                                              ; preds = %244, %242
  br label %258

247:                                              ; preds = %127
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 4
  %251 = and i32 %250, 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 25
  store i32* @DoColorCalc, i32** %254, align 8
  br label %257

255:                                              ; preds = %247
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 25
  store i32* @DoNothing, i32** %256, align 8
  br label %257

257:                                              ; preds = %255, %253
  br label %258

258:                                              ; preds = %257, %246
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 22
  store i32 1, i32* %259, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 21
  store i32 1, i32* %260, align 4
  %261 = load i32, i32* @nbg2priority, align 4
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 24
  store i32 %261, i32* %262, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 23
  store void (i8*, i32)* bitcast (i32* @Vdp2NBG2PlaneAddr to void (i8*, i32)*), void (i8*, i32)** %263, align 8
  %264 = call i32 @Vdp2DrawMap(%struct.TYPE_5__* %2)
  store i32 1, i32* %1, align 4
  br label %265

265:                                              ; preds = %258, %13
  %266 = load i32, i32* %1, align 4
  ret i32 %266
}

declare dso_local i32 @Vdp2DrawMap(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
