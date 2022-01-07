; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2DrawNBG0.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2DrawNBG0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, void (i8*, i32)*, i32, i32*, i64, i64 }

@Vdp2Regs = common dso_local global %struct.TYPE_11__* null, align 8
@Vdp2External = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@DoColorCalcWithColorOffset = common dso_local global i32 0, align 4
@DoColorOffset = common dso_local global i32 0, align 4
@DoColorCalc = common dso_local global i32 0, align 4
@DoNothing = common dso_local global i32 0, align 4
@nbg0priority = common dso_local global i32 0, align 4
@Vdp2NBG0PlaneAddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @Vdp2DrawNBG0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Vdp2DrawNBG0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_10__, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %4 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 1
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Vdp2External, i32 0, i32 0), align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %344

14:                                               ; preds = %0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 256
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 3
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 112
  %32 = ashr i32 %31, 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 2
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 4
  store i32 %37, i32* %38, align 8
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %40, label %91

40:                                               ; preds = %14
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 12
  %45 = ashr i32 %44, 2
  switch i32 %45, label %58 [
    i32 0, label %46
    i32 1, label %49
    i32 2, label %52
    i32 3, label %55
  ]

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 5
  store i32 512, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 6
  store i32 256, i32* %48, align 8
  br label %58

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 5
  store i32 512, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 6
  store i32 512, i32* %51, align 8
  br label %58

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 5
  store i32 1024, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 6
  store i32 256, i32* %54, align 8
  br label %58

55:                                               ; preds = %40
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 5
  store i32 1024, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 6
  store i32 512, i32* %57, align 8
  br label %58

58:                                               ; preds = %40, %55, %52, %49, %46
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 2047
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = srem i32 %62, %64
  %66 = sub nsw i32 0, %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 7
  store i32 %66, i32* %67, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 2047
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = srem i32 %71, %73
  %75 = sub nsw i32 0, %74
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 8
  store i32 %75, i32* %76, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 7
  %81 = mul nsw i32 %80, 131072
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 9
  store i32 %81, i32* %82, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 7
  %87 = shl i32 %86, 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 10
  store i32 %87, i32* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 30
  store i64 0, i64* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 29
  store i64 0, i64* %90, align 8
  br label %167

91:                                               ; preds = %14
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 11
  store i32 2, i32* %92, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 3
  switch i32 %96, label %106 [
    i32 0, label %97
    i32 1, label %100
    i32 3, label %103
  ]

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 13
  store i32 1, i32* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 12
  store i32 1, i32* %99, align 8
  br label %109

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 12
  store i32 2, i32* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 13
  store i32 1, i32* %102, align 4
  br label %109

103:                                              ; preds = %91
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 13
  store i32 2, i32* %104, align 4
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 12
  store i32 2, i32* %105, align 8
  br label %109

106:                                              ; preds = %91
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 13
  store i32 1, i32* %107, align 4
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 12
  store i32 1, i32* %108, align 8
  br label %109

109:                                              ; preds = %106, %103, %100, %97
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 2047
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 12
  %115 = load i32, i32* %114, align 8
  %116 = mul nsw i32 512, %115
  %117 = srem i32 %113, %116
  %118 = sub nsw i32 0, %117
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 7
  store i32 %118, i32* %119, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 2047
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 13
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 512, %125
  %127 = srem i32 %123, %126
  %128 = sub nsw i32 0, %127
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 8
  store i32 %128, i32* %129, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 32768
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %109
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 14
  store i32 1, i32* %136, align 8
  br label %139

137:                                              ; preds = %109
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 14
  store i32 2, i32* %138, align 8
  br label %139

139:                                              ; preds = %137, %135
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 1
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 15
  store i32 2, i32* %146, align 4
  br label %149

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 15
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 15
  %151 = load i32, i32* %150, align 4
  %152 = sdiv i32 64, %151
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 16
  store i32 %152, i32* %153, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 6
  store i32 8, i32* %154, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 5
  store i32 8, i32* %155, align 4
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 1023
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 17
  store i32 %159, i32* %160, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 16384
  %165 = ashr i32 %164, 14
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 18
  store i32 %165, i32* %166, align 8
  br label %167

167:                                              ; preds = %149, %58
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 9
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 1
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %167
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 10
  %176 = load i32, i32* %175, align 4
  %177 = xor i32 %176, -1
  %178 = and i32 %177, 31
  %179 = shl i32 %178, 3
  %180 = add nsw i32 %179, 7
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 19
  store i32 %180, i32* %181, align 4
  br label %184

182:                                              ; preds = %167
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 19
  store i32 255, i32* %183, align 4
  br label %184

184:                                              ; preds = %182, %173
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 11
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 7
  %189 = shl i32 %188, 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 20
  store i32 %189, i32* %190, align 8
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 12
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 1
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %305

196:                                              ; preds = %184
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 13
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, 1
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %248

202:                                              ; preds = %196
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 14
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, 255
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 21
  store i32 %206, i32* %207, align 4
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 14
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, 256
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %202
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 21
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, -256
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %213, %202
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 15
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, 255
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 22
  store i32 %221, i32* %222, align 8
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 15
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, 256
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %217
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 22
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, -256
  store i32 %231, i32* %229, align 8
  br label %232

232:                                              ; preds = %228, %217
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 16
  %235 = load i32, i32* %234, align 4
  %236 = and i32 %235, 255
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 23
  store i32 %236, i32* %237, align 4
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 16
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %240, 256
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %232
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 23
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %245, -256
  store i32 %246, i32* %244, align 4
  br label %247

247:                                              ; preds = %243, %232
  br label %294

248:                                              ; preds = %196
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 17
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 255
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 21
  store i32 %252, i32* %253, align 4
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 17
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, 256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %248
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 21
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, -256
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %259, %248
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 18
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, 255
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 22
  store i32 %267, i32* %268, align 8
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 18
  %271 = load i32, i32* %270, align 4
  %272 = and i32 %271, 256
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %263
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 22
  %276 = load i32, i32* %275, align 8
  %277 = or i32 %276, -256
  store i32 %277, i32* %275, align 8
  br label %278

278:                                              ; preds = %274, %263
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 19
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, 255
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 23
  store i32 %282, i32* %283, align 4
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 19
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, 256
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %278
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 23
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, -256
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %289, %278
  br label %294

294:                                              ; preds = %293, %247
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 9
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, 1
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %294
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 28
  store i32* @DoColorCalcWithColorOffset, i32** %301, align 8
  br label %304

302:                                              ; preds = %294
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 28
  store i32* @DoColorOffset, i32** %303, align 8
  br label %304

304:                                              ; preds = %302, %300
  br label %316

305:                                              ; preds = %184
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 9
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, 1
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 28
  store i32* @DoColorCalc, i32** %312, align 8
  br label %315

313:                                              ; preds = %305
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 28
  store i32* @DoNothing, i32** %314, align 8
  br label %315

315:                                              ; preds = %313, %311
  br label %316

316:                                              ; preds = %315, %304
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 21
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = and i32 %320, 524032
  %322 = sitofp i32 %321 to float
  %323 = fdiv float 6.553600e+04, %322
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 24
  store float %323, float* %324, align 8
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Vdp2Regs, align 8
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 20
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = and i32 %328, 524032
  %330 = sitofp i32 %329 to float
  %331 = fdiv float 6.553600e+04, %330
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 25
  store float %331, float* %332, align 4
  %333 = load i32, i32* @nbg0priority, align 4
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 27
  store i32 %333, i32* %334, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 26
  store void (i8*, i32)* bitcast (i32* @Vdp2NBG0PlaneAddr to void (i8*, i32)*), void (i8*, i32)** %335, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 4
  %337 = load i32, i32* %336, align 8
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %316
  %340 = call i32 @Vdp2DrawScrollBitmap(%struct.TYPE_10__* %2)
  br label %343

341:                                              ; preds = %316
  %342 = call i32 @Vdp2DrawMap(%struct.TYPE_10__* %2)
  br label %343

343:                                              ; preds = %341, %339
  store i32 1, i32* %1, align 4
  br label %344

344:                                              ; preds = %343, %13
  %345 = load i32, i32* %1, align 4
  ret i32 %345
}

declare dso_local i32 @Vdp2DrawScrollBitmap(%struct.TYPE_10__*) #1

declare dso_local i32 @Vdp2DrawMap(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
