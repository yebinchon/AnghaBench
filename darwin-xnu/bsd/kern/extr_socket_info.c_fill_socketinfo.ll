; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_socket_info.c_fill_socketinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_socket_info.c_fill_socketinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.socket_info = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.kern_event_info, %struct.ndrv_info, %struct.un_sockinfo, %struct.tcp_sockinfo, %struct.in_sockinfo }
%struct.kern_event_info = type { i32, i32, i32 }
%struct.ndrv_info = type { i32, i32, i32 }
%struct.un_sockinfo = type { i32, i32, i8*, i8* }
%struct.tcp_sockinfo = type { i32, i32, i32, i32*, i32 }
%struct.in_sockinfo = type { %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.inpcb = type { i32*, %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_16__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.tcpcb = type { %struct.TYPE_13__*, %struct.tcpcb*, i32, i32, i32*, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.unpcb = type { %struct.tcpcb*, %struct.TYPE_13__* }
%struct.ndrv_cb = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32 }
%struct.kern_event_pcb = type { i32, i32, i32 }

@SOCKINFO_GENERIC = common dso_local global i32 0, align 4
@SOCKINFO_IN = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i16 0, align 2
@IPPROTO_TCP = common dso_local global i16 0, align 2
@SOCKINFO_TCP = common dso_local global i32 0, align 4
@TCPT_REXMT = common dso_local global i64 0, align 8
@TSI_T_REXMT = common dso_local global i64 0, align 8
@TCPT_PERSIST = common dso_local global i64 0, align 8
@TSI_T_PERSIST = common dso_local global i64 0, align 8
@TCPT_KEEP = common dso_local global i64 0, align 8
@TSI_T_KEEP = common dso_local global i64 0, align 8
@TCPT_2MSL = common dso_local global i64 0, align 8
@TSI_T_2MSL = common dso_local global i64 0, align 8
@SOCKINFO_UN = common dso_local global i32 0, align 4
@SOCK_MAXADDRLEN = common dso_local global i64 0, align 8
@SOCKINFO_NDRV = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SYSPROTO_EVENT = common dso_local global i16 0, align 2
@SOCKINFO_KERN_EVENT = common dso_local global i32 0, align 4
@SYSPROTO_CONTROL = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_socketinfo(%struct.socket* %0, %struct.socket_info* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.socket_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca %struct.in_sockinfo*, align 8
  %10 = alloca %struct.inpcb*, align 8
  %11 = alloca %struct.tcp_sockinfo*, align 8
  %12 = alloca %struct.tcpcb*, align 8
  %13 = alloca %struct.unpcb*, align 8
  %14 = alloca %struct.un_sockinfo*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ndrv_cb*, align 8
  %18 = alloca %struct.ndrv_info*, align 8
  %19 = alloca %struct.ifnet*, align 8
  %20 = alloca %struct.kern_event_pcb*, align 8
  %21 = alloca %struct.kern_event_info*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.socket_info* %1, %struct.socket_info** %4, align 8
  store i32 0, i32* %5, align 4
  %22 = load %struct.socket*, %struct.socket** %3, align 8
  %23 = call i32 @socket_lock(%struct.socket* %22, i32 0)
  %24 = load i32, i32* @SOCKINFO_GENERIC, align 4
  %25 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %26 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.socket*, %struct.socket** %3, align 8
  %28 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %29 = call i32 @fill_common_sockinfo(%struct.socket* %27, %struct.socket_info* %28)
  %30 = load %struct.socket*, %struct.socket** %3, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %2
  %35 = load %struct.socket*, %struct.socket** %3, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = icmp eq %struct.TYPE_14__* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load %struct.socket*, %struct.socket** %3, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %34, %2
  br label %413

47:                                               ; preds = %39
  %48 = load %struct.socket*, %struct.socket** %3, align 8
  %49 = call i32 @SOCK_DOM(%struct.socket* %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.socket*, %struct.socket** %3, align 8
  %51 = call signext i16 @SOCK_TYPE(%struct.socket* %50)
  store i16 %51, i16* %7, align 2
  %52 = load %struct.socket*, %struct.socket** %3, align 8
  %53 = call signext i16 @SOCK_PROTO(%struct.socket* %52)
  store i16 %53, i16* %8, align 2
  %54 = load i32, i32* %6, align 4
  switch i32 %54, label %411 [
    i32 134, label %55
    i32 133, label %55
    i32 128, label %232
    i32 132, label %326
    i32 129, label %364
    i32 130, label %410
    i32 131, label %410
  ]

55:                                               ; preds = %47, %47
  %56 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %57 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 4
  store %struct.in_sockinfo* %58, %struct.in_sockinfo** %9, align 8
  %59 = load %struct.socket*, %struct.socket** %3, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = bitcast i32* %61 to %struct.inpcb*
  store %struct.inpcb* %62, %struct.inpcb** %10, align 8
  %63 = load i32, i32* @SOCKINFO_IN, align 4
  %64 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %65 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %67 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.in_sockinfo*, %struct.in_sockinfo** %9, align 8
  %70 = getelementptr inbounds %struct.in_sockinfo, %struct.in_sockinfo* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 4
  %71 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %72 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.in_sockinfo*, %struct.in_sockinfo** %9, align 8
  %75 = getelementptr inbounds %struct.in_sockinfo, %struct.in_sockinfo* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 4
  %76 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %77 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.in_sockinfo*, %struct.in_sockinfo** %9, align 8
  %80 = getelementptr inbounds %struct.in_sockinfo, %struct.in_sockinfo* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 4
  %81 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %82 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.in_sockinfo*, %struct.in_sockinfo** %9, align 8
  %85 = getelementptr inbounds %struct.in_sockinfo, %struct.in_sockinfo* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  %86 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %87 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.in_sockinfo*, %struct.in_sockinfo** %9, align 8
  %90 = getelementptr inbounds %struct.in_sockinfo, %struct.in_sockinfo* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  %91 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %92 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.in_sockinfo*, %struct.in_sockinfo** %9, align 8
  %95 = getelementptr inbounds %struct.in_sockinfo, %struct.in_sockinfo* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %97 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.in_sockinfo*, %struct.in_sockinfo** %9, align 8
  %101 = getelementptr inbounds %struct.in_sockinfo, %struct.in_sockinfo* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  %103 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %104 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.in_sockinfo*, %struct.in_sockinfo** %9, align 8
  %108 = getelementptr inbounds %struct.in_sockinfo, %struct.in_sockinfo* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  %110 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %111 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.in_sockinfo*, %struct.in_sockinfo** %9, align 8
  %115 = getelementptr inbounds %struct.in_sockinfo, %struct.in_sockinfo* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  %117 = load %struct.in_sockinfo*, %struct.in_sockinfo** %9, align 8
  %118 = getelementptr inbounds %struct.in_sockinfo, %struct.in_sockinfo* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 3
  store i32 0, i32* %119, align 4
  %120 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %121 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.in_sockinfo*, %struct.in_sockinfo** %9, align 8
  %125 = getelementptr inbounds %struct.in_sockinfo, %struct.in_sockinfo* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 4
  %127 = load %struct.in_sockinfo*, %struct.in_sockinfo** %9, align 8
  %128 = getelementptr inbounds %struct.in_sockinfo, %struct.in_sockinfo* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  store i32 0, i32* %129, align 4
  %130 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %131 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.in_sockinfo*, %struct.in_sockinfo** %9, align 8
  %135 = getelementptr inbounds %struct.in_sockinfo, %struct.in_sockinfo* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 4
  %137 = load i16, i16* %7, align 2
  %138 = sext i16 %137 to i32
  %139 = load i16, i16* @SOCK_STREAM, align 2
  %140 = sext i16 %139 to i32
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %231

142:                                              ; preds = %55
  %143 = load i16, i16* %8, align 2
  %144 = sext i16 %143 to i32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %142
  %147 = load i16, i16* %8, align 2
  %148 = sext i16 %147 to i32
  %149 = load i16, i16* @IPPROTO_TCP, align 2
  %150 = sext i16 %149 to i32
  %151 = icmp eq i32 %148, %150
  br i1 %151, label %152, label %231

152:                                              ; preds = %146, %142
  %153 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %154 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %231

157:                                              ; preds = %152
  %158 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %159 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 3
  store %struct.tcp_sockinfo* %160, %struct.tcp_sockinfo** %11, align 8
  %161 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %162 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = bitcast i32* %163 to %struct.tcpcb*
  store %struct.tcpcb* %164, %struct.tcpcb** %12, align 8
  %165 = load i32, i32* @SOCKINFO_TCP, align 4
  %166 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %167 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load %struct.tcpcb*, %struct.tcpcb** %12, align 8
  %169 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.tcp_sockinfo*, %struct.tcp_sockinfo** %11, align 8
  %172 = getelementptr inbounds %struct.tcp_sockinfo, %struct.tcp_sockinfo* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  %173 = load %struct.tcpcb*, %struct.tcpcb** %12, align 8
  %174 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %173, i32 0, i32 4
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* @TCPT_REXMT, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.tcp_sockinfo*, %struct.tcp_sockinfo** %11, align 8
  %180 = getelementptr inbounds %struct.tcp_sockinfo, %struct.tcp_sockinfo* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @TSI_T_REXMT, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  store i32 %178, i32* %183, align 4
  %184 = load %struct.tcpcb*, %struct.tcpcb** %12, align 8
  %185 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %184, i32 0, i32 4
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* @TCPT_PERSIST, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.tcp_sockinfo*, %struct.tcp_sockinfo** %11, align 8
  %191 = getelementptr inbounds %struct.tcp_sockinfo, %struct.tcp_sockinfo* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* @TSI_T_PERSIST, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32 %189, i32* %194, align 4
  %195 = load %struct.tcpcb*, %struct.tcpcb** %12, align 8
  %196 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* @TCPT_KEEP, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.tcp_sockinfo*, %struct.tcp_sockinfo** %11, align 8
  %202 = getelementptr inbounds %struct.tcp_sockinfo, %struct.tcp_sockinfo* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = load i64, i64* @TSI_T_KEEP, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  store i32 %200, i32* %205, align 4
  %206 = load %struct.tcpcb*, %struct.tcpcb** %12, align 8
  %207 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = load i64, i64* @TCPT_2MSL, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.tcp_sockinfo*, %struct.tcp_sockinfo** %11, align 8
  %213 = getelementptr inbounds %struct.tcp_sockinfo, %struct.tcp_sockinfo* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* @TSI_T_2MSL, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32 %211, i32* %216, align 4
  %217 = load %struct.tcpcb*, %struct.tcpcb** %12, align 8
  %218 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.tcp_sockinfo*, %struct.tcp_sockinfo** %11, align 8
  %221 = getelementptr inbounds %struct.tcp_sockinfo, %struct.tcp_sockinfo* %220, i32 0, i32 2
  store i32 %219, i32* %221, align 8
  %222 = load %struct.tcpcb*, %struct.tcpcb** %12, align 8
  %223 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.tcp_sockinfo*, %struct.tcp_sockinfo** %11, align 8
  %226 = getelementptr inbounds %struct.tcp_sockinfo, %struct.tcp_sockinfo* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  %227 = load %struct.tcpcb*, %struct.tcpcb** %12, align 8
  %228 = call i32 @VM_KERNEL_ADDRPERM(%struct.tcpcb* %227)
  %229 = load %struct.tcp_sockinfo*, %struct.tcp_sockinfo** %11, align 8
  %230 = getelementptr inbounds %struct.tcp_sockinfo, %struct.tcp_sockinfo* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  br label %231

231:                                              ; preds = %157, %152, %146, %55
  br label %412

232:                                              ; preds = %47
  %233 = load %struct.socket*, %struct.socket** %3, align 8
  %234 = getelementptr inbounds %struct.socket, %struct.socket* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = bitcast i32* %235 to %struct.unpcb*
  store %struct.unpcb* %236, %struct.unpcb** %13, align 8
  %237 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %238 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 2
  store %struct.un_sockinfo* %239, %struct.un_sockinfo** %14, align 8
  %240 = load i32, i32* @SOCKINFO_UN, align 4
  %241 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %242 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  %243 = load %struct.unpcb*, %struct.unpcb** %13, align 8
  %244 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %243, i32 0, i32 0
  %245 = load %struct.tcpcb*, %struct.tcpcb** %244, align 8
  %246 = call i32 @VM_KERNEL_ADDRPERM(%struct.tcpcb* %245)
  %247 = sext i32 %246 to i64
  %248 = inttoptr i64 %247 to i8*
  %249 = load %struct.un_sockinfo*, %struct.un_sockinfo** %14, align 8
  %250 = getelementptr inbounds %struct.un_sockinfo, %struct.un_sockinfo* %249, i32 0, i32 3
  store i8* %248, i8** %250, align 8
  %251 = load %struct.unpcb*, %struct.unpcb** %13, align 8
  %252 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %251, i32 0, i32 0
  %253 = load %struct.tcpcb*, %struct.tcpcb** %252, align 8
  %254 = icmp ne %struct.tcpcb* %253, null
  br i1 %254, label %255, label %266

255:                                              ; preds = %232
  %256 = load %struct.unpcb*, %struct.unpcb** %13, align 8
  %257 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %256, i32 0, i32 0
  %258 = load %struct.tcpcb*, %struct.tcpcb** %257, align 8
  %259 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %258, i32 0, i32 1
  %260 = load %struct.tcpcb*, %struct.tcpcb** %259, align 8
  %261 = call i32 @VM_KERNEL_ADDRPERM(%struct.tcpcb* %260)
  %262 = sext i32 %261 to i64
  %263 = inttoptr i64 %262 to i8*
  %264 = load %struct.un_sockinfo*, %struct.un_sockinfo** %14, align 8
  %265 = getelementptr inbounds %struct.un_sockinfo, %struct.un_sockinfo* %264, i32 0, i32 2
  store i8* %263, i8** %265, align 8
  br label %266

266:                                              ; preds = %255, %232
  %267 = load %struct.unpcb*, %struct.unpcb** %13, align 8
  %268 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %267, i32 0, i32 1
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %268, align 8
  %270 = icmp ne %struct.TYPE_13__* %269, null
  br i1 %270, label %271, label %290

271:                                              ; preds = %266
  %272 = load %struct.unpcb*, %struct.unpcb** %13, align 8
  %273 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %272, i32 0, i32 1
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  store i64 %276, i64* %15, align 8
  %277 = load i64, i64* %15, align 8
  %278 = load i64, i64* @SOCK_MAXADDRLEN, align 8
  %279 = icmp ugt i64 %277, %278
  br i1 %279, label %280, label %282

280:                                              ; preds = %271
  %281 = load i64, i64* @SOCK_MAXADDRLEN, align 8
  store i64 %281, i64* %15, align 8
  br label %282

282:                                              ; preds = %280, %271
  %283 = load %struct.unpcb*, %struct.unpcb** %13, align 8
  %284 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %283, i32 0, i32 1
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %284, align 8
  %286 = load %struct.un_sockinfo*, %struct.un_sockinfo** %14, align 8
  %287 = getelementptr inbounds %struct.un_sockinfo, %struct.un_sockinfo* %286, i32 0, i32 1
  %288 = load i64, i64* %15, align 8
  %289 = call i32 @bcopy(%struct.TYPE_13__* %285, i32* %287, i64 %288)
  br label %290

290:                                              ; preds = %282, %266
  %291 = load %struct.unpcb*, %struct.unpcb** %13, align 8
  %292 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %291, i32 0, i32 0
  %293 = load %struct.tcpcb*, %struct.tcpcb** %292, align 8
  %294 = icmp ne %struct.tcpcb* %293, null
  br i1 %294, label %295, label %325

295:                                              ; preds = %290
  %296 = load %struct.unpcb*, %struct.unpcb** %13, align 8
  %297 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %296, i32 0, i32 0
  %298 = load %struct.tcpcb*, %struct.tcpcb** %297, align 8
  %299 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %298, i32 0, i32 0
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %299, align 8
  %301 = icmp ne %struct.TYPE_13__* %300, null
  br i1 %301, label %302, label %325

302:                                              ; preds = %295
  %303 = load %struct.unpcb*, %struct.unpcb** %13, align 8
  %304 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %303, i32 0, i32 0
  %305 = load %struct.tcpcb*, %struct.tcpcb** %304, align 8
  %306 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %305, i32 0, i32 0
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  store i64 %309, i64* %16, align 8
  %310 = load i64, i64* %16, align 8
  %311 = load i64, i64* @SOCK_MAXADDRLEN, align 8
  %312 = icmp ugt i64 %310, %311
  br i1 %312, label %313, label %315

313:                                              ; preds = %302
  %314 = load i64, i64* @SOCK_MAXADDRLEN, align 8
  store i64 %314, i64* %16, align 8
  br label %315

315:                                              ; preds = %313, %302
  %316 = load %struct.unpcb*, %struct.unpcb** %13, align 8
  %317 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %316, i32 0, i32 0
  %318 = load %struct.tcpcb*, %struct.tcpcb** %317, align 8
  %319 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %318, i32 0, i32 0
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %319, align 8
  %321 = load %struct.un_sockinfo*, %struct.un_sockinfo** %14, align 8
  %322 = getelementptr inbounds %struct.un_sockinfo, %struct.un_sockinfo* %321, i32 0, i32 0
  %323 = load i64, i64* %16, align 8
  %324 = call i32 @bcopy(%struct.TYPE_13__* %320, i32* %322, i64 %323)
  br label %325

325:                                              ; preds = %315, %295, %290
  br label %412

326:                                              ; preds = %47
  %327 = load %struct.socket*, %struct.socket** %3, align 8
  %328 = getelementptr inbounds %struct.socket, %struct.socket* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = bitcast i32* %329 to %struct.ndrv_cb*
  store %struct.ndrv_cb* %330, %struct.ndrv_cb** %17, align 8
  %331 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %332 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 1
  store %struct.ndrv_info* %333, %struct.ndrv_info** %18, align 8
  %334 = load i32, i32* @SOCKINFO_NDRV, align 4
  %335 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %336 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %335, i32 0, i32 0
  store i32 %334, i32* %336, align 8
  %337 = load %struct.ndrv_cb*, %struct.ndrv_cb** %17, align 8
  %338 = getelementptr inbounds %struct.ndrv_cb, %struct.ndrv_cb* %337, i32 0, i32 0
  %339 = load %struct.ifnet*, %struct.ifnet** %338, align 8
  %340 = icmp ne %struct.ifnet* %339, null
  br i1 %340, label %341, label %363

341:                                              ; preds = %326
  %342 = load %struct.ndrv_cb*, %struct.ndrv_cb** %17, align 8
  %343 = getelementptr inbounds %struct.ndrv_cb, %struct.ndrv_cb* %342, i32 0, i32 0
  %344 = load %struct.ifnet*, %struct.ifnet** %343, align 8
  store %struct.ifnet* %344, %struct.ifnet** %19, align 8
  %345 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  %346 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.ndrv_info*, %struct.ndrv_info** %18, align 8
  %349 = getelementptr inbounds %struct.ndrv_info, %struct.ndrv_info* %348, i32 0, i32 2
  store i32 %347, i32* %349, align 4
  %350 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  %351 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.ndrv_info*, %struct.ndrv_info** %18, align 8
  %354 = getelementptr inbounds %struct.ndrv_info, %struct.ndrv_info* %353, i32 0, i32 1
  store i32 %352, i32* %354, align 4
  %355 = load %struct.ndrv_info*, %struct.ndrv_info** %18, align 8
  %356 = getelementptr inbounds %struct.ndrv_info, %struct.ndrv_info* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  %359 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @IFNAMSIZ, align 4
  %362 = call i32 @strlcpy(i32 %357, i32 %360, i32 %361)
  br label %363

363:                                              ; preds = %341, %326
  br label %412

364:                                              ; preds = %47
  %365 = load %struct.socket*, %struct.socket** %3, align 8
  %366 = call signext i16 @SOCK_PROTO(%struct.socket* %365)
  %367 = sext i16 %366 to i32
  %368 = load i16, i16* @SYSPROTO_EVENT, align 2
  %369 = sext i16 %368 to i32
  %370 = icmp eq i32 %367, %369
  br i1 %370, label %371, label %397

371:                                              ; preds = %364
  %372 = load %struct.socket*, %struct.socket** %3, align 8
  %373 = getelementptr inbounds %struct.socket, %struct.socket* %372, i32 0, i32 0
  %374 = load i32*, i32** %373, align 8
  %375 = bitcast i32* %374 to %struct.kern_event_pcb*
  store %struct.kern_event_pcb* %375, %struct.kern_event_pcb** %20, align 8
  %376 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %377 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 0
  store %struct.kern_event_info* %378, %struct.kern_event_info** %21, align 8
  %379 = load i32, i32* @SOCKINFO_KERN_EVENT, align 4
  %380 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %381 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %380, i32 0, i32 0
  store i32 %379, i32* %381, align 8
  %382 = load %struct.kern_event_pcb*, %struct.kern_event_pcb** %20, align 8
  %383 = getelementptr inbounds %struct.kern_event_pcb, %struct.kern_event_pcb* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.kern_event_info*, %struct.kern_event_info** %21, align 8
  %386 = getelementptr inbounds %struct.kern_event_info, %struct.kern_event_info* %385, i32 0, i32 2
  store i32 %384, i32* %386, align 4
  %387 = load %struct.kern_event_pcb*, %struct.kern_event_pcb** %20, align 8
  %388 = getelementptr inbounds %struct.kern_event_pcb, %struct.kern_event_pcb* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.kern_event_info*, %struct.kern_event_info** %21, align 8
  %391 = getelementptr inbounds %struct.kern_event_info, %struct.kern_event_info* %390, i32 0, i32 1
  store i32 %389, i32* %391, align 4
  %392 = load %struct.kern_event_pcb*, %struct.kern_event_pcb** %20, align 8
  %393 = getelementptr inbounds %struct.kern_event_pcb, %struct.kern_event_pcb* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.kern_event_info*, %struct.kern_event_info** %21, align 8
  %396 = getelementptr inbounds %struct.kern_event_info, %struct.kern_event_info* %395, i32 0, i32 0
  store i32 %394, i32* %396, align 4
  br label %409

397:                                              ; preds = %364
  %398 = load %struct.socket*, %struct.socket** %3, align 8
  %399 = call signext i16 @SOCK_PROTO(%struct.socket* %398)
  %400 = sext i16 %399 to i32
  %401 = load i16, i16* @SYSPROTO_CONTROL, align 2
  %402 = sext i16 %401 to i32
  %403 = icmp eq i32 %400, %402
  br i1 %403, label %404, label %408

404:                                              ; preds = %397
  %405 = load %struct.socket*, %struct.socket** %3, align 8
  %406 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %407 = call i32 @kctl_fill_socketinfo(%struct.socket* %405, %struct.socket_info* %406)
  br label %408

408:                                              ; preds = %404, %397
  br label %409

409:                                              ; preds = %408, %371
  br label %412

410:                                              ; preds = %47, %47
  br label %411

411:                                              ; preds = %47, %410
  br label %412

412:                                              ; preds = %411, %409, %363, %325, %231
  br label %413

413:                                              ; preds = %412, %46
  %414 = load %struct.socket*, %struct.socket** %3, align 8
  %415 = call i32 @socket_unlock(%struct.socket* %414, i32 0)
  %416 = load i32, i32* %5, align 4
  ret i32 %416
}

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @fill_common_sockinfo(%struct.socket*, %struct.socket_info*) #1

declare dso_local i32 @SOCK_DOM(%struct.socket*) #1

declare dso_local signext i16 @SOCK_TYPE(%struct.socket*) #1

declare dso_local signext i16 @SOCK_PROTO(%struct.socket*) #1

declare dso_local i32 @VM_KERNEL_ADDRPERM(%struct.tcpcb*) #1

declare dso_local i32 @bcopy(%struct.TYPE_13__*, i32*, i64) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @kctl_fill_socketinfo(%struct.socket*, %struct.socket_info*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
