; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2DrawNBG1.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2DrawNBG1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, void (i8*, i32)*, i32, i32*, i64, i64 }

@Vdp2Regs = common dso_local global %struct.TYPE_9__* null, align 8
@Vdp2External = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@DoColorCalcWithColorOffset = common dso_local global i32 0, align 4
@DoColorOffset = common dso_local global i32 0, align 4
@DoColorCalc = common dso_local global i32 0, align 4
@DoNothing = common dso_local global i32 0, align 4
@nbg1priority = common dso_local global i32 0, align 4
@Vdp2NBG1PlaneAddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @Vdp2DrawNBG1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Vdp2DrawNBG1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 2
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Vdp2External, i32 0, i32 0), align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %346

14:                                               ; preds = %0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 512
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 2
  %27 = and i32 %26, 3
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 12288
  %33 = ashr i32 %32, 12
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 512
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 4
  store i32 %38, i32* %39, align 8
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %41, label %92

41:                                               ; preds = %14
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 3072
  %46 = ashr i32 %45, 10
  switch i32 %46, label %59 [
    i32 0, label %47
    i32 1, label %50
    i32 2, label %53
    i32 3, label %56
  ]

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 5
  store i32 512, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 6
  store i32 256, i32* %49, align 8
  br label %59

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 5
  store i32 512, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 6
  store i32 512, i32* %52, align 8
  br label %59

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 5
  store i32 1024, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 6
  store i32 256, i32* %55, align 8
  br label %59

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 5
  store i32 1024, i32* %57, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 6
  store i32 512, i32* %58, align 8
  br label %59

59:                                               ; preds = %41, %56, %53, %50, %47
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 2047
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = srem i32 %63, %65
  %67 = sub nsw i32 0, %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 7
  store i32 %67, i32* %68, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 2047
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = srem i32 %72, %74
  %76 = sub nsw i32 0, %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 8
  store i32 %76, i32* %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 112
  %82 = ashr i32 %81, 4
  %83 = mul nsw i32 %82, 131072
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 9
  store i32 %83, i32* %84, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 1792
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 10
  store i32 %88, i32* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 30
  store i64 0, i64* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 29
  store i64 0, i64* %91, align 8
  br label %169

92:                                               ; preds = %14
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 11
  store i32 2, i32* %93, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 12
  %98 = ashr i32 %97, 2
  switch i32 %98, label %108 [
    i32 0, label %99
    i32 1, label %102
    i32 3, label %105
  ]

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 13
  store i32 1, i32* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 12
  store i32 1, i32* %101, align 8
  br label %111

102:                                              ; preds = %92
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 12
  store i32 2, i32* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 13
  store i32 1, i32* %104, align 4
  br label %111

105:                                              ; preds = %92
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 13
  store i32 2, i32* %106, align 4
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 12
  store i32 2, i32* %107, align 8
  br label %111

108:                                              ; preds = %92
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 13
  store i32 1, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 12
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %105, %102, %99
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 2047
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 12
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 512, %117
  %119 = srem i32 %115, %118
  %120 = sub nsw i32 0, %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 7
  store i32 %120, i32* %121, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 2047
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 13
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 512, %127
  %129 = srem i32 %125, %128
  %130 = sub nsw i32 0, %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 8
  store i32 %130, i32* %131, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 32768
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %111
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 14
  store i32 1, i32* %138, align 8
  br label %141

139:                                              ; preds = %111
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 14
  store i32 2, i32* %140, align 8
  br label %141

141:                                              ; preds = %139, %137
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 256
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 15
  store i32 2, i32* %148, align 4
  br label %151

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 15
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %149, %147
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 15
  %153 = load i32, i32* %152, align 4
  %154 = sdiv i32 64, %153
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 16
  store i32 %154, i32* %155, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 6
  store i32 8, i32* %156, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 5
  store i32 8, i32* %157, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 1023
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 17
  store i32 %161, i32* %162, align 4
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 16384
  %167 = ashr i32 %166, 14
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 18
  store i32 %167, i32* %168, align 8
  br label %169

169:                                              ; preds = %151, %59
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 9
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 2
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %169
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 10
  %178 = load i32, i32* %177, align 4
  %179 = xor i32 %178, -1
  %180 = and i32 %179, 7936
  %181 = ashr i32 %180, 5
  %182 = add nsw i32 %181, 7
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 19
  store i32 %182, i32* %183, align 4
  br label %186

184:                                              ; preds = %169
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 19
  store i32 255, i32* %185, align 4
  br label %186

186:                                              ; preds = %184, %175
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 11
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 112
  %191 = shl i32 %190, 4
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 20
  store i32 %191, i32* %192, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 12
  %195 = load i32, i32* %194, align 4
  %196 = and i32 %195, 2
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %307

198:                                              ; preds = %186
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 13
  %201 = load i32, i32* %200, align 4
  %202 = and i32 %201, 2
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %250

204:                                              ; preds = %198
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 14
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %207, 255
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 21
  store i32 %208, i32* %209, align 4
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 14
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, 256
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %204
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 21
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, -256
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %215, %204
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 15
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, 255
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 22
  store i32 %223, i32* %224, align 8
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 15
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, 256
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %219
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 22
  %232 = load i32, i32* %231, align 8
  %233 = or i32 %232, -256
  store i32 %233, i32* %231, align 8
  br label %234

234:                                              ; preds = %230, %219
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 16
  %237 = load i32, i32* %236, align 4
  %238 = and i32 %237, 255
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 23
  store i32 %238, i32* %239, align 4
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 16
  %242 = load i32, i32* %241, align 4
  %243 = and i32 %242, 256
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %234
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 23
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %247, -256
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %245, %234
  br label %296

250:                                              ; preds = %198
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 17
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, 255
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 21
  store i32 %254, i32* %255, align 4
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 17
  %258 = load i32, i32* %257, align 4
  %259 = and i32 %258, 256
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %250
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 21
  %263 = load i32, i32* %262, align 4
  %264 = or i32 %263, -256
  store i32 %264, i32* %262, align 4
  br label %265

265:                                              ; preds = %261, %250
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 18
  %268 = load i32, i32* %267, align 4
  %269 = and i32 %268, 255
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 22
  store i32 %269, i32* %270, align 8
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 18
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %273, 256
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %265
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 22
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %278, -256
  store i32 %279, i32* %277, align 8
  br label %280

280:                                              ; preds = %276, %265
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 19
  %283 = load i32, i32* %282, align 4
  %284 = and i32 %283, 255
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 23
  store i32 %284, i32* %285, align 4
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 19
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %288, 256
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %280
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 23
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, -256
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %291, %280
  br label %296

296:                                              ; preds = %295, %249
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 9
  %299 = load i32, i32* %298, align 4
  %300 = and i32 %299, 2
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %296
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 28
  store i32* @DoColorCalcWithColorOffset, i32** %303, align 8
  br label %306

304:                                              ; preds = %296
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 28
  store i32* @DoColorOffset, i32** %305, align 8
  br label %306

306:                                              ; preds = %304, %302
  br label %318

307:                                              ; preds = %186
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 9
  %310 = load i32, i32* %309, align 4
  %311 = and i32 %310, 2
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %307
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 28
  store i32* @DoColorCalc, i32** %314, align 8
  br label %317

315:                                              ; preds = %307
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 28
  store i32* @DoNothing, i32** %316, align 8
  br label %317

317:                                              ; preds = %315, %313
  br label %318

318:                                              ; preds = %317, %306
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 20
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = and i32 %322, 524032
  %324 = sitofp i32 %323 to float
  %325 = fdiv float 6.553600e+04, %324
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 24
  store float %325, float* %326, align 8
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 20
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = and i32 %330, 524032
  %332 = sitofp i32 %331 to float
  %333 = fdiv float 6.553600e+04, %332
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 25
  store float %333, float* %334, align 4
  %335 = load i32, i32* @nbg1priority, align 4
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 27
  store i32 %335, i32* %336, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 26
  store void (i8*, i32)* bitcast (i32* @Vdp2NBG1PlaneAddr to void (i8*, i32)*), void (i8*, i32)** %337, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 4
  %339 = load i32, i32* %338, align 8
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %318
  %342 = call i32 @Vdp2DrawScrollBitmap(%struct.TYPE_8__* %2)
  br label %345

343:                                              ; preds = %318
  %344 = call i32 @Vdp2DrawMap(%struct.TYPE_8__* %2)
  br label %345

345:                                              ; preds = %343, %341
  store i32 1, i32* %1, align 4
  br label %346

346:                                              ; preds = %345, %13
  %347 = load i32, i32* %1, align 4
  ret i32 %347
}

declare dso_local i32 @Vdp2DrawScrollBitmap(%struct.TYPE_8__*) #1

declare dso_local i32 @Vdp2DrawMap(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
