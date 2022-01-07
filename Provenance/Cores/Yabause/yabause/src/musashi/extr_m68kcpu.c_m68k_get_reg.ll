; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kcpu.c_m68k_get_reg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kcpu.c_m68k_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@m68ki_cpu = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@XFLAG_SET = common dso_local global i32 0, align 4
@NFLAG_SET = common dso_local global i32 0, align 4
@VFLAG_SET = common dso_local global i32 0, align 4
@CFLAG_SET = common dso_local global i32 0, align 4
@M68K_CPU_TYPE_68000 = common dso_local global i64 0, align 8
@M68K_CPU_TYPE_68010 = common dso_local global i64 0, align 8
@M68K_CPU_TYPE_68EC020 = common dso_local global i64 0, align 8
@M68K_CPU_TYPE_68020 = common dso_local global i64 0, align 8
@M68K_CPU_TYPE_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m68k_get_reg(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_3__*
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi %struct.TYPE_3__* [ %11, %9 ], [ @m68ki_cpu, %12 ]
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %6, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %303 [
    i32 148, label %16
    i32 147, label %22
    i32 146, label %28
    i32 145, label %34
    i32 144, label %40
    i32 143, label %46
    i32 142, label %52
    i32 141, label %58
    i32 159, label %64
    i32 158, label %70
    i32 157, label %76
    i32 156, label %82
    i32 155, label %88
    i32 154, label %94
    i32 153, label %100
    i32 152, label %106
    i32 136, label %112
    i32 130, label %117
    i32 131, label %175
    i32 129, label %181
    i32 138, label %200
    i32 137, label %224
    i32 132, label %248
    i32 140, label %252
    i32 128, label %256
    i32 150, label %260
    i32 151, label %264
    i32 134, label %268
    i32 133, label %272
    i32 135, label %276
    i32 139, label %281
    i32 149, label %285
  ]

16:                                               ; preds = %13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  br label %304

22:                                               ; preds = %13
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %304

28:                                               ; preds = %13
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  br label %304

34:                                               ; preds = %13
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  br label %304

40:                                               ; preds = %13
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %3, align 4
  br label %304

46:                                               ; preds = %13
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  br label %304

52:                                               ; preds = %13
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %3, align 4
  br label %304

58:                                               ; preds = %13
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 7
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %3, align 4
  br label %304

64:                                               ; preds = %13
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %3, align 4
  br label %304

70:                                               ; preds = %13
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 9
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %3, align 4
  br label %304

76:                                               ; preds = %13
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 10
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %3, align 4
  br label %304

82:                                               ; preds = %13
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 11
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %3, align 4
  br label %304

88:                                               ; preds = %13
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 12
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %3, align 4
  br label %304

94:                                               ; preds = %13
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 13
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %3, align 4
  br label %304

100:                                              ; preds = %13
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 14
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %3, align 4
  br label %304

106:                                              ; preds = %13
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 15
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %3, align 4
  br label %304

112:                                              ; preds = %13
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 22
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @MASK_OUT_ABOVE_32(i32 %115)
  store i32 %116, i32* %3, align 4
  br label %304

117:                                              ; preds = %13
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %120, %123
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = shl i32 %127, 11
  %129 = or i32 %124, %128
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 11
  %134 = or i32 %129, %133
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %134, %137
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @XFLAG_SET, align 4
  %143 = and i32 %141, %142
  %144 = ashr i32 %143, 4
  %145 = or i32 %138, %144
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @NFLAG_SET, align 4
  %150 = and i32 %148, %149
  %151 = ashr i32 %150, 4
  %152 = or i32 %145, %151
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 21
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = shl i32 %158, 2
  %160 = or i32 %152, %159
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @VFLAG_SET, align 4
  %165 = and i32 %163, %164
  %166 = ashr i32 %165, 6
  %167 = or i32 %160, %166
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 9
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @CFLAG_SET, align 4
  %172 = and i32 %170, %171
  %173 = ashr i32 %172, 8
  %174 = or i32 %167, %173
  store i32 %174, i32* %3, align 4
  br label %304

175:                                              ; preds = %13
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 15
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %3, align 4
  br label %304

181:                                              ; preds = %13
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %181
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 10
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  br label %198

192:                                              ; preds = %181
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 15
  %197 = load i32, i32* %196, align 4
  br label %198

198:                                              ; preds = %192, %186
  %199 = phi i32 [ %191, %186 ], [ %197, %192 ]
  store i32 %199, i32* %3, align 4
  br label %304

200:                                              ; preds = %13
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %200
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %216, label %210

210:                                              ; preds = %205
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 15
  %215 = load i32, i32* %214, align 4
  br label %222

216:                                              ; preds = %205, %200
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 10
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 4
  %221 = load i32, i32* %220, align 4
  br label %222

222:                                              ; preds = %216, %210
  %223 = phi i32 [ %215, %210 ], [ %221, %216 ]
  store i32 %223, i32* %3, align 4
  br label %304

224:                                              ; preds = %13
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %224
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %229
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 15
  %239 = load i32, i32* %238, align 4
  br label %246

240:                                              ; preds = %229, %224
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 10
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 6
  %245 = load i32, i32* %244, align 4
  br label %246

246:                                              ; preds = %240, %234
  %247 = phi i32 [ %239, %234 ], [ %245, %240 ]
  store i32 %247, i32* %3, align 4
  br label %304

248:                                              ; preds = %13
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 11
  %251 = load i32, i32* %250, align 8
  store i32 %251, i32* %3, align 4
  br label %304

252:                                              ; preds = %13
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 12
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %3, align 4
  br label %304

256:                                              ; preds = %13
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 13
  %259 = load i32, i32* %258, align 8
  store i32 %259, i32* %3, align 4
  br label %304

260:                                              ; preds = %13
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 14
  %263 = load i32, i32* %262, align 4
  store i32 %263, i32* %3, align 4
  br label %304

264:                                              ; preds = %13
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 15
  %267 = load i32, i32* %266, align 8
  store i32 %267, i32* %3, align 4
  br label %304

268:                                              ; preds = %13
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 16
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* %3, align 4
  br label %304

272:                                              ; preds = %13
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 17
  %275 = load i32, i32* %274, align 8
  store i32 %275, i32* %3, align 4
  br label %304

276:                                              ; preds = %13
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 20
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @MASK_OUT_ABOVE_32(i32 %279)
  store i32 %280, i32* %3, align 4
  br label %304

281:                                              ; preds = %13
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 18
  %284 = load i32, i32* %283, align 4
  store i32 %284, i32* %3, align 4
  br label %304

285:                                              ; preds = %13
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 19
  %288 = load i32, i32* %287, align 8
  switch i32 %288, label %301 [
    i32 163, label %289
    i32 162, label %292
    i32 160, label %295
    i32 161, label %298
  ]

289:                                              ; preds = %285
  %290 = load i64, i64* @M68K_CPU_TYPE_68000, align 8
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* %3, align 4
  br label %304

292:                                              ; preds = %285
  %293 = load i64, i64* @M68K_CPU_TYPE_68010, align 8
  %294 = trunc i64 %293 to i32
  store i32 %294, i32* %3, align 4
  br label %304

295:                                              ; preds = %285
  %296 = load i64, i64* @M68K_CPU_TYPE_68EC020, align 8
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %3, align 4
  br label %304

298:                                              ; preds = %285
  %299 = load i64, i64* @M68K_CPU_TYPE_68020, align 8
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* %3, align 4
  br label %304

301:                                              ; preds = %285
  %302 = load i32, i32* @M68K_CPU_TYPE_INVALID, align 4
  store i32 %302, i32* %3, align 4
  br label %304

303:                                              ; preds = %13
  store i32 0, i32* %3, align 4
  br label %304

304:                                              ; preds = %303, %301, %298, %295, %292, %289, %281, %276, %272, %268, %264, %260, %256, %252, %248, %246, %222, %198, %175, %117, %112, %106, %100, %94, %88, %82, %76, %70, %64, %58, %52, %46, %40, %34, %28, %22, %16
  %305 = load i32, i32* %3, align 4
  ret i32 %305
}

declare dso_local i32 @MASK_OUT_ABOVE_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
