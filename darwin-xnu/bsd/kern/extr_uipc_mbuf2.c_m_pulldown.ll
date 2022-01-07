; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_pulldown.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_pulldown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mbuf = type { i32, i32, i32, %struct.mbuf*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"m == NULL in m_pulldown()\00", align 1
@MCLBYTES = common dso_local global i32 0, align 4
@M_DONTWAIT = common dso_local global i32 0, align 4
@M_EXT = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@MHLEN = common dso_local global i32 0, align 4
@ip6stat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_pulldown(%struct.mbuf* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.mbuf* null, %struct.mbuf** %10, align 8
  store %struct.mbuf* null, %struct.mbuf** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %17 = icmp eq %struct.mbuf* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @MCLBYTES, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %26 = call i32 @m_freem(%struct.mbuf* %25)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %374

27:                                               ; preds = %20
  %28 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %28, %struct.mbuf** %10, align 8
  br label %29

29:                                               ; preds = %44, %27
  %30 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %31 = icmp ne %struct.mbuf* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 0
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ false, %29 ], [ %34, %32 ]
  br i1 %36, label %37, label %53

37:                                               ; preds = %35
  %38 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %53

44:                                               ; preds = %37
  %45 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 3
  %52 = load %struct.mbuf*, %struct.mbuf** %51, align 8
  store %struct.mbuf* %52, %struct.mbuf** %10, align 8
  br label %29

53:                                               ; preds = %43, %35
  br label %54

54:                                               ; preds = %64, %53
  %55 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %56 = icmp ne %struct.mbuf* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 0
  br label %62

62:                                               ; preds = %57, %54
  %63 = phi i1 [ false, %54 ], [ %61, %57 ]
  br i1 %63, label %64, label %68

64:                                               ; preds = %62
  %65 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %66 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %65, i32 0, i32 3
  %67 = load %struct.mbuf*, %struct.mbuf** %66, align 8
  store %struct.mbuf* %67, %struct.mbuf** %10, align 8
  br label %54

68:                                               ; preds = %62
  %69 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %70 = icmp ne %struct.mbuf* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %73 = call i32 @m_freem(%struct.mbuf* %72)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %374

74:                                               ; preds = %68
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32*, i32** %9, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sub nsw i32 %84, %85
  %87 = icmp sle i32 %81, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %366

89:                                               ; preds = %80, %77
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %92 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sub nsw i32 %93, %94
  %96 = icmp sle i32 %90, %95
  br i1 %96, label %97, label %127

97:                                               ; preds = %89
  %98 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %101 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load i32, i32* @M_DONTWAIT, align 4
  %106 = call %struct.mbuf* @m_copym(%struct.mbuf* %98, i32 %99, i32 %104, i32 %105)
  store %struct.mbuf* %106, %struct.mbuf** %11, align 8
  %107 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %108 = icmp eq %struct.mbuf* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %111 = call i32 @m_freem(%struct.mbuf* %110)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %374

112:                                              ; preds = %97
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %115 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %117 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %116, i32 0, i32 3
  %118 = load %struct.mbuf*, %struct.mbuf** %117, align 8
  %119 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %120 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %119, i32 0, i32 3
  store %struct.mbuf* %118, %struct.mbuf** %120, align 8
  %121 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %122 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %123 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %122, i32 0, i32 3
  store %struct.mbuf* %121, %struct.mbuf** %123, align 8
  %124 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %125 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %124, i32 0, i32 3
  %126 = load %struct.mbuf*, %struct.mbuf** %125, align 8
  store %struct.mbuf* %126, %struct.mbuf** %10, align 8
  store i32 0, i32* %7, align 4
  br label %366

127:                                              ; preds = %89
  %128 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %129 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sub nsw i32 %130, %131
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %12, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %136 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %137 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %136, i32 0, i32 3
  %138 = load %struct.mbuf*, %struct.mbuf** %137, align 8
  store %struct.mbuf* %138, %struct.mbuf** %11, align 8
  br label %139

139:                                              ; preds = %148, %127
  %140 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %141 = icmp ne %struct.mbuf* %140, null
  br i1 %141, label %142, label %152

142:                                              ; preds = %139
  %143 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %144 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %14, align 4
  br label %148

148:                                              ; preds = %142
  %149 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %150 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %149, i32 0, i32 3
  %151 = load %struct.mbuf*, %struct.mbuf** %150, align 8
  store %struct.mbuf* %151, %struct.mbuf** %11, align 8
  br label %139

152:                                              ; preds = %139
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %153, %154
  %156 = load i32, i32* %8, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %160 = call i32 @m_freem(%struct.mbuf* %159)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %374

161:                                              ; preds = %152
  %162 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %163 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @M_EXT, align 4
  %166 = and i32 %164, %165
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  store i32 0, i32* %15, align 4
  br label %182

169:                                              ; preds = %161
  %170 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %171 = call i32* @m_get_ext_free(%struct.mbuf* %170)
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store i32 1, i32* %15, align 4
  br label %181

174:                                              ; preds = %169
  %175 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %176 = call i64 @m_mclhasreference(%struct.mbuf* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 1, i32* %15, align 4
  br label %180

179:                                              ; preds = %174
  store i32 0, i32* %15, align 4
  br label %180

180:                                              ; preds = %179, %178
  br label %181

181:                                              ; preds = %180, %173
  br label %182

182:                                              ; preds = %181, %168
  %183 = load i32, i32* %7, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %182
  %186 = load i32*, i32** %9, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %220

188:                                              ; preds = %185, %182
  %189 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %190 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %189)
  %191 = load i32, i32* %13, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %220

193:                                              ; preds = %188
  %194 = load i32, i32* %15, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %220, label %196

196:                                              ; preds = %193
  %197 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %198 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %197, i32 0, i32 3
  %199 = load %struct.mbuf*, %struct.mbuf** %198, align 8
  %200 = load i32, i32* %13, align 4
  %201 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %202 = load i32, i32* @caddr_t, align 4
  %203 = call i64 @mtod(%struct.mbuf* %201, i32 %202)
  %204 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %205 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %203, %207
  %209 = call i32 @m_copydata(%struct.mbuf* %199, i32 0, i32 %200, i64 %208)
  %210 = load i32, i32* %13, align 4
  %211 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %212 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, %210
  store i32 %214, i32* %212, align 8
  %215 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %216 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %215, i32 0, i32 3
  %217 = load %struct.mbuf*, %struct.mbuf** %216, align 8
  %218 = load i32, i32* %13, align 4
  %219 = call i32 @m_adj(%struct.mbuf* %217, i32 %218)
  br label %366

220:                                              ; preds = %193, %188, %185
  %221 = load i32, i32* %7, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %220
  %224 = load i32*, i32** %9, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %282

226:                                              ; preds = %223, %220
  %227 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %228 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %227, i32 0, i32 3
  %229 = load %struct.mbuf*, %struct.mbuf** %228, align 8
  %230 = call i32 @M_LEADINGSPACE(%struct.mbuf* %229)
  %231 = load i32, i32* %12, align 4
  %232 = icmp sge i32 %230, %231
  br i1 %232, label %233, label %282

233:                                              ; preds = %226
  %234 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %235 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %234, i32 0, i32 3
  %236 = load %struct.mbuf*, %struct.mbuf** %235, align 8
  %237 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %12, align 4
  %240 = add nsw i32 %238, %239
  %241 = load i32, i32* %8, align 4
  %242 = icmp sge i32 %240, %241
  br i1 %242, label %243, label %282

243:                                              ; preds = %233
  %244 = load i32, i32* %15, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %282, label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %12, align 4
  %248 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %249 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %248, i32 0, i32 3
  %250 = load %struct.mbuf*, %struct.mbuf** %249, align 8
  %251 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = sub nsw i32 %252, %247
  store i32 %253, i32* %251, align 8
  %254 = load i32, i32* %12, align 4
  %255 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %256 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %255, i32 0, i32 3
  %257 = load %struct.mbuf*, %struct.mbuf** %256, align 8
  %258 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %259, %254
  store i32 %260, i32* %258, align 8
  %261 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %262 = load i32, i32* @caddr_t, align 4
  %263 = call i64 @mtod(%struct.mbuf* %261, i32 %262)
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %263, %265
  %267 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %268 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %267, i32 0, i32 3
  %269 = load %struct.mbuf*, %struct.mbuf** %268, align 8
  %270 = load i32, i32* @caddr_t, align 4
  %271 = call i64 @mtod(%struct.mbuf* %269, i32 %270)
  %272 = load i32, i32* %12, align 4
  %273 = call i32 @bcopy(i64 %266, i64 %271, i32 %272)
  %274 = load i32, i32* %12, align 4
  %275 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %276 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = sub nsw i32 %277, %274
  store i32 %278, i32* %276, align 8
  %279 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %280 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %279, i32 0, i32 3
  %281 = load %struct.mbuf*, %struct.mbuf** %280, align 8
  store %struct.mbuf* %281, %struct.mbuf** %10, align 8
  store i32 0, i32* %7, align 4
  br label %366

282:                                              ; preds = %243, %233, %226, %223
  %283 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %284 = load i32, i32* @M_DONTWAIT, align 4
  %285 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %286 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @MGET(%struct.mbuf* %283, i32 %284, i32 %287)
  %289 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %290 = icmp eq %struct.mbuf* %289, null
  br i1 %290, label %291, label %294

291:                                              ; preds = %282
  %292 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %293 = call i32 @m_freem(%struct.mbuf* %292)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %374

294:                                              ; preds = %282
  %295 = load i32, i32* %8, align 4
  %296 = load i32, i32* @MHLEN, align 4
  %297 = icmp sgt i32 %295, %296
  br i1 %297, label %298, label %314

298:                                              ; preds = %294
  %299 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %300 = load i32, i32* @M_DONTWAIT, align 4
  %301 = call i32 @MCLGET(%struct.mbuf* %299, i32 %300)
  %302 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %303 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @M_EXT, align 4
  %306 = and i32 %304, %305
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %298
  %309 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %310 = call i32 @m_freem(%struct.mbuf* %309)
  %311 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %312 = call i32 @m_free(%struct.mbuf* %311)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %374

313:                                              ; preds = %298
  br label %314

314:                                              ; preds = %313, %294
  %315 = load i32, i32* %12, align 4
  %316 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %317 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %316, i32 0, i32 0
  store i32 %315, i32* %317, align 8
  %318 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %319 = load i32, i32* @caddr_t, align 4
  %320 = call i64 @mtod(%struct.mbuf* %318, i32 %319)
  %321 = load i32, i32* %7, align 4
  %322 = sext i32 %321 to i64
  %323 = add nsw i64 %320, %322
  %324 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %325 = load i32, i32* @caddr_t, align 4
  %326 = call i64 @mtod(%struct.mbuf* %324, i32 %325)
  %327 = load i32, i32* %12, align 4
  %328 = call i32 @bcopy(i64 %323, i64 %326, i32 %327)
  %329 = load i32, i32* %12, align 4
  %330 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %331 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = sub nsw i32 %332, %329
  store i32 %333, i32* %331, align 8
  %334 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %335 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %334, i32 0, i32 3
  %336 = load %struct.mbuf*, %struct.mbuf** %335, align 8
  %337 = load i32, i32* %13, align 4
  %338 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %339 = load i32, i32* @caddr_t, align 4
  %340 = call i64 @mtod(%struct.mbuf* %338, i32 %339)
  %341 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %342 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = sext i32 %343 to i64
  %345 = add nsw i64 %340, %344
  %346 = call i32 @m_copydata(%struct.mbuf* %336, i32 0, i32 %337, i64 %345)
  %347 = load i32, i32* %13, align 4
  %348 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %349 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = add nsw i32 %350, %347
  store i32 %351, i32* %349, align 8
  %352 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %353 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %352, i32 0, i32 3
  %354 = load %struct.mbuf*, %struct.mbuf** %353, align 8
  %355 = load i32, i32* %13, align 4
  %356 = call i32 @m_adj(%struct.mbuf* %354, i32 %355)
  %357 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %358 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %357, i32 0, i32 3
  %359 = load %struct.mbuf*, %struct.mbuf** %358, align 8
  %360 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %361 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %360, i32 0, i32 3
  store %struct.mbuf* %359, %struct.mbuf** %361, align 8
  %362 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %363 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %364 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %363, i32 0, i32 3
  store %struct.mbuf* %362, %struct.mbuf** %364, align 8
  %365 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %365, %struct.mbuf** %10, align 8
  store i32 0, i32* %7, align 4
  br label %366

366:                                              ; preds = %314, %246, %196, %112, %88
  %367 = load i32*, i32** %9, align 8
  %368 = icmp ne i32* %367, null
  br i1 %368, label %369, label %372

369:                                              ; preds = %366
  %370 = load i32, i32* %7, align 4
  %371 = load i32*, i32** %9, align 8
  store i32 %370, i32* %371, align 4
  br label %372

372:                                              ; preds = %369, %366
  %373 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %373, %struct.mbuf** %5, align 8
  br label %374

374:                                              ; preds = %372, %308, %291, %158, %109, %71, %24
  %375 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %375
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_copym(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32* @m_get_ext_free(%struct.mbuf*) #1

declare dso_local i64 @m_mclhasreference(%struct.mbuf*) #1

declare dso_local i32 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i64) #1

declare dso_local i64 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @M_LEADINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @bcopy(i64, i64, i32) #1

declare dso_local i32 @MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @MCLGET(%struct.mbuf*, i32) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
