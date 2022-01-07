; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetGPMetric.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetGPMetric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@__gx = common dso_local global %struct.TYPE_2__* null, align 8
@_cpReg = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetGPMetric(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %7, 174
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 180
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @GX_LOAD_BP_REG(i32 587202560)
  br label %42

16:                                               ; preds = %9, %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 180
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 182
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @GX_LOAD_BP_REG(i32 603979776)
  br label %41

28:                                               ; preds = %21, %16
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %31, 158
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 182
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @GX_LOAD_XF_REG(i32 4102, i32 0)
  br label %40

40:                                               ; preds = %38, %33, %28
  br label %41

41:                                               ; preds = %40, %26
  br label %42

42:                                               ; preds = %41, %14
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 135
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 147
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, -241
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @GX_LOAD_CP_REG(i32 32, i32 %61)
  br label %90

63:                                               ; preds = %47, %42
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %66, 147
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 149
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32*, i32** @_cpReg, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32 0, i32* %75, align 4
  br label %89

76:                                               ; preds = %68, %63
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp sge i32 %79, 140
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sle i32 %84, 149
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 @GX_LOAD_BP_REG(i32 1728053248)
  br label %88

88:                                               ; preds = %86, %81, %76
  br label %89

89:                                               ; preds = %88, %73
  br label %90

90:                                               ; preds = %89, %52
  %91 = load i8*, i8** %3, align 8
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %169 [
    i32 182, label %98
    i32 158, label %100
    i32 183, label %102
    i32 185, label %104
    i32 153, label %106
    i32 152, label %108
    i32 151, label %110
    i32 156, label %112
    i32 157, label %114
    i32 155, label %116
    i32 154, label %118
    i32 184, label %120
    i32 174, label %122
    i32 161, label %124
    i32 160, label %126
    i32 159, label %128
    i32 172, label %130
    i32 170, label %132
    i32 168, label %134
    i32 167, label %136
    i32 166, label %138
    i32 165, label %140
    i32 164, label %142
    i32 163, label %144
    i32 162, label %146
    i32 173, label %148
    i32 171, label %150
    i32 169, label %152
    i32 180, label %154
    i32 175, label %156
    i32 179, label %158
    i32 178, label %160
    i32 177, label %162
    i32 176, label %164
    i32 186, label %166
    i32 181, label %168
  ]

98:                                               ; preds = %90
  %99 = call i32 @GX_LOAD_XF_REG(i32 4102, i32 627)
  br label %169

100:                                              ; preds = %90
  %101 = call i32 @GX_LOAD_XF_REG(i32 4102, i32 330)
  br label %169

102:                                              ; preds = %90
  %103 = call i32 @GX_LOAD_XF_REG(i32 4102, i32 363)
  br label %169

104:                                              ; preds = %90
  %105 = call i32 @GX_LOAD_XF_REG(i32 4102, i32 132)
  br label %169

106:                                              ; preds = %90
  %107 = call i32 @GX_LOAD_XF_REG(i32 4102, i32 198)
  br label %169

108:                                              ; preds = %90
  %109 = call i32 @GX_LOAD_XF_REG(i32 4102, i32 528)
  br label %169

110:                                              ; preds = %90
  %111 = call i32 @GX_LOAD_XF_REG(i32 4102, i32 594)
  br label %169

112:                                              ; preds = %90
  %113 = call i32 @GX_LOAD_XF_REG(i32 4102, i32 561)
  br label %169

114:                                              ; preds = %90
  %115 = call i32 @GX_LOAD_XF_REG(i32 4102, i32 429)
  br label %169

116:                                              ; preds = %90
  %117 = call i32 @GX_LOAD_XF_REG(i32 4102, i32 462)
  br label %169

118:                                              ; preds = %90
  %119 = call i32 @GX_LOAD_XF_REG(i32 4102, i32 33)
  br label %169

120:                                              ; preds = %90
  %121 = call i32 @GX_LOAD_XF_REG(i32 4102, i32 339)
  br label %169

122:                                              ; preds = %90
  %123 = call i32 @GX_LOAD_BP_REG(i32 587247231)
  br label %169

124:                                              ; preds = %90
  %125 = call i32 @GX_LOAD_BP_REG(i32 587239039)
  br label %169

126:                                              ; preds = %90
  %127 = call i32 @GX_LOAD_BP_REG(i32 587243135)
  br label %169

128:                                              ; preds = %90
  %129 = call i32 @GX_LOAD_BP_REG(i32 587210367)
  br label %169

130:                                              ; preds = %90
  %131 = call i32 @GX_LOAD_BP_REG(i32 587246655)
  br label %169

132:                                              ; preds = %90
  %133 = call i32 @GX_LOAD_BP_REG(i32 587246719)
  br label %169

134:                                              ; preds = %90
  %135 = call i32 @GX_LOAD_BP_REG(i32 587246783)
  br label %169

136:                                              ; preds = %90
  %137 = call i32 @GX_LOAD_BP_REG(i32 587246847)
  br label %169

138:                                              ; preds = %90
  %139 = call i32 @GX_LOAD_BP_REG(i32 587246911)
  br label %169

140:                                              ; preds = %90
  %141 = call i32 @GX_LOAD_BP_REG(i32 587246975)
  br label %169

142:                                              ; preds = %90
  %143 = call i32 @GX_LOAD_BP_REG(i32 587247039)
  br label %169

144:                                              ; preds = %90
  %145 = call i32 @GX_LOAD_BP_REG(i32 587247103)
  br label %169

146:                                              ; preds = %90
  %147 = call i32 @GX_LOAD_BP_REG(i32 587247167)
  br label %169

148:                                              ; preds = %90
  %149 = call i32 @GX_LOAD_BP_REG(i32 587244159)
  br label %169

150:                                              ; preds = %90
  %151 = call i32 @GX_LOAD_BP_REG(i32 587245183)
  br label %169

152:                                              ; preds = %90
  %153 = call i32 @GX_LOAD_BP_REG(i32 587246207)
  br label %169

154:                                              ; preds = %90
  %155 = call i32 @GX_LOAD_BP_REG(i32 604160198)
  br label %169

156:                                              ; preds = %90
  %157 = call i32 @GX_LOAD_BP_REG(i32 604160363)
  br label %169

158:                                              ; preds = %90
  %159 = call i32 @GX_LOAD_BP_REG(i32 604160231)
  br label %169

160:                                              ; preds = %90
  %161 = call i32 @GX_LOAD_BP_REG(i32 604160264)
  br label %169

162:                                              ; preds = %90
  %163 = call i32 @GX_LOAD_BP_REG(i32 604160297)
  br label %169

164:                                              ; preds = %90
  %165 = call i32 @GX_LOAD_BP_REG(i32 604160330)
  br label %169

166:                                              ; preds = %90
  %167 = call i32 @GX_LOAD_BP_REG(i32 604160429)
  br label %169

168:                                              ; preds = %90
  br label %169

169:                                              ; preds = %90, %168, %166, %164, %162, %160, %158, %156, %154, %152, %150, %148, %146, %144, %142, %140, %138, %136, %134, %132, %130, %128, %126, %124, %122, %120, %118, %116, %114, %112, %110, %108, %106, %104, %102, %100, %98
  %170 = load i8*, i8** %4, align 8
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  switch i32 %176, label %306 [
    i32 149, label %177
    i32 140, label %179
    i32 139, label %181
    i32 137, label %183
    i32 138, label %185
    i32 145, label %187
    i32 144, label %189
    i32 143, label %191
    i32 142, label %193
    i32 141, label %195
    i32 135, label %197
    i32 133, label %209
    i32 134, label %221
    i32 130, label %233
    i32 132, label %245
    i32 129, label %257
    i32 136, label %269
    i32 128, label %281
    i32 147, label %293
    i32 150, label %296
    i32 131, label %299
    i32 148, label %302
    i32 146, label %305
  ]

177:                                              ; preds = %169
  %178 = call i32 @GX_LOAD_BP_REG(i32 1728053314)
  br label %306

179:                                              ; preds = %169
  %180 = call i32 @GX_LOAD_BP_REG(i32 1728053380)
  br label %306

181:                                              ; preds = %169
  %182 = call i32 @GX_LOAD_BP_REG(i32 1728053347)
  br label %306

183:                                              ; preds = %169
  %184 = call i32 @GX_LOAD_BP_REG(i32 1728053545)
  br label %306

185:                                              ; preds = %169
  %186 = call i32 @GX_LOAD_BP_REG(i32 1728053842)
  br label %306

187:                                              ; preds = %169
  %188 = call i32 @GX_LOAD_BP_REG(i32 1728053281)
  br label %306

189:                                              ; preds = %169
  %190 = call i32 @GX_LOAD_BP_REG(i32 1728053579)
  br label %306

191:                                              ; preds = %169
  %192 = call i32 @GX_LOAD_BP_REG(i32 1728053645)
  br label %306

193:                                              ; preds = %169
  %194 = call i32 @GX_LOAD_BP_REG(i32 1728053711)
  br label %306

195:                                              ; preds = %169
  %196 = call i32 @GX_LOAD_BP_REG(i32 1728053777)
  br label %306

197:                                              ; preds = %169
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, -241
  %202 = or i32 %201, 32
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 4
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @GX_LOAD_CP_REG(i32 32, i32 %207)
  br label %306

209:                                              ; preds = %169
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, -241
  %214 = or i32 %213, 48
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 4
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @GX_LOAD_CP_REG(i32 32, i32 %219)
  br label %306

221:                                              ; preds = %169
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = and i32 %224, -241
  %226 = or i32 %225, 64
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 4
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @GX_LOAD_CP_REG(i32 32, i32 %231)
  br label %306

233:                                              ; preds = %169
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %236, -241
  %238 = or i32 %237, 80
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 2
  store i32 %238, i32* %240, align 4
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @GX_LOAD_CP_REG(i32 32, i32 %243)
  br label %306

245:                                              ; preds = %169
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, -241
  %250 = or i32 %249, 96
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 4
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @GX_LOAD_CP_REG(i32 32, i32 %255)
  br label %306

257:                                              ; preds = %169
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, -241
  %262 = or i32 %261, 112
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 4
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @GX_LOAD_CP_REG(i32 32, i32 %267)
  br label %306

269:                                              ; preds = %169
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, -241
  %274 = or i32 %273, 144
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 2
  store i32 %274, i32* %276, align 4
  %277 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @GX_LOAD_CP_REG(i32 32, i32 %279)
  br label %306

281:                                              ; preds = %169
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = and i32 %284, -241
  %286 = or i32 %285, 128
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 2
  store i32 %286, i32* %288, align 4
  %289 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @GX_LOAD_CP_REG(i32 32, i32 %291)
  br label %306

293:                                              ; preds = %169
  %294 = load i32*, i32** @_cpReg, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 3
  store i32 2, i32* %295, align 4
  br label %306

296:                                              ; preds = %169
  %297 = load i32*, i32** @_cpReg, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 3
  store i32 3, i32* %298, align 4
  br label %306

299:                                              ; preds = %169
  %300 = load i32*, i32** @_cpReg, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 3
  store i32 4, i32* %301, align 4
  br label %306

302:                                              ; preds = %169
  %303 = load i32*, i32** @_cpReg, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 3
  store i32 5, i32* %304, align 4
  br label %306

305:                                              ; preds = %169
  br label %306

306:                                              ; preds = %169, %305, %302, %299, %296, %293, %281, %269, %257, %245, %233, %221, %209, %197, %195, %193, %191, %189, %187, %185, %183, %181, %179, %177
  ret void
}

declare dso_local i32 @GX_LOAD_BP_REG(i32) #1

declare dso_local i32 @GX_LOAD_XF_REG(i32, i32) #1

declare dso_local i32 @GX_LOAD_CP_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
