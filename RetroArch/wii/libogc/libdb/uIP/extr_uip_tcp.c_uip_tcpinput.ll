; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcpinput.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcpinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.uip_tcp_hdr = type { i64, i64, i64, i8*, i8* }
%struct.uip_tcp_pcb = type { i64, i64, i64, i64, i64 (i32, %struct.uip_tcp_pcb*, i64)*, i64 (i32, %struct.uip_tcp_pcb*, i32*, i64)*, i32, i32 (i32, i32)*, i32, i32, %struct.uip_tcp_pcb* }
%struct.TYPE_5__ = type { %struct.uip_tcp_pcb_listen* }
%struct.uip_tcp_pcb_listen = type { i64, %struct.uip_tcp_pcb_listen*, i32 }
%struct.TYPE_7__ = type { i32, %struct.uip_pbuf*, %struct.uip_tcp_hdr*, %struct.TYPE_6__*, i32* }
%struct.uip_pbuf = type { i32, %struct.TYPE_6__* }
%struct.uip_netif = type { i32 }

@uip_iphdr = common dso_local global %struct.TYPE_6__* null, align 8
@uip_tcphdr = common dso_local global %struct.uip_tcp_hdr* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"uip_tcpinput: short packet discarded.\00", align 1
@UIP_PROTO_TCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"uip_tcpinput: packet discarded due to failing checksum.\00", align 1
@uip_seqno = common dso_local global i8* null, align 8
@uip_ackno = common dso_local global i8* null, align 8
@UIP_TCP_FLAGS = common dso_local global i32 0, align 4
@uip_flags = common dso_local global i32 0, align 4
@UIP_TCP_FIN = common dso_local global i32 0, align 4
@UIP_TCP_SYN = common dso_local global i32 0, align 4
@uip_tcplen = common dso_local global i32 0, align 4
@uip_tcp_active_pcbs = common dso_local global %struct.uip_tcp_pcb* null, align 8
@UIP_CLOSED = common dso_local global i64 0, align 8
@UIP_TIME_WAIT = common dso_local global i64 0, align 8
@UIP_LISTEN = common dso_local global i64 0, align 8
@uip_tcp_tw_pcbs = common dso_local global %struct.uip_tcp_pcb* null, align 8
@uip_tcp_listen_pcbs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@uip_inseg = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@uip_recv_data = common dso_local global i32* null, align 8
@uip_recv_flags = common dso_local global i32 0, align 4
@uip_tcp_input_pcb = common dso_local global %struct.uip_tcp_pcb* null, align 8
@UIP_ERR_ABRT = common dso_local global i64 0, align 8
@UIP_TF_RESET = common dso_local global i32 0, align 4
@UIP_ERR_RST = common dso_local global i32 0, align 4
@uip_tcp_pcbs = common dso_local global i32 0, align 4
@UIP_TF_CLOSED = common dso_local global i32 0, align 4
@UIP_ERR_OK = common dso_local global i64 0, align 8
@UIP_TCP_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uip_tcpinput(%struct.uip_pbuf* %0, %struct.uip_netif* %1) #0 {
  %3 = alloca %struct.uip_pbuf*, align 8
  %4 = alloca %struct.uip_netif*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uip_tcp_pcb*, align 8
  %8 = alloca %struct.uip_tcp_pcb*, align 8
  %9 = alloca %struct.uip_tcp_pcb_listen*, align 8
  store %struct.uip_pbuf* %0, %struct.uip_pbuf** %3, align 8
  store %struct.uip_netif* %1, %struct.uip_netif** %4, align 8
  %10 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %11 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** @uip_iphdr, align 8
  %13 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %14 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = bitcast %struct.TYPE_6__* %15 to i32*
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uip_iphdr, align 8
  %18 = call i32 @UIP_IPH_HL(%struct.TYPE_6__* %17)
  %19 = mul nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = bitcast i32* %21 to %struct.uip_tcp_hdr*
  store %struct.uip_tcp_hdr* %22, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %23 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uip_iphdr, align 8
  %25 = call i32 @UIP_IPH_HL(%struct.TYPE_6__* %24)
  %26 = mul nsw i32 %25, 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @uip_pbuf_header(%struct.uip_pbuf* %23, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %2
  %31 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %32 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 40
  br i1 %35, label %36, label %40

36:                                               ; preds = %30, %2
  %37 = call i32 @UIP_LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %39 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %38)
  br label %446

40:                                               ; preds = %30
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uip_iphdr, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.uip_netif*, %struct.uip_netif** %4, align 8
  %44 = call i64 @ip_addr_isbroadcast(i32* %42, %struct.uip_netif* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uip_iphdr, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = call i64 @ip_addr_ismulticast(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %40
  %52 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %53 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %52)
  br label %446

54:                                               ; preds = %46
  %55 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uip_iphdr, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uip_iphdr, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* @UIP_PROTO_TCP, align 4
  %61 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %62 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @uip_chksum_pseudo(%struct.uip_pbuf* %55, i32* %57, i32* %59, i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = call i32 @UIP_LOG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %69 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %68)
  br label %446

70:                                               ; preds = %54
  %71 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %72 = call i32 @UIP_TCPH_HDRLEN(%struct.uip_tcp_hdr* %71)
  store i32 %72, i32* %6, align 4
  %73 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = mul nsw i32 %74, 4
  %76 = sub nsw i32 0, %75
  %77 = call i32 @uip_pbuf_header(%struct.uip_pbuf* %73, i32 %76)
  %78 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %79 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i8* @ntohs(i64 %80)
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %84 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %86 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i8* @ntohs(i64 %87)
  %89 = ptrtoint i8* %88 to i64
  %90 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %91 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %93 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %92, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @ntohl(i8* %94)
  %96 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %97 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  store i8* %95, i8** @uip_seqno, align 8
  %98 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %99 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @ntohl(i8* %100)
  %102 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %103 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  store i8* %101, i8** @uip_ackno, align 8
  %104 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %105 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i8* @ntohs(i64 %106)
  %108 = ptrtoint i8* %107 to i64
  %109 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %110 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  %111 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %112 = call i32 @UIP_TCPH_FLAGS(%struct.uip_tcp_hdr* %111)
  %113 = load i32, i32* @UIP_TCP_FLAGS, align 4
  %114 = and i32 %112, %113
  store i32 %114, i32* @uip_flags, align 4
  %115 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %116 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @uip_flags, align 4
  %119 = load i32, i32* @UIP_TCP_FIN, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %70
  %123 = load i32, i32* @uip_flags, align 4
  %124 = load i32, i32* @UIP_TCP_SYN, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br label %127

127:                                              ; preds = %122, %70
  %128 = phi i1 [ true, %70 ], [ %126, %122 ]
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 1, i32 0
  %131 = add nsw i32 %117, %130
  store i32 %131, i32* @uip_tcplen, align 4
  store %struct.uip_tcp_pcb* null, %struct.uip_tcp_pcb** %8, align 8
  %132 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** @uip_tcp_active_pcbs, align 8
  store %struct.uip_tcp_pcb* %132, %struct.uip_tcp_pcb** %7, align 8
  br label %133

133:                                              ; preds = %201, %127
  %134 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %135 = icmp ne %struct.uip_tcp_pcb* %134, null
  br i1 %135, label %136, label %205

136:                                              ; preds = %133
  %137 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %138 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @UIP_CLOSED, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %200

142:                                              ; preds = %136
  %143 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %144 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @UIP_TIME_WAIT, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %200

148:                                              ; preds = %142
  %149 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %150 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @UIP_LISTEN, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %200

154:                                              ; preds = %148
  %155 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %156 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %159 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %157, %160
  br i1 %161, label %162, label %198

162:                                              ; preds = %154
  %163 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %164 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %167 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %165, %168
  br i1 %169, label %170, label %198

170:                                              ; preds = %162
  %171 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %172 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %171, i32 0, i32 9
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uip_iphdr, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = call i64 @ip_addr_cmp(i32* %172, i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %198

177:                                              ; preds = %170
  %178 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %179 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %178, i32 0, i32 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uip_iphdr, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = call i64 @ip_addr_cmp(i32* %179, i32* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %198

184:                                              ; preds = %177
  %185 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %8, align 8
  %186 = icmp ne %struct.uip_tcp_pcb* %185, null
  br i1 %186, label %187, label %197

187:                                              ; preds = %184
  %188 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %189 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %188, i32 0, i32 10
  %190 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %189, align 8
  %191 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %8, align 8
  %192 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %191, i32 0, i32 10
  store %struct.uip_tcp_pcb* %190, %struct.uip_tcp_pcb** %192, align 8
  %193 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** @uip_tcp_active_pcbs, align 8
  %194 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %195 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %194, i32 0, i32 10
  store %struct.uip_tcp_pcb* %193, %struct.uip_tcp_pcb** %195, align 8
  %196 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  store %struct.uip_tcp_pcb* %196, %struct.uip_tcp_pcb** @uip_tcp_active_pcbs, align 8
  br label %197

197:                                              ; preds = %187, %184
  br label %205

198:                                              ; preds = %177, %170, %162, %154
  %199 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  store %struct.uip_tcp_pcb* %199, %struct.uip_tcp_pcb** %8, align 8
  br label %200

200:                                              ; preds = %198, %148, %142, %136
  br label %201

201:                                              ; preds = %200
  %202 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %203 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %202, i32 0, i32 10
  %204 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %203, align 8
  store %struct.uip_tcp_pcb* %204, %struct.uip_tcp_pcb** %7, align 8
  br label %133

205:                                              ; preds = %197, %133
  %206 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %207 = icmp eq %struct.uip_tcp_pcb* %206, null
  br i1 %207, label %208, label %307

208:                                              ; preds = %205
  %209 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** @uip_tcp_tw_pcbs, align 8
  store %struct.uip_tcp_pcb* %209, %struct.uip_tcp_pcb** %7, align 8
  br label %210

210:                                              ; preds = %253, %208
  %211 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %212 = icmp ne %struct.uip_tcp_pcb* %211, null
  br i1 %212, label %213, label %257

213:                                              ; preds = %210
  %214 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %215 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @UIP_TIME_WAIT, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %252

219:                                              ; preds = %213
  %220 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %221 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %224 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %222, %225
  br i1 %226, label %227, label %252

227:                                              ; preds = %219
  %228 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %229 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %232 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp eq i64 %230, %233
  br i1 %234, label %235, label %252

235:                                              ; preds = %227
  %236 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %237 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %236, i32 0, i32 9
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uip_iphdr, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = call i64 @ip_addr_cmp(i32* %237, i32* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %252

242:                                              ; preds = %235
  %243 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %244 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %243, i32 0, i32 8
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uip_iphdr, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  %247 = call i64 @ip_addr_cmp(i32* %244, i32* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %242
  %250 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %251 = call i32 @uip_tcpinput_timewait(%struct.uip_tcp_pcb* %250)
  br label %446

252:                                              ; preds = %242, %235, %227, %219, %213
  br label %253

253:                                              ; preds = %252
  %254 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %255 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %254, i32 0, i32 10
  %256 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %255, align 8
  store %struct.uip_tcp_pcb* %256, %struct.uip_tcp_pcb** %7, align 8
  br label %210

257:                                              ; preds = %210
  store %struct.uip_tcp_pcb* null, %struct.uip_tcp_pcb** %8, align 8
  %258 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uip_tcp_listen_pcbs, i32 0, i32 0), align 8
  store %struct.uip_tcp_pcb_listen* %258, %struct.uip_tcp_pcb_listen** %9, align 8
  br label %259

259:                                              ; preds = %302, %257
  %260 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %9, align 8
  %261 = icmp ne %struct.uip_tcp_pcb_listen* %260, null
  br i1 %261, label %262, label %306

262:                                              ; preds = %259
  %263 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %9, align 8
  %264 = getelementptr inbounds %struct.uip_tcp_pcb_listen, %struct.uip_tcp_pcb_listen* %263, i32 0, i32 2
  %265 = call i64 @ip_addr_isany(i32* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %274, label %267

267:                                              ; preds = %262
  %268 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %9, align 8
  %269 = getelementptr inbounds %struct.uip_tcp_pcb_listen, %struct.uip_tcp_pcb_listen* %268, i32 0, i32 2
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uip_iphdr, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 1
  %272 = call i64 @ip_addr_cmp(i32* %269, i32* %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %299

274:                                              ; preds = %267, %262
  %275 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %9, align 8
  %276 = getelementptr inbounds %struct.uip_tcp_pcb_listen, %struct.uip_tcp_pcb_listen* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %279 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = icmp eq i64 %277, %280
  br i1 %281, label %282, label %299

282:                                              ; preds = %274
  %283 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %8, align 8
  %284 = icmp ne %struct.uip_tcp_pcb* %283, null
  br i1 %284, label %285, label %296

285:                                              ; preds = %282
  %286 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %9, align 8
  %287 = getelementptr inbounds %struct.uip_tcp_pcb_listen, %struct.uip_tcp_pcb_listen* %286, i32 0, i32 1
  %288 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %287, align 8
  %289 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %8, align 8
  %290 = bitcast %struct.uip_tcp_pcb* %289 to %struct.uip_tcp_pcb_listen*
  %291 = getelementptr inbounds %struct.uip_tcp_pcb_listen, %struct.uip_tcp_pcb_listen* %290, i32 0, i32 1
  store %struct.uip_tcp_pcb_listen* %288, %struct.uip_tcp_pcb_listen** %291, align 8
  %292 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uip_tcp_listen_pcbs, i32 0, i32 0), align 8
  %293 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %9, align 8
  %294 = getelementptr inbounds %struct.uip_tcp_pcb_listen, %struct.uip_tcp_pcb_listen* %293, i32 0, i32 1
  store %struct.uip_tcp_pcb_listen* %292, %struct.uip_tcp_pcb_listen** %294, align 8
  %295 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %9, align 8
  store %struct.uip_tcp_pcb_listen* %295, %struct.uip_tcp_pcb_listen** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uip_tcp_listen_pcbs, i32 0, i32 0), align 8
  br label %296

296:                                              ; preds = %285, %282
  %297 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %9, align 8
  %298 = call i32 @uip_tcpinput_listen(%struct.uip_tcp_pcb_listen* %297)
  br label %446

299:                                              ; preds = %274, %267
  %300 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %9, align 8
  %301 = bitcast %struct.uip_tcp_pcb_listen* %300 to %struct.uip_tcp_pcb*
  store %struct.uip_tcp_pcb* %301, %struct.uip_tcp_pcb** %8, align 8
  br label %302

302:                                              ; preds = %299
  %303 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %9, align 8
  %304 = getelementptr inbounds %struct.uip_tcp_pcb_listen, %struct.uip_tcp_pcb_listen* %303, i32 0, i32 1
  %305 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %304, align 8
  store %struct.uip_tcp_pcb_listen* %305, %struct.uip_tcp_pcb_listen** %9, align 8
  br label %259

306:                                              ; preds = %259
  br label %307

307:                                              ; preds = %306, %205
  %308 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %309 = icmp ne %struct.uip_tcp_pcb* %308, null
  br i1 %309, label %310, label %420

310:                                              ; preds = %307
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uip_inseg, i32 0, i32 4), align 8
  %311 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %312 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  store i32 %313, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uip_inseg, i32 0, i32 0), align 8
  %314 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %315 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %314, i32 0, i32 1
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %315, align 8
  store %struct.TYPE_6__* %316, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uip_inseg, i32 0, i32 3), align 8
  %317 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  store %struct.uip_pbuf* %317, %struct.uip_pbuf** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uip_inseg, i32 0, i32 1), align 8
  %318 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  store %struct.uip_tcp_hdr* %318, %struct.uip_tcp_hdr** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uip_inseg, i32 0, i32 2), align 8
  store i32* null, i32** @uip_recv_data, align 8
  store i32 0, i32* @uip_recv_flags, align 4
  %319 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  store %struct.uip_tcp_pcb* %319, %struct.uip_tcp_pcb** @uip_tcp_input_pcb, align 8
  %320 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %321 = call i64 @uip_tcpprocess(%struct.uip_tcp_pcb* %320)
  store i64 %321, i64* %5, align 8
  store %struct.uip_tcp_pcb* null, %struct.uip_tcp_pcb** @uip_tcp_input_pcb, align 8
  %322 = load i64, i64* %5, align 8
  %323 = load i64, i64* @UIP_ERR_ABRT, align 8
  %324 = icmp ne i64 %322, %323
  br i1 %324, label %325, label %413

325:                                              ; preds = %310
  %326 = load i32, i32* @uip_recv_flags, align 4
  %327 = load i32, i32* @UIP_TF_RESET, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %349

330:                                              ; preds = %325
  %331 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %332 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %331, i32 0, i32 7
  %333 = load i32 (i32, i32)*, i32 (i32, i32)** %332, align 8
  %334 = icmp ne i32 (i32, i32)* %333, null
  br i1 %334, label %335, label %344

335:                                              ; preds = %330
  %336 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %337 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %336, i32 0, i32 7
  %338 = load i32 (i32, i32)*, i32 (i32, i32)** %337, align 8
  %339 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %340 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %339, i32 0, i32 6
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @UIP_ERR_RST, align 4
  %343 = call i32 %338(i32 %341, i32 %342)
  br label %344

344:                                              ; preds = %335, %330
  %345 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %346 = call i32 @uip_tcp_pcbremove(%struct.uip_tcp_pcb** @uip_tcp_active_pcbs, %struct.uip_tcp_pcb* %345)
  %347 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %348 = call i32 @memb_free(i32* @uip_tcp_pcbs, %struct.uip_tcp_pcb* %347)
  br label %412

349:                                              ; preds = %325
  %350 = load i32, i32* @uip_recv_flags, align 4
  %351 = load i32, i32* @UIP_TF_CLOSED, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %359

354:                                              ; preds = %349
  %355 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %356 = call i32 @uip_tcp_pcbremove(%struct.uip_tcp_pcb** @uip_tcp_active_pcbs, %struct.uip_tcp_pcb* %355)
  %357 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %358 = call i32 @memb_free(i32* @uip_tcp_pcbs, %struct.uip_tcp_pcb* %357)
  br label %411

359:                                              ; preds = %349
  %360 = load i64, i64* @UIP_ERR_OK, align 8
  store i64 %360, i64* %5, align 8
  %361 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %362 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %361, i32 0, i32 3
  %363 = load i64, i64* %362, align 8
  %364 = icmp sgt i64 %363, 0
  br i1 %364, label %365, label %383

365:                                              ; preds = %359
  %366 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %367 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %366, i32 0, i32 4
  %368 = load i64 (i32, %struct.uip_tcp_pcb*, i64)*, i64 (i32, %struct.uip_tcp_pcb*, i64)** %367, align 8
  %369 = icmp ne i64 (i32, %struct.uip_tcp_pcb*, i64)* %368, null
  br i1 %369, label %370, label %382

370:                                              ; preds = %365
  %371 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %372 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %371, i32 0, i32 4
  %373 = load i64 (i32, %struct.uip_tcp_pcb*, i64)*, i64 (i32, %struct.uip_tcp_pcb*, i64)** %372, align 8
  %374 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %375 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %374, i32 0, i32 6
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %378 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %379 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %378, i32 0, i32 3
  %380 = load i64, i64* %379, align 8
  %381 = call i64 %373(i32 %376, %struct.uip_tcp_pcb* %377, i64 %380)
  store i64 %381, i64* %5, align 8
  br label %382

382:                                              ; preds = %370, %365
  br label %383

383:                                              ; preds = %382, %359
  %384 = load i32*, i32** @uip_recv_data, align 8
  %385 = icmp ne i32* %384, null
  br i1 %385, label %386, label %403

386:                                              ; preds = %383
  %387 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %388 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %387, i32 0, i32 5
  %389 = load i64 (i32, %struct.uip_tcp_pcb*, i32*, i64)*, i64 (i32, %struct.uip_tcp_pcb*, i32*, i64)** %388, align 8
  %390 = icmp ne i64 (i32, %struct.uip_tcp_pcb*, i32*, i64)* %389, null
  br i1 %390, label %391, label %402

391:                                              ; preds = %386
  %392 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %393 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %392, i32 0, i32 5
  %394 = load i64 (i32, %struct.uip_tcp_pcb*, i32*, i64)*, i64 (i32, %struct.uip_tcp_pcb*, i32*, i64)** %393, align 8
  %395 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %396 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %395, i32 0, i32 6
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %399 = load i32*, i32** @uip_recv_data, align 8
  %400 = load i64, i64* @UIP_ERR_OK, align 8
  %401 = call i64 %394(i32 %397, %struct.uip_tcp_pcb* %398, i32* %399, i64 %400)
  store i64 %401, i64* %5, align 8
  br label %402

402:                                              ; preds = %391, %386
  br label %403

403:                                              ; preds = %402, %383
  %404 = load i64, i64* %5, align 8
  %405 = load i64, i64* @UIP_ERR_OK, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %410

407:                                              ; preds = %403
  %408 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %409 = call i32 @uip_tcpoutput(%struct.uip_tcp_pcb* %408)
  br label %410

410:                                              ; preds = %407, %403
  br label %411

411:                                              ; preds = %410, %354
  br label %412

412:                                              ; preds = %411, %344
  br label %413

413:                                              ; preds = %412, %310
  %414 = load %struct.uip_pbuf*, %struct.uip_pbuf** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uip_inseg, i32 0, i32 1), align 8
  %415 = icmp ne %struct.uip_pbuf* %414, null
  br i1 %415, label %416, label %419

416:                                              ; preds = %413
  %417 = load %struct.uip_pbuf*, %struct.uip_pbuf** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uip_inseg, i32 0, i32 1), align 8
  %418 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %417)
  br label %419

419:                                              ; preds = %416, %413
  br label %446

420:                                              ; preds = %307
  %421 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %422 = call i32 @UIP_TCPH_FLAGS(%struct.uip_tcp_hdr* %421)
  %423 = load i32, i32* @UIP_TCP_RST, align 4
  %424 = and i32 %422, %423
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %443, label %426

426:                                              ; preds = %420
  %427 = load i8*, i8** @uip_ackno, align 8
  %428 = load i8*, i8** @uip_seqno, align 8
  %429 = load i32, i32* @uip_tcplen, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr i8, i8* %428, i64 %430
  %432 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uip_iphdr, align 8
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %432, i32 0, i32 1
  %434 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uip_iphdr, align 8
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 0
  %436 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %437 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** @uip_tcphdr, align 8
  %440 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = call i32 @uip_tcp_rst(i8* %427, i8* %431, i32* %433, i32* %435, i64 %438, i64 %441)
  br label %443

443:                                              ; preds = %426, %420
  %444 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %445 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %444)
  br label %446

446:                                              ; preds = %36, %51, %66, %249, %296, %443, %419
  ret void
}

declare dso_local i32 @UIP_IPH_HL(%struct.TYPE_6__*) #1

declare dso_local i32 @uip_pbuf_header(%struct.uip_pbuf*, i32) #1

declare dso_local i32 @UIP_LOG(i8*) #1

declare dso_local i32 @uip_pbuf_free(%struct.uip_pbuf*) #1

declare dso_local i64 @ip_addr_isbroadcast(i32*, %struct.uip_netif*) #1

declare dso_local i64 @ip_addr_ismulticast(i32*) #1

declare dso_local i64 @uip_chksum_pseudo(%struct.uip_pbuf*, i32*, i32*, i32, i32) #1

declare dso_local i32 @UIP_TCPH_HDRLEN(%struct.uip_tcp_hdr*) #1

declare dso_local i8* @ntohs(i64) #1

declare dso_local i8* @ntohl(i8*) #1

declare dso_local i32 @UIP_TCPH_FLAGS(%struct.uip_tcp_hdr*) #1

declare dso_local i64 @ip_addr_cmp(i32*, i32*) #1

declare dso_local i32 @uip_tcpinput_timewait(%struct.uip_tcp_pcb*) #1

declare dso_local i64 @ip_addr_isany(i32*) #1

declare dso_local i32 @uip_tcpinput_listen(%struct.uip_tcp_pcb_listen*) #1

declare dso_local i64 @uip_tcpprocess(%struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcp_pcbremove(%struct.uip_tcp_pcb**, %struct.uip_tcp_pcb*) #1

declare dso_local i32 @memb_free(i32*, %struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcpoutput(%struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcp_rst(i8*, i8*, i32*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
