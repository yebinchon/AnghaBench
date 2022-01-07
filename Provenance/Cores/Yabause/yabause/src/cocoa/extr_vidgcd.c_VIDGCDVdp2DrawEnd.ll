; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp2DrawEnd.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp2DrawEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_18__ = type { i64, i64, i64, i64 }

@Vdp2Regs = common dso_local global %struct.TYPE_19__* null, align 8
@dispbuffer = common dso_local global i32* null, align 8
@vdp2framebuffer = common dso_local global i32* null, align 8
@Vdp1External = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@vdp1spritetype = common dso_local global i32 0, align 4
@vdp2height = common dso_local global i32 0, align 4
@Vdp2Ram = common dso_local global i32 0, align 4
@vdp2width = common dso_local global i32 0, align 4
@vdp1pixelsize = common dso_local global i32 0, align 4
@vdp1frontframebuffer = common dso_local global i32* null, align 8
@vdp1width = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"8-bit Color Bank draw - %02X\0A\00", align 1
@GL_BLEND = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@outputheight = common dso_local global i64 0, align 8
@outputwidth = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDGCDVdp2DrawEnd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x %struct.TYPE_18__], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 32
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** @dispbuffer, align 8
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** @vdp2framebuffer, align 8
  store i32* %23, i32** %9, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @Vdp1External, i32 0, i32 0), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %458

26:                                               ; preds = %0
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 7
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 %30, i32* %31, align 16
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 7
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 7
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  store i32 %41, i32* %42, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 7
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 7
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4
  store i32 %52, i32* %53, align 16
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 7
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5
  store i32 %58, i32* %59, align 4
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 7
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6
  store i32 %63, i32* %64, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 8
  %69 = and i32 %68, 7
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7
  store i32 %69, i32* %70, align 4
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 112
  %75 = shl i32 %74, 4
  store i32 %75, i32* %5, align 4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 15
  store i32 %79, i32* @vdp1spritetype, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 64
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %218

85:                                               ; preds = %26
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 64
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %137

91:                                               ; preds = %85
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 255
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  store i32 %95, i32* %96, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 256
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %91
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, -256
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %102, %91
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 255
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  store i32 %110, i32* %111, align 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 256
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %106
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, -256
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %117, %106
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 255
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  store i32 %125, i32* %126, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 256
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %121
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, -256
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %132, %121
  br label %183

137:                                              ; preds = %85
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 11
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 255
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  store i32 %141, i32* %142, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 11
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 256
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %137
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, -256
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %148, %137
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 12
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 255
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  store i32 %156, i32* %157, align 4
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 12
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 256
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %152
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, -256
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %163, %152
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 13
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 255
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  store i32 %171, i32* %172, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 13
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 256
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %167
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, -256
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %178, %167
  br label %183

183:                                              ; preds = %182, %136
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %206

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %206

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %191
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 14
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 64
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  store i32 (%struct.TYPE_17__*, i32)* @DoColorCalc, i32 (%struct.TYPE_17__*, i32)** %202, align 8
  br label %205

203:                                              ; preds = %195
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  store i32 (%struct.TYPE_17__*, i32)* @DoNothing, i32 (%struct.TYPE_17__*, i32)** %204, align 8
  br label %205

205:                                              ; preds = %203, %201
  br label %217

206:                                              ; preds = %191, %187, %183
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 14
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, 64
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  store i32 (%struct.TYPE_17__*, i32)* @DoColorCalcWithColorOffset, i32 (%struct.TYPE_17__*, i32)** %213, align 8
  br label %216

214:                                              ; preds = %206
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  store i32 (%struct.TYPE_17__*, i32)* @DoColorOffset, i32 (%struct.TYPE_17__*, i32)** %215, align 8
  br label %216

216:                                              ; preds = %214, %212
  br label %217

217:                                              ; preds = %216, %205
  br label %229

218:                                              ; preds = %26
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 14
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %221, 64
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  store i32 (%struct.TYPE_17__*, i32)* @DoColorCalc, i32 (%struct.TYPE_17__*, i32)** %225, align 8
  br label %228

226:                                              ; preds = %218
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  store i32 (%struct.TYPE_17__*, i32)* @DoNothing, i32 (%struct.TYPE_17__*, i32)** %227, align 8
  br label %228

228:                                              ; preds = %226, %224
  br label %229

229:                                              ; preds = %228, %217
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 15
  %232 = load i32, i32* %231, align 4
  %233 = ashr i32 %232, 8
  store i32 %233, i32* %14, align 4
  %234 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %11, i64 0, i64 0
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 0
  store i64 0, i64* %235, align 16
  %236 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %11, i64 0, i64 0
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 1
  store i64 0, i64* %237, align 8
  %238 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %11, i64 0, i64 0
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 2
  store i64 0, i64* %239, align 16
  %240 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %11, i64 0, i64 0
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 3
  store i64 0, i64* %241, align 8
  %242 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %11, i64 0, i64 1
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 0
  store i64 0, i64* %243, align 16
  %244 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %11, i64 0, i64 1
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 1
  store i64 0, i64* %245, align 8
  %246 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %11, i64 0, i64 1
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 2
  store i64 0, i64* %247, align 16
  %248 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %11, i64 0, i64 1
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 3
  store i64 0, i64* %249, align 8
  %250 = load i32, i32* %14, align 4
  %251 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %11, i64 0, i64 0
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %253 = call i32 @ReadWindowData(i32 %250, %struct.TYPE_18__* %251, %struct.TYPE_19__* %252)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %254 = load i32, i32* %14, align 4
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %256 = call i32 @ReadLineWindowData(i32* %10, i32 %254, i32* %12, i32* %13, %struct.TYPE_19__* %255)
  store i32 0, i32* %2, align 4
  br label %257

257:                                              ; preds = %454, %229
  %258 = load i32, i32* %2, align 4
  %259 = load i32, i32* @vdp2height, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %457

261:                                              ; preds = %257
  %262 = load i32, i32* %10, align 4
  %263 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %11, i64 0, i64 0
  %264 = load i32, i32* @Vdp2Ram, align 4
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %266 = call i32 @ReadLineWindowClip(i32 %262, %struct.TYPE_18__* %263, i32* %12, i32* %13, i32 %264, %struct.TYPE_19__* %265)
  store i32 0, i32* %1, align 4
  br label %267

267:                                              ; preds = %450, %261
  %268 = load i32, i32* %1, align 4
  %269 = load i32, i32* @vdp2width, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %453

271:                                              ; preds = %267
  %272 = load i32, i32* %14, align 4
  %273 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %11, i64 0, i64 0
  %274 = load i32, i32* %1, align 4
  %275 = load i32, i32* %2, align 4
  %276 = call i32 @TestWindow(i32 %272, i32 2, i32 1, %struct.TYPE_18__* %273, i32 %274, i32 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %289, label %278

278:                                              ; preds = %271
  %279 = load i32*, i32** %9, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @COLSATSTRIPPRIORITY(i32 %281)
  %283 = load i32*, i32** %8, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  store i32 %282, i32* %284, align 4
  %285 = load i32*, i32** %9, align 8
  %286 = getelementptr inbounds i32, i32* %285, i32 1
  store i32* %286, i32** %9, align 8
  %287 = load i32*, i32** %8, align 8
  %288 = getelementptr inbounds i32, i32* %287, i32 1
  store i32* %288, i32** %8, align 8
  br label %450

289:                                              ; preds = %271
  %290 = load i32, i32* %14, align 4
  %291 = getelementptr inbounds [2 x %struct.TYPE_18__], [2 x %struct.TYPE_18__]* %11, i64 0, i64 1
  %292 = load i32, i32* %1, align 4
  %293 = load i32, i32* %2, align 4
  %294 = call i32 @TestWindow(i32 %290, i32 8, i32 4, %struct.TYPE_18__* %291, i32 %292, i32 %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %307, label %296

296:                                              ; preds = %289
  %297 = load i32*, i32** %9, align 8
  %298 = getelementptr inbounds i32, i32* %297, i32 1
  store i32* %298, i32** %9, align 8
  %299 = load i32*, i32** %9, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @COLSATSTRIPPRIORITY(i32 %301)
  %303 = load i32*, i32** %8, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  store i32 %302, i32* %304, align 4
  %305 = load i32*, i32** %8, align 8
  %306 = getelementptr inbounds i32, i32* %305, i32 1
  store i32* %306, i32** %8, align 8
  br label %450

307:                                              ; preds = %289
  %308 = load i32, i32* @vdp1pixelsize, align 4
  %309 = icmp eq i32 %308, 2
  br i1 %309, label %310, label %416

310:                                              ; preds = %307
  %311 = load i32*, i32** @vdp1frontframebuffer, align 8
  %312 = load i32, i32* %2, align 4
  %313 = load i32, i32* @vdp1width, align 4
  %314 = mul nsw i32 %312, %313
  %315 = load i32, i32* %1, align 4
  %316 = add nsw i32 %314, %315
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %311, i64 %317
  %319 = load i32, i32* %318, align 4
  store i32 %319, i32* %3, align 4
  %320 = load i32, i32* %3, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %310
  %323 = load i32*, i32** %9, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 0
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @COLSATSTRIPPRIORITY(i32 %325)
  %327 = load i32*, i32** %8, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  store i32 %326, i32* %328, align 4
  br label %415

329:                                              ; preds = %310
  %330 = load i32, i32* %3, align 4
  %331 = and i32 %330, 32768
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %383

333:                                              ; preds = %329
  %334 = load i32, i32* %6, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %383

336:                                              ; preds = %333
  %337 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %338 = load i32, i32* %337, align 16
  %339 = load i32*, i32** %9, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @Vdp2GetPixelPriority(i32 %341)
  %343 = icmp sge i32 %338, %342
  br i1 %343, label %344, label %375

344:                                              ; preds = %336
  %345 = load i32, i32* %3, align 4
  %346 = icmp ne i32 %345, 32768
  br i1 %346, label %359, label %347

347:                                              ; preds = %344
  %348 = load i32, i32* @vdp1spritetype, align 4
  %349 = icmp slt i32 %348, 2
  br i1 %349, label %359, label %350

350:                                              ; preds = %347
  %351 = load i32, i32* @vdp1spritetype, align 4
  %352 = icmp slt i32 %351, 8
  br i1 %352, label %353, label %367

353:                                              ; preds = %350
  %354 = load %struct.TYPE_19__*, %struct.TYPE_19__** @Vdp2Regs, align 8
  %355 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = and i32 %356, 16
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %367, label %359

359:                                              ; preds = %353, %347, %344
  %360 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %361 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %360, align 8
  %362 = load i32, i32* %3, align 4
  %363 = call i32 @COLSAT2YAB16(i32 255, i32 %362)
  %364 = call i32 %361(%struct.TYPE_17__* %7, i32 %363)
  %365 = load i32*, i32** %8, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 0
  store i32 %364, i32* %366, align 4
  br label %374

367:                                              ; preds = %353, %350
  %368 = load i32*, i32** %9, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 0
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @COLSATSTRIPPRIORITY(i32 %370)
  %372 = load i32*, i32** %8, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 0
  store i32 %371, i32* %373, align 4
  br label %374

374:                                              ; preds = %367, %359
  br label %382

375:                                              ; preds = %336
  %376 = load i32*, i32** %9, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 0
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @COLSATSTRIPPRIORITY(i32 %378)
  %380 = load i32*, i32** %8, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 0
  store i32 %379, i32* %381, align 4
  br label %382

382:                                              ; preds = %375, %374
  br label %414

383:                                              ; preds = %333, %329
  store i32 0, i32* %15, align 4
  %384 = load i32, i32* @vdp1spritetype, align 4
  %385 = call i32 @Vdp1ProcessSpritePixel(i32 %384, i32* %3, i32* %16, i32* %15, i32* %17)
  %386 = load i32, i32* %15, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = load i32*, i32** %9, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 0
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @Vdp2GetPixelPriority(i32 %392)
  %394 = icmp sge i32 %389, %393
  br i1 %394, label %395, label %406

395:                                              ; preds = %383
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %397 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %396, align 8
  %398 = load i32, i32* %5, align 4
  %399 = load i32, i32* %3, align 4
  %400 = add nsw i32 %398, %399
  %401 = call i32 @Vdp2ColorRamGetColor(i32 %400)
  %402 = call i32 @COLSAT2YAB32(i32 255, i32 %401)
  %403 = call i32 %397(%struct.TYPE_17__* %7, i32 %402)
  %404 = load i32*, i32** %8, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 0
  store i32 %403, i32* %405, align 4
  br label %413

406:                                              ; preds = %383
  %407 = load i32*, i32** %9, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 0
  %409 = load i32, i32* %408, align 4
  %410 = call i32 @COLSATSTRIPPRIORITY(i32 %409)
  %411 = load i32*, i32** %8, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 0
  store i32 %410, i32* %412, align 4
  br label %413

413:                                              ; preds = %406, %395
  br label %414

414:                                              ; preds = %413, %382
  br label %415

415:                                              ; preds = %414, %322
  br label %445

416:                                              ; preds = %307
  %417 = load i32*, i32** @vdp1frontframebuffer, align 8
  %418 = load i32, i32* %2, align 4
  %419 = load i32, i32* @vdp1width, align 4
  %420 = mul nsw i32 %418, %419
  %421 = load i32, i32* %1, align 4
  %422 = add nsw i32 %420, %421
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %417, i64 %423
  %425 = load i32, i32* %424, align 4
  store i32 %425, i32* %3, align 4
  %426 = load i32, i32* %3, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %435

428:                                              ; preds = %416
  %429 = load i32*, i32** %9, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 0
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @COLSATSTRIPPRIORITY(i32 %431)
  %433 = load i32*, i32** %8, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 0
  store i32 %432, i32* %434, align 4
  br label %444

435:                                              ; preds = %416
  %436 = load i32, i32* %3, align 4
  %437 = call i32 @LOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %436)
  %438 = load i32*, i32** %9, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 0
  %440 = load i32, i32* %439, align 4
  %441 = call i32 @COLSATSTRIPPRIORITY(i32 %440)
  %442 = load i32*, i32** %8, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 0
  store i32 %441, i32* %443, align 4
  br label %444

444:                                              ; preds = %435, %428
  br label %445

445:                                              ; preds = %444, %415
  %446 = load i32*, i32** %9, align 8
  %447 = getelementptr inbounds i32, i32* %446, i32 1
  store i32* %447, i32** %9, align 8
  %448 = load i32*, i32** %8, align 8
  %449 = getelementptr inbounds i32, i32* %448, i32 1
  store i32* %449, i32** %8, align 8
  br label %450

450:                                              ; preds = %445, %296, %278
  %451 = load i32, i32* %1, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %1, align 4
  br label %267

453:                                              ; preds = %267
  br label %454

454:                                              ; preds = %453
  %455 = load i32, i32* %2, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %2, align 4
  br label %257

457:                                              ; preds = %257
  br label %480

458:                                              ; preds = %0
  store i32 0, i32* %1, align 4
  br label %459

459:                                              ; preds = %476, %458
  %460 = load i32, i32* %1, align 4
  %461 = load i32, i32* @vdp2width, align 4
  %462 = load i32, i32* @vdp2height, align 4
  %463 = mul nsw i32 %461, %462
  %464 = icmp slt i32 %460, %463
  br i1 %464, label %465, label %479

465:                                              ; preds = %459
  %466 = load i32*, i32** @vdp2framebuffer, align 8
  %467 = load i32, i32* %1, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %466, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = call i32 @COLSATSTRIPPRIORITY(i32 %470)
  %472 = load i32*, i32** @dispbuffer, align 8
  %473 = load i32, i32* %1, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %472, i64 %474
  store i32 %471, i32* %475, align 4
  br label %476

476:                                              ; preds = %465
  %477 = load i32, i32* %1, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %1, align 4
  br label %459

479:                                              ; preds = %459
  br label %480

480:                                              ; preds = %479, %457
  %481 = call i32 (...) @VIDGCDVdp1SwapFrameBuffer()
  %482 = call i64 (...) @OSDUseBuffer()
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %489

484:                                              ; preds = %480
  %485 = load i32*, i32** @dispbuffer, align 8
  %486 = load i32, i32* @vdp2width, align 4
  %487 = load i32, i32* @vdp2height, align 4
  %488 = call i32 @OSDDisplayMessages(i32* %485, i32 %486, i32 %487)
  br label %489

489:                                              ; preds = %484, %480
  %490 = call i32 (...) @YuiSwapBuffers()
  ret void
}

declare dso_local i32 @DoColorCalc(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @DoNothing(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @DoColorCalcWithColorOffset(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @DoColorOffset(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ReadWindowData(i32, %struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ReadLineWindowData(i32*, i32, i32*, i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @ReadLineWindowClip(i32, %struct.TYPE_18__*, i32*, i32*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @TestWindow(i32, i32, i32, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @COLSATSTRIPPRIORITY(i32) #1

declare dso_local i32 @Vdp2GetPixelPriority(i32) #1

declare dso_local i32 @COLSAT2YAB16(i32, i32) #1

declare dso_local i32 @Vdp1ProcessSpritePixel(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @COLSAT2YAB32(i32, i32) #1

declare dso_local i32 @Vdp2ColorRamGetColor(i32) #1

declare dso_local i32 @LOG(i8*, i32) #1

declare dso_local i32 @VIDGCDVdp1SwapFrameBuffer(...) #1

declare dso_local i64 @OSDUseBuffer(...) #1

declare dso_local i32 @OSDDisplayMessages(i32*, i32, i32) #1

declare dso_local i32 @YuiSwapBuffers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
