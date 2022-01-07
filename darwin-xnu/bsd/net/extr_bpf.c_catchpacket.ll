; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_catchpacket.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_catchpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_d = type { i32, i32, i32, i64, i64, i64, i32, i64, i64, i32*, i32*, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.bpf_packet = type { i64, i32, %struct.mbuf* }
%struct.mbuf = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.bpf_hdr = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.bpf_hdr_ext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.timeval = type { i32, i32 }

@BPF_EXTENDED_HDR = common dso_local global i32 0, align 4
@BPF_TIMED_OUT = common dso_local global i64 0, align 8
@BPF_PACKET_TYPE_MBUF = common dso_local global i64 0, align 8
@BPF_HDR_EXT_FLAGS_DIR_OUT = common dso_local global i32 0, align 4
@BPF_HDR_EXT_FLAGS_DIR_IN = common dso_local global i32 0, align 4
@PKTF_FLOW_ID = common dso_local global i32 0, align 4
@PKTF_FLOW_LOCALSRC = common dso_local global i32 0, align 4
@PKTF_FLOW_RAWSOCK = common dso_local global i32 0, align 4
@FLOWSRC_INPCB = common dso_local global i64 0, align 8
@PKTF_TCP_REXMT = common dso_local global i32 0, align 4
@BPF_PKTFLAGS_TCP_REXMT = common dso_local global i32 0, align 4
@PKTF_START_SEQ = common dso_local global i32 0, align 4
@BPF_PKTFLAGS_START_SEQ = common dso_local global i32 0, align 4
@PKTF_LAST_PKT = common dso_local global i32 0, align 4
@BPF_PKTFLAGS_LAST_PKT = common dso_local global i32 0, align 4
@PKTF_VALID_UNSENT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_d*, %struct.bpf_packet*, i32, i32)* @catchpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catchpacket(%struct.bpf_d* %0, %struct.bpf_packet* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bpf_d*, align 8
  %6 = alloca %struct.bpf_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_hdr*, align 8
  %10 = alloca %struct.bpf_hdr_ext*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.timeval, align 4
  %18 = alloca %struct.mbuf*, align 8
  store %struct.bpf_d* %0, %struct.bpf_d** %5, align 8
  store %struct.bpf_packet* %1, %struct.bpf_packet** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %20 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BPF_EXTENDED_HDR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %27 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %26, i32 0, i32 13
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %37

31:                                               ; preds = %4
  %32 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %33 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %32, i32 0, i32 13
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %31, %25
  %38 = phi i32 [ %30, %25 ], [ %36, %31 ]
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.bpf_packet*, %struct.bpf_packet** %6, align 8
  %42 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @min(i32 %40, i32 %43)
  %45 = add nsw i32 %39, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %48 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %37
  %52 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %53 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %51, %37
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %384

60:                                               ; preds = %55
  %61 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %62 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @BPF_WORDALIGN(i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %65, %66
  %68 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %69 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %72, label %116

72:                                               ; preds = %60
  %73 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %74 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %79 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %78, i32 0, i32 12
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %79, align 8
  br label %384

82:                                               ; preds = %72
  %83 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %84 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %83, i32 0, i32 10
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %112

87:                                               ; preds = %82
  %88 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %89 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %94 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %93, i32 0, i32 12
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  br label %384

97:                                               ; preds = %87
  %98 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %99 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %98, i32 0, i32 11
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %102 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %101, i32 0, i32 12
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, %100
  store i64 %104, i64* %102, align 8
  %105 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %106 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %105, i32 0, i32 9
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %109 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %108, i32 0, i32 10
  store i32* %107, i32** %109, align 8
  %110 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %111 = call i32 @ROTATE_BUFFERS(%struct.bpf_d* %110)
  br label %115

112:                                              ; preds = %82
  %113 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %114 = call i32 @ROTATE_BUFFERS(%struct.bpf_d* %113)
  br label %115

115:                                              ; preds = %112, %97
  store i32 1, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %129

116:                                              ; preds = %60
  %117 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %118 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %117, i32 0, i32 8
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %116
  %122 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %123 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @BPF_TIMED_OUT, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %121, %116
  store i32 1, i32* %15, align 4
  br label %128

128:                                              ; preds = %127, %121
  br label %129

129:                                              ; preds = %128, %115
  %130 = call i32 @microtime(%struct.timeval* %17)
  %131 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %132 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @BPF_EXTENDED_HDR, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %328

137:                                              ; preds = %129
  %138 = load %struct.bpf_packet*, %struct.bpf_packet** %6, align 8
  %139 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @BPF_PACKET_TYPE_MBUF, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load %struct.bpf_packet*, %struct.bpf_packet** %6, align 8
  %145 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %144, i32 0, i32 2
  %146 = load %struct.mbuf*, %struct.mbuf** %145, align 8
  br label %148

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147, %143
  %149 = phi %struct.mbuf* [ %146, %143 ], [ null, %147 ]
  store %struct.mbuf* %149, %struct.mbuf** %18, align 8
  %150 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %151 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %150, i32 0, i32 7
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %152, %154
  %156 = inttoptr i64 %155 to i8*
  %157 = bitcast i8* %156 to %struct.bpf_hdr_ext*
  store %struct.bpf_hdr_ext* %157, %struct.bpf_hdr_ext** %10, align 8
  %158 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %159 = call i32 @memset(%struct.bpf_hdr_ext* %158, i32 0, i32 48)
  %160 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %163 = getelementptr inbounds %struct.bpf_hdr_ext, %struct.bpf_hdr_ext* %162, i32 0, i32 10
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 4
  %165 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %168 = getelementptr inbounds %struct.bpf_hdr_ext, %struct.bpf_hdr_ext* %167, i32 0, i32 10
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 4
  %170 = load %struct.bpf_packet*, %struct.bpf_packet** %6, align 8
  %171 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %174 = getelementptr inbounds %struct.bpf_hdr_ext, %struct.bpf_hdr_ext* %173, i32 0, i32 9
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %177 = getelementptr inbounds %struct.bpf_hdr_ext, %struct.bpf_hdr_ext* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %13, align 4
  %180 = sub nsw i32 %178, %179
  %181 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %182 = getelementptr inbounds %struct.bpf_hdr_ext, %struct.bpf_hdr_ext* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  store i32 %180, i32* %14, align 4
  %183 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %184 = icmp eq %struct.mbuf* %183, null
  br i1 %184, label %185, label %201

185:                                              ; preds = %148
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load i32, i32* @BPF_HDR_EXT_FLAGS_DIR_OUT, align 4
  %190 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %191 = getelementptr inbounds %struct.bpf_hdr_ext, %struct.bpf_hdr_ext* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 4
  br label %200

194:                                              ; preds = %185
  %195 = load i32, i32* @BPF_HDR_EXT_FLAGS_DIR_IN, align 4
  %196 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %197 = getelementptr inbounds %struct.bpf_hdr_ext, %struct.bpf_hdr_ext* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %194, %188
  br label %322

201:                                              ; preds = %148
  %202 = load i32, i32* %8, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %315

204:                                              ; preds = %201
  %205 = load i32, i32* @BPF_HDR_EXT_FLAGS_DIR_OUT, align 4
  %206 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %207 = getelementptr inbounds %struct.bpf_hdr_ext, %struct.bpf_hdr_ext* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %211 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @PKTF_FLOW_ID, align 4
  %215 = load i32, i32* @PKTF_FLOW_LOCALSRC, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @PKTF_FLOW_RAWSOCK, align 4
  %218 = or i32 %216, %217
  %219 = and i32 %213, %218
  %220 = load i32, i32* @PKTF_FLOW_ID, align 4
  %221 = load i32, i32* @PKTF_FLOW_LOCALSRC, align 4
  %222 = or i32 %220, %221
  %223 = icmp eq i32 %219, %222
  br i1 %223, label %224, label %244

224:                                              ; preds = %204
  %225 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %226 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @FLOWSRC_INPCB, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %244

231:                                              ; preds = %224
  %232 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %233 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %237 = getelementptr inbounds %struct.bpf_hdr_ext, %struct.bpf_hdr_ext* %236, i32 0, i32 8
  store i32 %235, i32* %237, align 4
  %238 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %239 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %243 = getelementptr inbounds %struct.bpf_hdr_ext, %struct.bpf_hdr_ext* %242, i32 0, i32 7
  store i32 %241, i32* %243, align 4
  br label %244

244:                                              ; preds = %231, %224, %204
  %245 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %246 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @so_svc2tc(i32 %248)
  %250 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %251 = getelementptr inbounds %struct.bpf_hdr_ext, %struct.bpf_hdr_ext* %250, i32 0, i32 6
  store i32 %249, i32* %251, align 4
  %252 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %253 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @PKTF_TCP_REXMT, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %244
  %260 = load i32, i32* @BPF_PKTFLAGS_TCP_REXMT, align 4
  %261 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %262 = getelementptr inbounds %struct.bpf_hdr_ext, %struct.bpf_hdr_ext* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 4
  %264 = or i32 %263, %260
  store i32 %264, i32* %262, align 4
  br label %265

265:                                              ; preds = %259, %244
  %266 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %267 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @PKTF_START_SEQ, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %265
  %274 = load i32, i32* @BPF_PKTFLAGS_START_SEQ, align 4
  %275 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %276 = getelementptr inbounds %struct.bpf_hdr_ext, %struct.bpf_hdr_ext* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 4
  br label %279

279:                                              ; preds = %273, %265
  %280 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %281 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @PKTF_LAST_PKT, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %279
  %288 = load i32, i32* @BPF_PKTFLAGS_LAST_PKT, align 4
  %289 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %290 = getelementptr inbounds %struct.bpf_hdr_ext, %struct.bpf_hdr_ext* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %287, %279
  %294 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %295 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @PKTF_VALID_UNSENT_DATA, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %314

301:                                              ; preds = %293
  %302 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %303 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %307 = getelementptr inbounds %struct.bpf_hdr_ext, %struct.bpf_hdr_ext* %306, i32 0, i32 4
  store i32 %305, i32* %307, align 4
  %308 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %309 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %313 = getelementptr inbounds %struct.bpf_hdr_ext, %struct.bpf_hdr_ext* %312, i32 0, i32 3
  store i32 %311, i32* %313, align 4
  br label %314

314:                                              ; preds = %301, %293
  br label %321

315:                                              ; preds = %201
  %316 = load i32, i32* @BPF_HDR_EXT_FLAGS_DIR_IN, align 4
  %317 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %318 = getelementptr inbounds %struct.bpf_hdr_ext, %struct.bpf_hdr_ext* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = or i32 %319, %316
  store i32 %320, i32* %318, align 4
  br label %321

321:                                              ; preds = %315, %314
  br label %322

322:                                              ; preds = %321, %200
  %323 = load %struct.bpf_hdr_ext*, %struct.bpf_hdr_ext** %10, align 8
  %324 = bitcast %struct.bpf_hdr_ext* %323 to i32*
  %325 = load i32, i32* %13, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  store i32* %327, i32** %16, align 8
  br label %365

328:                                              ; preds = %129
  %329 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %330 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %329, i32 0, i32 7
  %331 = load i64, i64* %330, align 8
  %332 = load i32, i32* %12, align 4
  %333 = sext i32 %332 to i64
  %334 = add nsw i64 %331, %333
  %335 = inttoptr i64 %334 to i8*
  %336 = bitcast i8* %335 to %struct.bpf_hdr*
  store %struct.bpf_hdr* %336, %struct.bpf_hdr** %9, align 8
  %337 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.bpf_hdr*, %struct.bpf_hdr** %9, align 8
  %340 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %339, i32 0, i32 3
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 1
  store i32 %338, i32* %341, align 4
  %342 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.bpf_hdr*, %struct.bpf_hdr** %9, align 8
  %345 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %344, i32 0, i32 3
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 0
  store i32 %343, i32* %346, align 4
  %347 = load %struct.bpf_packet*, %struct.bpf_packet** %6, align 8
  %348 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.bpf_hdr*, %struct.bpf_hdr** %9, align 8
  %351 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %350, i32 0, i32 2
  store i32 %349, i32* %351, align 4
  %352 = load i32, i32* %13, align 4
  %353 = load %struct.bpf_hdr*, %struct.bpf_hdr** %9, align 8
  %354 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %353, i32 0, i32 0
  store i32 %352, i32* %354, align 4
  %355 = load i32, i32* %11, align 4
  %356 = load i32, i32* %13, align 4
  %357 = sub nsw i32 %355, %356
  %358 = load %struct.bpf_hdr*, %struct.bpf_hdr** %9, align 8
  %359 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %358, i32 0, i32 1
  store i32 %357, i32* %359, align 4
  store i32 %357, i32* %14, align 4
  %360 = load %struct.bpf_hdr*, %struct.bpf_hdr** %9, align 8
  %361 = bitcast %struct.bpf_hdr* %360 to i32*
  %362 = load i32, i32* %13, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  store i32* %364, i32** %16, align 8
  br label %365

365:                                              ; preds = %328, %322
  %366 = load %struct.bpf_packet*, %struct.bpf_packet** %6, align 8
  %367 = load i32*, i32** %16, align 8
  %368 = load i32, i32* %14, align 4
  %369 = call i32 @copy_bpf_packet(%struct.bpf_packet* %366, i32* %367, i32 %368)
  %370 = load i32, i32* %12, align 4
  %371 = load i32, i32* %11, align 4
  %372 = add nsw i32 %370, %371
  %373 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %374 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %373, i32 0, i32 2
  store i32 %372, i32* %374, align 8
  %375 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %376 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %375, i32 0, i32 6
  %377 = load i32, i32* %376, align 8
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %376, align 8
  %379 = load i32, i32* %15, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %365
  %382 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %383 = call i32 @bpf_wakeup(%struct.bpf_d* %382)
  br label %384

384:                                              ; preds = %59, %77, %92, %381, %365
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @BPF_WORDALIGN(i32) #1

declare dso_local i32 @ROTATE_BUFFERS(%struct.bpf_d*) #1

declare dso_local i32 @microtime(%struct.timeval*) #1

declare dso_local i32 @memset(%struct.bpf_hdr_ext*, i32, i32) #1

declare dso_local i32 @so_svc2tc(i32) #1

declare dso_local i32 @copy_bpf_packet(%struct.bpf_packet*, i32*, i32) #1

declare dso_local i32 @bpf_wakeup(%struct.bpf_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
