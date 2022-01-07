; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_connectx_nocancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_connectx_nocancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.connectx_args = type { i32, i64, i64, i64, i64, i64, i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }
%struct.socket = type { i64 }
%struct.user32_sa_endpoints = type { i64, i32, i64, i32, i32 }
%struct.user64_sa_endpoints = type { i64, i32, i64, i32, i32 }
%struct.user_sa_endpoints = type { i64, i32, i64, i32, i32 }
%struct.user_iovec = type { i32 }

@SAE_CONNID_ANY = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@USER_ADDR_NULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@UIO_MAXIOV = common dso_local global i64 0, align 8
@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, %struct.connectx_args*, i32*)* @connectx_nocancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connectx_nocancel(%struct.proc* %0, %struct.connectx_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.connectx_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca %struct.sockaddr_storage, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.socket*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.user32_sa_endpoints, align 8
  %19 = alloca %struct.user64_sa_endpoints, align 8
  %20 = alloca %struct.user_sa_endpoints, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.user_iovec*, align 8
  %23 = alloca i32*, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.connectx_args* %1, %struct.connectx_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %10, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %11, align 8
  %24 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %25 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* @SAE_CONNID_ANY, align 4
  store i32 %27, i32* %17, align 4
  store i32 0, i32* %21, align 4
  store i32* null, i32** %23, align 8
  %28 = load i32, i32* %15, align 4
  %29 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %30 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @AUDIT_ARG(i32 %28, i32 %31)
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @file_socket(i32 %33, %struct.socket** %12)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %4, align 4
  br label %361

39:                                               ; preds = %3
  %40 = load %struct.socket*, %struct.socket** %12, align 8
  %41 = icmp eq %struct.socket* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @EBADF, align 4
  store i32 %43, i32* %13, align 4
  br label %329

44:                                               ; preds = %39
  %45 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %46 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @USER_ADDR_NULL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %13, align 4
  br label %329

52:                                               ; preds = %44
  %53 = load %struct.proc*, %struct.proc** %5, align 8
  %54 = call i64 @IS_64BIT_PROCESS(%struct.proc* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %52
  %57 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %58 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = ptrtoint %struct.user64_sa_endpoints* %19 to i32
  %61 = call i32 @copyin(i64 %59, i32 %60, i32 32)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %329

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.user64_sa_endpoints, %struct.user64_sa_endpoints* %19, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 4
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.user64_sa_endpoints, %struct.user64_sa_endpoints* %19, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 0
  store i64 %70, i64* %71, align 8
  %72 = getelementptr inbounds %struct.user64_sa_endpoints, %struct.user64_sa_endpoints* %19, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 1
  store i32 %73, i32* %74, align 8
  %75 = getelementptr inbounds %struct.user64_sa_endpoints, %struct.user64_sa_endpoints* %19, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 2
  store i64 %76, i64* %77, align 8
  %78 = getelementptr inbounds %struct.user64_sa_endpoints, %struct.user64_sa_endpoints* %19, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 3
  store i32 %79, i32* %80, align 8
  br label %106

81:                                               ; preds = %52
  %82 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %83 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = ptrtoint %struct.user32_sa_endpoints* %18 to i32
  %86 = call i32 @copyin(i64 %84, i32 %85, i32 32)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %329

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.user32_sa_endpoints, %struct.user32_sa_endpoints* %18, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 4
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.user32_sa_endpoints, %struct.user32_sa_endpoints* %18, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 0
  store i64 %95, i64* %96, align 8
  %97 = getelementptr inbounds %struct.user32_sa_endpoints, %struct.user32_sa_endpoints* %18, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 1
  store i32 %98, i32* %99, align 8
  %100 = getelementptr inbounds %struct.user32_sa_endpoints, %struct.user32_sa_endpoints* %18, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 2
  store i64 %101, i64* %102, align 8
  %103 = getelementptr inbounds %struct.user32_sa_endpoints, %struct.user32_sa_endpoints* %18, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 3
  store i32 %104, i32* %105, align 8
  br label %106

106:                                              ; preds = %90, %65
  %107 = load %struct.socket*, %struct.socket** %12, align 8
  %108 = getelementptr inbounds %struct.socket, %struct.socket* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SOCK_DGRAM, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %16, align 4
  %113 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @USER_ADDR_NULL, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %148

117:                                              ; preds = %106
  %118 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = icmp ugt i64 %120, 4
  br i1 %121, label %122, label %130

122:                                              ; preds = %117
  %123 = load %struct.socket*, %struct.socket** %12, align 8
  %124 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @getsockaddr(%struct.socket* %123, %struct.sockaddr** %10, i64 %125, i32 %127, i32 %128)
  store i32 %129, i32* %13, align 4
  br label %143

130:                                              ; preds = %117
  %131 = load %struct.socket*, %struct.socket** %12, align 8
  %132 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @getsockaddr_s(%struct.socket* %131, %struct.sockaddr_storage* %8, i64 %133, i32 %135, i32 %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  store %struct.sockaddr* %141, %struct.sockaddr** %10, align 8
  br label %142

142:                                              ; preds = %140, %130
  br label %143

143:                                              ; preds = %142, %122
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %329

147:                                              ; preds = %143
  br label %148

148:                                              ; preds = %147, %106
  %149 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @USER_ADDR_NULL, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* @EINVAL, align 4
  store i32 %154, i32* %13, align 4
  br label %329

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = icmp ugt i64 %158, 4
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load %struct.socket*, %struct.socket** %12, align 8
  %162 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = call i32 @getsockaddr(%struct.socket* %161, %struct.sockaddr** %11, i64 %163, i32 %165, i32 %166)
  store i32 %167, i32* %13, align 4
  br label %181

168:                                              ; preds = %155
  %169 = load %struct.socket*, %struct.socket** %12, align 8
  %170 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %16, align 4
  %175 = call i32 @getsockaddr_s(%struct.socket* %169, %struct.sockaddr_storage* %9, i64 %171, i32 %173, i32 %174)
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %13, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %168
  %179 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  store %struct.sockaddr* %179, %struct.sockaddr** %11, align 8
  br label %180

180:                                              ; preds = %178, %168
  br label %181

181:                                              ; preds = %180, %160
  %182 = load i32, i32* %13, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %329

185:                                              ; preds = %181
  %186 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %187 = icmp ne %struct.sockaddr* %186, null
  %188 = zext i1 %187 to i32
  %189 = call i32 @VERIFY(i32 %188)
  %190 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %191 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @USER_ADDR_NULL, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %270

195:                                              ; preds = %185
  %196 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %197 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = icmp sle i64 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %195
  %201 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %202 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @UIO_MAXIOV, align 8
  %205 = icmp sgt i64 %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %200, %195
  %207 = load i32, i32* @EINVAL, align 4
  store i32 %207, i32* %13, align 4
  br label %329

208:                                              ; preds = %200
  %209 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %210 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @USER_ADDR_NULL, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %208
  %215 = load i32, i32* @EINVAL, align 4
  store i32 %215, i32* %13, align 4
  br label %329

216:                                              ; preds = %208
  %217 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %218 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.proc*, %struct.proc** %5, align 8
  %221 = call i64 @IS_64BIT_PROCESS(%struct.proc* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %216
  %224 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %227

225:                                              ; preds = %216
  %226 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %227

227:                                              ; preds = %225, %223
  %228 = phi i32 [ %224, %223 ], [ %226, %225 ]
  %229 = load i32, i32* @UIO_WRITE, align 4
  %230 = call i32* @uio_create(i64 %219, i32 0, i32 %228, i32 %229)
  store i32* %230, i32** %23, align 8
  %231 = load i32*, i32** %23, align 8
  %232 = icmp eq i32* %231, null
  br i1 %232, label %233, label %235

233:                                              ; preds = %227
  %234 = load i32, i32* @ENOMEM, align 4
  store i32 %234, i32* %13, align 4
  br label %329

235:                                              ; preds = %227
  %236 = load i32*, i32** %23, align 8
  %237 = call %struct.user_iovec* @uio_iovsaddr(i32* %236)
  store %struct.user_iovec* %237, %struct.user_iovec** %22, align 8
  %238 = load %struct.user_iovec*, %struct.user_iovec** %22, align 8
  %239 = icmp eq %struct.user_iovec* %238, null
  br i1 %239, label %240, label %242

240:                                              ; preds = %235
  %241 = load i32, i32* @ENOMEM, align 4
  store i32 %241, i32* %13, align 4
  br label %329

242:                                              ; preds = %235
  %243 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %244 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.proc*, %struct.proc** %5, align 8
  %247 = call i64 @IS_64BIT_PROCESS(%struct.proc* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %242
  %250 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %253

251:                                              ; preds = %242
  %252 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %253

253:                                              ; preds = %251, %249
  %254 = phi i32 [ %250, %249 ], [ %252, %251 ]
  %255 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %256 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.user_iovec*, %struct.user_iovec** %22, align 8
  %259 = call i32 @copyin_user_iovec_array(i64 %245, i32 %254, i64 %257, %struct.user_iovec* %258)
  store i32 %259, i32* %13, align 4
  %260 = load i32, i32* %13, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %253
  br label %329

263:                                              ; preds = %253
  %264 = load i32*, i32** %23, align 8
  %265 = call i32 @uio_calculateresid(i32* %264)
  store i32 %265, i32* %13, align 4
  %266 = load i32, i32* %13, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %263
  br label %329

269:                                              ; preds = %263
  br label %270

270:                                              ; preds = %269, %185
  %271 = load %struct.socket*, %struct.socket** %12, align 8
  %272 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %273 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %274 = load %struct.proc*, %struct.proc** %5, align 8
  %275 = getelementptr inbounds %struct.user_sa_endpoints, %struct.user_sa_endpoints* %20, i32 0, i32 4
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %278 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 4
  %280 = load i32*, i32** %23, align 8
  %281 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %282 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @connectitx(%struct.socket* %271, %struct.sockaddr* %272, %struct.sockaddr* %273, %struct.proc* %274, i32 %276, i32 %279, i32* %17, i32* %280, i32 %283, i32* %21)
  store i32 %284, i32* %13, align 4
  %285 = load i32, i32* %13, align 4
  %286 = load i32, i32* @ERESTART, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %270
  %289 = load i32, i32* @EINTR, align 4
  store i32 %289, i32* %13, align 4
  br label %290

290:                                              ; preds = %288, %270
  %291 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %292 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %291, i32 0, i32 4
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @USER_ADDR_NULL, align 8
  %295 = icmp ne i64 %293, %294
  br i1 %295, label %296, label %309

296:                                              ; preds = %290
  %297 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %298 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %297, i32 0, i32 4
  %299 = load i64, i64* %298, align 8
  %300 = call i32 @copyout(i32* %21, i64 %299, i32 8)
  store i32 %300, i32* %14, align 4
  %301 = load i32, i32* %14, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %296
  %304 = load i32, i32* %13, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %303
  %307 = load i32, i32* %14, align 4
  store i32 %307, i32* %13, align 4
  br label %308

308:                                              ; preds = %306, %303, %296
  br label %309

309:                                              ; preds = %308, %290
  %310 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %311 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %310, i32 0, i32 5
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @USER_ADDR_NULL, align 8
  %314 = icmp ne i64 %312, %313
  br i1 %314, label %315, label %328

315:                                              ; preds = %309
  %316 = load %struct.connectx_args*, %struct.connectx_args** %6, align 8
  %317 = getelementptr inbounds %struct.connectx_args, %struct.connectx_args* %316, i32 0, i32 5
  %318 = load i64, i64* %317, align 8
  %319 = call i32 @copyout(i32* %17, i64 %318, i32 4)
  store i32 %319, i32* %14, align 4
  %320 = load i32, i32* %14, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %315
  %323 = load i32, i32* %13, align 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %322
  %326 = load i32, i32* %14, align 4
  store i32 %326, i32* %13, align 4
  br label %327

327:                                              ; preds = %325, %322, %315
  br label %328

328:                                              ; preds = %327, %309
  br label %329

329:                                              ; preds = %328, %268, %262, %240, %233, %214, %206, %184, %153, %146, %89, %64, %50, %42
  %330 = load i32, i32* %15, align 4
  %331 = call i32 @file_drop(i32 %330)
  %332 = load i32*, i32** %23, align 8
  %333 = icmp ne i32* %332, null
  br i1 %333, label %334, label %337

334:                                              ; preds = %329
  %335 = load i32*, i32** %23, align 8
  %336 = call i32 @uio_free(i32* %335)
  br label %337

337:                                              ; preds = %334, %329
  %338 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %339 = icmp ne %struct.sockaddr* %338, null
  br i1 %339, label %340, label %348

340:                                              ; preds = %337
  %341 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %342 = call %struct.sockaddr* @SA(%struct.sockaddr_storage* %8)
  %343 = icmp ne %struct.sockaddr* %341, %342
  br i1 %343, label %344, label %348

344:                                              ; preds = %340
  %345 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %346 = load i32, i32* @M_SONAME, align 4
  %347 = call i32 @FREE(%struct.sockaddr* %345, i32 %346)
  br label %348

348:                                              ; preds = %344, %340, %337
  %349 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %350 = icmp ne %struct.sockaddr* %349, null
  br i1 %350, label %351, label %359

351:                                              ; preds = %348
  %352 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %353 = call %struct.sockaddr* @SA(%struct.sockaddr_storage* %9)
  %354 = icmp ne %struct.sockaddr* %352, %353
  br i1 %354, label %355, label %359

355:                                              ; preds = %351
  %356 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %357 = load i32, i32* @M_SONAME, align 4
  %358 = call i32 @FREE(%struct.sockaddr* %356, i32 %357)
  br label %359

359:                                              ; preds = %355, %351, %348
  %360 = load i32, i32* %13, align 4
  store i32 %360, i32* %4, align 4
  br label %361

361:                                              ; preds = %359, %37
  %362 = load i32, i32* %4, align 4
  ret i32 %362
}

declare dso_local i32 @AUDIT_ARG(i32, i32) #1

declare dso_local i32 @file_socket(i32, %struct.socket**) #1

declare dso_local i64 @IS_64BIT_PROCESS(%struct.proc*) #1

declare dso_local i32 @copyin(i64, i32, i32) #1

declare dso_local i32 @getsockaddr(%struct.socket*, %struct.sockaddr**, i64, i32, i32) #1

declare dso_local i32 @getsockaddr_s(%struct.socket*, %struct.sockaddr_storage*, i64, i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32* @uio_create(i64, i32, i32, i32) #1

declare dso_local %struct.user_iovec* @uio_iovsaddr(i32*) #1

declare dso_local i32 @copyin_user_iovec_array(i64, i32, i64, %struct.user_iovec*) #1

declare dso_local i32 @uio_calculateresid(i32*) #1

declare dso_local i32 @connectitx(%struct.socket*, %struct.sockaddr*, %struct.sockaddr*, %struct.proc*, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @copyout(i32*, i64, i32) #1

declare dso_local i32 @file_drop(i32) #1

declare dso_local i32 @uio_free(i32*) #1

declare dso_local %struct.sockaddr* @SA(%struct.sockaddr_storage*) #1

declare dso_local i32 @FREE(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
