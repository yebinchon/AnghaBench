; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_sack_process_dsack.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_sack_process_dsack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.tcpcb = type { i32, i64, i32, i64, i32, i32 }
%struct.tcpopt = type { i32, i64 }
%struct.tcphdr = type { i64 }
%struct.sackblk = type { i64, i64 }
%struct.tcp_rxt_seg = type { i32, i32 }

@TCPOLEN_SACK = common dso_local global i64 0, align 8
@tcpstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TF_DISABLE_DSACK = common dso_local global i32 0, align 4
@TF_SENT_TLPROBE = common dso_local global i32 0, align 4
@TCP_RXT_DSACK_FOR_TLP = common dso_local global i32 0, align 4
@tcp_dsack_ignore_hw_duplicates = common dso_local global i32 0, align 4
@TCP_RXT_SPURIOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_sack_process_dsack(%struct.tcpcb* %0, %struct.tcpopt* %1, %struct.tcphdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.tcpopt*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca %struct.sackblk, align 8
  %9 = alloca %struct.sackblk, align 8
  %10 = alloca %struct.tcp_rxt_seg*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.tcpopt* %1, %struct.tcpopt** %6, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  %11 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %12 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @bcopy(i64 %13, %struct.sackblk* %8, i32 16)
  %15 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i8* @ntohl(i64 %16)
  %18 = ptrtoint i8* %17 to i64
  %19 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @ntohl(i64 %21)
  %23 = ptrtoint i8* %22 to i64
  %24 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %26 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %46

29:                                               ; preds = %3
  %30 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %31 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TCPOLEN_SACK, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @bcopy(i64 %34, %struct.sackblk* %9, i32 16)
  %36 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %9, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i8* @ntohl(i64 %37)
  %39 = ptrtoint i8* %38 to i64
  %40 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %9, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %9, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i8* @ntohl(i64 %42)
  %44 = ptrtoint i8* %43 to i64
  %45 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %9, i32 0, i32 1
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %29, %3
  %47 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %50 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @SEQ_LT(i64 %48, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %94

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %58 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @SEQ_LEQ(i64 %56, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %94

62:                                               ; preds = %54
  %63 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %64 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %67 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @TCP_DSACK_SEQ_IN_WINDOW(%struct.tcpcb* %63, i64 %65, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %73 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %76 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @TCP_DSACK_SEQ_IN_WINDOW(%struct.tcpcb* %72, i64 %74, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %71, %62
  %81 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %82 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %82, align 8
  %85 = load i64, i64* @TCPOLEN_SACK, align 8
  %86 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %87 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, %85
  store i64 %89, i64* %87, align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 3), align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 3), align 4
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %4, align 4
  br label %278

93:                                               ; preds = %71
  br label %137

94:                                               ; preds = %54, %46
  %95 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %96 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %134

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %9, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @SEQ_LEQ(i64 %101, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %134

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %9, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @SEQ_GEQ(i64 %108, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %106
  %114 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %115 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %116 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @TCP_VALIDATE_SACK_SEQ_NUMBERS(%struct.tcpcb* %114, %struct.sackblk* %9, i64 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %113
  %121 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %122 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %122, align 8
  %125 = load i64, i64* @TCPOLEN_SACK, align 8
  %126 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %127 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, %125
  store i64 %129, i64* %127, align 8
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 3), align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 3), align 4
  %132 = load i32, i32* @TRUE, align 4
  store i32 %132, i32* %4, align 4
  br label %278

133:                                              ; preds = %113
  br label %136

134:                                              ; preds = %106, %99, %94
  %135 = load i32, i32* @FALSE, align 4
  store i32 %135, i32* %4, align 4
  br label %278

136:                                              ; preds = %133
  br label %137

137:                                              ; preds = %136, %93
  %138 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %139 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %139, align 8
  %142 = load i64, i64* @TCPOLEN_SACK, align 8
  %143 = load %struct.tcpopt*, %struct.tcpopt** %6, align 8
  %144 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, %142
  store i64 %146, i64* %144, align 8
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 2), align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 2), align 4
  %149 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %150 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %154 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @TF_DISABLE_DSACK, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %137
  %160 = load i32, i32* @TRUE, align 4
  store i32 %160, i32* %4, align 4
  br label %278

161:                                              ; preds = %137
  %162 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %163 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @TF_SENT_TLPROBE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %191

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %172 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %170, %173
  br i1 %174, label %175, label %191

175:                                              ; preds = %168
  %176 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %177 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = sub nsw i64 %180, 1
  %182 = call %struct.tcp_rxt_seg* @tcp_rxtseg_find(%struct.tcpcb* %176, i64 %178, i64 %181)
  store %struct.tcp_rxt_seg* %182, %struct.tcp_rxt_seg** %10, align 8
  %183 = icmp ne %struct.tcp_rxt_seg* %182, null
  br i1 %183, label %184, label %190

184:                                              ; preds = %175
  %185 = load i32, i32* @TCP_RXT_DSACK_FOR_TLP, align 4
  %186 = load %struct.tcp_rxt_seg*, %struct.tcp_rxt_seg** %10, align 8
  %187 = getelementptr inbounds %struct.tcp_rxt_seg, %struct.tcp_rxt_seg* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %184, %175
  br label %191

191:                                              ; preds = %190, %168, %161
  %192 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %193 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %203

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %200 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %198, %201
  br i1 %202, label %217, label %203

203:                                              ; preds = %196, %191
  %204 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %205 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @TF_SENT_TLPROBE, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %235

210:                                              ; preds = %203
  %211 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %214 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %212, %215
  br i1 %216, label %217, label %235

217:                                              ; preds = %210, %196
  %218 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %219 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %218, i32 0, i32 4
  %220 = call i64 @TAILQ_EMPTY(i32* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %217
  %223 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %224 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %227 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = call i64 @SEQ_GT(i64 %225, i64 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %222
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 1), align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 1), align 4
  %234 = load i32, i32* @TRUE, align 4
  store i32 %234, i32* %4, align 4
  br label %278

235:                                              ; preds = %222, %217, %210, %203
  %236 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %237 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = sub nsw i64 %240, 1
  %242 = call %struct.tcp_rxt_seg* @tcp_rxtseg_find(%struct.tcpcb* %236, i64 %238, i64 %241)
  store %struct.tcp_rxt_seg* %242, %struct.tcp_rxt_seg** %10, align 8
  %243 = icmp eq %struct.tcp_rxt_seg* %242, null
  br i1 %243, label %244, label %256

244:                                              ; preds = %235
  %245 = load i32, i32* @tcp_dsack_ignore_hw_duplicates, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %255, label %247

247:                                              ; preds = %244
  %248 = load i32, i32* @TF_DISABLE_DSACK, align 4
  %249 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %250 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 8
  %253 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  br label %255

255:                                              ; preds = %247, %244
  br label %275

256:                                              ; preds = %235
  %257 = load %struct.tcp_rxt_seg*, %struct.tcp_rxt_seg** %10, align 8
  %258 = getelementptr inbounds %struct.tcp_rxt_seg, %struct.tcp_rxt_seg* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 1
  br i1 %260, label %261, label %267

261:                                              ; preds = %256
  %262 = load i32, i32* @TCP_RXT_SPURIOUS, align 4
  %263 = load %struct.tcp_rxt_seg*, %struct.tcp_rxt_seg** %10, align 8
  %264 = getelementptr inbounds %struct.tcp_rxt_seg, %struct.tcp_rxt_seg* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 4
  br label %274

267:                                              ; preds = %256
  %268 = load i32, i32* @TCP_RXT_SPURIOUS, align 4
  %269 = xor i32 %268, -1
  %270 = load %struct.tcp_rxt_seg*, %struct.tcp_rxt_seg** %10, align 8
  %271 = getelementptr inbounds %struct.tcp_rxt_seg, %struct.tcp_rxt_seg* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, %269
  store i32 %273, i32* %271, align 4
  br label %274

274:                                              ; preds = %267, %261
  br label %275

275:                                              ; preds = %274, %255
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* @TRUE, align 4
  store i32 %277, i32* %4, align 4
  br label %278

278:                                              ; preds = %276, %231, %159, %134, %120, %80
  %279 = load i32, i32* %4, align 4
  ret i32 %279
}

declare dso_local i32 @bcopy(i64, %struct.sackblk*, i32) #1

declare dso_local i8* @ntohl(i64) #1

declare dso_local i64 @SEQ_LT(i64, i64) #1

declare dso_local i64 @SEQ_LEQ(i64, i64) #1

declare dso_local i64 @TCP_DSACK_SEQ_IN_WINDOW(%struct.tcpcb*, i64, i64) #1

declare dso_local i64 @SEQ_GEQ(i64, i64) #1

declare dso_local i32 @TCP_VALIDATE_SACK_SEQ_NUMBERS(%struct.tcpcb*, %struct.sackblk*, i64) #1

declare dso_local %struct.tcp_rxt_seg* @tcp_rxtseg_find(%struct.tcpcb*, i64, i64) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i64 @SEQ_GT(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
