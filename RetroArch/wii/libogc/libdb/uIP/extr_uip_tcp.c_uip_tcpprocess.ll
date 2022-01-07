; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcpprocess.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcpprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.uip_tcp_pcb = type { i32, i64, i64, i64, i32, i32, i32, i64 (i32, %struct.uip_tcp_pcb*, i64)*, i64, i64 (i32, %struct.uip_tcp_pcb*, i64)*, %struct.uip_tcpseg*, i32, i32, i32, i32, i64, i32, i32 }
%struct.uip_tcpseg = type { %struct.uip_tcpseg*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@uip_flags = common dso_local global i32 0, align 4
@UIP_TCP_RST = common dso_local global i32 0, align 4
@uip_ackno = common dso_local global i64 0, align 8
@uip_seqno = common dso_local global i64 0, align 8
@UIP_TF_RESET = common dso_local global i32 0, align 4
@uip_recv_flags = common dso_local global i32 0, align 4
@UIP_TF_ACK_DELAY = common dso_local global i32 0, align 4
@UIP_ERR_RST = common dso_local global i64 0, align 8
@UIP_ERR_OK = common dso_local global i64 0, align 8
@uip_tcp_ticks = common dso_local global i32 0, align 4
@UIP_TCP_ACK = common dso_local global i32 0, align 4
@UIP_TCP_SYN = common dso_local global i32 0, align 4
@uip_tcphdr = common dso_local global %struct.TYPE_5__* null, align 8
@uip_tcplen = common dso_local global i64 0, align 8
@uip_iphdr = common dso_local global %struct.TYPE_6__* null, align 8
@UIP_ERR_ABRT = common dso_local global i64 0, align 8
@UIP_TCP_FIN = common dso_local global i32 0, align 4
@uip_tcp_active_pcbs = common dso_local global i32 0, align 4
@UIP_TIME_WAIT = common dso_local global i8* null, align 8
@uip_tcp_tw_pcbs = common dso_local global i32 0, align 4
@UIP_CLOSED = common dso_local global i32 0, align 4
@UIP_TF_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.uip_tcp_pcb*)* @uip_tcpprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uip_tcpprocess(%struct.uip_tcp_pcb* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.uip_tcp_pcb*, align 8
  %4 = alloca %struct.uip_tcpseg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.uip_tcp_pcb* %0, %struct.uip_tcp_pcb** %3, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @uip_flags, align 4
  %8 = load i32, i32* @UIP_TCP_RST, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %1
  %12 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %13 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 128
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i64, i64* @uip_ackno, align 8
  %18 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %19 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %16
  br label %40

24:                                               ; preds = %11
  %25 = load i64, i64* @uip_seqno, align 8
  %26 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %27 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %30 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %33 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = call i64 @UIP_TCP_SEQ_BETWEEN(i64 %25, i64 %28, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %24
  br label %40

40:                                               ; preds = %39, %23
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i32, i32* @UIP_TF_RESET, align 4
  store i32 %44, i32* @uip_recv_flags, align 4
  %45 = load i32, i32* @UIP_TF_ACK_DELAY, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %48 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %47, i32 0, i32 17
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i64, i64* @UIP_ERR_RST, align 8
  store i64 %51, i64* %2, align 8
  br label %379

52:                                               ; preds = %40
  %53 = load i64, i64* @UIP_ERR_OK, align 8
  store i64 %53, i64* %2, align 8
  br label %379

54:                                               ; preds = %1
  %55 = load i32, i32* @uip_tcp_ticks, align 4
  %56 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %57 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %56, i32 0, i32 16
  store i32 %55, i32* %57, align 8
  %58 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %59 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %58, i32 0, i32 15
  store i64 0, i64* %59, align 8
  %60 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %61 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %376 [
    i32 128, label %63
    i32 129, label %171
    i32 135, label %243
    i32 133, label %243
    i32 132, label %256
    i32 131, label %309
    i32 134, label %330
    i32 130, label %357
  ]

63:                                               ; preds = %54
  %64 = load i32, i32* @uip_flags, align 4
  %65 = load i32, i32* @UIP_TCP_ACK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %148

68:                                               ; preds = %63
  %69 = load i32, i32* @uip_flags, align 4
  %70 = load i32, i32* @UIP_TCP_SYN, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %148

73:                                               ; preds = %68
  %74 = load i64, i64* @uip_ackno, align 8
  %75 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %76 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %75, i32 0, i32 10
  %77 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %76, align 8
  %78 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ntohl(i32 %81)
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = icmp eq i64 %74, %84
  br i1 %85, label %86, label %148

86:                                               ; preds = %73
  %87 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %88 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %87, i32 0, i32 14
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = load i64, i64* @uip_seqno, align 8
  %92 = add nsw i64 %91, 1
  %93 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %94 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  %95 = load i64, i64* @uip_ackno, align 8
  %96 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %97 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %96, i32 0, i32 8
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** @uip_tcphdr, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %102 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %101, i32 0, i32 13
  store i32 %100, i32* %102, align 8
  %103 = load i64, i64* @uip_seqno, align 8
  %104 = sub nsw i64 %103, 1
  %105 = trunc i64 %104 to i32
  %106 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %107 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %106, i32 0, i32 12
  store i32 %105, i32* %107, align 4
  %108 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %109 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %108, i32 0, i32 0
  store i32 133, i32* %109, align 8
  %110 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %111 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %114 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %116 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %115, i32 0, i32 11
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %116, align 8
  %119 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %120 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %119, i32 0, i32 10
  %121 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %120, align 8
  store %struct.uip_tcpseg* %121, %struct.uip_tcpseg** %4, align 8
  %122 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %4, align 8
  %123 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %122, i32 0, i32 0
  %124 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %123, align 8
  %125 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %126 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %125, i32 0, i32 10
  store %struct.uip_tcpseg* %124, %struct.uip_tcpseg** %126, align 8
  %127 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %4, align 8
  %128 = call i32 @uip_tcpseg_free(%struct.uip_tcpseg* %127)
  %129 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %130 = call i32 @uip_tcp_parseopt(%struct.uip_tcp_pcb* %129)
  %131 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %132 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %131, i32 0, i32 9
  %133 = load i64 (i32, %struct.uip_tcp_pcb*, i64)*, i64 (i32, %struct.uip_tcp_pcb*, i64)** %132, align 8
  %134 = icmp ne i64 (i32, %struct.uip_tcp_pcb*, i64)* %133, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %86
  %136 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %137 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %136, i32 0, i32 9
  %138 = load i64 (i32, %struct.uip_tcp_pcb*, i64)*, i64 (i32, %struct.uip_tcp_pcb*, i64)** %137, align 8
  %139 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %140 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %143 = load i64, i64* @UIP_ERR_OK, align 8
  %144 = call i64 %138(i32 %141, %struct.uip_tcp_pcb* %142, i64 %143)
  store i64 %144, i64* %6, align 8
  br label %145

145:                                              ; preds = %135, %86
  %146 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %147 = call i32 @uip_tcp_ack(%struct.uip_tcp_pcb* %146)
  br label %170

148:                                              ; preds = %73, %68, %63
  %149 = load i32, i32* @uip_flags, align 4
  %150 = load i32, i32* @UIP_TCP_ACK, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %169

153:                                              ; preds = %148
  %154 = load i64, i64* @uip_ackno, align 8
  %155 = load i64, i64* @uip_seqno, align 8
  %156 = load i64, i64* @uip_tcplen, align 8
  %157 = add nsw i64 %155, %156
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uip_iphdr, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uip_iphdr, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** @uip_tcphdr, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** @uip_tcphdr, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @uip_tcp_rst(i64 %154, i64 %157, i32* %159, i32* %161, i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %153, %148
  br label %170

170:                                              ; preds = %169, %145
  br label %377

171:                                              ; preds = %54
  %172 = load i32, i32* @uip_flags, align 4
  %173 = load i32, i32* @UIP_TCP_ACK, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %242

176:                                              ; preds = %171
  %177 = load i32, i32* @uip_flags, align 4
  %178 = load i32, i32* @UIP_TCP_RST, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %242, label %181

181:                                              ; preds = %176
  %182 = load i64, i64* @uip_ackno, align 8
  %183 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %184 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %183, i32 0, i32 8
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, 1
  %187 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %188 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i64 @UIP_TCP_SEQ_BETWEEN(i64 %182, i64 %186, i64 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %225

192:                                              ; preds = %181
  %193 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %194 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %193, i32 0, i32 0
  store i32 133, i32* %194, align 8
  %195 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %196 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %195, i32 0, i32 7
  %197 = load i64 (i32, %struct.uip_tcp_pcb*, i64)*, i64 (i32, %struct.uip_tcp_pcb*, i64)** %196, align 8
  %198 = icmp ne i64 (i32, %struct.uip_tcp_pcb*, i64)* %197, null
  br i1 %198, label %199, label %209

199:                                              ; preds = %192
  %200 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %201 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %200, i32 0, i32 7
  %202 = load i64 (i32, %struct.uip_tcp_pcb*, i64)*, i64 (i32, %struct.uip_tcp_pcb*, i64)** %201, align 8
  %203 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %204 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %207 = load i64, i64* @UIP_ERR_OK, align 8
  %208 = call i64 %202(i32 %205, %struct.uip_tcp_pcb* %206, i64 %207)
  store i64 %208, i64* %6, align 8
  br label %209

209:                                              ; preds = %199, %192
  %210 = load i64, i64* %6, align 8
  %211 = load i64, i64* @UIP_ERR_OK, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %215 = call i32 @uip_tcp_abort(%struct.uip_tcp_pcb* %214)
  %216 = load i64, i64* @UIP_ERR_ABRT, align 8
  store i64 %216, i64* %2, align 8
  br label %379

217:                                              ; preds = %209
  %218 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %219 = call i32 @uip_tcpreceive(%struct.uip_tcp_pcb* %218)
  %220 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %221 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %224 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %223, i32 0, i32 5
  store i32 %222, i32* %224, align 4
  br label %241

225:                                              ; preds = %181
  %226 = load i64, i64* @uip_ackno, align 8
  %227 = load i64, i64* @uip_seqno, align 8
  %228 = load i64, i64* @uip_tcplen, align 8
  %229 = add nsw i64 %227, %228
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uip_iphdr, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uip_iphdr, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** @uip_tcphdr, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** @uip_tcphdr, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @uip_tcp_rst(i64 %226, i64 %229, i32* %231, i32* %233, i32 %236, i32 %239)
  br label %241

241:                                              ; preds = %225, %217
  br label %242

242:                                              ; preds = %241, %176, %171
  br label %377

243:                                              ; preds = %54, %54
  %244 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %245 = call i32 @uip_tcpreceive(%struct.uip_tcp_pcb* %244)
  %246 = load i32, i32* @uip_flags, align 4
  %247 = load i32, i32* @UIP_TCP_FIN, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %243
  %251 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %252 = call i32 @uip_tcp_acknow(%struct.uip_tcp_pcb* %251)
  %253 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %254 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %253, i32 0, i32 0
  store i32 135, i32* %254, align 8
  br label %255

255:                                              ; preds = %250, %243
  br label %377

256:                                              ; preds = %54
  %257 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %258 = call i32 @uip_tcpreceive(%struct.uip_tcp_pcb* %257)
  %259 = load i32, i32* @uip_flags, align 4
  %260 = load i32, i32* @UIP_TCP_FIN, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %293

263:                                              ; preds = %256
  %264 = load i32, i32* @uip_flags, align 4
  %265 = load i32, i32* @UIP_TCP_ACK, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %287

268:                                              ; preds = %263
  %269 = load i64, i64* @uip_ackno, align 8
  %270 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %271 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = icmp eq i64 %269, %272
  br i1 %273, label %274, label %287

274:                                              ; preds = %268
  %275 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %276 = call i32 @uip_tcp_acknow(%struct.uip_tcp_pcb* %275)
  %277 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %278 = call i32 @uip_tcp_pcbpurge(%struct.uip_tcp_pcb* %277)
  %279 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %280 = call i32 @UIP_TCP_RMV(i32* @uip_tcp_active_pcbs, %struct.uip_tcp_pcb* %279)
  %281 = load i8*, i8** @UIP_TIME_WAIT, align 8
  %282 = ptrtoint i8* %281 to i32
  %283 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %284 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %283, i32 0, i32 0
  store i32 %282, i32* %284, align 8
  %285 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %286 = call i32 @UIP_TCP_REG(i32* @uip_tcp_tw_pcbs, %struct.uip_tcp_pcb* %285)
  br label %292

287:                                              ; preds = %268, %263
  %288 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %289 = call i32 @uip_tcp_acknow(%struct.uip_tcp_pcb* %288)
  %290 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %291 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %290, i32 0, i32 0
  store i32 134, i32* %291, align 8
  br label %292

292:                                              ; preds = %287, %274
  br label %308

293:                                              ; preds = %256
  %294 = load i32, i32* @uip_flags, align 4
  %295 = load i32, i32* @UIP_TCP_ACK, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %293
  %299 = load i64, i64* @uip_ackno, align 8
  %300 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %301 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = icmp eq i64 %299, %302
  br i1 %303, label %304, label %307

304:                                              ; preds = %298
  %305 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %306 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %305, i32 0, i32 0
  store i32 131, i32* %306, align 8
  br label %307

307:                                              ; preds = %304, %298, %293
  br label %308

308:                                              ; preds = %307, %292
  br label %377

309:                                              ; preds = %54
  %310 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %311 = call i32 @uip_tcpreceive(%struct.uip_tcp_pcb* %310)
  %312 = load i32, i32* @uip_flags, align 4
  %313 = load i32, i32* @UIP_TCP_FIN, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %329

316:                                              ; preds = %309
  %317 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %318 = call i32 @uip_tcp_acknow(%struct.uip_tcp_pcb* %317)
  %319 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %320 = call i32 @uip_tcp_pcbpurge(%struct.uip_tcp_pcb* %319)
  %321 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %322 = call i32 @UIP_TCP_RMV(i32* @uip_tcp_active_pcbs, %struct.uip_tcp_pcb* %321)
  %323 = load i8*, i8** @UIP_TIME_WAIT, align 8
  %324 = ptrtoint i8* %323 to i32
  %325 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %326 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %325, i32 0, i32 0
  store i32 %324, i32* %326, align 8
  %327 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %328 = call i32 @UIP_TCP_REG(i32* @uip_tcp_tw_pcbs, %struct.uip_tcp_pcb* %327)
  br label %329

329:                                              ; preds = %316, %309
  br label %377

330:                                              ; preds = %54
  %331 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %332 = call i32 @uip_tcpreceive(%struct.uip_tcp_pcb* %331)
  %333 = load i32, i32* @uip_flags, align 4
  %334 = load i32, i32* @UIP_TCP_ACK, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %356

337:                                              ; preds = %330
  %338 = load i64, i64* @uip_ackno, align 8
  %339 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %340 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = icmp eq i64 %338, %341
  br i1 %342, label %343, label %356

343:                                              ; preds = %337
  %344 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %345 = call i32 @uip_tcp_acknow(%struct.uip_tcp_pcb* %344)
  %346 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %347 = call i32 @uip_tcp_pcbpurge(%struct.uip_tcp_pcb* %346)
  %348 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %349 = call i32 @UIP_TCP_RMV(i32* @uip_tcp_active_pcbs, %struct.uip_tcp_pcb* %348)
  %350 = load i8*, i8** @UIP_TIME_WAIT, align 8
  %351 = ptrtoint i8* %350 to i32
  %352 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %353 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %352, i32 0, i32 0
  store i32 %351, i32* %353, align 8
  %354 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %355 = call i32 @UIP_TCP_REG(i32* @uip_tcp_tw_pcbs, %struct.uip_tcp_pcb* %354)
  br label %356

356:                                              ; preds = %343, %337, %330
  br label %377

357:                                              ; preds = %54
  %358 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %359 = call i32 @uip_tcpreceive(%struct.uip_tcp_pcb* %358)
  %360 = load i32, i32* @uip_flags, align 4
  %361 = load i32, i32* @UIP_TCP_ACK, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %375

364:                                              ; preds = %357
  %365 = load i64, i64* @uip_ackno, align 8
  %366 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %367 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = icmp eq i64 %365, %368
  br i1 %369, label %370, label %375

370:                                              ; preds = %364
  %371 = load i32, i32* @UIP_CLOSED, align 4
  %372 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %373 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %372, i32 0, i32 0
  store i32 %371, i32* %373, align 8
  %374 = load i32, i32* @UIP_TF_CLOSED, align 4
  store i32 %374, i32* @uip_recv_flags, align 4
  br label %375

375:                                              ; preds = %370, %364, %357
  br label %377

376:                                              ; preds = %54
  br label %377

377:                                              ; preds = %376, %375, %356, %329, %308, %255, %242, %170
  %378 = load i64, i64* @UIP_ERR_OK, align 8
  store i64 %378, i64* %2, align 8
  br label %379

379:                                              ; preds = %377, %213, %52, %43
  %380 = load i64, i64* %2, align 8
  ret i64 %380
}

declare dso_local i64 @UIP_TCP_SEQ_BETWEEN(i64, i64, i64) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @uip_tcpseg_free(%struct.uip_tcpseg*) #1

declare dso_local i32 @uip_tcp_parseopt(%struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcp_ack(%struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcp_rst(i64, i64, i32*, i32*, i32, i32) #1

declare dso_local i32 @uip_tcp_abort(%struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcpreceive(%struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcp_acknow(%struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcp_pcbpurge(%struct.uip_tcp_pcb*) #1

declare dso_local i32 @UIP_TCP_RMV(i32*, %struct.uip_tcp_pcb*) #1

declare dso_local i32 @UIP_TCP_REG(i32*, %struct.uip_tcp_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
