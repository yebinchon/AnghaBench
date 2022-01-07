; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcpenqueue.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcpenqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_tcp_pcb = type { i64, i64, i64, i64, %struct.uip_tcpseg*, i32, i32 }
%struct.uip_tcpseg = type { i64, %struct.TYPE_6__*, %struct.uip_tcpseg*, %struct.uip_pbuf*, %struct.TYPE_6__* }
%struct.uip_pbuf = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i8*, i8* }

@.str = private unnamed_addr constant [51 x i8] c"uip_tcpenqueue: too much data (len>pcb->snd_buf).\0A\00", align 1
@UIP_ERR_MEM = common dso_local global i32 0, align 4
@UIP_TCP_SND_QUEUELEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"uip_tcpenqueue: too long queue.\00", align 1
@uip_tcp_segs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"uip_tcpenqueue: could not allocate memory for tcp_seg.\00", align 1
@UIP_PBUF_TRANSPORT = common dso_local global i32 0, align 4
@UIP_PBUF_RAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"uip_tcpenqueue: could not allocate memory for pbuf opdata.\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"uip_tcpenqueue: could not allocate memory for pbuf copy size.\00", align 1
@UIP_PBUF_ROM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"uip_tcpenqueue: could not allocate memory for zero-copy pbuf.\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"uip_tcpenqueue: could not allocate memory for header pbuf.\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"uip_tcpenqueue: queue too long.\00", align 1
@UIP_TCP_HLEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [48 x i8] c"uip_tcpenqueue: no room for TCP header in pbuf.\00", align 1
@UIP_TCP_SYN = common dso_local global i64 0, align 8
@UIP_TCP_FIN = common dso_local global i64 0, align 8
@UIP_TCP_PSH = common dso_local global i32 0, align 4
@UIP_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uip_tcpenqueue(%struct.uip_tcp_pcb* %0, i8* %1, i64 %2, i64 %3, i64 %4, i64* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.uip_tcp_pcb*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.uip_pbuf*, align 8
  %17 = alloca %struct.uip_tcpseg*, align 8
  %18 = alloca %struct.uip_tcpseg*, align 8
  %19 = alloca %struct.uip_tcpseg*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  store %struct.uip_tcp_pcb* %0, %struct.uip_tcp_pcb** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  store %struct.uip_tcpseg* null, %struct.uip_tcpseg** %19, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %9, align 8
  %27 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %7
  %31 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @UIP_ERR_MEM, align 4
  store i32 %32, i32* %8, align 4
  br label %436

33:                                               ; preds = %7
  %34 = load i64, i64* %11, align 8
  store i64 %34, i64* %20, align 8
  %35 = load i8*, i8** %10, align 8
  store i8* %35, i8** %23, align 8
  %36 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %9, align 8
  %37 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %21, align 8
  %39 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %9, align 8
  %40 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %24, align 8
  %42 = load i64, i64* %24, align 8
  %43 = load i64, i64* @UIP_TCP_SND_QUEUELEN, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %428

47:                                               ; preds = %33
  store %struct.uip_tcpseg* null, %struct.uip_tcpseg** %19, align 8
  store %struct.uip_tcpseg* null, %struct.uip_tcpseg** %17, align 8
  store %struct.uip_tcpseg* null, %struct.uip_tcpseg** %18, align 8
  store i64 0, i64* %22, align 8
  br label %48

48:                                               ; preds = %269, %47
  %49 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %19, align 8
  %50 = icmp eq %struct.uip_tcpseg* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %20, align 8
  %53 = icmp sgt i64 %52, 0
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i1 [ true, %48 ], [ %53, %51 ]
  br i1 %55, label %56, label %281

56:                                               ; preds = %54
  %57 = load i64, i64* %20, align 8
  %58 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %9, align 8
  %59 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %9, align 8
  %64 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  br label %68

66:                                               ; preds = %56
  %67 = load i64, i64* %11, align 8
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi i64 [ %65, %62 ], [ %67, %66 ]
  store i64 %69, i64* %22, align 8
  %70 = call %struct.uip_tcpseg* @memb_alloc(i32* @uip_tcp_segs)
  store %struct.uip_tcpseg* %70, %struct.uip_tcpseg** %17, align 8
  %71 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %72 = icmp eq %struct.uip_tcpseg* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %428

75:                                               ; preds = %68
  %76 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %77 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %76, i32 0, i32 2
  store %struct.uip_tcpseg* null, %struct.uip_tcpseg** %77, align 8
  %78 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %79 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %78, i32 0, i32 3
  store %struct.uip_pbuf* null, %struct.uip_pbuf** %79, align 8
  %80 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %19, align 8
  %81 = icmp eq %struct.uip_tcpseg* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  store %struct.uip_tcpseg* %83, %struct.uip_tcpseg** %19, align 8
  br label %88

84:                                               ; preds = %75
  %85 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %86 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %18, align 8
  %87 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %86, i32 0, i32 2
  store %struct.uip_tcpseg* %85, %struct.uip_tcpseg** %87, align 8
  br label %88

88:                                               ; preds = %84, %82
  %89 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  store %struct.uip_tcpseg* %89, %struct.uip_tcpseg** %18, align 8
  %90 = load i64*, i64** %14, align 8
  %91 = icmp ne i64* %90, null
  br i1 %91, label %92, label %113

92:                                               ; preds = %88
  %93 = load i32, i32* @UIP_PBUF_TRANSPORT, align 4
  %94 = load i64, i64* %15, align 8
  %95 = load i32, i32* @UIP_PBUF_RAM, align 4
  %96 = call i8* @uip_pbuf_alloc(i32 %93, i64 %94, i32 %95)
  %97 = bitcast i8* %96 to %struct.uip_pbuf*
  %98 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %99 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %98, i32 0, i32 3
  store %struct.uip_pbuf* %97, %struct.uip_pbuf** %99, align 8
  %100 = icmp eq %struct.uip_pbuf* %97, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  br label %428

103:                                              ; preds = %92
  %104 = load i64, i64* %24, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %24, align 8
  %106 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %107 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %106, i32 0, i32 3
  %108 = load %struct.uip_pbuf*, %struct.uip_pbuf** %107, align 8
  %109 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %112 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %111, i32 0, i32 4
  store %struct.TYPE_6__* %110, %struct.TYPE_6__** %112, align 8
  br label %190

113:                                              ; preds = %88
  %114 = load i64, i64* %13, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %150

116:                                              ; preds = %113
  %117 = load i32, i32* @UIP_PBUF_TRANSPORT, align 4
  %118 = load i64, i64* %22, align 8
  %119 = load i32, i32* @UIP_PBUF_RAM, align 4
  %120 = call i8* @uip_pbuf_alloc(i32 %117, i64 %118, i32 %119)
  %121 = bitcast i8* %120 to %struct.uip_pbuf*
  %122 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %123 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %122, i32 0, i32 3
  store %struct.uip_pbuf* %121, %struct.uip_pbuf** %123, align 8
  %124 = icmp eq %struct.uip_pbuf* %121, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  br label %428

127:                                              ; preds = %116
  %128 = load i64, i64* %24, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %24, align 8
  %130 = load i8*, i8** %23, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %134 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %133, i32 0, i32 3
  %135 = load %struct.uip_pbuf*, %struct.uip_pbuf** %134, align 8
  %136 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load i8*, i8** %23, align 8
  %139 = bitcast i8* %138 to i64*
  %140 = load i64, i64* %22, align 8
  %141 = call i32 @UIP_MEMCPY(%struct.TYPE_6__* %137, i64* %139, i64 %140)
  br label %142

142:                                              ; preds = %132, %127
  %143 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %144 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %143, i32 0, i32 3
  %145 = load %struct.uip_pbuf*, %struct.uip_pbuf** %144, align 8
  %146 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %149 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %148, i32 0, i32 4
  store %struct.TYPE_6__* %147, %struct.TYPE_6__** %149, align 8
  br label %189

150:                                              ; preds = %113
  %151 = load i32, i32* @UIP_PBUF_TRANSPORT, align 4
  %152 = load i64, i64* %22, align 8
  %153 = load i32, i32* @UIP_PBUF_ROM, align 4
  %154 = call i8* @uip_pbuf_alloc(i32 %151, i64 %152, i32 %153)
  %155 = bitcast i8* %154 to %struct.uip_pbuf*
  store %struct.uip_pbuf* %155, %struct.uip_pbuf** %16, align 8
  %156 = icmp eq %struct.uip_pbuf* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  br label %428

159:                                              ; preds = %150
  %160 = load i64, i64* %24, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %24, align 8
  %162 = load i8*, i8** %23, align 8
  %163 = bitcast i8* %162 to %struct.TYPE_6__*
  %164 = load %struct.uip_pbuf*, %struct.uip_pbuf** %16, align 8
  %165 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %164, i32 0, i32 0
  store %struct.TYPE_6__* %163, %struct.TYPE_6__** %165, align 8
  %166 = load i8*, i8** %23, align 8
  %167 = bitcast i8* %166 to %struct.TYPE_6__*
  %168 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %169 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %168, i32 0, i32 4
  store %struct.TYPE_6__* %167, %struct.TYPE_6__** %169, align 8
  %170 = load i32, i32* @UIP_PBUF_TRANSPORT, align 4
  %171 = load i32, i32* @UIP_PBUF_RAM, align 4
  %172 = call i8* @uip_pbuf_alloc(i32 %170, i64 0, i32 %171)
  %173 = bitcast i8* %172 to %struct.uip_pbuf*
  %174 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %175 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %174, i32 0, i32 3
  store %struct.uip_pbuf* %173, %struct.uip_pbuf** %175, align 8
  %176 = icmp eq %struct.uip_pbuf* %173, null
  br i1 %176, label %177, label %181

177:                                              ; preds = %159
  %178 = call i32 @UIP_LOG(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %179 = load %struct.uip_pbuf*, %struct.uip_pbuf** %16, align 8
  %180 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %179)
  br label %428

181:                                              ; preds = %159
  %182 = load i64, i64* %24, align 8
  %183 = add nsw i64 %182, 1
  store i64 %183, i64* %24, align 8
  %184 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %185 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %184, i32 0, i32 3
  %186 = load %struct.uip_pbuf*, %struct.uip_pbuf** %185, align 8
  %187 = load %struct.uip_pbuf*, %struct.uip_pbuf** %16, align 8
  %188 = call i32 @uip_pbuf_cat(%struct.uip_pbuf* %186, %struct.uip_pbuf* %187)
  store %struct.uip_pbuf* null, %struct.uip_pbuf** %16, align 8
  br label %189

189:                                              ; preds = %181, %142
  br label %190

190:                                              ; preds = %189, %103
  %191 = load i64, i64* %24, align 8
  %192 = load i64, i64* @UIP_TCP_SND_QUEUELEN, align 8
  %193 = icmp sgt i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %428

196:                                              ; preds = %190
  %197 = load i64, i64* %22, align 8
  %198 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %199 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  %200 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %201 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %200, i32 0, i32 3
  %202 = load %struct.uip_pbuf*, %struct.uip_pbuf** %201, align 8
  %203 = load i32, i32* @UIP_TCP_HLEN, align 4
  %204 = call i64 @uip_pbuf_header(%struct.uip_pbuf* %202, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %196
  %207 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  br label %428

208:                                              ; preds = %196
  %209 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %210 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %209, i32 0, i32 3
  %211 = load %struct.uip_pbuf*, %struct.uip_pbuf** %210, align 8
  %212 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %211, i32 0, i32 0
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %215 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %214, i32 0, i32 1
  store %struct.TYPE_6__* %213, %struct.TYPE_6__** %215, align 8
  %216 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %9, align 8
  %217 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 4
  %219 = call i8* @htons(i32 %218)
  %220 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %221 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %220, i32 0, i32 1
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 3
  store i8* %219, i8** %223, align 8
  %224 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %9, align 8
  %225 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = call i8* @htons(i32 %226)
  %228 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %229 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %228, i32 0, i32 1
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 2
  store i8* %227, i8** %231, align 8
  %232 = load i64, i64* %21, align 8
  %233 = call i32 @htonl(i64 %232)
  %234 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %235 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %234, i32 0, i32 1
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 1
  store i32 %233, i32* %237, align 8
  %238 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %239 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %238, i32 0, i32 1
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  store i64 0, i64* %241, align 8
  %242 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %243 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %242, i32 0, i32 1
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = load i64, i64* %12, align 8
  %246 = call i32 @UIP_TCPH_FLAGS_SET(%struct.TYPE_6__* %244, i64 %245)
  %247 = load i64*, i64** %14, align 8
  %248 = icmp eq i64* %247, null
  br i1 %248, label %249, label %254

249:                                              ; preds = %208
  %250 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %251 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %250, i32 0, i32 1
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %251, align 8
  %253 = call i32 @UIP_TCPH_HDRLEN_SET(%struct.TYPE_6__* %252, i32 5)
  br label %269

254:                                              ; preds = %208
  %255 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %256 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %255, i32 0, i32 1
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %256, align 8
  %258 = load i64, i64* %15, align 8
  %259 = sdiv i64 %258, 4
  %260 = add nsw i64 5, %259
  %261 = trunc i64 %260 to i32
  %262 = call i32 @UIP_TCPH_HDRLEN_SET(%struct.TYPE_6__* %257, i32 %261)
  %263 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %264 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %263, i32 0, i32 4
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %264, align 8
  %266 = load i64*, i64** %14, align 8
  %267 = load i64, i64* %15, align 8
  %268 = call i32 @UIP_MEMCPY(%struct.TYPE_6__* %265, i64* %266, i64 %267)
  br label %269

269:                                              ; preds = %254, %249
  %270 = load i64, i64* %22, align 8
  %271 = load i64, i64* %20, align 8
  %272 = sub nsw i64 %271, %270
  store i64 %272, i64* %20, align 8
  %273 = load i64, i64* %22, align 8
  %274 = load i64, i64* %21, align 8
  %275 = add nsw i64 %274, %273
  store i64 %275, i64* %21, align 8
  %276 = load i8*, i8** %23, align 8
  %277 = bitcast i8* %276 to i64*
  %278 = load i64, i64* %22, align 8
  %279 = getelementptr inbounds i64, i64* %277, i64 %278
  %280 = bitcast i64* %279 to i8*
  store i8* %280, i8** %23, align 8
  br label %48

281:                                              ; preds = %54
  %282 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %9, align 8
  %283 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %282, i32 0, i32 4
  %284 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %283, align 8
  %285 = icmp eq %struct.uip_tcpseg* %284, null
  br i1 %285, label %286, label %287

286:                                              ; preds = %281
  store %struct.uip_tcpseg* null, %struct.uip_tcpseg** %18, align 8
  br label %302

287:                                              ; preds = %281
  %288 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %9, align 8
  %289 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %288, i32 0, i32 4
  %290 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %289, align 8
  store %struct.uip_tcpseg* %290, %struct.uip_tcpseg** %18, align 8
  br label %291

291:                                              ; preds = %297, %287
  %292 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %18, align 8
  %293 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %292, i32 0, i32 2
  %294 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %293, align 8
  %295 = icmp ne %struct.uip_tcpseg* %294, null
  br i1 %295, label %296, label %301

296:                                              ; preds = %291
  br label %297

297:                                              ; preds = %296
  %298 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %18, align 8
  %299 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %298, i32 0, i32 2
  %300 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %299, align 8
  store %struct.uip_tcpseg* %300, %struct.uip_tcpseg** %18, align 8
  br label %291

301:                                              ; preds = %291
  br label %302

302:                                              ; preds = %301, %286
  %303 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %18, align 8
  %304 = icmp ne %struct.uip_tcpseg* %303, null
  br i1 %304, label %305, label %371

305:                                              ; preds = %302
  %306 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %18, align 8
  %307 = call i64 @UIP_TCP_TCPLEN(%struct.uip_tcpseg* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %371

309:                                              ; preds = %305
  %310 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %18, align 8
  %311 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %310, i32 0, i32 1
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %311, align 8
  %313 = call i64 @UIP_TCPH_FLAGS(%struct.TYPE_6__* %312)
  %314 = load i64, i64* @UIP_TCP_SYN, align 8
  %315 = load i64, i64* @UIP_TCP_FIN, align 8
  %316 = or i64 %314, %315
  %317 = and i64 %313, %316
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %371, label %319

319:                                              ; preds = %309
  %320 = load i64, i64* %12, align 8
  %321 = load i64, i64* @UIP_TCP_SYN, align 8
  %322 = load i64, i64* @UIP_TCP_FIN, align 8
  %323 = or i64 %321, %322
  %324 = and i64 %320, %323
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %371, label %326

326:                                              ; preds = %319
  %327 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %18, align 8
  %328 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %19, align 8
  %331 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = add nsw i64 %329, %332
  %334 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %9, align 8
  %335 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = icmp sle i64 %333, %336
  br i1 %337, label %338, label %371

338:                                              ; preds = %326
  %339 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %19, align 8
  %340 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %339, i32 0, i32 3
  %341 = load %struct.uip_pbuf*, %struct.uip_pbuf** %340, align 8
  %342 = load i32, i32* @UIP_TCP_HLEN, align 4
  %343 = sub nsw i32 0, %342
  %344 = call i64 @uip_pbuf_header(%struct.uip_pbuf* %341, i32 %343)
  %345 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %18, align 8
  %346 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %345, i32 0, i32 3
  %347 = load %struct.uip_pbuf*, %struct.uip_pbuf** %346, align 8
  %348 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %19, align 8
  %349 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %348, i32 0, i32 3
  %350 = load %struct.uip_pbuf*, %struct.uip_pbuf** %349, align 8
  %351 = call i32 @uip_pbuf_cat(%struct.uip_pbuf* %347, %struct.uip_pbuf* %350)
  %352 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %19, align 8
  %353 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %18, align 8
  %356 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = add nsw i64 %357, %354
  store i64 %358, i64* %356, align 8
  %359 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %19, align 8
  %360 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %359, i32 0, i32 2
  %361 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %360, align 8
  %362 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %18, align 8
  %363 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %362, i32 0, i32 2
  store %struct.uip_tcpseg* %361, %struct.uip_tcpseg** %363, align 8
  %364 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %365 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %19, align 8
  %366 = icmp eq %struct.uip_tcpseg* %364, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %338
  store %struct.uip_tcpseg* null, %struct.uip_tcpseg** %17, align 8
  br label %368

368:                                              ; preds = %367, %338
  %369 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %19, align 8
  %370 = call i32 @memb_free(i32* @uip_tcp_segs, %struct.uip_tcpseg* %369)
  br label %383

371:                                              ; preds = %326, %319, %309, %305, %302
  %372 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %18, align 8
  %373 = icmp eq %struct.uip_tcpseg* %372, null
  br i1 %373, label %374, label %378

374:                                              ; preds = %371
  %375 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %19, align 8
  %376 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %9, align 8
  %377 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %376, i32 0, i32 4
  store %struct.uip_tcpseg* %375, %struct.uip_tcpseg** %377, align 8
  br label %382

378:                                              ; preds = %371
  %379 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %19, align 8
  %380 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %18, align 8
  %381 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %380, i32 0, i32 2
  store %struct.uip_tcpseg* %379, %struct.uip_tcpseg** %381, align 8
  br label %382

382:                                              ; preds = %378, %374
  br label %383

383:                                              ; preds = %382, %368
  %384 = load i64, i64* %12, align 8
  %385 = load i64, i64* @UIP_TCP_SYN, align 8
  %386 = and i64 %384, %385
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %393, label %388

388:                                              ; preds = %383
  %389 = load i64, i64* %12, align 8
  %390 = load i64, i64* @UIP_TCP_FIN, align 8
  %391 = and i64 %389, %390
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %388, %383
  %394 = load i64, i64* %11, align 8
  %395 = add nsw i64 %394, 1
  store i64 %395, i64* %11, align 8
  br label %396

396:                                              ; preds = %393, %388
  %397 = load i64, i64* %11, align 8
  %398 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %9, align 8
  %399 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %398, i32 0, i32 1
  %400 = load i64, i64* %399, align 8
  %401 = add nsw i64 %400, %397
  store i64 %401, i64* %399, align 8
  %402 = load i64, i64* %11, align 8
  %403 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %9, align 8
  %404 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = sub nsw i64 %405, %402
  store i64 %406, i64* %404, align 8
  %407 = load i64, i64* %24, align 8
  %408 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %9, align 8
  %409 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %408, i32 0, i32 2
  store i64 %407, i64* %409, align 8
  %410 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %411 = icmp ne %struct.uip_tcpseg* %410, null
  br i1 %411, label %412, label %426

412:                                              ; preds = %396
  %413 = load i64, i64* %22, align 8
  %414 = icmp sgt i64 %413, 0
  br i1 %414, label %415, label %426

415:                                              ; preds = %412
  %416 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %417 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %416, i32 0, i32 1
  %418 = load %struct.TYPE_6__*, %struct.TYPE_6__** %417, align 8
  %419 = icmp ne %struct.TYPE_6__* %418, null
  br i1 %419, label %420, label %426

420:                                              ; preds = %415
  %421 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %17, align 8
  %422 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %421, i32 0, i32 1
  %423 = load %struct.TYPE_6__*, %struct.TYPE_6__** %422, align 8
  %424 = load i32, i32* @UIP_TCP_PSH, align 4
  %425 = call i32 @UIP_TCPH_SET_FLAG(%struct.TYPE_6__* %423, i32 %424)
  br label %426

426:                                              ; preds = %420, %415, %412, %396
  %427 = load i32, i32* @UIP_ERR_OK, align 4
  store i32 %427, i32* %8, align 4
  br label %436

428:                                              ; preds = %206, %194, %177, %157, %125, %101, %73, %45
  %429 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %19, align 8
  %430 = icmp ne %struct.uip_tcpseg* %429, null
  br i1 %430, label %431, label %434

431:                                              ; preds = %428
  %432 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %19, align 8
  %433 = call i32 @uip_tcpsegs_free(%struct.uip_tcpseg* %432)
  br label %434

434:                                              ; preds = %431, %428
  %435 = load i32, i32* @UIP_ERR_MEM, align 4
  store i32 %435, i32* %8, align 4
  br label %436

436:                                              ; preds = %434, %426, %30
  %437 = load i32, i32* %8, align 4
  ret i32 %437
}

declare dso_local i32 @UIP_ERROR(i8*) #1

declare dso_local %struct.uip_tcpseg* @memb_alloc(i32*) #1

declare dso_local i8* @uip_pbuf_alloc(i32, i64, i32) #1

declare dso_local i32 @UIP_MEMCPY(%struct.TYPE_6__*, i64*, i64) #1

declare dso_local i32 @UIP_LOG(i8*) #1

declare dso_local i32 @uip_pbuf_free(%struct.uip_pbuf*) #1

declare dso_local i32 @uip_pbuf_cat(%struct.uip_pbuf*, %struct.uip_pbuf*) #1

declare dso_local i64 @uip_pbuf_header(%struct.uip_pbuf*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @UIP_TCPH_FLAGS_SET(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @UIP_TCPH_HDRLEN_SET(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @UIP_TCP_TCPLEN(%struct.uip_tcpseg*) #1

declare dso_local i64 @UIP_TCPH_FLAGS(%struct.TYPE_6__*) #1

declare dso_local i32 @memb_free(i32*, %struct.uip_tcpseg*) #1

declare dso_local i32 @UIP_TCPH_SET_FLAG(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @uip_tcpsegs_free(%struct.uip_tcpseg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
