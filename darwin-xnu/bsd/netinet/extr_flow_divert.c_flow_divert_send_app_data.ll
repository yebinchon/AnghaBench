; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_app_data.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_app_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr = type { i32 }

@SOCK_STREAM = common dso_local global i64 0, align 8
@FLOW_DIVERT_CHUNK_SIZE = common dso_local global i64 0, align 8
@MBUF_DONTWAIT = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"mbuf_split failed: %d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"sbappendstream failed with pkt_data, send buffer size = %u, send_window = %u\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [84 x i8] c"sbappendstream failed with remaining_data, send buffer size = %u, send_window = %u\0A\00", align 1
@SOCK_DGRAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [58 x i8] c"flow_divert_send_data_packet failed. send data size = %lu\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"sbappendaddr failed. send buffer size = %u, send_window = %u, error = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"sbappendrecord failed. send buffer size = %u, send_window = %u, error = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_divert_pcb*, i32*, %struct.sockaddr*)* @flow_divert_send_app_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_send_app_data(%struct.flow_divert_pcb* %0, i32* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca %struct.flow_divert_pcb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @mbuf_pkthdr_len(i32* %13)
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %17 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ugt i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %22 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %20, %3
  %25 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %26 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i64 0, i64* %7, align 8
  br label %33

33:                                               ; preds = %32, %24
  %34 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %35 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = call i64 @SOCK_TYPE(%struct.TYPE_7__* %36)
  %38 = load i64, i64* @SOCK_STREAM, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %172

40:                                               ; preds = %33
  store i64 0, i64* %9, align 8
  %41 = load i32*, i32** %5, align 8
  store i32* %41, i32** %10, align 8
  store i32* null, i32** %11, align 8
  br label %42

42:                                               ; preds = %92, %40
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32*, i32** %10, align 8
  %48 = icmp ne i32* %47, null
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi i1 [ false, %42 ], [ %48, %46 ]
  br i1 %50, label %51, label %96

51:                                               ; preds = %49
  %52 = load i32*, i32** %10, align 8
  store i32* %52, i32** %11, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub i64 %53, %54
  %56 = load i64, i64* @FLOW_DIVERT_CHUNK_SIZE, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i64, i64* @FLOW_DIVERT_CHUNK_SIZE, align 8
  store i64 %59, i64* %12, align 8
  br label %64

60:                                               ; preds = %51
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %9, align 8
  %63 = sub i64 %61, %62
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %60, %58
  %65 = load i64, i64* %12, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i64 @mbuf_pkthdr_len(i32* %66)
  %68 = icmp ult i64 %65, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load i32*, i32** %11, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i32, i32* @MBUF_DONTWAIT, align 4
  %73 = call i32 @mbuf_split(i32* %70, i64 %71, i32 %72, i32** %10)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i32, i32* @LOG_ERR, align 4
  %78 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i32, %struct.flow_divert_pcb*, i8*, i32, ...) @FDLOG(i32 %77, %struct.flow_divert_pcb* %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %79)
  store i32* null, i32** %11, align 8
  br label %96

81:                                               ; preds = %69
  br label %83

82:                                               ; preds = %64
  store i32* null, i32** %10, align 8
  br label %83

83:                                               ; preds = %82, %81
  %84 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i32, i32* @FALSE, align 4
  %88 = call i32 @flow_divert_send_data_packet(%struct.flow_divert_pcb* %84, i32* %85, i64 %86, %struct.sockaddr* null, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %96

92:                                               ; preds = %83
  store i32* null, i32** %11, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %9, align 8
  br label %42

96:                                               ; preds = %91, %76, %49
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %99 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub i64 %100, %97
  store i64 %101, i64* %99, align 8
  store i32 0, i32* %8, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %136

104:                                              ; preds = %96
  %105 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %106 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = call i32 @sbspace(%struct.TYPE_6__* %108)
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %133

111:                                              ; preds = %104
  %112 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %113 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32*, i32** %11, align 8
  %117 = call i32 @sbappendstream(%struct.TYPE_6__* %115, i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %111
  %120 = load i32, i32* @LOG_ERR, align 4
  %121 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %122 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %123 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %122, i32 0, i32 1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %129 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (i32, %struct.flow_divert_pcb*, i8*, i32, ...) @FDLOG(i32 %120, %struct.flow_divert_pcb* %121, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %127, i64 %130)
  br label %132

132:                                              ; preds = %119, %111
  br label %135

133:                                              ; preds = %104
  %134 = load i32, i32* @ENOBUFS, align 4
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %133, %132
  br label %136

136:                                              ; preds = %135, %96
  %137 = load i32*, i32** %10, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %171

139:                                              ; preds = %136
  %140 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %141 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %140, i32 0, i32 1
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = call i32 @sbspace(%struct.TYPE_6__* %143)
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %168

146:                                              ; preds = %139
  %147 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %148 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %147, i32 0, i32 1
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32*, i32** %10, align 8
  %152 = call i32 @sbappendstream(%struct.TYPE_6__* %150, i32* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %167, label %154

154:                                              ; preds = %146
  %155 = load i32, i32* @LOG_ERR, align 4
  %156 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %157 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %158 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %157, i32 0, i32 1
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %164 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 (i32, %struct.flow_divert_pcb*, i8*, i32, ...) @FDLOG(i32 %155, %struct.flow_divert_pcb* %156, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 %162, i64 %165)
  br label %167

167:                                              ; preds = %154, %146
  br label %170

168:                                              ; preds = %139
  %169 = load i32, i32* @ENOBUFS, align 4
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %168, %167
  br label %171

171:                                              ; preds = %170, %136
  br label %274

172:                                              ; preds = %33
  %173 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %174 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %173, i32 0, i32 1
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = call i64 @SOCK_TYPE(%struct.TYPE_7__* %175)
  %177 = load i64, i64* @SOCK_DGRAM, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %273

179:                                              ; preds = %172
  %180 = load i64, i64* %7, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %179
  %183 = load i32*, i32** %5, align 8
  %184 = call i64 @mbuf_pkthdr_len(i32* %183)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %208

186:                                              ; preds = %182, %179
  %187 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %188 = load i32*, i32** %5, align 8
  %189 = load i64, i64* %7, align 8
  %190 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %191 = load i32, i32* @FALSE, align 4
  %192 = call i32 @flow_divert_send_data_packet(%struct.flow_divert_pcb* %187, i32* %188, i64 %189, %struct.sockaddr* %190, i32 %191)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %186
  %196 = load i32, i32* @LOG_ERR, align 4
  %197 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %198 = load i64, i64* %7, align 8
  %199 = trunc i64 %198 to i32
  %200 = call i32 (i32, %struct.flow_divert_pcb*, i8*, i32, ...) @FDLOG(i32 %196, %struct.flow_divert_pcb* %197, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %199)
  br label %207

201:                                              ; preds = %186
  %202 = load i64, i64* %7, align 8
  %203 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %204 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = sub i64 %205, %202
  store i64 %206, i64* %204, align 8
  br label %207

207:                                              ; preds = %201, %195
  br label %272

208:                                              ; preds = %182
  %209 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %210 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %209, i32 0, i32 1
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = call i32 @sbspace(%struct.TYPE_6__* %212)
  %214 = load i32*, i32** %5, align 8
  %215 = call i64 @mbuf_pkthdr_len(i32* %214)
  %216 = trunc i64 %215 to i32
  %217 = icmp sge i32 %213, %216
  br i1 %217, label %218, label %269

218:                                              ; preds = %208
  %219 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %220 = icmp ne %struct.sockaddr* %219, null
  br i1 %220, label %221, label %245

221:                                              ; preds = %218
  %222 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %223 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %222, i32 0, i32 1
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %227 = load i32*, i32** %5, align 8
  %228 = call i32 @sbappendaddr(%struct.TYPE_6__* %225, %struct.sockaddr* %226, i32* %227, i32* null, i32* %8)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %244, label %230

230:                                              ; preds = %221
  %231 = load i32, i32* @LOG_ERR, align 4
  %232 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %233 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %234 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %233, i32 0, i32 1
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %240 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i32, i32* %8, align 4
  %243 = call i32 (i32, %struct.flow_divert_pcb*, i8*, i32, ...) @FDLOG(i32 %231, %struct.flow_divert_pcb* %232, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %238, i64 %241, i32 %242)
  br label %244

244:                                              ; preds = %230, %221
  br label %268

245:                                              ; preds = %218
  %246 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %247 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %246, i32 0, i32 1
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32*, i32** %5, align 8
  %251 = call i32 @sbappendrecord(%struct.TYPE_6__* %249, i32* %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %267, label %253

253:                                              ; preds = %245
  %254 = load i32, i32* @LOG_ERR, align 4
  %255 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %256 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %257 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %256, i32 0, i32 1
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %263 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i32, i32* %8, align 4
  %266 = call i32 (i32, %struct.flow_divert_pcb*, i8*, i32, ...) @FDLOG(i32 %254, %struct.flow_divert_pcb* %255, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0), i32 %261, i64 %264, i32 %265)
  br label %267

267:                                              ; preds = %253, %245
  br label %268

268:                                              ; preds = %267, %244
  br label %271

269:                                              ; preds = %208
  %270 = load i32, i32* @ENOBUFS, align 4
  store i32 %270, i32* %8, align 4
  br label %271

271:                                              ; preds = %269, %268
  br label %272

272:                                              ; preds = %271, %207
  br label %273

273:                                              ; preds = %272, %172
  br label %274

274:                                              ; preds = %273, %171
  %275 = load i32, i32* %8, align 4
  ret i32 %275
}

declare dso_local i64 @mbuf_pkthdr_len(i32*) #1

declare dso_local i64 @SOCK_TYPE(%struct.TYPE_7__*) #1

declare dso_local i32 @mbuf_split(i32*, i64, i32, i32**) #1

declare dso_local i32 @FDLOG(i32, %struct.flow_divert_pcb*, i8*, i32, ...) #1

declare dso_local i32 @flow_divert_send_data_packet(%struct.flow_divert_pcb*, i32*, i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @sbspace(%struct.TYPE_6__*) #1

declare dso_local i32 @sbappendstream(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @sbappendaddr(%struct.TYPE_6__*, %struct.sockaddr*, i32*, i32*, i32*) #1

declare dso_local i32 @sbappendrecord(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
