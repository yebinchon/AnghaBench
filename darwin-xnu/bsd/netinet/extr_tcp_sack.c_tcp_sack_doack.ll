; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_sack_doack.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_sack_doack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { %struct.TYPE_2__, i32, i8*, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.tcpopt = type { i32, i64 }
%struct.tcphdr = type { i8* }
%struct.sackhole = type { i8*, i8*, i32, i8* }
%struct.sackblk = type { i8*, i8* }

@TCP_MAX_SACK = common dso_local global i32 0, align 4
@TCPOLEN_SACK = common dso_local global i32 0, align 4
@sackhole_head = common dso_local global i32 0, align 4
@scblink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_sack_doack(%struct.tcpcb* %0, %struct.tcpopt* %1, %struct.tcphdr* %2, i32* %3) #0 {
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.tcpopt*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sackhole*, align 8
  %10 = alloca %struct.sackhole*, align 8
  %11 = alloca %struct.sackblk, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sackblk*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.tcpopt* %1, %struct.tcpopt** %6, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  store i32* %3, i32** %8, align 8
  %21 = load i32, i32* @TCP_MAX_SACK, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca %struct.sackblk, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  store i8* null, i8** %18, align 8
  %26 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %27 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %19, align 8
  store i32 0, i32* %17, align 4
  %29 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %19, align 8
  %33 = call i64 @SEQ_LT(i8* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %4
  %36 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 1
  %38 = call i64 @TAILQ_EMPTY(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %35
  %41 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %42 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %25, i64 %45
  %47 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %46, i32 0, i32 0
  store i8* %43, i8** %47, align 16
  %48 = load i8*, i8** %19, align 8
  %49 = load i32, i32* %17, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %17, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %25, i64 %51
  %53 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %52, i32 0, i32 1
  store i8* %48, i8** %53, align 8
  br label %54

54:                                               ; preds = %40, %35, %4
  store i32 0, i32* %15, align 4
  br label %55

55:                                               ; preds = %91, %54
  %56 = load i32, i32* %15, align 4
  %57 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %58 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %94

61:                                               ; preds = %55
  %62 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %63 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @TCPOLEN_SACK, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %64, %68
  %70 = call i32 @bcopy(i64 %69, %struct.sackblk* %11, i32 16)
  %71 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %11, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @ntohl(i8* %72)
  %74 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %11, i32 0, i32 0
  store i8* %73, i8** %74, align 8
  %75 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %11, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i8* @ntohl(i8* %76)
  %78 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %11, i32 0, i32 1
  store i8* %77, i8** %78, align 8
  %79 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %80 = load i8*, i8** %19, align 8
  %81 = call i64 @TCP_VALIDATE_SACK_SEQ_NUMBERS(%struct.tcpcb* %79, %struct.sackblk* %11, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %61
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %17, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %25, i64 %86
  %88 = bitcast %struct.sackblk* %87 to i8*
  %89 = bitcast %struct.sackblk* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %88, i8* align 8 %89, i64 16, i1 false)
  br label %90

90:                                               ; preds = %83, %61
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %55

94:                                               ; preds = %55
  %95 = load i32, i32* %17, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 1, i32* %20, align 4
  br label %620

98:                                               ; preds = %94
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* @TCP_MAX_SACK, align 4
  %101 = add nsw i32 %100, 1
  %102 = icmp sle i32 %99, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @VERIFY(i32 %103)
  store i32 0, i32* %15, align 4
  br label %105

105:                                              ; preds = %153, %98
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %156

109:                                              ; preds = %105
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  br label %112

112:                                              ; preds = %149, %109
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %17, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %152

116:                                              ; preds = %112
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %25, i64 %118
  %120 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %25, i64 %123
  %125 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @SEQ_GT(i8* %121, i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %148

129:                                              ; preds = %116
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %25, i64 %131
  %133 = bitcast %struct.sackblk* %11 to i8*
  %134 = bitcast %struct.sackblk* %132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 16 %134, i64 16, i1 false)
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %25, i64 %136
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %25, i64 %139
  %141 = bitcast %struct.sackblk* %137 to i8*
  %142 = bitcast %struct.sackblk* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %141, i8* align 16 %142, i64 16, i1 false)
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %25, i64 %144
  %146 = bitcast %struct.sackblk* %145 to i8*
  %147 = bitcast %struct.sackblk* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %146, i8* align 8 %147, i64 16, i1 false)
  br label %148

148:                                              ; preds = %129, %116
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %16, align 4
  br label %112

152:                                              ; preds = %112
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %15, align 4
  br label %105

156:                                              ; preds = %105
  %157 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %158 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %157, i32 0, i32 1
  %159 = call i64 @TAILQ_EMPTY(i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %183

161:                                              ; preds = %156
  %162 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %163 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %162, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  %165 = load i8*, i8** %19, align 8
  %166 = call i8* @SEQ_MAX(i8* %164, i8* %165)
  %167 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %168 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %167, i32 0, i32 2
  store i8* %166, i8** %168, align 8
  %169 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %170 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %173 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %172, i32 0, i32 3
  %174 = load i8*, i8** %173, align 8
  %175 = ptrtoint i8* %171 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  %178 = load i32*, i32** %8, align 8
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %180, %177
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %178, align 4
  br label %183

183:                                              ; preds = %161, %156
  %184 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %185 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  store i8* %186, i8** %18, align 8
  %187 = load i32, i32* %17, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %25, i64 %189
  store %struct.sackblk* %190, %struct.sackblk** %14, align 8
  %191 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %192 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %195 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = call i64 @SEQ_LT(i8* %193, i8* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %284

199:                                              ; preds = %183
  %200 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %201 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %202 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %201, i32 0, i32 2
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %205 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = call %struct.sackhole* @tcp_sackhole_insert(%struct.tcpcb* %200, i8* %203, i8* %206, %struct.sackhole* null)
  store %struct.sackhole* %207, %struct.sackhole** %10, align 8
  %208 = load %struct.sackhole*, %struct.sackhole** %10, align 8
  %209 = icmp ne %struct.sackhole* %208, null
  br i1 %209, label %210, label %232

210:                                              ; preds = %199
  %211 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %212 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %215 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %214, i32 0, i32 2
  store i8* %213, i8** %215, align 8
  %216 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %217 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %220 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = ptrtoint i8* %218 to i64
  %223 = ptrtoint i8* %221 to i64
  %224 = sub i64 %222, %223
  %225 = load i32*, i32** %8, align 8
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %227, %224
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %225, align 4
  %230 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %231 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %230, i32 -1
  store %struct.sackblk* %231, %struct.sackblk** %14, align 8
  br label %283

232:                                              ; preds = %199
  br label %233

233:                                              ; preds = %247, %232
  %234 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %235 = icmp uge %struct.sackblk* %234, %25
  br i1 %235, label %236, label %245

236:                                              ; preds = %233
  %237 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %238 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %237, i32 0, i32 2
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %241 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = call i64 @SEQ_LT(i8* %239, i8* %242)
  %244 = icmp ne i64 %243, 0
  br label %245

245:                                              ; preds = %236, %233
  %246 = phi i1 [ false, %233 ], [ %244, %236 ]
  br i1 %246, label %247, label %250

247:                                              ; preds = %245
  %248 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %249 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %248, i32 -1
  store %struct.sackblk* %249, %struct.sackblk** %14, align 8
  br label %233

250:                                              ; preds = %245
  %251 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %252 = icmp uge %struct.sackblk* %251, %25
  br i1 %252, label %253, label %282

253:                                              ; preds = %250
  %254 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %255 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %254, i32 0, i32 2
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %258 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %257, i32 0, i32 1
  %259 = load i8*, i8** %258, align 8
  %260 = call i64 @SEQ_LT(i8* %256, i8* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %282

262:                                              ; preds = %253
  %263 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %264 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %263, i32 0, i32 1
  %265 = load i8*, i8** %264, align 8
  %266 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %267 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %266, i32 0, i32 2
  %268 = load i8*, i8** %267, align 8
  %269 = ptrtoint i8* %265 to i64
  %270 = ptrtoint i8* %268 to i64
  %271 = sub i64 %269, %270
  %272 = load i32*, i32** %8, align 8
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  %275 = add nsw i64 %274, %271
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %272, align 4
  %277 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %278 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %277, i32 0, i32 1
  %279 = load i8*, i8** %278, align 8
  %280 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %281 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %280, i32 0, i32 2
  store i8* %279, i8** %281, align 8
  br label %282

282:                                              ; preds = %262, %253, %250
  br label %283

283:                                              ; preds = %282, %210
  br label %314

284:                                              ; preds = %183
  %285 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %286 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %285, i32 0, i32 2
  %287 = load i8*, i8** %286, align 8
  %288 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %289 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %288, i32 0, i32 1
  %290 = load i8*, i8** %289, align 8
  %291 = call i64 @SEQ_LT(i8* %287, i8* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %313

293:                                              ; preds = %284
  %294 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %295 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %294, i32 0, i32 1
  %296 = load i8*, i8** %295, align 8
  %297 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %298 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %297, i32 0, i32 2
  %299 = load i8*, i8** %298, align 8
  %300 = ptrtoint i8* %296 to i64
  %301 = ptrtoint i8* %299 to i64
  %302 = sub i64 %300, %301
  %303 = load i32*, i32** %8, align 8
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  %306 = add nsw i64 %305, %302
  %307 = trunc i64 %306 to i32
  store i32 %307, i32* %303, align 4
  %308 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %309 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %308, i32 0, i32 1
  %310 = load i8*, i8** %309, align 8
  %311 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %312 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %311, i32 0, i32 2
  store i8* %310, i8** %312, align 8
  br label %313

313:                                              ; preds = %293, %284
  br label %314

314:                                              ; preds = %313, %283
  %315 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %316 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %315, i32 0, i32 1
  %317 = load i32, i32* @sackhole_head, align 4
  %318 = call %struct.sackhole* @TAILQ_LAST(i32* %316, i32 %317)
  store %struct.sackhole* %318, %struct.sackhole** %9, align 8
  br label %319

319:                                              ; preds = %618, %387, %348, %336, %314
  %320 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %321 = icmp uge %struct.sackblk* %320, %25
  br i1 %321, label %322, label %325

322:                                              ; preds = %319
  %323 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %324 = icmp ne %struct.sackhole* %323, null
  br label %325

325:                                              ; preds = %322, %319
  %326 = phi i1 [ false, %319 ], [ %324, %322 ]
  br i1 %326, label %327, label %619

327:                                              ; preds = %325
  %328 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %329 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %328, i32 0, i32 0
  %330 = load i8*, i8** %329, align 8
  %331 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %332 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %331, i32 0, i32 3
  %333 = load i8*, i8** %332, align 8
  %334 = call i64 @SEQ_GEQ(i8* %330, i8* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %327
  %337 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %338 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %337, i32 -1
  store %struct.sackblk* %338, %struct.sackblk** %14, align 8
  br label %319

339:                                              ; preds = %327
  %340 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %341 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %340, i32 0, i32 1
  %342 = load i8*, i8** %341, align 8
  %343 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %344 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %343, i32 0, i32 0
  %345 = load i8*, i8** %344, align 8
  %346 = call i64 @SEQ_LEQ(i8* %342, i8* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %339
  %349 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %350 = load i32, i32* @sackhole_head, align 4
  %351 = load i32, i32* @scblink, align 4
  %352 = call %struct.sackhole* @TAILQ_PREV(%struct.sackhole* %349, i32 %350, i32 %351)
  store %struct.sackhole* %352, %struct.sackhole** %9, align 8
  br label %319

353:                                              ; preds = %339
  %354 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %355 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %354, i32 0, i32 1
  %356 = load i8*, i8** %355, align 8
  %357 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %358 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %357, i32 0, i32 0
  %359 = load i8*, i8** %358, align 8
  %360 = ptrtoint i8* %356 to i64
  %361 = ptrtoint i8* %359 to i64
  %362 = sub i64 %360, %361
  %363 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %364 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = sext i32 %366 to i64
  %368 = sub nsw i64 %367, %362
  %369 = trunc i64 %368 to i32
  store i32 %369, i32* %365, align 8
  %370 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %371 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %370, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %374 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %373, i32 0, i32 0
  %375 = load i8*, i8** %374, align 8
  %376 = call i64 @SEQ_LEQ(i8* %372, i8* %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %454

378:                                              ; preds = %353
  %379 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %380 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %379, i32 0, i32 1
  %381 = load i8*, i8** %380, align 8
  %382 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %383 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %382, i32 0, i32 3
  %384 = load i8*, i8** %383, align 8
  %385 = call i64 @SEQ_GEQ(i8* %381, i8* %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %417

387:                                              ; preds = %378
  %388 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %389 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %388, i32 0, i32 3
  %390 = load i8*, i8** %389, align 8
  %391 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %392 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %391, i32 0, i32 0
  %393 = load i8*, i8** %392, align 8
  %394 = ptrtoint i8* %390 to i64
  %395 = ptrtoint i8* %393 to i64
  %396 = sub i64 %394, %395
  %397 = load i32*, i32** %8, align 8
  %398 = load i32, i32* %397, align 4
  %399 = sext i32 %398 to i64
  %400 = add nsw i64 %399, %396
  %401 = trunc i64 %400 to i32
  store i32 %401, i32* %397, align 4
  %402 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %403 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %404 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %405 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %404, i32 0, i32 3
  %406 = load i8*, i8** %405, align 8
  %407 = load i8*, i8** %18, align 8
  %408 = call i32 @tcp_sack_detect_reordering(%struct.tcpcb* %402, %struct.sackhole* %403, i8* %406, i8* %407)
  %409 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  store %struct.sackhole* %409, %struct.sackhole** %10, align 8
  %410 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %411 = load i32, i32* @sackhole_head, align 4
  %412 = load i32, i32* @scblink, align 4
  %413 = call %struct.sackhole* @TAILQ_PREV(%struct.sackhole* %410, i32 %411, i32 %412)
  store %struct.sackhole* %413, %struct.sackhole** %9, align 8
  %414 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %415 = load %struct.sackhole*, %struct.sackhole** %10, align 8
  %416 = call i32 @tcp_sackhole_remove(%struct.tcpcb* %414, %struct.sackhole* %415)
  br label %319

417:                                              ; preds = %378
  %418 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %419 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %418, i32 0, i32 1
  %420 = load i8*, i8** %419, align 8
  %421 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %422 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %421, i32 0, i32 0
  %423 = load i8*, i8** %422, align 8
  %424 = ptrtoint i8* %420 to i64
  %425 = ptrtoint i8* %423 to i64
  %426 = sub i64 %424, %425
  %427 = load i32*, i32** %8, align 8
  %428 = load i32, i32* %427, align 4
  %429 = sext i32 %428 to i64
  %430 = add nsw i64 %429, %426
  %431 = trunc i64 %430 to i32
  store i32 %431, i32* %427, align 4
  %432 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %433 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %434 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %435 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %434, i32 0, i32 1
  %436 = load i8*, i8** %435, align 8
  %437 = load i8*, i8** %18, align 8
  %438 = call i32 @tcp_sack_detect_reordering(%struct.tcpcb* %432, %struct.sackhole* %433, i8* %436, i8* %437)
  %439 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %440 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %439, i32 0, i32 1
  %441 = load i8*, i8** %440, align 8
  %442 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %443 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %442, i32 0, i32 0
  store i8* %441, i8** %443, align 8
  %444 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %445 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %444, i32 0, i32 1
  %446 = load i8*, i8** %445, align 8
  %447 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %448 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %447, i32 0, i32 0
  %449 = load i8*, i8** %448, align 8
  %450 = call i8* @SEQ_MAX(i8* %446, i8* %449)
  %451 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %452 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %451, i32 0, i32 1
  store i8* %450, i8** %452, align 8
  br label %453

453:                                              ; preds = %417
  br label %585

454:                                              ; preds = %353
  %455 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %456 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %455, i32 0, i32 1
  %457 = load i8*, i8** %456, align 8
  %458 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %459 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %458, i32 0, i32 3
  %460 = load i8*, i8** %459, align 8
  %461 = call i64 @SEQ_GEQ(i8* %457, i8* %460)
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %499

463:                                              ; preds = %454
  %464 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %465 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %464, i32 0, i32 3
  %466 = load i8*, i8** %465, align 8
  %467 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %468 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %467, i32 0, i32 0
  %469 = load i8*, i8** %468, align 8
  %470 = ptrtoint i8* %466 to i64
  %471 = ptrtoint i8* %469 to i64
  %472 = sub i64 %470, %471
  %473 = load i32*, i32** %8, align 8
  %474 = load i32, i32* %473, align 4
  %475 = sext i32 %474 to i64
  %476 = add nsw i64 %475, %472
  %477 = trunc i64 %476 to i32
  store i32 %477, i32* %473, align 4
  %478 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %479 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %480 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %481 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %480, i32 0, i32 3
  %482 = load i8*, i8** %481, align 8
  %483 = load i8*, i8** %18, align 8
  %484 = call i32 @tcp_sack_detect_reordering(%struct.tcpcb* %478, %struct.sackhole* %479, i8* %482, i8* %483)
  %485 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %486 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %485, i32 0, i32 0
  %487 = load i8*, i8** %486, align 8
  %488 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %489 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %488, i32 0, i32 3
  store i8* %487, i8** %489, align 8
  %490 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %491 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %490, i32 0, i32 1
  %492 = load i8*, i8** %491, align 8
  %493 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %494 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %493, i32 0, i32 3
  %495 = load i8*, i8** %494, align 8
  %496 = call i8* @SEQ_MIN(i8* %492, i8* %495)
  %497 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %498 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %497, i32 0, i32 1
  store i8* %496, i8** %498, align 8
  br label %584

499:                                              ; preds = %454
  %500 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %501 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %500, i32 0, i32 1
  %502 = load i8*, i8** %501, align 8
  %503 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %504 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %503, i32 0, i32 0
  %505 = load i8*, i8** %504, align 8
  %506 = ptrtoint i8* %502 to i64
  %507 = ptrtoint i8* %505 to i64
  %508 = sub i64 %506, %507
  %509 = load i32*, i32** %8, align 8
  %510 = load i32, i32* %509, align 4
  %511 = sext i32 %510 to i64
  %512 = add nsw i64 %511, %508
  %513 = trunc i64 %512 to i32
  store i32 %513, i32* %509, align 4
  %514 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %515 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %516 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %517 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %516, i32 0, i32 1
  %518 = load i8*, i8** %517, align 8
  %519 = load i8*, i8** %18, align 8
  %520 = call i32 @tcp_sack_detect_reordering(%struct.tcpcb* %514, %struct.sackhole* %515, i8* %518, i8* %519)
  %521 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %522 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %523 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %522, i32 0, i32 1
  %524 = load i8*, i8** %523, align 8
  %525 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %526 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %525, i32 0, i32 3
  %527 = load i8*, i8** %526, align 8
  %528 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %529 = call %struct.sackhole* @tcp_sackhole_insert(%struct.tcpcb* %521, i8* %524, i8* %527, %struct.sackhole* %528)
  store %struct.sackhole* %529, %struct.sackhole** %10, align 8
  %530 = load %struct.sackhole*, %struct.sackhole** %10, align 8
  %531 = icmp ne %struct.sackhole* %530, null
  br i1 %531, label %532, label %583

532:                                              ; preds = %499
  %533 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %534 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %533, i32 0, i32 1
  %535 = load i8*, i8** %534, align 8
  %536 = load %struct.sackhole*, %struct.sackhole** %10, align 8
  %537 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %536, i32 0, i32 1
  %538 = load i8*, i8** %537, align 8
  %539 = call i64 @SEQ_GT(i8* %535, i8* %538)
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %563

541:                                              ; preds = %532
  %542 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %543 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %542, i32 0, i32 1
  %544 = load i8*, i8** %543, align 8
  %545 = load %struct.sackhole*, %struct.sackhole** %10, align 8
  %546 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %545, i32 0, i32 1
  store i8* %544, i8** %546, align 8
  %547 = load %struct.sackhole*, %struct.sackhole** %10, align 8
  %548 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %547, i32 0, i32 1
  %549 = load i8*, i8** %548, align 8
  %550 = load %struct.sackhole*, %struct.sackhole** %10, align 8
  %551 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %550, i32 0, i32 0
  %552 = load i8*, i8** %551, align 8
  %553 = ptrtoint i8* %549 to i64
  %554 = ptrtoint i8* %552 to i64
  %555 = sub i64 %553, %554
  %556 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %557 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %556, i32 0, i32 0
  %558 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = sext i32 %559 to i64
  %561 = add nsw i64 %560, %555
  %562 = trunc i64 %561 to i32
  store i32 %562, i32* %558, align 8
  br label %563

563:                                              ; preds = %541, %532
  %564 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %565 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %564, i32 0, i32 0
  %566 = load i8*, i8** %565, align 8
  %567 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %568 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %567, i32 0, i32 3
  store i8* %566, i8** %568, align 8
  %569 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %570 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %569, i32 0, i32 1
  %571 = load i8*, i8** %570, align 8
  %572 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %573 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %572, i32 0, i32 3
  %574 = load i8*, i8** %573, align 8
  %575 = call i8* @SEQ_MIN(i8* %571, i8* %574)
  %576 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %577 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %576, i32 0, i32 1
  store i8* %575, i8** %577, align 8
  %578 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %579 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %578, i32 0, i32 2
  %580 = load i32, i32* %579, align 8
  %581 = load %struct.sackhole*, %struct.sackhole** %10, align 8
  %582 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %581, i32 0, i32 2
  store i32 %580, i32* %582, align 8
  br label %583

583:                                              ; preds = %563, %499
  br label %584

584:                                              ; preds = %583, %463
  br label %585

585:                                              ; preds = %584, %453
  %586 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %587 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %586, i32 0, i32 1
  %588 = load i8*, i8** %587, align 8
  %589 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %590 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %589, i32 0, i32 0
  %591 = load i8*, i8** %590, align 8
  %592 = ptrtoint i8* %588 to i64
  %593 = ptrtoint i8* %591 to i64
  %594 = sub i64 %592, %593
  %595 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %596 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %595, i32 0, i32 0
  %597 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = sext i32 %598 to i64
  %600 = add nsw i64 %599, %594
  %601 = trunc i64 %600 to i32
  store i32 %601, i32* %597, align 8
  %602 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %603 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %602, i32 0, i32 0
  %604 = load i8*, i8** %603, align 8
  %605 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %606 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %605, i32 0, i32 0
  %607 = load i8*, i8** %606, align 8
  %608 = call i64 @SEQ_LEQ(i8* %604, i8* %607)
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %610, label %615

610:                                              ; preds = %585
  %611 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %612 = load i32, i32* @sackhole_head, align 4
  %613 = load i32, i32* @scblink, align 4
  %614 = call %struct.sackhole* @TAILQ_PREV(%struct.sackhole* %611, i32 %612, i32 %613)
  store %struct.sackhole* %614, %struct.sackhole** %9, align 8
  br label %618

615:                                              ; preds = %585
  %616 = load %struct.sackblk*, %struct.sackblk** %14, align 8
  %617 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %616, i32 -1
  store %struct.sackblk* %617, %struct.sackblk** %14, align 8
  br label %618

618:                                              ; preds = %615, %610
  br label %319

619:                                              ; preds = %325
  store i32 0, i32* %20, align 4
  br label %620

620:                                              ; preds = %619, %97
  %621 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %621)
  %622 = load i32, i32* %20, align 4
  switch i32 %622, label %624 [
    i32 0, label %623
    i32 1, label %623
  ]

623:                                              ; preds = %620, %620
  ret void

624:                                              ; preds = %620
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SEQ_LT(i8*, i8*) #2

declare dso_local i64 @TAILQ_EMPTY(i32*) #2

declare dso_local i32 @bcopy(i64, %struct.sackblk*, i32) #2

declare dso_local i8* @ntohl(i8*) #2

declare dso_local i64 @TCP_VALIDATE_SACK_SEQ_NUMBERS(%struct.tcpcb*, %struct.sackblk*, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i64 @SEQ_GT(i8*, i8*) #2

declare dso_local i8* @SEQ_MAX(i8*, i8*) #2

declare dso_local %struct.sackhole* @tcp_sackhole_insert(%struct.tcpcb*, i8*, i8*, %struct.sackhole*) #2

declare dso_local %struct.sackhole* @TAILQ_LAST(i32*, i32) #2

declare dso_local i64 @SEQ_GEQ(i8*, i8*) #2

declare dso_local i64 @SEQ_LEQ(i8*, i8*) #2

declare dso_local %struct.sackhole* @TAILQ_PREV(%struct.sackhole*, i32, i32) #2

declare dso_local i32 @tcp_sack_detect_reordering(%struct.tcpcb*, %struct.sackhole*, i8*, i8*) #2

declare dso_local i32 @tcp_sackhole_remove(%struct.tcpcb*, %struct.sackhole*) #2

declare dso_local i8* @SEQ_MIN(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
