; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcpoutput.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcpoutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_tcp_pcb = type { i32, i64, i64, i64, i64, i64, %struct.uip_tcpseg*, %struct.uip_tcpseg*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uip_tcpseg = type { i64, %struct.uip_tcpseg*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.uip_pbuf = type { i32, %struct.uip_tcp_hdr* }
%struct.uip_tcp_hdr = type { i32, i64, i8*, i8*, i8*, i8*, i8* }

@uip_tcp_input_pcb = common dso_local global %struct.uip_tcp_pcb* null, align 8
@UIP_TF_ACK_NOW = common dso_local global i32 0, align 4
@UIP_PBUF_IP = common dso_local global i32 0, align 4
@UIP_TCP_HLEN = common dso_local global i32 0, align 4
@UIP_PBUF_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"uip_tcpoutput: (ACK) could not allocate pbuf.\00", align 1
@UIP_ERR_BUF = common dso_local global i32 0, align 4
@UIP_TF_ACK_DELAY = common dso_local global i32 0, align 4
@UIP_TCP_ACK = common dso_local global i32 0, align 4
@UIP_PROTO_TCP = common dso_local global i32 0, align 4
@UIP_ERR_OK = common dso_local global i32 0, align 4
@UIP_SYN_SENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uip_tcpoutput(%struct.uip_tcp_pcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uip_tcp_pcb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uip_pbuf*, align 8
  %6 = alloca %struct.uip_tcp_hdr*, align 8
  %7 = alloca %struct.uip_tcpseg*, align 8
  %8 = alloca %struct.uip_tcpseg*, align 8
  store %struct.uip_tcp_pcb* %0, %struct.uip_tcp_pcb** %3, align 8
  %9 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** @uip_tcp_input_pcb, align 8
  %10 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %11 = icmp eq %struct.uip_tcp_pcb* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %292

13:                                               ; preds = %1
  %14 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %15 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %14, i32 0, i32 16
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %18 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %17, i32 0, i32 15
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @UIP_MIN(i32 %16, i32 %19)
  store i64 %20, i64* %4, align 8
  %21 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %22 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %21, i32 0, i32 6
  %23 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %22, align 8
  store %struct.uip_tcpseg* %23, %struct.uip_tcpseg** %7, align 8
  %24 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %25 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %24, i32 0, i32 7
  %26 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %25, align 8
  store %struct.uip_tcpseg* %26, %struct.uip_tcpseg** %8, align 8
  %27 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %8, align 8
  %28 = icmp ne %struct.uip_tcpseg* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %36, %29
  %31 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %8, align 8
  %32 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %31, i32 0, i32 1
  %33 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %32, align 8
  %34 = icmp ne %struct.uip_tcpseg* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %8, align 8
  %38 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %37, i32 0, i32 1
  %39 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %38, align 8
  store %struct.uip_tcpseg* %39, %struct.uip_tcpseg** %8, align 8
  br label %30

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %13
  %42 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %43 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @UIP_TF_ACK_NOW, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %157

48:                                               ; preds = %41
  %49 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %50 = icmp eq %struct.uip_tcpseg* %49, null
  br i1 %50, label %68, label %51

51:                                               ; preds = %48
  %52 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %53 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @ntohl(i32 %56)
  %58 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %59 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %63 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load i64, i64* %4, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %157

68:                                               ; preds = %51, %48
  %69 = load i32, i32* @UIP_PBUF_IP, align 4
  %70 = load i32, i32* @UIP_TCP_HLEN, align 4
  %71 = load i32, i32* @UIP_PBUF_RAM, align 4
  %72 = call %struct.uip_pbuf* @uip_pbuf_alloc(i32 %69, i32 %70, i32 %71)
  store %struct.uip_pbuf* %72, %struct.uip_pbuf** %5, align 8
  %73 = load %struct.uip_pbuf*, %struct.uip_pbuf** %5, align 8
  %74 = icmp eq %struct.uip_pbuf* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @UIP_ERR_BUF, align 4
  store i32 %77, i32* %2, align 4
  br label %292

78:                                               ; preds = %68
  %79 = load i32, i32* @UIP_TF_ACK_DELAY, align 4
  %80 = load i32, i32* @UIP_TF_ACK_NOW, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %84 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.uip_pbuf*, %struct.uip_pbuf** %5, align 8
  %88 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %87, i32 0, i32 1
  %89 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %88, align 8
  store %struct.uip_tcp_hdr* %89, %struct.uip_tcp_hdr** %6, align 8
  %90 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %91 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %90, i32 0, i32 14
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @htons(i32 %92)
  %94 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %6, align 8
  %95 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %94, i32 0, i32 6
  store i8* %93, i8** %95, align 8
  %96 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %97 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %96, i32 0, i32 13
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @htons(i32 %98)
  %100 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %6, align 8
  %101 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %103 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i8* @htonl(i64 %104)
  %106 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %6, align 8
  %107 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %109 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = call i8* @htonl(i64 %110)
  %112 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %6, align 8
  %113 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  %114 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %6, align 8
  %115 = load i32, i32* @UIP_TCP_ACK, align 4
  %116 = call i32 @UIP_TCPH_FLAGS_SET(%struct.uip_tcp_hdr* %114, i32 %115)
  %117 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %118 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %117, i32 0, i32 12
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @htons(i32 %119)
  %121 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %6, align 8
  %122 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %6, align 8
  %124 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  %125 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %6, align 8
  %126 = call i32 @UIP_TCPH_HDRLEN_SET(%struct.uip_tcp_hdr* %125, i32 5)
  %127 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %6, align 8
  %128 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load %struct.uip_pbuf*, %struct.uip_pbuf** %5, align 8
  %130 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %131 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %130, i32 0, i32 11
  %132 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %133 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %132, i32 0, i32 10
  %134 = load i32, i32* @UIP_PROTO_TCP, align 4
  %135 = load %struct.uip_pbuf*, %struct.uip_pbuf** %5, align 8
  %136 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @uip_chksum_pseudo(%struct.uip_pbuf* %129, i32* %131, i32* %133, i32 %134, i32 %137)
  %139 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %6, align 8
  %140 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.uip_pbuf*, %struct.uip_pbuf** %5, align 8
  %142 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %143 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %142, i32 0, i32 11
  %144 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %145 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %144, i32 0, i32 10
  %146 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %147 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %146, i32 0, i32 9
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %150 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @UIP_PROTO_TCP, align 4
  %153 = call i32 @uip_ipoutput(%struct.uip_pbuf* %141, i32* %143, i32* %145, i32 %148, i32 %151, i32 %152)
  %154 = load %struct.uip_pbuf*, %struct.uip_pbuf** %5, align 8
  %155 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %154)
  %156 = load i32, i32* @UIP_ERR_OK, align 4
  store i32 %156, i32* %2, align 4
  br label %292

157:                                              ; preds = %51, %41
  br label %158

158:                                              ; preds = %286, %157
  %159 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %160 = icmp ne %struct.uip_tcpseg* %159, null
  br i1 %160, label %161, label %178

161:                                              ; preds = %158
  %162 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %163 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %162, i32 0, i32 2
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @ntohl(i32 %166)
  %168 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %169 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = sub nsw i64 %167, %170
  %172 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %173 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %171, %174
  %176 = load i64, i64* %4, align 8
  %177 = icmp sle i64 %175, %176
  br label %178

178:                                              ; preds = %161, %158
  %179 = phi i1 [ false, %158 ], [ %177, %161 ]
  br i1 %179, label %180, label %290

180:                                              ; preds = %178
  %181 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %182 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %181, i32 0, i32 1
  %183 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %182, align 8
  %184 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %185 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %184, i32 0, i32 6
  store %struct.uip_tcpseg* %183, %struct.uip_tcpseg** %185, align 8
  %186 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %187 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @UIP_SYN_SENT, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %205

191:                                              ; preds = %180
  %192 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %193 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %192, i32 0, i32 2
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = load i32, i32* @UIP_TCP_ACK, align 4
  %196 = call i32 @UIP_TCPH_SET_FLAG(%struct.TYPE_2__* %194, i32 %195)
  %197 = load i32, i32* @UIP_TF_ACK_DELAY, align 4
  %198 = load i32, i32* @UIP_TF_ACK_NOW, align 4
  %199 = or i32 %197, %198
  %200 = xor i32 %199, -1
  %201 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %202 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = and i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %191, %180
  %206 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %207 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %208 = call i32 @uip_tcpoutput_segments(%struct.uip_tcpseg* %206, %struct.uip_tcp_pcb* %207)
  %209 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %210 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %209, i32 0, i32 2
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i64 @ntohl(i32 %213)
  %215 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %216 = call i64 @UIP_TCP_TCPLEN(%struct.uip_tcpseg* %215)
  %217 = add nsw i64 %214, %216
  %218 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %219 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %218, i32 0, i32 2
  store i64 %217, i64* %219, align 8
  %220 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %221 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %220, i32 0, i32 5
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %224 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = call i64 @UIP_TCP_SEQ_LT(i64 %222, i64 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %205
  %229 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %230 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %233 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %232, i32 0, i32 5
  store i64 %231, i64* %233, align 8
  br label %234

234:                                              ; preds = %228, %205
  %235 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %236 = call i64 @UIP_TCP_TCPLEN(%struct.uip_tcpseg* %235)
  %237 = icmp sgt i64 %236, 0
  br i1 %237, label %238, label %283

238:                                              ; preds = %234
  %239 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %240 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %239, i32 0, i32 1
  store %struct.uip_tcpseg* null, %struct.uip_tcpseg** %240, align 8
  %241 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %242 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %241, i32 0, i32 7
  %243 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %242, align 8
  %244 = icmp eq %struct.uip_tcpseg* %243, null
  br i1 %244, label %245, label %250

245:                                              ; preds = %238
  %246 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %247 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %248 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %247, i32 0, i32 7
  store %struct.uip_tcpseg* %246, %struct.uip_tcpseg** %248, align 8
  %249 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  store %struct.uip_tcpseg* %249, %struct.uip_tcpseg** %8, align 8
  br label %282

250:                                              ; preds = %238
  %251 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %252 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %251, i32 0, i32 2
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i64 @ntohl(i32 %255)
  %257 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %8, align 8
  %258 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %257, i32 0, i32 2
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i64 @ntohl(i32 %261)
  %263 = call i64 @UIP_TCP_SEQ_LT(i64 %256, i64 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %274

265:                                              ; preds = %250
  %266 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %267 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %266, i32 0, i32 7
  %268 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %267, align 8
  %269 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %270 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %269, i32 0, i32 1
  store %struct.uip_tcpseg* %268, %struct.uip_tcpseg** %270, align 8
  %271 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %272 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %273 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %272, i32 0, i32 7
  store %struct.uip_tcpseg* %271, %struct.uip_tcpseg** %273, align 8
  br label %281

274:                                              ; preds = %250
  %275 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %276 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %8, align 8
  %277 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %276, i32 0, i32 1
  store %struct.uip_tcpseg* %275, %struct.uip_tcpseg** %277, align 8
  %278 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %8, align 8
  %279 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %278, i32 0, i32 1
  %280 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %279, align 8
  store %struct.uip_tcpseg* %280, %struct.uip_tcpseg** %8, align 8
  br label %281

281:                                              ; preds = %274, %265
  br label %282

282:                                              ; preds = %281, %245
  br label %286

283:                                              ; preds = %234
  %284 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %7, align 8
  %285 = call i32 @uip_tcpseg_free(%struct.uip_tcpseg* %284)
  br label %286

286:                                              ; preds = %283, %282
  %287 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %288 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %287, i32 0, i32 6
  %289 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %288, align 8
  store %struct.uip_tcpseg* %289, %struct.uip_tcpseg** %7, align 8
  br label %158

290:                                              ; preds = %178
  %291 = load i32, i32* @UIP_ERR_OK, align 4
  store i32 %291, i32* %2, align 4
  br label %292

292:                                              ; preds = %290, %78, %75, %12
  %293 = load i32, i32* %2, align 4
  ret i32 %293
}

declare dso_local i64 @UIP_MIN(i32, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local %struct.uip_pbuf* @uip_pbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @UIP_ERROR(i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @UIP_TCPH_FLAGS_SET(%struct.uip_tcp_hdr*, i32) #1

declare dso_local i32 @UIP_TCPH_HDRLEN_SET(%struct.uip_tcp_hdr*, i32) #1

declare dso_local i32 @uip_chksum_pseudo(%struct.uip_pbuf*, i32*, i32*, i32, i32) #1

declare dso_local i32 @uip_ipoutput(%struct.uip_pbuf*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @uip_pbuf_free(%struct.uip_pbuf*) #1

declare dso_local i32 @UIP_TCPH_SET_FLAG(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @uip_tcpoutput_segments(%struct.uip_tcpseg*, %struct.uip_tcp_pcb*) #1

declare dso_local i64 @UIP_TCP_TCPLEN(%struct.uip_tcpseg*) #1

declare dso_local i64 @UIP_TCP_SEQ_LT(i64, i64) #1

declare dso_local i32 @uip_tcpseg_free(%struct.uip_tcpseg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
