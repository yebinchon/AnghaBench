; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_dooptions.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_dooptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tcpcb = type { i32, i32 }
%struct.tcphdr = type { i32 }
%struct.tcpopt = type { i32, i32*, i32*, i32, i32, i32, i32, i32 }

@TCPOPT_EOL = common dso_local global i32 0, align 4
@TCPOPT_NOP = common dso_local global i32 0, align 4
@TCPOLEN_MAXSEG = common dso_local global i32 0, align 4
@TH_SYN = common dso_local global i32 0, align 4
@TOF_MSS = common dso_local global i32 0, align 4
@TCPOLEN_WINDOW = common dso_local global i32 0, align 4
@TOF_SCALE = common dso_local global i32 0, align 4
@TCP_MAX_WINSHIFT = common dso_local global i32 0, align 4
@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@TOF_TS = common dso_local global i32 0, align 4
@TF_REQ_TSTMP = common dso_local global i32 0, align 4
@tcp_do_rfc1323 = common dso_local global i32 0, align 4
@tcp_do_sack = common dso_local global i32 0, align 4
@TCPOLEN_SACK_PERMITTED = common dso_local global i32 0, align 4
@TOF_SACK = common dso_local global i32 0, align 4
@TCPOLEN_SACK = common dso_local global i32 0, align 4
@tcpstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TCPOLEN_FASTOPEN_REQ = common dso_local global i32 0, align 4
@TCPS_LISTEN = common dso_local global i32 0, align 4
@TOF_TFOREQ = common dso_local global i32 0, align 4
@TFO_COOKIE_LEN_MAX = common dso_local global i32 0, align 4
@TFO_COOKIE_LEN_MIN = common dso_local global i32 0, align 4
@TCPS_SYN_SENT = common dso_local global i32 0, align 4
@TOF_TFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, i32*, i32, %struct.tcphdr*, %struct.tcpopt*)* @tcp_dooptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_dooptions(%struct.tcpcb* %0, i32* %1, i32 %2, %struct.tcphdr* %3, %struct.tcpopt* %4) #0 {
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca %struct.tcpopt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tcphdr* %3, %struct.tcphdr** %9, align 8
  store %struct.tcpopt* %4, %struct.tcpopt** %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %257, %5
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %265

17:                                               ; preds = %14
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @TCPOPT_EOL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %265

25:                                               ; preds = %17
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @TCPOPT_NOP, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %13, align 4
  br label %46

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %265

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %34
  br label %265

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32, i32* %12, align 4
  switch i32 %47, label %48 [
    i32 133, label %49
    i32 128, label %78
    i32 129, label %104
    i32 130, label %153
    i32 131, label %175
    i32 134, label %198
  ]

48:                                               ; preds = %46
  br label %257

49:                                               ; preds = %46
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @TCPOLEN_MAXSEG, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %257

54:                                               ; preds = %49
  %55 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %56 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TH_SYN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %257

62:                                               ; preds = %54
  %63 = load i32*, i32** %7, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = bitcast i32* %11 to i8*
  %67 = call i32 @bcopy(i8* %65, i8* %66, i32 4)
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @NTOHS(i32 %68)
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.tcpopt*, %struct.tcpopt** %10, align 8
  %72 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @TOF_MSS, align 4
  %74 = load %struct.tcpopt*, %struct.tcpopt** %10, align 8
  %75 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %256

78:                                               ; preds = %46
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @TCPOLEN_WINDOW, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %257

83:                                               ; preds = %78
  %84 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %85 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @TH_SYN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  br label %257

91:                                               ; preds = %83
  %92 = load i32, i32* @TOF_SCALE, align 4
  %93 = load %struct.tcpopt*, %struct.tcpopt** %10, align 8
  %94 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @TCP_MAX_WINSHIFT, align 4
  %101 = call i32 @min(i32 %99, i32 %100)
  %102 = load %struct.tcpopt*, %struct.tcpopt** %10, align 8
  %103 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 4
  br label %256

104:                                              ; preds = %46
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %257

109:                                              ; preds = %104
  %110 = load i32, i32* @TOF_TS, align 4
  %111 = load %struct.tcpopt*, %struct.tcpopt** %10, align 8
  %112 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = bitcast i32* %115 to i8*
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  %118 = load %struct.tcpopt*, %struct.tcpopt** %10, align 8
  %119 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %118, i32 0, i32 5
  %120 = bitcast i32* %119 to i8*
  %121 = call i32 @bcopy(i8* %117, i8* %120, i32 4)
  %122 = load %struct.tcpopt*, %struct.tcpopt** %10, align 8
  %123 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @NTOHL(i32 %124)
  %126 = load i32*, i32** %7, align 8
  %127 = bitcast i32* %126 to i8*
  %128 = getelementptr inbounds i8, i8* %127, i64 6
  %129 = load %struct.tcpopt*, %struct.tcpopt** %10, align 8
  %130 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %129, i32 0, i32 4
  %131 = bitcast i32* %130 to i8*
  %132 = call i32 @bcopy(i8* %128, i8* %131, i32 4)
  %133 = load %struct.tcpopt*, %struct.tcpopt** %10, align 8
  %134 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @NTOHL(i32 %135)
  %137 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %138 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @TF_REQ_TSTMP, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %109
  %144 = load i32, i32* @tcp_do_rfc1323, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i32, i32* @TF_REQ_TSTMP, align 4
  %148 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %149 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %146, %143, %109
  br label %256

153:                                              ; preds = %46
  %154 = load i32, i32* @tcp_do_sack, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @TCPOLEN_SACK_PERMITTED, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156, %153
  br label %257

161:                                              ; preds = %156
  %162 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %163 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @TH_SYN, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %161
  %169 = load i32, i32* @TOF_SACK, align 4
  %170 = load %struct.tcpopt*, %struct.tcpopt** %10, align 8
  %171 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %168, %161
  br label %256

175:                                              ; preds = %46
  %176 = load i32, i32* %13, align 4
  %177 = icmp sle i32 %176, 2
  br i1 %177, label %184, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %13, align 4
  %180 = sub nsw i32 %179, 2
  %181 = load i32, i32* @TCPOLEN_SACK, align 4
  %182 = srem i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %178, %175
  br label %257

185:                                              ; preds = %178
  %186 = load i32, i32* %13, align 4
  %187 = sub nsw i32 %186, 2
  %188 = load i32, i32* @TCPOLEN_SACK, align 4
  %189 = sdiv i32 %187, %188
  %190 = load %struct.tcpopt*, %struct.tcpopt** %10, align 8
  %191 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load i32*, i32** %7, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load %struct.tcpopt*, %struct.tcpopt** %10, align 8
  %195 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %194, i32 0, i32 1
  store i32* %193, i32** %195, align 8
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  br label %256

198:                                              ; preds = %46
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* @TCPOLEN_FASTOPEN_REQ, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %215

202:                                              ; preds = %198
  %203 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %204 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @TCPS_LISTEN, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  br label %257

209:                                              ; preds = %202
  %210 = load i32, i32* @TOF_TFOREQ, align 4
  %211 = load %struct.tcpopt*, %struct.tcpopt** %10, align 8
  %212 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 8
  br label %255

215:                                              ; preds = %198
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* @TCPOLEN_FASTOPEN_REQ, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %231, label %219

219:                                              ; preds = %215
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* @TCPOLEN_FASTOPEN_REQ, align 4
  %222 = sub nsw i32 %220, %221
  %223 = load i32, i32* @TFO_COOKIE_LEN_MAX, align 4
  %224 = icmp sgt i32 %222, %223
  br i1 %224, label %231, label %225

225:                                              ; preds = %219
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* @TCPOLEN_FASTOPEN_REQ, align 4
  %228 = sub nsw i32 %226, %227
  %229 = load i32, i32* @TFO_COOKIE_LEN_MIN, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %225, %219, %215
  br label %257

232:                                              ; preds = %225
  %233 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %234 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @TCPS_LISTEN, align 4
  %237 = icmp ne i32 %235, %236
  br i1 %237, label %238, label %245

238:                                              ; preds = %232
  %239 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %240 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @TCPS_SYN_SENT, align 4
  %243 = icmp ne i32 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %238
  br label %257

245:                                              ; preds = %238, %232
  %246 = load i32, i32* @TOF_TFO, align 4
  %247 = load %struct.tcpopt*, %struct.tcpopt** %10, align 8
  %248 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 8
  %251 = load i32*, i32** %7, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 1
  %253 = load %struct.tcpopt*, %struct.tcpopt** %10, align 8
  %254 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %253, i32 0, i32 2
  store i32* %252, i32** %254, align 8
  br label %255

255:                                              ; preds = %245, %209
  br label %256

256:                                              ; preds = %255, %185, %174, %152, %91, %62
  br label %257

257:                                              ; preds = %256, %244, %231, %208, %184, %160, %108, %90, %82, %61, %53, %48
  %258 = load i32, i32* %13, align 4
  %259 = load i32, i32* %8, align 4
  %260 = sub nsw i32 %259, %258
  store i32 %260, i32* %8, align 4
  %261 = load i32, i32* %13, align 4
  %262 = load i32*, i32** %7, align 8
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  store i32* %264, i32** %7, align 8
  br label %14

265:                                              ; preds = %44, %33, %24, %14
  ret void
}

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @NTOHS(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @NTOHL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
