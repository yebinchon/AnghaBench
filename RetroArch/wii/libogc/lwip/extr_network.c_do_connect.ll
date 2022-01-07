; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_connect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apimsg_msg = type { %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__, i32, i8* }
%struct.TYPE_7__ = type { i32, i8*, i32 }

@recv_raw = common dso_local global i32 0, align 4
@ERR_MEM = common dso_local global i8* null, align 8
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@UDP_FLAGS_UDPLITE = common dso_local global i32 0, align 4
@recv_udp = common dso_local global i32 0, align 4
@UDP_FLAGS_NOCHKSUM = common dso_local global i32 0, align 4
@do_connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apimsg_msg*)* @do_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_connect(%struct.apimsg_msg* %0) #0 {
  %2 = alloca %struct.apimsg_msg*, align 8
  %3 = alloca i32, align 4
  store %struct.apimsg_msg* %0, %struct.apimsg_msg** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %5 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %4, i32 0, i32 1
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %203, label %11

11:                                               ; preds = %1
  %12 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %13 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %201 [
    i32 132, label %17
    i32 129, label %40
    i32 128, label %87
    i32 130, label %134
    i32 131, label %173
  ]

17:                                               ; preds = %11
  %18 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %19 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @raw_new(i32 %22)
  %24 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %25 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  store i32 %23, i32* %28, align 8
  %29 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %30 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @recv_raw, align 4
  %36 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %37 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = call i32 @raw_recv(i32 %34, i32 %35, %struct.TYPE_10__* %38)
  br label %202

40:                                               ; preds = %11
  %41 = call i8* (...) @udp_new()
  %42 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %43 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i8* %41, i8** %46, align 8
  %47 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %48 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %67, label %54

54:                                               ; preds = %40
  %55 = load i8*, i8** @ERR_MEM, align 8
  %56 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %57 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  store i8* %55, i8** %59, align 8
  %60 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %61 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %66 = call i32 @MQ_Send(i32 %64, i32* %3, i32 %65)
  br label %278

67:                                               ; preds = %40
  %68 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %69 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @UDP_FLAGS_UDPLITE, align 4
  %75 = call i32 @udp_setflags(i8* %73, i32 %74)
  %76 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %77 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* @recv_udp, align 4
  %83 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %84 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %83, i32 0, i32 1
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = call i32 @udp_recv(i8* %81, i32 %82, %struct.TYPE_10__* %85)
  br label %202

87:                                               ; preds = %11
  %88 = call i8* (...) @udp_new()
  %89 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %90 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i8* %88, i8** %93, align 8
  %94 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %95 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %94, i32 0, i32 1
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %114, label %101

101:                                              ; preds = %87
  %102 = load i8*, i8** @ERR_MEM, align 8
  %103 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %104 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %103, i32 0, i32 1
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 3
  store i8* %102, i8** %106, align 8
  %107 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %108 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %107, i32 0, i32 1
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %113 = call i32 @MQ_Send(i32 %111, i32* %3, i32 %112)
  br label %278

114:                                              ; preds = %87
  %115 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %116 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* @UDP_FLAGS_NOCHKSUM, align 4
  %122 = call i32 @udp_setflags(i8* %120, i32 %121)
  %123 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %124 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %123, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* @recv_udp, align 4
  %130 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %131 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %130, i32 0, i32 1
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = call i32 @udp_recv(i8* %128, i32 %129, %struct.TYPE_10__* %132)
  br label %202

134:                                              ; preds = %11
  %135 = call i8* (...) @udp_new()
  %136 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %137 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %136, i32 0, i32 1
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  store i8* %135, i8** %140, align 8
  %141 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %142 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %141, i32 0, i32 1
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %161, label %148

148:                                              ; preds = %134
  %149 = load i8*, i8** @ERR_MEM, align 8
  %150 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %151 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %150, i32 0, i32 1
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 3
  store i8* %149, i8** %153, align 8
  %154 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %155 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %154, i32 0, i32 1
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %160 = call i32 @MQ_Send(i32 %158, i32* %3, i32 %159)
  br label %278

161:                                              ; preds = %134
  %162 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %163 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %162, i32 0, i32 1
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* @recv_udp, align 4
  %169 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %170 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %169, i32 0, i32 1
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = call i32 @udp_recv(i8* %167, i32 %168, %struct.TYPE_10__* %171)
  br label %202

173:                                              ; preds = %11
  %174 = call i32 (...) @tcp_new()
  %175 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %176 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %175, i32 0, i32 1
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  store i32 %174, i32* %179, align 8
  %180 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %181 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %180, i32 0, i32 1
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %200, label %187

187:                                              ; preds = %173
  %188 = load i8*, i8** @ERR_MEM, align 8
  %189 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %190 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %189, i32 0, i32 1
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 3
  store i8* %188, i8** %192, align 8
  %193 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %194 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %193, i32 0, i32 1
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %199 = call i32 @MQ_Send(i32 %197, i32* %3, i32 %198)
  br label %278

200:                                              ; preds = %173
  br label %202

201:                                              ; preds = %11
  br label %202

202:                                              ; preds = %201, %200, %161, %114, %67, %17
  br label %203

203:                                              ; preds = %202, %1
  %204 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %205 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %204, i32 0, i32 1
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  switch i32 %208, label %277 [
    i32 132, label %209
    i32 129, label %229
    i32 128, label %229
    i32 130, label %229
    i32 131, label %254
  ]

209:                                              ; preds = %203
  %210 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %211 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %210, i32 0, i32 1
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %217 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @raw_connect(i32 %215, i32 %220)
  %222 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %223 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %222, i32 0, i32 1
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %228 = call i32 @MQ_Send(i32 %226, i32* %3, i32 %227)
  br label %278

229:                                              ; preds = %203, %203, %203
  %230 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %231 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %230, i32 0, i32 1
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %237 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %242 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @udp_connect(i8* %235, i32 %240, i32 %245)
  %247 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %248 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %247, i32 0, i32 1
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %253 = call i32 @MQ_Send(i32 %251, i32* %3, i32 %252)
  br label %278

254:                                              ; preds = %203
  %255 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %256 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %255, i32 0, i32 1
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %256, align 8
  %258 = call i32 @setuptcp(%struct.TYPE_10__* %257)
  %259 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %260 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %259, i32 0, i32 1
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %266 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %271 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @do_connected, align 4
  %276 = call i32 @tcp_connect(i32 %264, i32 %269, i32 %274, i32 %275)
  br label %278

277:                                              ; preds = %203
  br label %278

278:                                              ; preds = %54, %101, %148, %187, %277, %254, %229, %209
  ret void
}

declare dso_local i32 @raw_new(i32) #1

declare dso_local i32 @raw_recv(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i8* @udp_new(...) #1

declare dso_local i32 @MQ_Send(i32, i32*, i32) #1

declare dso_local i32 @udp_setflags(i8*, i32) #1

declare dso_local i32 @udp_recv(i8*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @tcp_new(...) #1

declare dso_local i32 @raw_connect(i32, i32) #1

declare dso_local i32 @udp_connect(i8*, i32, i32) #1

declare dso_local i32 @setuptcp(%struct.TYPE_10__*) #1

declare dso_local i32 @tcp_connect(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
