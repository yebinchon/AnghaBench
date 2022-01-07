; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcpreceive.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcpreceive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.uip_tcpseg = type { i64, %struct.uip_pbuf*, %struct.TYPE_4__*, %struct.uip_tcpseg*, i32 }
%struct.uip_pbuf = type { i64, i64, i32, %struct.uip_pbuf* }
%struct.TYPE_4__ = type { i64 }
%struct.uip_tcp_pcb = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, i64, %struct.uip_tcpseg*, %struct.uip_tcpseg*, i32, i32, i64, %struct.uip_tcpseg*, i64, i32, i64 }

@uip_flags = common dso_local global i32 0, align 4
@UIP_TCP_ACK = common dso_local global i32 0, align 4
@uip_seqno = common dso_local global i64 0, align 8
@uip_ackno = common dso_local global i64 0, align 8
@uip_tcphdr = common dso_local global %struct.TYPE_3__* null, align 8
@UIP_TF_INFR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"uip_tcpreceive: dupacks, fast retransmit.\00", align 1
@UIP_ESTABLISHED = common dso_local global i64 0, align 8
@uip_tcp_ticks = common dso_local global i64 0, align 8
@uip_tcplen = common dso_local global i64 0, align 8
@uip_inseg = common dso_local global %struct.uip_tcpseg zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"uip_tcpreceive: duplicate seqno.\00", align 1
@UIP_CLOSE_WAIT = common dso_local global i64 0, align 8
@uip_recv_data = common dso_local global %struct.uip_pbuf* null, align 8
@UIP_TCP_FIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"uip_tcpreceive: received FIN.\0A\00", align 1
@UIP_TF_GOT_FIN = common dso_local global i32 0, align 4
@uip_recv_flags = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"uip_tcpreceive: dequeued FIN.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"uip_tcpreceive: packet out-of-sequence.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uip_tcp_pcb*)* @uip_tcpreceive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uip_tcpreceive(%struct.uip_tcp_pcb* %0) #0 {
  %2 = alloca %struct.uip_tcp_pcb*, align 8
  %3 = alloca %struct.uip_tcpseg*, align 8
  %4 = alloca %struct.uip_tcpseg*, align 8
  %5 = alloca %struct.uip_tcpseg*, align 8
  %6 = alloca %struct.uip_pbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.uip_tcp_pcb* %0, %struct.uip_tcp_pcb** %2, align 8
  %12 = load i32, i32* @uip_flags, align 4
  %13 = load i32, i32* @UIP_TCP_ACK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %496

16:                                               ; preds = %1
  %17 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %18 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %21 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  store i64 %23, i64* %9, align 8
  %24 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %25 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @uip_seqno, align 8
  %28 = call i64 @UIP_TCP_SEQ_LT(i64 %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %57, label %30

30:                                               ; preds = %16
  %31 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %32 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @uip_seqno, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %38 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @uip_ackno, align 8
  %41 = call i64 @UIP_TCP_SEQ_LT(i64 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %45 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @uip_ackno, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %43
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @uip_tcphdr, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %54 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %49, %36, %16
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @uip_tcphdr, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %62 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* @uip_seqno, align 8
  %64 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %65 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* @uip_ackno, align 8
  %67 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %68 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %57, %49, %43
  %70 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %71 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @uip_ackno, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %177

75:                                               ; preds = %69
  %76 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %77 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %76, i32 0, i32 24
  store i64 0, i64* %77, align 8
  %78 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %79 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %82 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = load i64, i64* %9, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %176

87:                                               ; preds = %75
  %88 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %89 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %93 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = icmp sge i32 %94, 3
  br i1 %95, label %96, label %175

96:                                               ; preds = %87
  %97 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %98 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %97, i32 0, i32 23
  %99 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %98, align 8
  %100 = icmp ne %struct.uip_tcpseg* %99, null
  br i1 %100, label %101, label %175

101:                                              ; preds = %96
  %102 = load i32, i32* @uip_flags, align 4
  %103 = load i32, i32* @UIP_TF_INFR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %149, label %106

106:                                              ; preds = %101
  %107 = call i32 @UIP_LOG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %109 = call i32 @uip_tcp_rexmit(%struct.uip_tcp_pcb* %108)
  %110 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %111 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %115 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %113, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %106
  %119 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %120 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = sdiv i64 %121, 2
  %123 = trunc i64 %122 to i32
  %124 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %125 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 8
  br label %133

126:                                              ; preds = %106
  %127 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %128 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = sdiv i32 %129, 2
  %131 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %132 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %126, %118
  %134 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %135 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %138 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 3, %139
  %141 = add nsw i32 %136, %140
  %142 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %143 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @UIP_TF_INFR, align 4
  %145 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %146 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %174

149:                                              ; preds = %101
  %150 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %151 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %154 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %152, %155
  %157 = sext i32 %156 to i64
  %158 = inttoptr i64 %157 to i8*
  %159 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %160 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i8*
  %164 = icmp ugt i8* %158, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %149
  %166 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %167 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %170 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, %168
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %165, %149
  br label %174

174:                                              ; preds = %173, %133
  br label %175

175:                                              ; preds = %174, %96, %87
  br label %176

176:                                              ; preds = %175, %75
  br label %363

177:                                              ; preds = %69
  %178 = load i64, i64* @uip_ackno, align 8
  %179 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %180 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, 1
  %183 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %184 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %183, i32 0, i32 9
  %185 = load i64, i64* %184, align 8
  %186 = call i64 @UIP_TCP_SEQ_BETWEEN(i64 %178, i64 %182, i64 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %362

188:                                              ; preds = %177
  %189 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %190 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %189, i32 0, i32 8
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @UIP_TF_INFR, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %188
  %196 = load i32, i32* @UIP_TF_INFR, align 4
  %197 = xor i32 %196, -1
  %198 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %199 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 8
  %201 = and i32 %200, %197
  store i32 %201, i32* %199, align 8
  %202 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %203 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %206 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %205, i32 0, i32 5
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %195, %188
  %208 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %209 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %208, i32 0, i32 26
  store i64 0, i64* %209, align 8
  %210 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %211 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %210, i32 0, i32 11
  %212 = load i32, i32* %211, align 4
  %213 = ashr i32 %212, 3
  %214 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %215 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %214, i32 0, i32 12
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %213, %216
  %218 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %219 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %218, i32 0, i32 10
  store i32 %217, i32* %219, align 8
  %220 = load i64, i64* @uip_ackno, align 8
  %221 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %222 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = sub nsw i64 %220, %223
  %225 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %226 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %225, i32 0, i32 24
  store i64 %224, i64* %226, align 8
  %227 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %228 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %227, i32 0, i32 24
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %231 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %230, i32 0, i32 25
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %233, %229
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %231, align 8
  %236 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %237 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %236, i32 0, i32 4
  store i32 0, i32* %237, align 8
  %238 = load i64, i64* @uip_ackno, align 8
  %239 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %240 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %239, i32 0, i32 3
  store i64 %238, i64* %240, align 8
  %241 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %242 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %241, i32 0, i32 13
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @UIP_ESTABLISHED, align 8
  %245 = icmp sge i64 %243, %244
  br i1 %245, label %246, label %311

246:                                              ; preds = %207
  %247 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %248 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %251 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = icmp slt i32 %249, %252
  br i1 %253, label %254, label %279

254:                                              ; preds = %246
  %255 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %256 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %259 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %257, %260
  %262 = sext i32 %261 to i64
  %263 = inttoptr i64 %262 to i8*
  %264 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %265 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = inttoptr i64 %267 to i8*
  %269 = icmp ugt i8* %263, %268
  br i1 %269, label %270, label %278

270:                                              ; preds = %254
  %271 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %272 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %271, i32 0, i32 7
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %275 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %276, %273
  store i32 %277, i32* %275, align 4
  br label %278

278:                                              ; preds = %270, %254
  br label %310

279:                                              ; preds = %246
  %280 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %281 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %280, i32 0, i32 5
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %284 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %283, i32 0, i32 7
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %287 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %286, i32 0, i32 7
  %288 = load i32, i32* %287, align 4
  %289 = mul nsw i32 %285, %288
  %290 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %291 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = sdiv i32 %289, %292
  %294 = add nsw i32 %282, %293
  %295 = sext i32 %294 to i64
  %296 = inttoptr i64 %295 to i8*
  store i8* %296, i8** %11, align 8
  %297 = load i8*, i8** %11, align 8
  %298 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %299 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %298, i32 0, i32 5
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = inttoptr i64 %301 to i8*
  %303 = icmp ugt i8* %297, %302
  br i1 %303, label %304, label %309

304:                                              ; preds = %279
  %305 = load i8*, i8** %11, align 8
  %306 = ptrtoint i8* %305 to i32
  %307 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %308 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %307, i32 0, i32 5
  store i32 %306, i32* %308, align 4
  br label %309

309:                                              ; preds = %304, %279
  br label %310

310:                                              ; preds = %309, %278
  br label %311

311:                                              ; preds = %310, %207
  br label %312

312:                                              ; preds = %336, %311
  %313 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %314 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %313, i32 0, i32 23
  %315 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %314, align 8
  %316 = icmp ne %struct.uip_tcpseg* %315, null
  br i1 %316, label %317, label %334

317:                                              ; preds = %312
  %318 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %319 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %318, i32 0, i32 23
  %320 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %319, align 8
  %321 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %320, i32 0, i32 2
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = call i64 @ntohl(i64 %324)
  %326 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %327 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %326, i32 0, i32 23
  %328 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %327, align 8
  %329 = call i64 @UIP_TCP_TCPLEN(%struct.uip_tcpseg* %328)
  %330 = add nsw i64 %325, %329
  %331 = load i64, i64* @uip_ackno, align 8
  %332 = call i64 @UIP_TCP_SEQ_LEQ(i64 %330, i64 %331)
  %333 = icmp ne i64 %332, 0
  br label %334

334:                                              ; preds = %317, %312
  %335 = phi i1 [ false, %312 ], [ %333, %317 ]
  br i1 %335, label %336, label %359

336:                                              ; preds = %334
  %337 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %338 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %337, i32 0, i32 23
  %339 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %338, align 8
  store %struct.uip_tcpseg* %339, %struct.uip_tcpseg** %3, align 8
  %340 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %341 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %340, i32 0, i32 23
  %342 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %341, align 8
  %343 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %342, i32 0, i32 3
  %344 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %343, align 8
  %345 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %346 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %345, i32 0, i32 23
  store %struct.uip_tcpseg* %344, %struct.uip_tcpseg** %346, align 8
  %347 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %348 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %347, i32 0, i32 1
  %349 = load %struct.uip_pbuf*, %struct.uip_pbuf** %348, align 8
  %350 = call i64 @uip_pbuf_clen(%struct.uip_pbuf* %349)
  %351 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %352 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %351, i32 0, i32 21
  %353 = load i32, i32* %352, align 4
  %354 = sext i32 %353 to i64
  %355 = sub nsw i64 %354, %350
  %356 = trunc i64 %355 to i32
  store i32 %356, i32* %352, align 4
  %357 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %358 = call i32 @uip_tcpseg_free(%struct.uip_tcpseg* %357)
  br label %312

359:                                              ; preds = %334
  %360 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %361 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %360, i32 0, i32 22
  store i64 0, i64* %361, align 8
  br label %362

362:                                              ; preds = %359, %177
  br label %363

363:                                              ; preds = %362, %176
  br label %364

364:                                              ; preds = %429, %363
  %365 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %366 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %365, i32 0, i32 19
  %367 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %366, align 8
  %368 = icmp ne %struct.uip_tcpseg* %367, null
  br i1 %368, label %369, label %389

369:                                              ; preds = %364
  %370 = load i64, i64* @uip_ackno, align 8
  %371 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %372 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %371, i32 0, i32 19
  %373 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %372, align 8
  %374 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %373, i32 0, i32 2
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = call i64 @ntohl(i64 %377)
  %379 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %380 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %379, i32 0, i32 19
  %381 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %380, align 8
  %382 = call i64 @UIP_TCP_TCPLEN(%struct.uip_tcpseg* %381)
  %383 = add nsw i64 %378, %382
  %384 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %385 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %384, i32 0, i32 9
  %386 = load i64, i64* %385, align 8
  %387 = call i64 @UIP_TCP_SEQ_BETWEEN(i64 %370, i64 %383, i64 %386)
  %388 = icmp ne i64 %387, 0
  br label %389

389:                                              ; preds = %369, %364
  %390 = phi i1 [ false, %364 ], [ %388, %369 ]
  br i1 %390, label %391, label %430

391:                                              ; preds = %389
  %392 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %393 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %392, i32 0, i32 19
  %394 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %393, align 8
  store %struct.uip_tcpseg* %394, %struct.uip_tcpseg** %3, align 8
  %395 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %396 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %395, i32 0, i32 19
  %397 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %396, align 8
  %398 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %397, i32 0, i32 3
  %399 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %398, align 8
  %400 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %401 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %400, i32 0, i32 19
  store %struct.uip_tcpseg* %399, %struct.uip_tcpseg** %401, align 8
  %402 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %403 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %402, i32 0, i32 1
  %404 = load %struct.uip_pbuf*, %struct.uip_pbuf** %403, align 8
  %405 = call i64 @uip_pbuf_clen(%struct.uip_pbuf* %404)
  %406 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %407 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %406, i32 0, i32 21
  %408 = load i32, i32* %407, align 4
  %409 = sext i32 %408 to i64
  %410 = sub nsw i64 %409, %405
  %411 = trunc i64 %410 to i32
  store i32 %411, i32* %407, align 4
  %412 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %413 = call i32 @uip_tcpseg_free(%struct.uip_tcpseg* %412)
  %414 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %415 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %414, i32 0, i32 19
  %416 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %415, align 8
  %417 = icmp ne %struct.uip_tcpseg* %416, null
  br i1 %417, label %418, label %429

418:                                              ; preds = %391
  %419 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %420 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %419, i32 0, i32 19
  %421 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %420, align 8
  %422 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %421, i32 0, i32 2
  %423 = load %struct.TYPE_4__*, %struct.TYPE_4__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = call i32 @htonl(i64 %425)
  %427 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %428 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %427, i32 0, i32 20
  store i32 %426, i32* %428, align 8
  br label %429

429:                                              ; preds = %418, %391
  br label %364

430:                                              ; preds = %389
  %431 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %432 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %431, i32 0, i32 14
  %433 = load i64, i64* %432, align 8
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %495

435:                                              ; preds = %430
  %436 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %437 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %436, i32 0, i32 15
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* @uip_ackno, align 8
  %440 = call i64 @UIP_TCP_SEQ_LT(i64 %438, i64 %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %495

442:                                              ; preds = %435
  %443 = load i64, i64* @uip_tcp_ticks, align 8
  %444 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %445 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %444, i32 0, i32 14
  %446 = load i64, i64* %445, align 8
  %447 = sub nsw i64 %443, %446
  store i64 %447, i64* %8, align 8
  %448 = load i64, i64* %8, align 8
  %449 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %450 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %449, i32 0, i32 11
  %451 = load i32, i32* %450, align 4
  %452 = ashr i32 %451, 3
  %453 = sext i32 %452 to i64
  %454 = sub nsw i64 %448, %453
  store i64 %454, i64* %8, align 8
  %455 = load i64, i64* %8, align 8
  %456 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %457 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %456, i32 0, i32 11
  %458 = load i32, i32* %457, align 4
  %459 = sext i32 %458 to i64
  %460 = add nsw i64 %459, %455
  %461 = trunc i64 %460 to i32
  store i32 %461, i32* %457, align 4
  %462 = load i64, i64* %8, align 8
  %463 = icmp slt i64 %462, 0
  br i1 %463, label %464, label %468

464:                                              ; preds = %442
  %465 = load i64, i64* %8, align 8
  %466 = load i64, i64* %8, align 8
  %467 = sub nsw i64 %466, %465
  store i64 %467, i64* %8, align 8
  br label %468

468:                                              ; preds = %464, %442
  %469 = load i64, i64* %8, align 8
  %470 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %471 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %470, i32 0, i32 12
  %472 = load i32, i32* %471, align 8
  %473 = ashr i32 %472, 2
  %474 = sext i32 %473 to i64
  %475 = sub nsw i64 %469, %474
  store i64 %475, i64* %8, align 8
  %476 = load i64, i64* %8, align 8
  %477 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %478 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %477, i32 0, i32 12
  %479 = load i32, i32* %478, align 8
  %480 = sext i32 %479 to i64
  %481 = add nsw i64 %480, %476
  %482 = trunc i64 %481 to i32
  store i32 %482, i32* %478, align 8
  %483 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %484 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %483, i32 0, i32 11
  %485 = load i32, i32* %484, align 4
  %486 = ashr i32 %485, 3
  %487 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %488 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %487, i32 0, i32 12
  %489 = load i32, i32* %488, align 8
  %490 = add nsw i32 %486, %489
  %491 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %492 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %491, i32 0, i32 10
  store i32 %490, i32* %492, align 8
  %493 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %494 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %493, i32 0, i32 14
  store i64 0, i64* %494, align 8
  br label %495

495:                                              ; preds = %468, %435, %430
  br label %496

496:                                              ; preds = %495, %1
  %497 = load i64, i64* @uip_tcplen, align 8
  %498 = icmp sgt i64 %497, 0
  br i1 %498, label %499, label %1053

499:                                              ; preds = %496
  %500 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %501 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %500, i32 0, i32 16
  %502 = load i64, i64* %501, align 8
  %503 = load i64, i64* @uip_seqno, align 8
  %504 = add nsw i64 %503, 1
  %505 = load i64, i64* @uip_seqno, align 8
  %506 = load i64, i64* @uip_tcplen, align 8
  %507 = add nsw i64 %505, %506
  %508 = sub nsw i64 %507, 1
  %509 = call i64 @UIP_TCP_SEQ_BETWEEN(i64 %502, i64 %504, i64 %508)
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %511, label %577

511:                                              ; preds = %499
  %512 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %513 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %512, i32 0, i32 16
  %514 = load i64, i64* %513, align 8
  %515 = load i64, i64* @uip_seqno, align 8
  %516 = sub nsw i64 %514, %515
  store i64 %516, i64* %7, align 8
  %517 = load %struct.uip_pbuf*, %struct.uip_pbuf** getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 1), align 8
  store %struct.uip_pbuf* %517, %struct.uip_pbuf** %6, align 8
  %518 = load %struct.uip_pbuf*, %struct.uip_pbuf** getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 1), align 8
  %519 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %518, i32 0, i32 0
  %520 = load i64, i64* %519, align 8
  %521 = load i64, i64* %7, align 8
  %522 = icmp slt i64 %520, %521
  br i1 %522, label %523, label %556

523:                                              ; preds = %511
  %524 = load %struct.uip_pbuf*, %struct.uip_pbuf** getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 1), align 8
  %525 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %524, i32 0, i32 1
  %526 = load i64, i64* %525, align 8
  %527 = load i64, i64* %7, align 8
  %528 = sub nsw i64 %526, %527
  %529 = inttoptr i64 %528 to i8*
  store i8* %529, i8** %10, align 8
  br label %530

530:                                              ; preds = %536, %523
  %531 = load %struct.uip_pbuf*, %struct.uip_pbuf** %6, align 8
  %532 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %531, i32 0, i32 0
  %533 = load i64, i64* %532, align 8
  %534 = load i64, i64* %7, align 8
  %535 = icmp slt i64 %533, %534
  br i1 %535, label %536, label %551

536:                                              ; preds = %530
  %537 = load %struct.uip_pbuf*, %struct.uip_pbuf** %6, align 8
  %538 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %537, i32 0, i32 0
  %539 = load i64, i64* %538, align 8
  %540 = load i64, i64* %7, align 8
  %541 = sub nsw i64 %540, %539
  store i64 %541, i64* %7, align 8
  %542 = load i8*, i8** %10, align 8
  %543 = ptrtoint i8* %542 to i64
  %544 = load %struct.uip_pbuf*, %struct.uip_pbuf** %6, align 8
  %545 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %544, i32 0, i32 1
  store i64 %543, i64* %545, align 8
  %546 = load %struct.uip_pbuf*, %struct.uip_pbuf** %6, align 8
  %547 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %546, i32 0, i32 0
  store i64 0, i64* %547, align 8
  %548 = load %struct.uip_pbuf*, %struct.uip_pbuf** %6, align 8
  %549 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %548, i32 0, i32 3
  %550 = load %struct.uip_pbuf*, %struct.uip_pbuf** %549, align 8
  store %struct.uip_pbuf* %550, %struct.uip_pbuf** %6, align 8
  br label %530

551:                                              ; preds = %530
  %552 = load %struct.uip_pbuf*, %struct.uip_pbuf** %6, align 8
  %553 = load i64, i64* %7, align 8
  %554 = sub nsw i64 0, %553
  %555 = call i32 @uip_pbuf_header(%struct.uip_pbuf* %552, i64 %554)
  br label %561

556:                                              ; preds = %511
  %557 = load %struct.uip_pbuf*, %struct.uip_pbuf** getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 1), align 8
  %558 = load i64, i64* %7, align 8
  %559 = sub nsw i64 0, %558
  %560 = call i32 @uip_pbuf_header(%struct.uip_pbuf* %557, i64 %559)
  br label %561

561:                                              ; preds = %556, %551
  %562 = load %struct.uip_pbuf*, %struct.uip_pbuf** %6, align 8
  %563 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %562, i32 0, i32 2
  %564 = load i32, i32* %563, align 8
  store i32 %564, i32* getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 4), align 8
  %565 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %566 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %565, i32 0, i32 16
  %567 = load i64, i64* %566, align 8
  %568 = load i64, i64* @uip_seqno, align 8
  %569 = sub nsw i64 %567, %568
  %570 = load i64, i64* getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 0), align 8
  %571 = sub nsw i64 %570, %569
  store i64 %571, i64* getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 0), align 8
  %572 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %573 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %572, i32 0, i32 16
  %574 = load i64, i64* %573, align 8
  store i64 %574, i64* @uip_seqno, align 8
  %575 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 2), align 8
  %576 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %575, i32 0, i32 0
  store i64 %574, i64* %576, align 8
  br label %589

577:                                              ; preds = %499
  %578 = load i64, i64* @uip_seqno, align 8
  %579 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %580 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %579, i32 0, i32 16
  %581 = load i64, i64* %580, align 8
  %582 = call i64 @UIP_TCP_SEQ_LT(i64 %578, i64 %581)
  %583 = icmp ne i64 %582, 0
  br i1 %583, label %584, label %588

584:                                              ; preds = %577
  %585 = call i32 @UIP_LOG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %586 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %587 = call i32 @uip_tcp_acknow(%struct.uip_tcp_pcb* %586)
  br label %588

588:                                              ; preds = %584, %577
  br label %589

589:                                              ; preds = %588, %561
  %590 = load i64, i64* @uip_seqno, align 8
  %591 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %592 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %591, i32 0, i32 16
  %593 = load i64, i64* %592, align 8
  %594 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %595 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %594, i32 0, i32 16
  %596 = load i64, i64* %595, align 8
  %597 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %598 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %597, i32 0, i32 17
  %599 = load i64, i64* %598, align 8
  %600 = add nsw i64 %596, %599
  %601 = sub nsw i64 %600, 1
  %602 = call i64 @UIP_TCP_SEQ_BETWEEN(i64 %590, i64 %593, i64 %601)
  %603 = icmp ne i64 %602, 0
  br i1 %603, label %604, label %1033

604:                                              ; preds = %589
  %605 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %606 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %605, i32 0, i32 16
  %607 = load i64, i64* %606, align 8
  %608 = load i64, i64* @uip_seqno, align 8
  %609 = icmp eq i64 %607, %608
  br i1 %609, label %610, label %783

610:                                              ; preds = %604
  %611 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %612 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %611, i32 0, i32 18
  %613 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %612, align 8
  %614 = icmp ne %struct.uip_tcpseg* %613, null
  br i1 %614, label %615, label %641

615:                                              ; preds = %610
  %616 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %617 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %616, i32 0, i32 18
  %618 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %617, align 8
  %619 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %618, i32 0, i32 2
  %620 = load %struct.TYPE_4__*, %struct.TYPE_4__** %619, align 8
  %621 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %620, i32 0, i32 0
  %622 = load i64, i64* %621, align 8
  %623 = load i64, i64* @uip_seqno, align 8
  %624 = load i64, i64* getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 0), align 8
  %625 = add nsw i64 %623, %624
  %626 = call i64 @UIP_TCP_SEQ_LEQ(i64 %622, i64 %625)
  %627 = icmp ne i64 %626, 0
  br i1 %627, label %628, label %641

628:                                              ; preds = %615
  %629 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %630 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %629, i32 0, i32 18
  %631 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %630, align 8
  %632 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %631, i32 0, i32 2
  %633 = load %struct.TYPE_4__*, %struct.TYPE_4__** %632, align 8
  %634 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %633, i32 0, i32 0
  %635 = load i64, i64* %634, align 8
  %636 = load i64, i64* @uip_seqno, align 8
  %637 = sub nsw i64 %635, %636
  store i64 %637, i64* getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 0), align 8
  %638 = load %struct.uip_pbuf*, %struct.uip_pbuf** getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 1), align 8
  %639 = load i64, i64* getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 0), align 8
  %640 = call i32 @uip_pbuf_realloc(%struct.uip_pbuf* %638, i64 %639)
  br label %641

641:                                              ; preds = %628, %615, %610
  %642 = call i64 @UIP_TCP_TCPLEN(%struct.uip_tcpseg* @uip_inseg)
  store i64 %642, i64* @uip_tcplen, align 8
  %643 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %644 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %643, i32 0, i32 13
  %645 = load i64, i64* %644, align 8
  %646 = load i64, i64* @UIP_CLOSE_WAIT, align 8
  %647 = icmp ne i64 %645, %646
  br i1 %647, label %648, label %654

648:                                              ; preds = %641
  %649 = load i64, i64* @uip_tcplen, align 8
  %650 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %651 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %650, i32 0, i32 16
  %652 = load i64, i64* %651, align 8
  %653 = add nsw i64 %652, %649
  store i64 %653, i64* %651, align 8
  br label %654

654:                                              ; preds = %648, %641
  %655 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %656 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %655, i32 0, i32 17
  %657 = load i64, i64* %656, align 8
  %658 = load i64, i64* @uip_tcplen, align 8
  %659 = icmp slt i64 %657, %658
  br i1 %659, label %660, label %663

660:                                              ; preds = %654
  %661 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %662 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %661, i32 0, i32 17
  store i64 0, i64* %662, align 8
  br label %669

663:                                              ; preds = %654
  %664 = load i64, i64* @uip_tcplen, align 8
  %665 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %666 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %665, i32 0, i32 17
  %667 = load i64, i64* %666, align 8
  %668 = sub nsw i64 %667, %664
  store i64 %668, i64* %666, align 8
  br label %669

669:                                              ; preds = %663, %660
  %670 = load %struct.uip_pbuf*, %struct.uip_pbuf** getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 1), align 8
  %671 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %670, i32 0, i32 1
  %672 = load i64, i64* %671, align 8
  %673 = icmp sgt i64 %672, 0
  br i1 %673, label %674, label %676

674:                                              ; preds = %669
  %675 = load %struct.uip_pbuf*, %struct.uip_pbuf** getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 1), align 8
  store %struct.uip_pbuf* %675, %struct.uip_pbuf** @uip_recv_data, align 8
  store %struct.uip_pbuf* null, %struct.uip_pbuf** getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 1), align 8
  br label %676

676:                                              ; preds = %674, %669
  %677 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 2), align 8
  %678 = call i32 @UIP_TCPH_FLAGS(%struct.TYPE_4__* %677)
  %679 = load i32, i32* @UIP_TCP_FIN, align 4
  %680 = and i32 %678, %679
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %685

682:                                              ; preds = %676
  %683 = call i32 @UIP_LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %684 = load i32, i32* @UIP_TF_GOT_FIN, align 4
  store i32 %684, i32* @uip_recv_flags, align 4
  br label %685

685:                                              ; preds = %682, %676
  br label %686

686:                                              ; preds = %772, %685
  %687 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %688 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %687, i32 0, i32 18
  %689 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %688, align 8
  %690 = icmp ne %struct.uip_tcpseg* %689, null
  br i1 %690, label %691, label %703

691:                                              ; preds = %686
  %692 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %693 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %692, i32 0, i32 18
  %694 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %693, align 8
  %695 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %694, i32 0, i32 2
  %696 = load %struct.TYPE_4__*, %struct.TYPE_4__** %695, align 8
  %697 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %696, i32 0, i32 0
  %698 = load i64, i64* %697, align 8
  %699 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %700 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %699, i32 0, i32 16
  %701 = load i64, i64* %700, align 8
  %702 = icmp eq i64 %698, %701
  br label %703

703:                                              ; preds = %691, %686
  %704 = phi i1 [ false, %686 ], [ %702, %691 ]
  br i1 %704, label %705, label %780

705:                                              ; preds = %703
  %706 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %707 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %706, i32 0, i32 18
  %708 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %707, align 8
  store %struct.uip_tcpseg* %708, %struct.uip_tcpseg** %5, align 8
  %709 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %710 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %709, i32 0, i32 18
  %711 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %710, align 8
  %712 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %711, i32 0, i32 2
  %713 = load %struct.TYPE_4__*, %struct.TYPE_4__** %712, align 8
  %714 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %713, i32 0, i32 0
  %715 = load i64, i64* %714, align 8
  store i64 %715, i64* @uip_seqno, align 8
  %716 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %717 = call i64 @UIP_TCP_TCPLEN(%struct.uip_tcpseg* %716)
  %718 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %719 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %718, i32 0, i32 16
  %720 = load i64, i64* %719, align 8
  %721 = add nsw i64 %720, %717
  store i64 %721, i64* %719, align 8
  %722 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %723 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %722, i32 0, i32 17
  %724 = load i64, i64* %723, align 8
  %725 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %726 = call i64 @UIP_TCP_TCPLEN(%struct.uip_tcpseg* %725)
  %727 = icmp slt i64 %724, %726
  br i1 %727, label %728, label %731

728:                                              ; preds = %705
  %729 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %730 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %729, i32 0, i32 17
  store i64 0, i64* %730, align 8
  br label %738

731:                                              ; preds = %705
  %732 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %733 = call i64 @UIP_TCP_TCPLEN(%struct.uip_tcpseg* %732)
  %734 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %735 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %734, i32 0, i32 17
  %736 = load i64, i64* %735, align 8
  %737 = sub nsw i64 %736, %733
  store i64 %737, i64* %735, align 8
  br label %738

738:                                              ; preds = %731, %728
  %739 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %740 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %739, i32 0, i32 1
  %741 = load %struct.uip_pbuf*, %struct.uip_pbuf** %740, align 8
  %742 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %741, i32 0, i32 1
  %743 = load i64, i64* %742, align 8
  %744 = icmp sgt i64 %743, 0
  br i1 %744, label %745, label %761

745:                                              ; preds = %738
  %746 = load %struct.uip_pbuf*, %struct.uip_pbuf** @uip_recv_data, align 8
  %747 = icmp ne %struct.uip_pbuf* %746, null
  br i1 %747, label %748, label %754

748:                                              ; preds = %745
  %749 = load %struct.uip_pbuf*, %struct.uip_pbuf** @uip_recv_data, align 8
  %750 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %751 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %750, i32 0, i32 1
  %752 = load %struct.uip_pbuf*, %struct.uip_pbuf** %751, align 8
  %753 = call i32 @uip_pbuf_cat(%struct.uip_pbuf* %749, %struct.uip_pbuf* %752)
  br label %758

754:                                              ; preds = %745
  %755 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %756 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %755, i32 0, i32 1
  %757 = load %struct.uip_pbuf*, %struct.uip_pbuf** %756, align 8
  store %struct.uip_pbuf* %757, %struct.uip_pbuf** @uip_recv_data, align 8
  br label %758

758:                                              ; preds = %754, %748
  %759 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %760 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %759, i32 0, i32 1
  store %struct.uip_pbuf* null, %struct.uip_pbuf** %760, align 8
  br label %761

761:                                              ; preds = %758, %738
  %762 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %763 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %762, i32 0, i32 2
  %764 = load %struct.TYPE_4__*, %struct.TYPE_4__** %763, align 8
  %765 = call i32 @UIP_TCPH_FLAGS(%struct.TYPE_4__* %764)
  %766 = load i32, i32* @UIP_TCP_FIN, align 4
  %767 = and i32 %765, %766
  %768 = icmp ne i32 %767, 0
  br i1 %768, label %769, label %772

769:                                              ; preds = %761
  %770 = call i32 @UIP_LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %771 = load i32, i32* @UIP_TF_GOT_FIN, align 4
  store i32 %771, i32* @uip_recv_flags, align 4
  br label %772

772:                                              ; preds = %769, %761
  %773 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %774 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %773, i32 0, i32 3
  %775 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %774, align 8
  %776 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %777 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %776, i32 0, i32 18
  store %struct.uip_tcpseg* %775, %struct.uip_tcpseg** %777, align 8
  %778 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %779 = call i32 @uip_tcpseg_free(%struct.uip_tcpseg* %778)
  br label %686

780:                                              ; preds = %703
  %781 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %782 = call i32 @uip_tcp_ack(%struct.uip_tcp_pcb* %781)
  br label %1032

783:                                              ; preds = %604
  %784 = call i32 @UIP_LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %785 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %786 = call i32 @uip_tcp_acknow(%struct.uip_tcp_pcb* %785)
  %787 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %788 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %787, i32 0, i32 18
  %789 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %788, align 8
  %790 = icmp eq %struct.uip_tcpseg* %789, null
  br i1 %790, label %791, label %793

791:                                              ; preds = %783
  %792 = call i8* @uip_tcpseg_copy(%struct.uip_tcpseg* @uip_inseg)
  br label %1031

793:                                              ; preds = %783
  store %struct.uip_tcpseg* null, %struct.uip_tcpseg** %4, align 8
  %794 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %795 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %794, i32 0, i32 18
  %796 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %795, align 8
  store %struct.uip_tcpseg* %796, %struct.uip_tcpseg** %3, align 8
  br label %797

797:                                              ; preds = %1026, %793
  %798 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %799 = icmp ne %struct.uip_tcpseg* %798, null
  br i1 %799, label %800, label %1030

800:                                              ; preds = %797
  %801 = load i64, i64* @uip_seqno, align 8
  %802 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %803 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %802, i32 0, i32 2
  %804 = load %struct.TYPE_4__*, %struct.TYPE_4__** %803, align 8
  %805 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %804, i32 0, i32 0
  %806 = load i64, i64* %805, align 8
  %807 = icmp eq i64 %801, %806
  br i1 %807, label %808, label %838

808:                                              ; preds = %800
  %809 = load i64, i64* getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 0), align 8
  %810 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %811 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %810, i32 0, i32 0
  %812 = load i64, i64* %811, align 8
  %813 = icmp sgt i64 %809, %812
  br i1 %813, label %814, label %837

814:                                              ; preds = %808
  %815 = call i8* @uip_tcpseg_copy(%struct.uip_tcpseg* @uip_inseg)
  %816 = bitcast i8* %815 to %struct.uip_tcpseg*
  store %struct.uip_tcpseg* %816, %struct.uip_tcpseg** %5, align 8
  %817 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %818 = icmp ne %struct.uip_tcpseg* %817, null
  br i1 %818, label %819, label %836

819:                                              ; preds = %814
  %820 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %821 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %820, i32 0, i32 3
  %822 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %821, align 8
  %823 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %824 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %823, i32 0, i32 3
  store %struct.uip_tcpseg* %822, %struct.uip_tcpseg** %824, align 8
  %825 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %4, align 8
  %826 = icmp ne %struct.uip_tcpseg* %825, null
  br i1 %826, label %827, label %831

827:                                              ; preds = %819
  %828 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %829 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %4, align 8
  %830 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %829, i32 0, i32 3
  store %struct.uip_tcpseg* %828, %struct.uip_tcpseg** %830, align 8
  br label %835

831:                                              ; preds = %819
  %832 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %833 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %834 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %833, i32 0, i32 18
  store %struct.uip_tcpseg* %832, %struct.uip_tcpseg** %834, align 8
  br label %835

835:                                              ; preds = %831, %827
  br label %836

836:                                              ; preds = %835, %814
  br label %1030

837:                                              ; preds = %808
  br label %1030

838:                                              ; preds = %800
  %839 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %4, align 8
  %840 = icmp eq %struct.uip_tcpseg* %839, null
  br i1 %840, label %841, label %886

841:                                              ; preds = %838
  %842 = load i64, i64* @uip_seqno, align 8
  %843 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %844 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %843, i32 0, i32 2
  %845 = load %struct.TYPE_4__*, %struct.TYPE_4__** %844, align 8
  %846 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %845, i32 0, i32 0
  %847 = load i64, i64* %846, align 8
  %848 = call i64 @UIP_TCP_SEQ_LT(i64 %842, i64 %847)
  %849 = icmp ne i64 %848, 0
  br i1 %849, label %850, label %885

850:                                              ; preds = %841
  %851 = load i64, i64* @uip_seqno, align 8
  %852 = load i64, i64* getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 0), align 8
  %853 = add nsw i64 %851, %852
  %854 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %855 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %854, i32 0, i32 2
  %856 = load %struct.TYPE_4__*, %struct.TYPE_4__** %855, align 8
  %857 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %856, i32 0, i32 0
  %858 = load i64, i64* %857, align 8
  %859 = call i64 @UIP_TCP_SEQ_GT(i64 %853, i64 %858)
  %860 = icmp ne i64 %859, 0
  br i1 %860, label %861, label %872

861:                                              ; preds = %850
  %862 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %863 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %862, i32 0, i32 2
  %864 = load %struct.TYPE_4__*, %struct.TYPE_4__** %863, align 8
  %865 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %864, i32 0, i32 0
  %866 = load i64, i64* %865, align 8
  %867 = load i64, i64* @uip_seqno, align 8
  %868 = sub nsw i64 %866, %867
  store i64 %868, i64* getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 0), align 8
  %869 = load %struct.uip_pbuf*, %struct.uip_pbuf** getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 1), align 8
  %870 = load i64, i64* getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 0), align 8
  %871 = call i32 @uip_pbuf_realloc(%struct.uip_pbuf* %869, i64 %870)
  br label %872

872:                                              ; preds = %861, %850
  %873 = call i8* @uip_tcpseg_copy(%struct.uip_tcpseg* @uip_inseg)
  %874 = bitcast i8* %873 to %struct.uip_tcpseg*
  store %struct.uip_tcpseg* %874, %struct.uip_tcpseg** %5, align 8
  %875 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %876 = icmp ne %struct.uip_tcpseg* %875, null
  br i1 %876, label %877, label %884

877:                                              ; preds = %872
  %878 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %879 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %880 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %879, i32 0, i32 3
  store %struct.uip_tcpseg* %878, %struct.uip_tcpseg** %880, align 8
  %881 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %882 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %883 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %882, i32 0, i32 18
  store %struct.uip_tcpseg* %881, %struct.uip_tcpseg** %883, align 8
  br label %884

884:                                              ; preds = %877, %872
  br label %1030

885:                                              ; preds = %841
  br label %968

886:                                              ; preds = %838
  %887 = load i64, i64* @uip_seqno, align 8
  %888 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %4, align 8
  %889 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %888, i32 0, i32 2
  %890 = load %struct.TYPE_4__*, %struct.TYPE_4__** %889, align 8
  %891 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %890, i32 0, i32 0
  %892 = load i64, i64* %891, align 8
  %893 = add nsw i64 %892, 1
  %894 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %895 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %894, i32 0, i32 2
  %896 = load %struct.TYPE_4__*, %struct.TYPE_4__** %895, align 8
  %897 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %896, i32 0, i32 0
  %898 = load i64, i64* %897, align 8
  %899 = sub nsw i64 %898, 1
  %900 = call i64 @UIP_TCP_SEQ_BETWEEN(i64 %887, i64 %893, i64 %899)
  %901 = icmp ne i64 %900, 0
  br i1 %901, label %902, label %967

902:                                              ; preds = %886
  %903 = load i64, i64* @uip_seqno, align 8
  %904 = load i64, i64* getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 0), align 8
  %905 = add nsw i64 %903, %904
  %906 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %907 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %906, i32 0, i32 2
  %908 = load %struct.TYPE_4__*, %struct.TYPE_4__** %907, align 8
  %909 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %908, i32 0, i32 0
  %910 = load i64, i64* %909, align 8
  %911 = call i64 @UIP_TCP_SEQ_GT(i64 %905, i64 %910)
  %912 = icmp ne i64 %911, 0
  br i1 %912, label %913, label %924

913:                                              ; preds = %902
  %914 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %915 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %914, i32 0, i32 2
  %916 = load %struct.TYPE_4__*, %struct.TYPE_4__** %915, align 8
  %917 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %916, i32 0, i32 0
  %918 = load i64, i64* %917, align 8
  %919 = load i64, i64* @uip_seqno, align 8
  %920 = sub nsw i64 %918, %919
  store i64 %920, i64* getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 0), align 8
  %921 = load %struct.uip_pbuf*, %struct.uip_pbuf** getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 1), align 8
  %922 = load i64, i64* getelementptr inbounds (%struct.uip_tcpseg, %struct.uip_tcpseg* @uip_inseg, i32 0, i32 0), align 8
  %923 = call i32 @uip_pbuf_realloc(%struct.uip_pbuf* %921, i64 %922)
  br label %924

924:                                              ; preds = %913, %902
  %925 = call i8* @uip_tcpseg_copy(%struct.uip_tcpseg* @uip_inseg)
  %926 = bitcast i8* %925 to %struct.uip_tcpseg*
  store %struct.uip_tcpseg* %926, %struct.uip_tcpseg** %5, align 8
  %927 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %928 = icmp ne %struct.uip_tcpseg* %927, null
  br i1 %928, label %929, label %966

929:                                              ; preds = %924
  %930 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %931 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %932 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %931, i32 0, i32 3
  store %struct.uip_tcpseg* %930, %struct.uip_tcpseg** %932, align 8
  %933 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %934 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %4, align 8
  %935 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %934, i32 0, i32 3
  store %struct.uip_tcpseg* %933, %struct.uip_tcpseg** %935, align 8
  %936 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %4, align 8
  %937 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %936, i32 0, i32 2
  %938 = load %struct.TYPE_4__*, %struct.TYPE_4__** %937, align 8
  %939 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %938, i32 0, i32 0
  %940 = load i64, i64* %939, align 8
  %941 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %4, align 8
  %942 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %941, i32 0, i32 0
  %943 = load i64, i64* %942, align 8
  %944 = add nsw i64 %940, %943
  %945 = load i64, i64* @uip_seqno, align 8
  %946 = call i64 @UIP_TCP_SEQ_GT(i64 %944, i64 %945)
  %947 = icmp ne i64 %946, 0
  br i1 %947, label %948, label %965

948:                                              ; preds = %929
  %949 = load i64, i64* @uip_seqno, align 8
  %950 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %4, align 8
  %951 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %950, i32 0, i32 2
  %952 = load %struct.TYPE_4__*, %struct.TYPE_4__** %951, align 8
  %953 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %952, i32 0, i32 0
  %954 = load i64, i64* %953, align 8
  %955 = sub nsw i64 %949, %954
  %956 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %4, align 8
  %957 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %956, i32 0, i32 0
  store i64 %955, i64* %957, align 8
  %958 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %4, align 8
  %959 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %958, i32 0, i32 1
  %960 = load %struct.uip_pbuf*, %struct.uip_pbuf** %959, align 8
  %961 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %4, align 8
  %962 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %961, i32 0, i32 0
  %963 = load i64, i64* %962, align 8
  %964 = call i32 @uip_pbuf_realloc(%struct.uip_pbuf* %960, i64 %963)
  br label %965

965:                                              ; preds = %948, %929
  br label %966

966:                                              ; preds = %965, %924
  br label %1030

967:                                              ; preds = %886
  br label %968

968:                                              ; preds = %967, %885
  %969 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %970 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %969, i32 0, i32 3
  %971 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %970, align 8
  %972 = icmp eq %struct.uip_tcpseg* %971, null
  br i1 %972, label %973, label %1023

973:                                              ; preds = %968
  %974 = load i64, i64* @uip_seqno, align 8
  %975 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %976 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %975, i32 0, i32 2
  %977 = load %struct.TYPE_4__*, %struct.TYPE_4__** %976, align 8
  %978 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %977, i32 0, i32 0
  %979 = load i64, i64* %978, align 8
  %980 = call i64 @UIP_TCP_SEQ_GT(i64 %974, i64 %979)
  %981 = icmp ne i64 %980, 0
  br i1 %981, label %982, label %1023

982:                                              ; preds = %973
  %983 = call i8* @uip_tcpseg_copy(%struct.uip_tcpseg* @uip_inseg)
  %984 = bitcast i8* %983 to %struct.uip_tcpseg*
  %985 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %986 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %985, i32 0, i32 3
  store %struct.uip_tcpseg* %984, %struct.uip_tcpseg** %986, align 8
  %987 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %988 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %987, i32 0, i32 3
  %989 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %988, align 8
  %990 = icmp ne %struct.uip_tcpseg* %989, null
  br i1 %990, label %991, label %1022

991:                                              ; preds = %982
  %992 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %993 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %992, i32 0, i32 2
  %994 = load %struct.TYPE_4__*, %struct.TYPE_4__** %993, align 8
  %995 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %994, i32 0, i32 0
  %996 = load i64, i64* %995, align 8
  %997 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %998 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %997, i32 0, i32 0
  %999 = load i64, i64* %998, align 8
  %1000 = add nsw i64 %996, %999
  %1001 = load i64, i64* @uip_seqno, align 8
  %1002 = call i64 @UIP_TCP_SEQ_GT(i64 %1000, i64 %1001)
  %1003 = icmp ne i64 %1002, 0
  br i1 %1003, label %1004, label %1021

1004:                                             ; preds = %991
  %1005 = load i64, i64* @uip_seqno, align 8
  %1006 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %1007 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %1006, i32 0, i32 2
  %1008 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1007, align 8
  %1009 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1008, i32 0, i32 0
  %1010 = load i64, i64* %1009, align 8
  %1011 = sub nsw i64 %1005, %1010
  %1012 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %1013 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %1012, i32 0, i32 0
  store i64 %1011, i64* %1013, align 8
  %1014 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %1015 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %1014, i32 0, i32 1
  %1016 = load %struct.uip_pbuf*, %struct.uip_pbuf** %1015, align 8
  %1017 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %1018 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %1017, i32 0, i32 0
  %1019 = load i64, i64* %1018, align 8
  %1020 = call i32 @uip_pbuf_realloc(%struct.uip_pbuf* %1016, i64 %1019)
  br label %1021

1021:                                             ; preds = %1004, %991
  br label %1022

1022:                                             ; preds = %1021, %982
  br label %1023

1023:                                             ; preds = %1022, %973, %968
  br label %1024

1024:                                             ; preds = %1023
  %1025 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  store %struct.uip_tcpseg* %1025, %struct.uip_tcpseg** %4, align 8
  br label %1026

1026:                                             ; preds = %1024
  %1027 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %1028 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %1027, i32 0, i32 3
  %1029 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %1028, align 8
  store %struct.uip_tcpseg* %1029, %struct.uip_tcpseg** %3, align 8
  br label %797

1030:                                             ; preds = %966, %884, %837, %836, %797
  br label %1031

1031:                                             ; preds = %1030, %791
  br label %1032

1032:                                             ; preds = %1031, %780
  br label %1052

1033:                                             ; preds = %589
  %1034 = load i64, i64* @uip_seqno, align 8
  %1035 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %1036 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %1035, i32 0, i32 16
  %1037 = load i64, i64* %1036, align 8
  %1038 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %1039 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %1038, i32 0, i32 16
  %1040 = load i64, i64* %1039, align 8
  %1041 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %1042 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %1041, i32 0, i32 17
  %1043 = load i64, i64* %1042, align 8
  %1044 = add nsw i64 %1040, %1043
  %1045 = sub nsw i64 %1044, 1
  %1046 = call i64 @UIP_TCP_SEQ_BETWEEN(i64 %1034, i64 %1037, i64 %1045)
  %1047 = icmp ne i64 %1046, 0
  br i1 %1047, label %1051, label %1048

1048:                                             ; preds = %1033
  %1049 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %1050 = call i32 @uip_tcp_acknow(%struct.uip_tcp_pcb* %1049)
  br label %1051

1051:                                             ; preds = %1048, %1033
  br label %1052

1052:                                             ; preds = %1051, %1032
  br label %1072

1053:                                             ; preds = %496
  %1054 = load i64, i64* @uip_seqno, align 8
  %1055 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %1056 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %1055, i32 0, i32 16
  %1057 = load i64, i64* %1056, align 8
  %1058 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %1059 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %1058, i32 0, i32 16
  %1060 = load i64, i64* %1059, align 8
  %1061 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %1062 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %1061, i32 0, i32 17
  %1063 = load i64, i64* %1062, align 8
  %1064 = add nsw i64 %1060, %1063
  %1065 = sub nsw i64 %1064, 1
  %1066 = call i64 @UIP_TCP_SEQ_BETWEEN(i64 %1054, i64 %1057, i64 %1065)
  %1067 = icmp ne i64 %1066, 0
  br i1 %1067, label %1071, label %1068

1068:                                             ; preds = %1053
  %1069 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %1070 = call i32 @uip_tcp_acknow(%struct.uip_tcp_pcb* %1069)
  br label %1071

1071:                                             ; preds = %1068, %1053
  br label %1072

1072:                                             ; preds = %1071, %1052
  ret void
}

declare dso_local i64 @UIP_TCP_SEQ_LT(i64, i64) #1

declare dso_local i32 @UIP_LOG(i8*) #1

declare dso_local i32 @uip_tcp_rexmit(%struct.uip_tcp_pcb*) #1

declare dso_local i64 @UIP_TCP_SEQ_BETWEEN(i64, i64, i64) #1

declare dso_local i64 @UIP_TCP_SEQ_LEQ(i64, i64) #1

declare dso_local i64 @ntohl(i64) #1

declare dso_local i64 @UIP_TCP_TCPLEN(%struct.uip_tcpseg*) #1

declare dso_local i64 @uip_pbuf_clen(%struct.uip_pbuf*) #1

declare dso_local i32 @uip_tcpseg_free(%struct.uip_tcpseg*) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @uip_pbuf_header(%struct.uip_pbuf*, i64) #1

declare dso_local i32 @uip_tcp_acknow(%struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_pbuf_realloc(%struct.uip_pbuf*, i64) #1

declare dso_local i32 @UIP_TCPH_FLAGS(%struct.TYPE_4__*) #1

declare dso_local i32 @uip_pbuf_cat(%struct.uip_pbuf*, %struct.uip_pbuf*) #1

declare dso_local i32 @uip_tcp_ack(%struct.uip_tcp_pcb*) #1

declare dso_local i8* @uip_tcpseg_copy(%struct.uip_tcpseg*) #1

declare dso_local i64 @UIP_TCP_SEQ_GT(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
