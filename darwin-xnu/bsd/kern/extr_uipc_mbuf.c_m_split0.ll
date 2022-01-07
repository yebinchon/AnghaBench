; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_split0.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_split0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, %struct.mbuf*, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@M_EXT = common dso_local global i32 0, align 4
@MHLEN = common dso_local global i32 0, align 4
@MLEN = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.mbuf*, i32, i32, i32)* @m_split0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @m_split0(%struct.mbuf* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %15, %struct.mbuf** %10, align 8
  br label %16

16:                                               ; preds = %33, %4
  %17 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %18 = icmp ne %struct.mbuf* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ugt i32 %20, %23
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i1 [ false, %16 ], [ %24, %19 ]
  br i1 %26, label %27, label %37

27:                                               ; preds = %25
  %28 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sub i32 %31, %30
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %27
  %34 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 2
  %36 = load %struct.mbuf*, %struct.mbuf** %35, align 8
  store %struct.mbuf* %36, %struct.mbuf** %10, align 8
  br label %16

37:                                               ; preds = %25
  %38 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %39 = icmp eq %struct.mbuf* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %267

41:                                               ; preds = %37
  %42 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sub i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %98

49:                                               ; preds = %41
  %50 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @M_PKTHDR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %98

56:                                               ; preds = %49
  %57 = load i32, i32* %13, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %98

59:                                               ; preds = %56
  %60 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @_MGETHDR(%struct.mbuf* %60, i32 %61, i32 %64)
  %66 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %67 = icmp eq %struct.mbuf* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %267

69:                                               ; preds = %59
  %70 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %71 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %70, i32 0, i32 2
  %72 = load %struct.mbuf*, %struct.mbuf** %71, align 8
  %73 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %74 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %73, i32 0, i32 2
  store %struct.mbuf* %72, %struct.mbuf** %74, align 8
  %75 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %76, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %78 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %82 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %85 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %87, %88
  %90 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %91 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %95 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %97, %struct.mbuf** %5, align 8
  br label %267

98:                                               ; preds = %56, %49, %41
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %173

101:                                              ; preds = %98
  %102 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %103 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @M_PKTHDR, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %173

108:                                              ; preds = %101
  %109 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %112 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @_MGETHDR(%struct.mbuf* %109, i32 %110, i32 %113)
  %115 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %116 = icmp eq %struct.mbuf* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %267

118:                                              ; preds = %108
  %119 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %120 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %124 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  %126 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %127 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sub nsw i32 %129, %130
  %132 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %133 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %137 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %136, i32 0, i32 6
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %140 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @M_EXT, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %118
  br label %212

146:                                              ; preds = %118
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* @MHLEN, align 4
  %149 = icmp ugt i32 %147, %148
  br i1 %149, label %150, label %168

150:                                              ; preds = %146
  %151 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %152 = call i32 @MH_ALIGN(%struct.mbuf* %151, i32 0)
  %153 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call %struct.mbuf* @m_split(%struct.mbuf* %153, i32 %154, i32 %155)
  %157 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %158 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %157, i32 0, i32 2
  store %struct.mbuf* %156, %struct.mbuf** %158, align 8
  %159 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %160 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %159, i32 0, i32 2
  %161 = load %struct.mbuf*, %struct.mbuf** %160, align 8
  %162 = icmp eq %struct.mbuf* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %150
  %164 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %165 = call i32 @m_free(%struct.mbuf* %164)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %267

166:                                              ; preds = %150
  %167 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %167, %struct.mbuf** %5, align 8
  br label %267

168:                                              ; preds = %146
  %169 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %170 = load i32, i32* %13, align 4
  %171 = call i32 @MH_ALIGN(%struct.mbuf* %169, i32 %170)
  br label %172

172:                                              ; preds = %168
  br label %211

173:                                              ; preds = %101, %98
  %174 = load i32, i32* %13, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %178 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %177, i32 0, i32 2
  %179 = load %struct.mbuf*, %struct.mbuf** %178, align 8
  store %struct.mbuf* %179, %struct.mbuf** %11, align 8
  %180 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %181 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %180, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %181, align 8
  %182 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %182, %struct.mbuf** %5, align 8
  br label %267

183:                                              ; preds = %173
  %184 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %187 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @_MGET(%struct.mbuf* %184, i32 %185, i32 %188)
  %190 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %191 = icmp eq %struct.mbuf* %190, null
  br i1 %191, label %192, label %193

192:                                              ; preds = %183
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %267

193:                                              ; preds = %183
  %194 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %195 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @M_EXT, align 4
  %198 = and i32 %196, %197
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %193
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* @MLEN, align 4
  %203 = icmp ule i32 %201, %202
  %204 = zext i1 %203 to i32
  %205 = call i32 @VERIFY(i32 %204)
  %206 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %207 = load i32, i32* %13, align 4
  %208 = call i32 @M_ALIGN(%struct.mbuf* %206, i32 %207)
  br label %209

209:                                              ; preds = %200, %193
  br label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %210, %172
  br label %212

212:                                              ; preds = %211, %145
  %213 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %214 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @M_EXT, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %240

219:                                              ; preds = %212
  %220 = load i32, i32* @M_EXT, align 4
  %221 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %222 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 4
  %225 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %226 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %229 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %228, i32 0, i32 4
  store i32 %227, i32* %229, align 8
  %230 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %231 = call i32 @m_incref(%struct.mbuf* %230)
  %232 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %233 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = load i32, i32* %12, align 4
  %236 = zext i32 %235 to i64
  %237 = add nsw i64 %234, %236
  %238 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %239 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %238, i32 0, i32 3
  store i64 %237, i64* %239, align 8
  br label %252

240:                                              ; preds = %212
  %241 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %242 = load i32, i32* @caddr_t, align 4
  %243 = call i64 @MTOD(%struct.mbuf* %241, i32 %242)
  %244 = load i32, i32* %12, align 4
  %245 = zext i32 %244 to i64
  %246 = add nsw i64 %243, %245
  %247 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %248 = load i32, i32* @caddr_t, align 4
  %249 = call i64 @MTOD(%struct.mbuf* %247, i32 %248)
  %250 = load i32, i32* %13, align 4
  %251 = call i32 @bcopy(i64 %246, i64 %249, i32 %250)
  br label %252

252:                                              ; preds = %240, %219
  %253 = load i32, i32* %13, align 4
  %254 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %255 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 8
  %256 = load i32, i32* %12, align 4
  %257 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %258 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 8
  %259 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %260 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %259, i32 0, i32 2
  %261 = load %struct.mbuf*, %struct.mbuf** %260, align 8
  %262 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %263 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %262, i32 0, i32 2
  store %struct.mbuf* %261, %struct.mbuf** %263, align 8
  %264 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %265 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %264, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %265, align 8
  %266 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %266, %struct.mbuf** %5, align 8
  br label %267

267:                                              ; preds = %252, %192, %176, %166, %163, %117, %69, %68, %40
  %268 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %268
}

declare dso_local i32 @_MGETHDR(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @MH_ALIGN(%struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @m_split(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local i32 @_MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @M_ALIGN(%struct.mbuf*, i32) #1

declare dso_local i32 @m_incref(%struct.mbuf*) #1

declare dso_local i32 @bcopy(i64, i64, i32) #1

declare dso_local i64 @MTOD(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
