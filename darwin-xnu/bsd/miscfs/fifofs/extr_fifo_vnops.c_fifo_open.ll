; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/fifofs/extr_fifo_vnops.c_fifo_open.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/fifofs/extr_fifo_vnops.c_fifo_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_open_args = type { i32, i32, %struct.vnode* }
%struct.vnode = type { i32, %struct.fifoinfo* }
%struct.fifoinfo = type { i32, i32, i32, %struct.socket*, %struct.socket* }
%struct.socket = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"fifo_open with no fifoinfo\00", align 1
@FIFO_CREATED = common dso_local global i32 0, align 4
@FIFO_INCREATE = common dso_local global i32 0, align 4
@FIFO_CREATEWAIT = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"fifocreatewait\00", align 1
@AF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SS_CANTRCVMORE = common dso_local global i32 0, align 4
@PIPE_BUF = common dso_local global i32 0, align 4
@SS_CANTSENDMORE = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@PSOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"fifoor\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"fifoow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fifo_open(%struct.vnop_open_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_open_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.fifoinfo*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  store %struct.vnop_open_args* %0, %struct.vnop_open_args** %3, align 8
  %9 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %10 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %9, i32 0, i32 2
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %4, align 8
  %12 = load %struct.vnode*, %struct.vnode** %4, align 8
  %13 = call i32 @vnode_lock(%struct.vnode* %12)
  br label %14

14:                                               ; preds = %56, %1
  %15 = load %struct.vnode*, %struct.vnode** %4, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 1
  %17 = load %struct.fifoinfo*, %struct.fifoinfo** %16, align 8
  store %struct.fifoinfo* %17, %struct.fifoinfo** %5, align 8
  %18 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %19 = icmp eq %struct.fifoinfo* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %14
  %23 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %24 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FIFO_CREATED, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %152

29:                                               ; preds = %22
  %30 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %31 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FIFO_INCREATE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  %37 = load i32, i32* @FIFO_CREATEWAIT, align 4
  %38 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %39 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %43 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %42, i32 0, i32 0
  %44 = load %struct.vnode*, %struct.vnode** %4, align 8
  %45 = getelementptr inbounds %struct.vnode, %struct.vnode* %44, i32 0, i32 0
  %46 = load i32, i32* @PRIBIO, align 4
  %47 = load i32, i32* @PCATCH, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @msleep(i32* %43, i32* %45, i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %36
  %53 = load %struct.vnode*, %struct.vnode** %4, align 8
  %54 = call i32 @vnode_unlock(%struct.vnode* %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %2, align 4
  br label %387

56:                                               ; preds = %36
  br label %14

57:                                               ; preds = %29
  %58 = load i32, i32* @FIFO_INCREATE, align 4
  %59 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %60 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.vnode*, %struct.vnode** %4, align 8
  %64 = call i32 @vnode_unlock(%struct.vnode* %63)
  %65 = load i32, i32* @AF_LOCAL, align 4
  %66 = load i32, i32* @SOCK_STREAM, align 4
  %67 = call i32 @socreate(i32 %65, %struct.socket** %6, i32 %66, i32 0)
  store i32 %67, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %358

70:                                               ; preds = %57
  %71 = load i32, i32* @AF_LOCAL, align 4
  %72 = load i32, i32* @SOCK_STREAM, align 4
  %73 = call i32 @socreate(i32 %71, %struct.socket** %7, i32 %72, i32 0)
  store i32 %73, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.socket*, %struct.socket** %6, align 8
  %77 = call i32 @soclose(%struct.socket* %76)
  br label %358

78:                                               ; preds = %70
  %79 = load %struct.socket*, %struct.socket** %7, align 8
  %80 = load %struct.socket*, %struct.socket** %6, align 8
  %81 = call i32 @soconnect2(%struct.socket* %79, %struct.socket* %80)
  store i32 %81, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.socket*, %struct.socket** %7, align 8
  %85 = call i32 @soclose(%struct.socket* %84)
  %86 = load %struct.socket*, %struct.socket** %6, align 8
  %87 = call i32 @soclose(%struct.socket* %86)
  br label %358

88:                                               ; preds = %78
  %89 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %90 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %89, i32 0, i32 2
  store i32 0, i32* %90, align 8
  %91 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %92 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  %93 = load %struct.socket*, %struct.socket** %7, align 8
  %94 = call i32 @socket_lock(%struct.socket* %93, i32 1)
  %95 = load i32, i32* @SS_CANTRCVMORE, align 4
  %96 = load %struct.socket*, %struct.socket** %7, align 8
  %97 = getelementptr inbounds %struct.socket, %struct.socket* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* @PIPE_BUF, align 4
  %101 = load %struct.socket*, %struct.socket** %7, align 8
  %102 = getelementptr inbounds %struct.socket, %struct.socket* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  %104 = load %struct.socket*, %struct.socket** %7, align 8
  %105 = call i32 @socket_unlock(%struct.socket* %104, i32 1)
  %106 = load %struct.socket*, %struct.socket** %6, align 8
  %107 = call i32 @socket_lock(%struct.socket* %106, i32 1)
  %108 = load i32, i32* @SS_CANTSENDMORE, align 4
  %109 = load %struct.socket*, %struct.socket** %6, align 8
  %110 = getelementptr inbounds %struct.socket, %struct.socket* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.socket*, %struct.socket** %6, align 8
  %114 = call i32 @socket_unlock(%struct.socket* %113, i32 1)
  %115 = load %struct.vnode*, %struct.vnode** %4, align 8
  %116 = call i32 @vnode_lock(%struct.vnode* %115)
  %117 = load %struct.socket*, %struct.socket** %6, align 8
  %118 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %119 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %118, i32 0, i32 3
  store %struct.socket* %117, %struct.socket** %119, align 8
  %120 = load %struct.socket*, %struct.socket** %7, align 8
  %121 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %122 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %121, i32 0, i32 4
  store %struct.socket* %120, %struct.socket** %122, align 8
  %123 = load i32, i32* @FIFO_CREATED, align 4
  %124 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %125 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load i32, i32* @FIFO_INCREATE, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %131 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 8
  %134 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %135 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @FIFO_CREATEWAIT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %88
  %141 = load i32, i32* @FIFO_CREATEWAIT, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %144 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %148 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %147, i32 0, i32 0
  %149 = call i32 @wakeup(i32* %148)
  br label %150

150:                                              ; preds = %140, %88
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151, %22
  %153 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %154 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @FREAD, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %195

159:                                              ; preds = %152
  %160 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %161 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  %164 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %165 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %194

168:                                              ; preds = %159
  %169 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %170 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %169, i32 0, i32 4
  %171 = load %struct.socket*, %struct.socket** %170, align 8
  %172 = call i32 @socket_lock(%struct.socket* %171, i32 1)
  %173 = load i32, i32* @SS_CANTSENDMORE, align 4
  %174 = xor i32 %173, -1
  %175 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %176 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %175, i32 0, i32 4
  %177 = load %struct.socket*, %struct.socket** %176, align 8
  %178 = getelementptr inbounds %struct.socket, %struct.socket* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, %174
  store i32 %180, i32* %178, align 4
  %181 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %182 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %181, i32 0, i32 4
  %183 = load %struct.socket*, %struct.socket** %182, align 8
  %184 = call i32 @socket_unlock(%struct.socket* %183, i32 1)
  %185 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %186 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %168
  %190 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %191 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %190, i32 0, i32 2
  %192 = call i32 @wakeup(i32* %191)
  br label %193

193:                                              ; preds = %189, %168
  br label %194

194:                                              ; preds = %193, %159
  br label %195

195:                                              ; preds = %194, %152
  %196 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %197 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @FWRITE, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %238

202:                                              ; preds = %195
  %203 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %204 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 8
  %207 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %208 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %237

211:                                              ; preds = %202
  %212 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %213 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %212, i32 0, i32 3
  %214 = load %struct.socket*, %struct.socket** %213, align 8
  %215 = call i32 @socket_lock(%struct.socket* %214, i32 1)
  %216 = load i32, i32* @SS_CANTRCVMORE, align 4
  %217 = xor i32 %216, -1
  %218 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %219 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %218, i32 0, i32 3
  %220 = load %struct.socket*, %struct.socket** %219, align 8
  %221 = getelementptr inbounds %struct.socket, %struct.socket* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, %217
  store i32 %223, i32* %221, align 4
  %224 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %225 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %224, i32 0, i32 3
  %226 = load %struct.socket*, %struct.socket** %225, align 8
  %227 = call i32 @socket_unlock(%struct.socket* %226, i32 1)
  %228 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %229 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %211
  %233 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %234 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %233, i32 0, i32 1
  %235 = call i32 @wakeup(i32* %234)
  br label %236

236:                                              ; preds = %232, %211
  br label %237

237:                                              ; preds = %236, %202
  br label %238

238:                                              ; preds = %237, %195
  %239 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %240 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @FREAD, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %286

245:                                              ; preds = %238
  %246 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %247 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @O_NONBLOCK, align 4
  %250 = and i32 %248, %249
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %286

252:                                              ; preds = %245
  %253 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %254 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %285

257:                                              ; preds = %252
  %258 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %259 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %258, i32 0, i32 1
  %260 = load %struct.vnode*, %struct.vnode** %4, align 8
  %261 = getelementptr inbounds %struct.vnode, %struct.vnode* %260, i32 0, i32 0
  %262 = load i32, i32* @PCATCH, align 4
  %263 = load i32, i32* @PSOCK, align 4
  %264 = or i32 %262, %263
  %265 = call i32 @msleep(i32* %259, i32* %261, i32 %264, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32 %265, i32* %8, align 4
  %266 = load i32, i32* %8, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %257
  br label %346

269:                                              ; preds = %257
  %270 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %271 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = icmp eq i32 %272, 1
  br i1 %273, label %274, label %284

274:                                              ; preds = %269
  %275 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %276 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %274
  %280 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %281 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %280, i32 0, i32 2
  %282 = call i32 @wakeup(i32* %281)
  br label %283

283:                                              ; preds = %279, %274
  br label %284

284:                                              ; preds = %283, %269
  br label %285

285:                                              ; preds = %284, %252
  br label %286

286:                                              ; preds = %285, %245, %238
  %287 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %288 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @FWRITE, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %343

293:                                              ; preds = %286
  %294 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %295 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @O_NONBLOCK, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %293
  %301 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %302 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = load i32, i32* @ENXIO, align 4
  store i32 %306, i32* %8, align 4
  br label %346

307:                                              ; preds = %300
  br label %342

308:                                              ; preds = %293
  %309 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %310 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %341

313:                                              ; preds = %308
  %314 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %315 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %314, i32 0, i32 2
  %316 = load %struct.vnode*, %struct.vnode** %4, align 8
  %317 = getelementptr inbounds %struct.vnode, %struct.vnode* %316, i32 0, i32 0
  %318 = load i32, i32* @PCATCH, align 4
  %319 = load i32, i32* @PSOCK, align 4
  %320 = or i32 %318, %319
  %321 = call i32 @msleep(i32* %315, i32* %317, i32 %320, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32 %321, i32* %8, align 4
  %322 = load i32, i32* %8, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %313
  br label %346

325:                                              ; preds = %313
  %326 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %327 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = icmp eq i32 %328, 1
  br i1 %329, label %330, label %340

330:                                              ; preds = %325
  %331 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %332 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = icmp sgt i32 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %330
  %336 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %337 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %336, i32 0, i32 1
  %338 = call i32 @wakeup(i32* %337)
  br label %339

339:                                              ; preds = %335, %330
  br label %340

340:                                              ; preds = %339, %325
  br label %341

341:                                              ; preds = %340, %308
  br label %342

342:                                              ; preds = %341, %307
  br label %343

343:                                              ; preds = %342, %286
  %344 = load %struct.vnode*, %struct.vnode** %4, align 8
  %345 = call i32 @vnode_unlock(%struct.vnode* %344)
  store i32 0, i32* %2, align 4
  br label %387

346:                                              ; preds = %324, %305, %268
  %347 = load %struct.vnode*, %struct.vnode** %4, align 8
  %348 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %349 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.vnop_open_args*, %struct.vnop_open_args** %3, align 8
  %352 = getelementptr inbounds %struct.vnop_open_args, %struct.vnop_open_args* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @fifo_close_internal(%struct.vnode* %347, i32 %350, i32 %353, i32 1)
  %355 = load %struct.vnode*, %struct.vnode** %4, align 8
  %356 = call i32 @vnode_unlock(%struct.vnode* %355)
  %357 = load i32, i32* %8, align 4
  store i32 %357, i32* %2, align 4
  br label %387

358:                                              ; preds = %83, %75, %69
  %359 = load %struct.vnode*, %struct.vnode** %4, align 8
  %360 = call i32 @vnode_lock(%struct.vnode* %359)
  %361 = load i32, i32* @FIFO_INCREATE, align 4
  %362 = xor i32 %361, -1
  %363 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %364 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = and i32 %365, %362
  store i32 %366, i32* %364, align 8
  %367 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %368 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @FIFO_CREATEWAIT, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %383

373:                                              ; preds = %358
  %374 = load i32, i32* @FIFO_CREATEWAIT, align 4
  %375 = xor i32 %374, -1
  %376 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %377 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = and i32 %378, %375
  store i32 %379, i32* %377, align 8
  %380 = load %struct.fifoinfo*, %struct.fifoinfo** %5, align 8
  %381 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %380, i32 0, i32 0
  %382 = call i32 @wakeup(i32* %381)
  br label %383

383:                                              ; preds = %373, %358
  %384 = load %struct.vnode*, %struct.vnode** %4, align 8
  %385 = call i32 @vnode_unlock(%struct.vnode* %384)
  %386 = load i32, i32* %8, align 4
  store i32 %386, i32* %2, align 4
  br label %387

387:                                              ; preds = %383, %346, %343, %52
  %388 = load i32, i32* %2, align 4
  ret i32 %388
}

declare dso_local i32 @vnode_lock(%struct.vnode*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

declare dso_local i32 @socreate(i32, %struct.socket**, i32, i32) #1

declare dso_local i32 @soclose(%struct.socket*) #1

declare dso_local i32 @soconnect2(%struct.socket*, %struct.socket*) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @fifo_close_internal(%struct.vnode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
