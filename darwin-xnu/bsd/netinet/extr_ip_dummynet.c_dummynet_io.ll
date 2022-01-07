; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_dummynet_io.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_dummynet_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.mbuf = type { %struct.mbuf*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.ip_fw_args = type { i64, i32*, i32, %struct.sockaddr_in6*, i32, i32, i32, i32, %struct.sockaddr_in6*, %struct.TYPE_9__*, i64, %struct.sockaddr_in6*, %struct.route*, i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32, %struct.route, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }
%struct.route = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.dn_pkt_tag = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32, %struct.route, i32, i32, %struct.TYPE_12__* }
%struct.m_tag = type { i32 }
%struct.dn_flow_set = type { i32, i32, i64, i32, i64, i32, i64, %struct.dn_pipe* }
%struct.dn_pipe = type { i64, i64, i8*, i32, %struct.TYPE_14__, %struct.TYPE_14__, i32, i32, i64, %struct.dn_flow_set }
%struct.dn_flow_queue = type { i32, i64, i64, i64, i64, i32, i8*, %struct.mbuf*, %struct.mbuf*, i32 }
%struct.timespec = type { i32, i64 }
%struct.timeval = type { i32, i32 }
%struct.sockaddr_in = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32, %struct.route, i32, i32, %struct.TYPE_12__* }

@.str = private unnamed_addr constant [51 x i8] c"dummynet_io m: 0x%llx pipe: %d dir: %d client: %d\0A\00", align 1
@dn_mutex = common dso_local global i32 0, align 4
@curr_time = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"dummynet: no pipe %d for queue %d, drop pkt\0A\00", align 1
@DN_QSIZE_IS_BYTES = common dso_local global i32 0, align 4
@DN_IS_RED = common dso_local global i32 0, align 4
@KERNEL_MODULE_TAG_ID = common dso_local global i32 0, align 4
@KERNEL_TAG_TYPE_DUMMYNET = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@DN_CLIENT_IPFW = common dso_local global i32 0, align 4
@DN_TO_IP_OUT = common dso_local global i32 0, align 4
@DN_TO_IP6_OUT = common dso_local global i32 0, align 4
@ready_heap = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@MY_M = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"dummynet: ++ ouch! not eligible but empty scheduler!\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"dummynet: OUCH! pipe should have been idle!\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"dummynet: waking up pipe %d at %d\0A\00", align 1
@timer_enabled = common dso_local global i32 0, align 4
@dummynet = common dso_local global i32 0, align 4
@DN_NOERROR = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@DN_CLIENT_PF = common dso_local global i32 0, align 4
@DN_IS_PIPE = common dso_local global i64 0, align 8
@IP_FW_F_COMMAND = common dso_local global i32 0, align 4
@IP_FW_F_PIPE = common dso_local global i32 0, align 4
@O_LOG = common dso_local global i64 0, align 8
@O_PIPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, i32, i32, %struct.ip_fw_args*, i32)* @dummynet_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummynet_io(%struct.mbuf* %0, i32 %1, i32 %2, %struct.ip_fw_args* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip_fw_args*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.dn_pkt_tag*, align 8
  %15 = alloca %struct.m_tag*, align 8
  %16 = alloca %struct.dn_flow_set*, align 8
  %17 = alloca %struct.dn_pipe*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.dn_flow_queue*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.timespec, align 8
  %22 = alloca %struct.timeval, align 4
  %23 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ip_fw_args* %3, %struct.ip_fw_args** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.mbuf* null, %struct.mbuf** %12, align 8
  store %struct.mbuf* null, %struct.mbuf** %13, align 8
  store %struct.dn_flow_set* null, %struct.dn_flow_set** %16, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %18, align 4
  store %struct.dn_flow_queue* null, %struct.dn_flow_queue** %19, align 8
  store i32 0, i32* %20, align 4
  %28 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %29 = call i64 @VM_KERNEL_ADDRPERM(%struct.mbuf* %28)
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @DPRINTF(i8* %35)
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 65535
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @dn_mutex, align 4
  %40 = call i32 @lck_mtx_lock(i32 %39)
  %41 = call i32 @microuptime(%struct.timeval* %22)
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 1000
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 1000
  %48 = add nsw i32 %44, %47
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** @curr_time, align 8
  %51 = load i32, i32* %20, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %5
  %54 = load i32, i32* %8, align 4
  %55 = call %struct.dn_pipe* @locate_pipe(i32 %54)
  store %struct.dn_pipe* %55, %struct.dn_pipe** %17, align 8
  %56 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %57 = icmp ne %struct.dn_pipe* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %60 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %59, i32 0, i32 9
  store %struct.dn_flow_set* %60, %struct.dn_flow_set** %16, align 8
  br label %61

61:                                               ; preds = %58, %53
  br label %65

62:                                               ; preds = %5
  %63 = load i32, i32* %8, align 4
  %64 = call %struct.dn_flow_set* @locate_flowset(i32 %63)
  store %struct.dn_flow_set* %64, %struct.dn_flow_set** %16, align 8
  br label %65

65:                                               ; preds = %62, %61
  %66 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %67 = icmp eq %struct.dn_flow_set* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %612

69:                                               ; preds = %65
  %70 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %71 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %70, i32 0, i32 7
  %72 = load %struct.dn_pipe*, %struct.dn_pipe** %71, align 8
  store %struct.dn_pipe* %72, %struct.dn_pipe** %17, align 8
  %73 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %74 = icmp eq %struct.dn_pipe* %73, null
  br i1 %74, label %75, label %95

75:                                               ; preds = %69
  %76 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %77 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.dn_pipe* @locate_pipe(i32 %78)
  store %struct.dn_pipe* %79, %struct.dn_pipe** %17, align 8
  %80 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %81 = icmp ne %struct.dn_pipe* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %84 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %85 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %84, i32 0, i32 7
  store %struct.dn_pipe* %83, %struct.dn_pipe** %85, align 8
  br label %94

86:                                               ; preds = %75
  %87 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %88 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %91 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %92)
  br label %612

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94, %69
  %96 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %97 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %98 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %97, i32 0, i32 16
  %99 = call %struct.dn_flow_queue* @find_queue(%struct.dn_flow_set* %96, i32* %98)
  store %struct.dn_flow_queue* %99, %struct.dn_flow_queue** %19, align 8
  %100 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %101 = icmp eq %struct.dn_flow_queue* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %612

103:                                              ; preds = %95
  %104 = load i32, i32* %18, align 4
  %105 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %106 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %110 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  %113 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %114 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %103
  %118 = call i64 (...) @my_random()
  %119 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %120 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp slt i64 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %612

124:                                              ; preds = %117, %103
  %125 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %126 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @DN_QSIZE_IS_BYTES, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %124
  %132 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %133 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %136 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = icmp sgt i64 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %612

140:                                              ; preds = %131
  br label %151

141:                                              ; preds = %124
  %142 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %143 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %146 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = icmp sge i64 %144, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %612

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150, %140
  %152 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %153 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @DN_IS_RED, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %151
  %159 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %160 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %161 = load i32, i32* %18, align 4
  %162 = call i64 @red_drops(%struct.dn_flow_set* %159, %struct.dn_flow_queue* %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %612

165:                                              ; preds = %158, %151
  %166 = load i32, i32* @KERNEL_MODULE_TAG_ID, align 4
  %167 = load i32, i32* @KERNEL_TAG_TYPE_DUMMYNET, align 4
  %168 = load i32, i32* @M_NOWAIT, align 4
  %169 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %170 = call %struct.m_tag* @m_tag_create(i32 %166, i32 %167, i32 72, i32 %168, %struct.mbuf* %169)
  store %struct.m_tag* %170, %struct.m_tag** %15, align 8
  %171 = load %struct.m_tag*, %struct.m_tag** %15, align 8
  %172 = icmp eq %struct.m_tag* %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  br label %612

174:                                              ; preds = %165
  %175 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %176 = load %struct.m_tag*, %struct.m_tag** %15, align 8
  %177 = call i32 @m_tag_prepend(%struct.mbuf* %175, %struct.m_tag* %176)
  %178 = load %struct.m_tag*, %struct.m_tag** %15, align 8
  %179 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %178, i64 1
  %180 = bitcast %struct.m_tag* %179 to %struct.dn_pkt_tag*
  store %struct.dn_pkt_tag* %180, %struct.dn_pkt_tag** %14, align 8
  %181 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %182 = bitcast %struct.dn_pkt_tag* %181 to %struct.sockaddr_in6*
  %183 = call i32 @bzero(%struct.sockaddr_in6* %182, i32 72)
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @DN_CLIENT_IPFW, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %174
  %188 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %189 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %188, i32 0, i32 15
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %192 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %191, i32 0, i32 16
  store %struct.TYPE_12__* %190, %struct.TYPE_12__** %192, align 8
  br label %193

193:                                              ; preds = %187, %174
  %194 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %195 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %194, i32 0, i32 14
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %198 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %197, i32 0, i32 15
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %201 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  %202 = load i32, i32* %11, align 4
  %203 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %204 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  %205 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %206 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %205, i32 0, i32 13
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %209 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %208, i32 0, i32 14
  store i32 %207, i32* %209, align 8
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* @DN_TO_IP_OUT, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %257

213:                                              ; preds = %193
  %214 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %215 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %214, i32 0, i32 12
  %216 = load %struct.route*, %struct.route** %215, align 8
  %217 = icmp ne %struct.route* %216, null
  br i1 %217, label %218, label %225

218:                                              ; preds = %213
  %219 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %220 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %219, i32 0, i32 13
  %221 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %222 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %221, i32 0, i32 12
  %223 = load %struct.route*, %struct.route** %222, align 8
  %224 = call i32 @route_copyout(%struct.route* %220, %struct.route* %223, i32 4)
  br label %225

225:                                              ; preds = %218, %213
  %226 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %227 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %226, i32 0, i32 11
  %228 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %227, align 8
  %229 = icmp ne %struct.sockaddr_in6* %228, null
  br i1 %229, label %230, label %256

230:                                              ; preds = %225
  %231 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %232 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %231, i32 0, i32 11
  %233 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %232, align 8
  %234 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %235 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %234, i32 0, i32 12
  %236 = load %struct.route*, %struct.route** %235, align 8
  %237 = getelementptr inbounds %struct.route, %struct.route* %236, i32 0, i32 0
  %238 = bitcast i32* %237 to %struct.sockaddr_in*
  %239 = bitcast %struct.sockaddr_in* %238 to %struct.sockaddr_in6*
  %240 = icmp eq %struct.sockaddr_in6* %233, %239
  br i1 %240, label %241, label %249

241:                                              ; preds = %230
  %242 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %243 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %242, i32 0, i32 13
  %244 = getelementptr inbounds %struct.route, %struct.route* %243, i32 0, i32 0
  %245 = bitcast i32* %244 to %struct.sockaddr_in*
  %246 = bitcast %struct.sockaddr_in* %245 to %struct.sockaddr_in6*
  %247 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %248 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %247, i32 0, i32 11
  store %struct.sockaddr_in6* %246, %struct.sockaddr_in6** %248, align 8
  br label %249

249:                                              ; preds = %241, %230
  %250 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %251 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %250, i32 0, i32 11
  %252 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %251, align 8
  %253 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %254 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %253, i32 0, i32 12
  %255 = call i32 @bcopy(%struct.sockaddr_in6* %252, i32* %254, i32 4)
  br label %256

256:                                              ; preds = %249, %225
  br label %356

257:                                              ; preds = %193
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* @DN_TO_IP6_OUT, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %355

261:                                              ; preds = %257
  %262 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %263 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %262, i32 0, i32 9
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %263, align 8
  %265 = icmp ne %struct.TYPE_9__* %264, null
  br i1 %265, label %266, label %275

266:                                              ; preds = %261
  %267 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %268 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %267, i32 0, i32 10
  %269 = bitcast %struct.TYPE_10__* %268 to %struct.route*
  %270 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %271 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %270, i32 0, i32 9
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %271, align 8
  %273 = bitcast %struct.TYPE_9__* %272 to %struct.route*
  %274 = call i32 @route_copyout(%struct.route* %269, %struct.route* %273, i32 4)
  br label %275

275:                                              ; preds = %266, %261
  %276 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %277 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %276, i32 0, i32 10
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %289

280:                                              ; preds = %275
  %281 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %282 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %281, i32 0, i32 11
  %283 = bitcast i32* %282 to %struct.route*
  %284 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %285 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %284, i32 0, i32 10
  %286 = load i64, i64* %285, align 8
  %287 = inttoptr i64 %286 to %struct.route*
  %288 = call i32 @route_copyout(%struct.route* %283, %struct.route* %287, i32 4)
  br label %289

289:                                              ; preds = %280, %275
  %290 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %291 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %290, i32 0, i32 8
  %292 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %291, align 8
  %293 = icmp ne %struct.sockaddr_in6* %292, null
  br i1 %293, label %294, label %318

294:                                              ; preds = %289
  %295 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %296 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %295, i32 0, i32 8
  %297 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %296, align 8
  %298 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %299 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %298, i32 0, i32 9
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  %302 = bitcast i32* %301 to %struct.sockaddr_in6*
  %303 = icmp eq %struct.sockaddr_in6* %297, %302
  br i1 %303, label %304, label %311

304:                                              ; preds = %294
  %305 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %306 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %305, i32 0, i32 10
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 0
  %308 = bitcast i32* %307 to %struct.sockaddr_in6*
  %309 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %310 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %309, i32 0, i32 8
  store %struct.sockaddr_in6* %308, %struct.sockaddr_in6** %310, align 8
  br label %311

311:                                              ; preds = %304, %294
  %312 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %313 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %312, i32 0, i32 8
  %314 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %313, align 8
  %315 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %316 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %315, i32 0, i32 9
  %317 = call i32 @bcopy(%struct.sockaddr_in6* %314, i32* %316, i32 4)
  br label %318

318:                                              ; preds = %311, %289
  %319 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %320 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %319, i32 0, i32 7
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %323 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %322, i32 0, i32 8
  store i32 %321, i32* %323, align 8
  %324 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %325 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %324, i32 0, i32 6
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %328 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %327, i32 0, i32 7
  store i32 %326, i32* %328, align 4
  %329 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %330 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %329, i32 0, i32 5
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %333 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %332, i32 0, i32 6
  store i32 %331, i32* %333, align 8
  %334 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %335 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %338 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %337, i32 0, i32 5
  store i32 %336, i32* %338, align 4
  %339 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %340 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %339, i32 0, i32 3
  %341 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %340, align 8
  %342 = icmp ne %struct.sockaddr_in6* %341, null
  br i1 %342, label %343, label %354

343:                                              ; preds = %318
  %344 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %345 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %344, i32 0, i32 3
  %346 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %345, align 8
  %347 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %348 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %347, i32 0, i32 4
  %349 = call i32 @bcopy(%struct.sockaddr_in6* %346, i32* %348, i32 4)
  %350 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %351 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %350, i32 0, i32 3
  %352 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %351, align 8
  %353 = call i32 @bzero(%struct.sockaddr_in6* %352, i32 4)
  br label %354

354:                                              ; preds = %343, %318
  br label %355

355:                                              ; preds = %354, %257
  br label %356

356:                                              ; preds = %355, %256
  %357 = load i32, i32* %9, align 4
  %358 = load i32, i32* @DN_TO_IP_OUT, align 4
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %364, label %360

360:                                              ; preds = %356
  %361 = load i32, i32* %9, align 4
  %362 = load i32, i32* @DN_TO_IP6_OUT, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %382

364:                                              ; preds = %360, %356
  %365 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %366 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %369 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %368, i32 0, i32 3
  store i32 %367, i32* %369, align 4
  %370 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %371 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = icmp ne i32* %372, null
  br i1 %373, label %374, label %381

374:                                              ; preds = %364
  %375 = load %struct.ip_fw_args*, %struct.ip_fw_args** %10, align 8
  %376 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %375, i32 0, i32 1
  %377 = load i32*, i32** %376, align 8
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %14, align 8
  %380 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %379, i32 0, i32 2
  store i32 %378, i32* %380, align 8
  br label %381

381:                                              ; preds = %374, %364
  br label %382

382:                                              ; preds = %381, %360
  %383 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %384 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %383, i32 0, i32 7
  %385 = load %struct.mbuf*, %struct.mbuf** %384, align 8
  %386 = icmp eq %struct.mbuf* %385, null
  br i1 %386, label %387, label %391

387:                                              ; preds = %382
  %388 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %389 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %390 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %389, i32 0, i32 7
  store %struct.mbuf* %388, %struct.mbuf** %390, align 8
  br label %397

391:                                              ; preds = %382
  %392 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %393 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %394 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %393, i32 0, i32 8
  %395 = load %struct.mbuf*, %struct.mbuf** %394, align 8
  %396 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %395, i32 0, i32 0
  store %struct.mbuf* %392, %struct.mbuf** %396, align 8
  br label %397

397:                                              ; preds = %391, %387
  %398 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %399 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %400 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %399, i32 0, i32 8
  store %struct.mbuf* %398, %struct.mbuf** %400, align 8
  %401 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %402 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %401, i32 0, i32 2
  %403 = load i64, i64* %402, align 8
  %404 = add nsw i64 %403, 1
  store i64 %404, i64* %402, align 8
  %405 = load i32, i32* %18, align 4
  %406 = sext i32 %405 to i64
  %407 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %408 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %407, i32 0, i32 1
  %409 = load i64, i64* %408, align 8
  %410 = add nsw i64 %409, %406
  store i64 %410, i64* %408, align 8
  %411 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %412 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %411, i32 0, i32 7
  %413 = load %struct.mbuf*, %struct.mbuf** %412, align 8
  %414 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %415 = icmp ne %struct.mbuf* %413, %414
  br i1 %415, label %416, label %417

416:                                              ; preds = %397
  br label %595

417:                                              ; preds = %397
  %418 = load i32, i32* %20, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %447

420:                                              ; preds = %417
  store i64 0, i64* %23, align 8
  %421 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %422 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %421, i32 0, i32 8
  %423 = load i64, i64* %422, align 8
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %430

425:                                              ; preds = %420
  %426 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %427 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %428 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %429 = call i64 @SET_TICKS(%struct.mbuf* %426, %struct.dn_flow_queue* %427, %struct.dn_pipe* %428)
  store i64 %429, i64* %23, align 8
  br label %430

430:                                              ; preds = %425, %420
  %431 = load i8*, i8** @curr_time, align 8
  %432 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %433 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %432, i32 0, i32 6
  store i8* %431, i8** %433, align 8
  %434 = load i64, i64* %23, align 8
  %435 = icmp eq i64 %434, 0
  br i1 %435, label %436, label %439

436:                                              ; preds = %430
  %437 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %438 = call i32 @ready_event(%struct.dn_flow_queue* %437, %struct.mbuf** %12, %struct.mbuf** %13)
  br label %446

439:                                              ; preds = %430
  %440 = load i8*, i8** @curr_time, align 8
  %441 = load i64, i64* %23, align 8
  %442 = getelementptr i8, i8* %440, i64 %441
  %443 = ptrtoint i8* %442 to i64
  %444 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %445 = call i32 @heap_insert(%struct.TYPE_14__* @ready_heap, i64 %443, %struct.dn_flow_queue* %444)
  br label %446

446:                                              ; preds = %439, %436
  br label %594

447:                                              ; preds = %417
  %448 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %449 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %448, i32 0, i32 3
  %450 = load i64, i64* %449, align 8
  %451 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %452 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %451, i32 0, i32 4
  %453 = load i64, i64* %452, align 8
  %454 = call i64 @DN_KEY_GT(i64 %450, i64 %453)
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %471

456:                                              ; preds = %447
  %457 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %458 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %461 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %460, i32 0, i32 3
  store i64 %459, i64* %461, align 8
  %462 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %463 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %462, i32 0, i32 6
  %464 = load i64, i64* %463, align 8
  %465 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %466 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %465, i32 0, i32 7
  %467 = load i32, i32* %466, align 4
  %468 = sext i32 %467 to i64
  %469 = add nsw i64 %468, %464
  %470 = trunc i64 %469 to i32
  store i32 %470, i32* %466, align 4
  br label %486

471:                                              ; preds = %447
  %472 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %473 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %472, i32 0, i32 6
  %474 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %475 = call i32 @heap_extract(i32* %473, %struct.dn_flow_queue* %474)
  %476 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %477 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %476, i32 0, i32 4
  %478 = load i64, i64* %477, align 8
  %479 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %480 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %479, i32 0, i32 0
  %481 = load i64, i64* %480, align 8
  %482 = call i8* @MAX64(i64 %478, i64 %481)
  %483 = ptrtoint i8* %482 to i64
  %484 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %485 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %484, i32 0, i32 3
  store i64 %483, i64* %485, align 8
  br label %486

486:                                              ; preds = %471, %456
  %487 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %488 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %487, i32 0, i32 3
  %489 = load i64, i64* %488, align 8
  %490 = load i32, i32* %18, align 4
  %491 = load i32, i32* @MY_M, align 4
  %492 = shl i32 %490, %491
  %493 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %494 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %493, i32 0, i32 6
  %495 = load i64, i64* %494, align 8
  %496 = trunc i64 %495 to i32
  %497 = sdiv i32 %492, %496
  %498 = sext i32 %497 to i64
  %499 = add nsw i64 %489, %498
  %500 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %501 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %500, i32 0, i32 4
  store i64 %499, i64* %501, align 8
  %502 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %503 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %502, i32 0, i32 5
  %504 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %503, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = icmp eq i64 %505, 0
  br i1 %506, label %507, label %524

507:                                              ; preds = %486
  %508 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %509 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %508, i32 0, i32 4
  %510 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %509, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = icmp eq i64 %511, 0
  br i1 %512, label %513, label %524

513:                                              ; preds = %507
  %514 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %515 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %514, i32 0, i32 3
  %516 = load i64, i64* %515, align 8
  %517 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %518 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %517, i32 0, i32 0
  %519 = load i64, i64* %518, align 8
  %520 = call i8* @MAX64(i64 %516, i64 %519)
  %521 = ptrtoint i8* %520 to i64
  %522 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %523 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %522, i32 0, i32 0
  store i64 %521, i64* %523, align 8
  br label %524

524:                                              ; preds = %513, %507, %486
  %525 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %526 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %525, i32 0, i32 5
  %527 = load i32, i32* %526, align 8
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %526, align 8
  %529 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %530 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %529, i32 0, i32 3
  %531 = load i64, i64* %530, align 8
  %532 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %533 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %532, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = call i64 @DN_KEY_GT(i64 %531, i64 %534)
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %553

537:                                              ; preds = %524
  %538 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %539 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %538, i32 0, i32 4
  %540 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %539, i32 0, i32 0
  %541 = load i64, i64* %540, align 8
  %542 = icmp eq i64 %541, 0
  br i1 %542, label %543, label %545

543:                                              ; preds = %537
  %544 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %545

545:                                              ; preds = %543, %537
  %546 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %547 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %546, i32 0, i32 5
  %548 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %549 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %548, i32 0, i32 3
  %550 = load i64, i64* %549, align 8
  %551 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %552 = call i32 @heap_insert(%struct.TYPE_14__* %547, i64 %550, %struct.dn_flow_queue* %551)
  br label %593

553:                                              ; preds = %524
  %554 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %555 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %554, i32 0, i32 4
  %556 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %557 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %556, i32 0, i32 4
  %558 = load i64, i64* %557, align 8
  %559 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %560 = call i32 @heap_insert(%struct.TYPE_14__* %555, i64 %558, %struct.dn_flow_queue* %559)
  %561 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %562 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %561, i32 0, i32 1
  %563 = load i64, i64* %562, align 8
  %564 = icmp sge i64 %563, 0
  br i1 %564, label %565, label %592

565:                                              ; preds = %553
  %566 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %567 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %566, i32 0, i32 4
  %568 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %567, i32 0, i32 0
  %569 = load i64, i64* %568, align 8
  %570 = icmp ne i64 %569, 1
  br i1 %570, label %571, label %573

571:                                              ; preds = %565
  %572 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %573

573:                                              ; preds = %571, %565
  %574 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %575 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %574, i32 0, i32 3
  %576 = load i32, i32* %575, align 8
  %577 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %578 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %577, i32 0, i32 4
  %579 = load i64, i64* %578, align 8
  %580 = load i32, i32* @MY_M, align 4
  %581 = zext i32 %580 to i64
  %582 = ashr i64 %579, %581
  %583 = trunc i64 %582 to i32
  %584 = sext i32 %583 to i64
  %585 = inttoptr i64 %584 to i8*
  %586 = call i32 @DPRINTF(i8* %585)
  %587 = load i8*, i8** @curr_time, align 8
  %588 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %589 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %588, i32 0, i32 2
  store i8* %587, i8** %589, align 8
  %590 = load %struct.dn_pipe*, %struct.dn_pipe** %17, align 8
  %591 = call i32 @ready_event_wfq(%struct.dn_pipe* %590, %struct.mbuf** %12, %struct.mbuf** %13)
  br label %592

592:                                              ; preds = %573, %553
  br label %593

593:                                              ; preds = %592, %545
  br label %594

594:                                              ; preds = %593, %446
  br label %595

595:                                              ; preds = %594, %416
  %596 = load i32, i32* @timer_enabled, align 4
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %603, label %598

598:                                              ; preds = %595
  %599 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i32 0, i32 1
  store i64 0, i64* %599, align 8
  %600 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i32 0, i32 0
  store i32 1000000, i32* %600, align 8
  store i32 1, i32* @timer_enabled, align 4
  %601 = load i32, i32* @dummynet, align 4
  %602 = call i32 @bsd_timeout(i32 %601, i32* null, %struct.timespec* %21)
  br label %603

603:                                              ; preds = %598, %595
  %604 = load i32, i32* @dn_mutex, align 4
  %605 = call i32 @lck_mtx_unlock(i32 %604)
  %606 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %607 = icmp ne %struct.mbuf* %606, null
  br i1 %607, label %608, label %611

608:                                              ; preds = %603
  %609 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %610 = call i32 @dummynet_send(%struct.mbuf* %609)
  br label %611

611:                                              ; preds = %608, %603
  store i32 0, i32* %6, align 4
  br label %639

612:                                              ; preds = %173, %164, %149, %139, %123, %102, %86, %68
  %613 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %614 = icmp ne %struct.dn_flow_queue* %613, null
  br i1 %614, label %615, label %620

615:                                              ; preds = %612
  %616 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %19, align 8
  %617 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %616, i32 0, i32 5
  %618 = load i32, i32* %617, align 8
  %619 = add nsw i32 %618, 1
  store i32 %619, i32* %617, align 8
  br label %620

620:                                              ; preds = %615, %612
  %621 = load i32, i32* @dn_mutex, align 4
  %622 = call i32 @lck_mtx_unlock(i32 %621)
  %623 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %624 = call i32 @m_freem(%struct.mbuf* %623)
  %625 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %626 = icmp ne %struct.dn_flow_set* %625, null
  br i1 %626, label %627, label %635

627:                                              ; preds = %620
  %628 = load %struct.dn_flow_set*, %struct.dn_flow_set** %16, align 8
  %629 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %628, i32 0, i32 3
  %630 = load i32, i32* %629, align 8
  %631 = load i32, i32* @DN_NOERROR, align 4
  %632 = and i32 %630, %631
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %634, label %635

634:                                              ; preds = %627
  br label %637

635:                                              ; preds = %627, %620
  %636 = load i32, i32* @ENOBUFS, align 4
  br label %637

637:                                              ; preds = %635, %634
  %638 = phi i32 [ 0, %634 ], [ %636, %635 ]
  store i32 %638, i32* %6, align 4
  br label %639

639:                                              ; preds = %637, %611
  %640 = load i32, i32* %6, align 4
  ret i32 %640
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.mbuf*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @microuptime(%struct.timeval*) #1

declare dso_local %struct.dn_pipe* @locate_pipe(i32) #1

declare dso_local %struct.dn_flow_set* @locate_flowset(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.dn_flow_queue* @find_queue(%struct.dn_flow_set*, i32*) #1

declare dso_local i64 @my_random(...) #1

declare dso_local i64 @red_drops(%struct.dn_flow_set*, %struct.dn_flow_queue*, i32) #1

declare dso_local %struct.m_tag* @m_tag_create(i32, i32, i32, i32, %struct.mbuf*) #1

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @route_copyout(%struct.route*, %struct.route*, i32) #1

declare dso_local i32 @bcopy(%struct.sockaddr_in6*, i32*, i32) #1

declare dso_local i64 @SET_TICKS(%struct.mbuf*, %struct.dn_flow_queue*, %struct.dn_pipe*) #1

declare dso_local i32 @ready_event(%struct.dn_flow_queue*, %struct.mbuf**, %struct.mbuf**) #1

declare dso_local i32 @heap_insert(%struct.TYPE_14__*, i64, %struct.dn_flow_queue*) #1

declare dso_local i64 @DN_KEY_GT(i64, i64) #1

declare dso_local i32 @heap_extract(i32*, %struct.dn_flow_queue*) #1

declare dso_local i8* @MAX64(i64, i64) #1

declare dso_local i32 @ready_event_wfq(%struct.dn_pipe*, %struct.mbuf**, %struct.mbuf**) #1

declare dso_local i32 @bsd_timeout(i32, i32*, %struct.timespec*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @dummynet_send(%struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
