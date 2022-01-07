; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_handle_data.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_handle_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { i64, %struct.TYPE_12__*, i32, %struct.sockaddr* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@FLOW_DIVERT_TLV_REMOTE_ADDR = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"No remote address provided\00", align 1
@TRUE = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"received %lu bytes of data\00", align 1
@MBUF_DONTWAIT = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"mbuf_split failed: %d\00", align 1
@SHUT_RDWR = common dso_local global i32 0, align 4
@SS_CANTRCVMORE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"received data, but appendstream failed\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to dup the socket address.\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"received data, but sbappendaddr failed\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_divert_pcb*, i32*, i64)* @flow_divert_handle_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_divert_handle_data(%struct.flow_divert_pcb* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.flow_divert_pcb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr_storage, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca i32*, align 8
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %16 = call i32 @FDLOCK(%struct.flow_divert_pcb* %15)
  %17 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %18 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %21, label %262

21:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %11, align 8
  %23 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %24 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %23, i32 0, i32 1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = call i32 @socket_lock(%struct.TYPE_12__* %25, i32 0)
  %27 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %28 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = call i64 @SOCK_TYPE(%struct.TYPE_12__* %29)
  %31 = load i64, i64* @SOCK_DGRAM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  %34 = call i32 @memset(%struct.sockaddr_storage* %10, i32 0, i32 4)
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @FLOW_DIVERT_TLV_REMOTE_ADDR, align 4
  %38 = call i32 @flow_divert_packet_get_tlv(i32* %35, i64 %36, i32 %37, i32 4, %struct.sockaddr_storage* %10, i32* %12)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ugt i64 %43, 4
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %33
  %46 = load i32, i32* @LOG_INFO, align 4
  %47 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %48 = call i32 @FDLOG0(i32 %46, %struct.flow_divert_pcb* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %61

49:                                               ; preds = %41
  %50 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr*
  %51 = call i64 @flow_divert_is_sockaddr_valid(%struct.sockaddr* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* @TRUE, align 8
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 8, %57
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %55, %45
  br label %62

62:                                               ; preds = %61, %21
  %63 = load i32*, i32** %5, align 8
  %64 = call i64 @mbuf_pkthdr_len(i32* %63)
  %65 = load i64, i64* %6, align 8
  %66 = sub i64 %64, %65
  store i64 %66, i64* %9, align 8
  %67 = load i32, i32* @LOG_DEBUG, align 4
  %68 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %69 = load i64, i64* %9, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @FDLOG(i32 %67, %struct.flow_divert_pcb* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i32, i32* @MBUF_DONTWAIT, align 4
  %75 = call i32 @mbuf_split(i32* %72, i64 %73, i32 %74, i32** %8)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %62
  %79 = load i32*, i32** %8, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %78, %62
  %82 = load i32, i32* @LOG_ERR, align 4
  %83 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @FDLOG(i32 %82, %struct.flow_divert_pcb* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %251

86:                                               ; preds = %78
  %87 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %88 = call i64 @flow_divert_check_no_cellular(%struct.flow_divert_pcb* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %92 = call i64 @flow_divert_check_no_expensive(%struct.flow_divert_pcb* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %90, %86
  %95 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %96 = load i32, i32* @SHUT_RDWR, align 4
  %97 = load i64, i64* @TRUE, align 8
  %98 = call i32 @flow_divert_update_closed_state(%struct.flow_divert_pcb* %95, i32 %96, i64 %97)
  %99 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %100 = load i32, i32* @SHUT_RDWR, align 4
  %101 = call i32 @flow_divert_send_close(%struct.flow_divert_pcb* %99, i32 %100)
  %102 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %103 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %102, i32 0, i32 1
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = call i32 @flow_divert_disconnect_socket(%struct.TYPE_12__* %104)
  br label %250

106:                                              ; preds = %90
  %107 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %108 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %107, i32 0, i32 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @SS_CANTRCVMORE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %249, label %115

115:                                              ; preds = %106
  %116 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %117 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = call i64 @SOCK_TYPE(%struct.TYPE_12__* %118)
  %120 = load i64, i64* @SOCK_STREAM, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %157

122:                                              ; preds = %115
  %123 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %124 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %123, i32 0, i32 1
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i32*, i32** %8, align 8
  %128 = call i64 @sbappendstream(%struct.TYPE_13__* %126, i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %122
  %131 = load i64, i64* %9, align 8
  %132 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %133 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %134, %131
  store i64 %135, i64* %133, align 8
  %136 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* @FALSE, align 8
  %139 = call i32 @flow_divert_add_data_statistics(%struct.flow_divert_pcb* %136, i64 %137, i64 %138)
  %140 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %141 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %140, i32 0, i32 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %147 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %149 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %148, i32 0, i32 1
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = call i32 @sorwakeup(%struct.TYPE_12__* %150)
  store i32* null, i32** %8, align 8
  br label %156

152:                                              ; preds = %122
  %153 = load i32, i32* @LOG_ERR, align 4
  %154 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %155 = call i32 @FDLOG0(i32 %153, %struct.flow_divert_pcb* %154, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %156

156:                                              ; preds = %152, %130
  br label %248

157:                                              ; preds = %115
  %158 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %159 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %158, i32 0, i32 1
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = call i64 @SOCK_TYPE(%struct.TYPE_12__* %160)
  %162 = load i64, i64* @SOCK_DGRAM, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %247

164:                                              ; preds = %157
  %165 = load i64, i64* %11, align 8
  %166 = load i64, i64* @TRUE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %164
  %169 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %170 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %169, i32 0, i32 1
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr*
  %179 = call i32 @flow_divert_dup_addr(i32 %177, %struct.sockaddr* %178, %struct.sockaddr** %13)
  store i32 %179, i32* %7, align 4
  br label %194

180:                                              ; preds = %164
  %181 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %182 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %181, i32 0, i32 1
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %191 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %190, i32 0, i32 3
  %192 = load %struct.sockaddr*, %struct.sockaddr** %191, align 8
  %193 = call i32 @flow_divert_dup_addr(i32 %189, %struct.sockaddr* %192, %struct.sockaddr** %13)
  store i32 %193, i32* %7, align 4
  br label %194

194:                                              ; preds = %180, %168
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = load i32, i32* @LOG_ERR, align 4
  %199 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %200 = call i32 @FDLOG0(i32 %198, %struct.flow_divert_pcb* %199, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %201

201:                                              ; preds = %197, %194
  %202 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %203 = call i32* @flow_divert_get_control_mbuf(%struct.flow_divert_pcb* %202)
  store i32* %203, i32** %14, align 8
  %204 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %205 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %204, i32 0, i32 1
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 1
  %208 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %209 = load i32*, i32** %8, align 8
  %210 = load i32*, i32** %14, align 8
  %211 = call i64 @sbappendaddr(%struct.TYPE_13__* %207, %struct.sockaddr* %208, i32* %209, i32* %210, i32* null)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %235

213:                                              ; preds = %201
  %214 = load i64, i64* %9, align 8
  %215 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %216 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = add i64 %217, %214
  store i64 %218, i64* %216, align 8
  %219 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %220 = load i64, i64* %9, align 8
  %221 = load i64, i64* @FALSE, align 8
  %222 = call i32 @flow_divert_add_data_statistics(%struct.flow_divert_pcb* %219, i64 %220, i64 %221)
  %223 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %224 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %223, i32 0, i32 1
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %230 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  %231 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %232 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %231, i32 0, i32 1
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = call i32 @sorwakeup(%struct.TYPE_12__* %233)
  store i32* null, i32** %8, align 8
  br label %239

235:                                              ; preds = %201
  %236 = load i32, i32* @LOG_ERR, align 4
  %237 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %238 = call i32 @FDLOG0(i32 %236, %struct.flow_divert_pcb* %237, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %239

239:                                              ; preds = %235, %213
  %240 = load i32, i32* %7, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %246, label %242

242:                                              ; preds = %239
  %243 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %244 = load i32, i32* @M_TEMP, align 4
  %245 = call i32 @FREE(%struct.sockaddr* %243, i32 %244)
  br label %246

246:                                              ; preds = %242, %239
  br label %247

247:                                              ; preds = %246, %157
  br label %248

248:                                              ; preds = %247, %156
  br label %249

249:                                              ; preds = %248, %106
  br label %250

250:                                              ; preds = %249, %94
  br label %251

251:                                              ; preds = %250, %81
  %252 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %253 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %252, i32 0, i32 1
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %253, align 8
  %255 = call i32 @socket_unlock(%struct.TYPE_12__* %254, i32 0)
  %256 = load i32*, i32** %8, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %258, label %261

258:                                              ; preds = %251
  %259 = load i32*, i32** %8, align 8
  %260 = call i32 @mbuf_freem(i32* %259)
  br label %261

261:                                              ; preds = %258, %251
  br label %262

262:                                              ; preds = %261, %3
  %263 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %264 = call i32 @FDUNLOCK(%struct.flow_divert_pcb* %263)
  ret void
}

declare dso_local i32 @FDLOCK(%struct.flow_divert_pcb*) #1

declare dso_local i32 @socket_lock(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @SOCK_TYPE(%struct.TYPE_12__*) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @flow_divert_packet_get_tlv(i32*, i64, i32, i32, %struct.sockaddr_storage*, i32*) #1

declare dso_local i32 @FDLOG0(i32, %struct.flow_divert_pcb*, i8*) #1

declare dso_local i64 @flow_divert_is_sockaddr_valid(%struct.sockaddr*) #1

declare dso_local i64 @mbuf_pkthdr_len(i32*) #1

declare dso_local i32 @FDLOG(i32, %struct.flow_divert_pcb*, i8*, i32) #1

declare dso_local i32 @mbuf_split(i32*, i64, i32, i32**) #1

declare dso_local i64 @flow_divert_check_no_cellular(%struct.flow_divert_pcb*) #1

declare dso_local i64 @flow_divert_check_no_expensive(%struct.flow_divert_pcb*) #1

declare dso_local i32 @flow_divert_update_closed_state(%struct.flow_divert_pcb*, i32, i64) #1

declare dso_local i32 @flow_divert_send_close(%struct.flow_divert_pcb*, i32) #1

declare dso_local i32 @flow_divert_disconnect_socket(%struct.TYPE_12__*) #1

declare dso_local i64 @sbappendstream(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @flow_divert_add_data_statistics(%struct.flow_divert_pcb*, i64, i64) #1

declare dso_local i32 @sorwakeup(%struct.TYPE_12__*) #1

declare dso_local i32 @flow_divert_dup_addr(i32, %struct.sockaddr*, %struct.sockaddr**) #1

declare dso_local i32* @flow_divert_get_control_mbuf(%struct.flow_divert_pcb*) #1

declare dso_local i64 @sbappendaddr(%struct.TYPE_13__*, %struct.sockaddr*, i32*, i32*, i32*) #1

declare dso_local i32 @FREE(%struct.sockaddr*, i32) #1

declare dso_local i32 @socket_unlock(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @mbuf_freem(i32*) #1

declare dso_local i32 @FDUNLOCK(%struct.flow_divert_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
