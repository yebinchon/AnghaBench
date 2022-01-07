; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2DrawNBG3.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2DrawNBG3.c"
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
@nbg3priority = common dso_local global i32 0, align 4
@Vdp2NBG3PlaneAddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @Vdp2DrawNBG3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Vdp2DrawNBG3() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 8
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
  br label %266

14:                                               ; preds = %0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 2048
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 6
  %27 = and i32 %26, 3
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 32
  %33 = ashr i32 %32, 5
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  store i32 2, i32* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 192
  %40 = ashr i32 %39, 6
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
  %87 = and i32 %86, 16
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
  %114 = and i32 %113, 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %93
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 4
  %120 = xor i32 %119, -1
  %121 = and i32 %120, 7936
  %122 = ashr i32 %121, 5
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
  %131 = and i32 %130, 28672
  %132 = ashr i32 %131, 4
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 17
  store i32 %132, i32* %133, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %248

139:                                              ; preds = %127
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 11
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %191

145:                                              ; preds = %139
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 12
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 255
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 18
  store i32 %149, i32* %150, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 12
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 256
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %145
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 18
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, -256
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %156, %145
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 13
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 255
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 19
  store i32 %164, i32* %165, align 4
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 13
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 256
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %160
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 19
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, -256
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %171, %160
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 14
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 255
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 20
  store i32 %179, i32* %180, align 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 14
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 256
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %175
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 20
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, -256
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %186, %175
  br label %237

191:                                              ; preds = %139
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 15
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, 255
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 18
  store i32 %195, i32* %196, align 8
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 15
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, 256
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %191
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 18
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, -256
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %202, %191
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 16
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, 255
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 19
  store i32 %210, i32* %211, align 4
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 16
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, 256
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %206
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 19
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, -256
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %217, %206
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 17
  %224 = load i32, i32* %223, align 4
  %225 = and i32 %224, 255
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 20
  store i32 %225, i32* %226, align 8
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 17
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, 256
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %221
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 20
  %234 = load i32, i32* %233, align 8
  %235 = or i32 %234, -256
  store i32 %235, i32* %233, align 8
  br label %236

236:                                              ; preds = %232, %221
  br label %237

237:                                              ; preds = %236, %190
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %240, 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 25
  store i32* @DoColorCalcWithColorOffset, i32** %244, align 8
  br label %247

245:                                              ; preds = %237
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 25
  store i32* @DoColorOffset, i32** %246, align 8
  br label %247

247:                                              ; preds = %245, %243
  br label %259

248:                                              ; preds = %127
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 7
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 25
  store i32* @DoColorCalc, i32** %255, align 8
  br label %258

256:                                              ; preds = %248
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 25
  store i32* @DoNothing, i32** %257, align 8
  br label %258

258:                                              ; preds = %256, %254
  br label %259

259:                                              ; preds = %258, %247
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 22
  store i32 1, i32* %260, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 21
  store i32 1, i32* %261, align 4
  %262 = load i32, i32* @nbg3priority, align 4
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 24
  store i32 %262, i32* %263, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 23
  store void (i8*, i32)* bitcast (i32* @Vdp2NBG3PlaneAddr to void (i8*, i32)*), void (i8*, i32)** %264, align 8
  %265 = call i32 @Vdp2DrawMap(%struct.TYPE_5__* %2)
  store i32 1, i32* %1, align 4
  br label %266

266:                                              ; preds = %259, %13
  %267 = load i32, i32* %1, align 4
  ret i32 %267
}

declare dso_local i32 @Vdp2DrawMap(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
