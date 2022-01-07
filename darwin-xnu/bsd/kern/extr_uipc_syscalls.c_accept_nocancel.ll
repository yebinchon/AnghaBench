; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_accept_nocancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_accept_nocancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.accept_nocancel_args = type { i32, i32, i32 }
%struct.fileproc = type { i16, %struct.sockaddr*, i32* }
%struct.sockaddr = type { i32 }
%struct.socket = type { i32, i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32*, i32, i32*, %struct.TYPE_12__, i32, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i32* (%struct.socket*, i32)* }
%struct.TYPE_10__ = type { i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOTSOCK = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@PR_F_WILLUNLOCK = common dso_local global i32 0, align 4
@SO_ACCEPTCONN = common dso_local global i32 0, align 4
@PR_CONNREQUIRED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SS_NBIO = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@SS_CANTRCVMORE = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"accept: head=%p refcount=%d\0A\00", align 1
@PSOCK = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"accept: 2 head=%p refcount=%d\0A\00", align 1
@SS_DRAINING = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@so_list = common dso_local global i32 0, align 4
@SS_COMP = common dso_local global i32 0, align 4
@SS_NOFDREF = common dso_local global i32 0, align 4
@socketops = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4
@FASYNC = common dso_local global i32 0, align 4
@SS_ASYNC = common dso_local global i32 0, align 4
@SB_ASYNC = common dso_local global i32 0, align 4
@sockaddr = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@SOF_DEFUNCT = common dso_local global i32 0, align 4
@SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL = common dso_local global i32 0, align 4
@ENTR_SHOULDTRACE = common dso_local global i64 0, align 8
@kEnTrActKernSocket = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @accept_nocancel(%struct.proc* %0, %struct.accept_nocancel_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.accept_nocancel_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fileproc*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.socket*, align 8
  %13 = alloca %struct.socket*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.accept_nocancel_args* %1, %struct.accept_nocancel_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %9, align 8
  store %struct.socket* null, %struct.socket** %13, align 8
  %20 = load %struct.accept_nocancel_args*, %struct.accept_nocancel_args** %6, align 8
  %21 = getelementptr inbounds %struct.accept_nocancel_args, %struct.accept_nocancel_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 -1, i32* %23, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load %struct.accept_nocancel_args*, %struct.accept_nocancel_args** %6, align 8
  %26 = getelementptr inbounds %struct.accept_nocancel_args, %struct.accept_nocancel_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i32, ...) @AUDIT_ARG(i32 %24, i32 %27)
  %29 = load %struct.accept_nocancel_args*, %struct.accept_nocancel_args** %6, align 8
  %30 = getelementptr inbounds %struct.accept_nocancel_args, %struct.accept_nocancel_args* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %3
  %34 = load %struct.accept_nocancel_args*, %struct.accept_nocancel_args** %6, align 8
  %35 = getelementptr inbounds %struct.accept_nocancel_args, %struct.accept_nocancel_args* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = bitcast i32* %10 to %struct.sockaddr*
  %38 = call i32 @copyin(i32 %36, %struct.sockaddr* %37, i32 4)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %4, align 4
  br label %476

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %3
  %45 = load %struct.proc*, %struct.proc** %5, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @fp_getfsock(%struct.proc* %45, i32 %46, %struct.fileproc** %8, %struct.socket** %12)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @ENOTSOCK, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %476

58:                                               ; preds = %44
  %59 = load %struct.socket*, %struct.socket** %12, align 8
  %60 = icmp eq %struct.socket* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @EBADF, align 4
  store i32 %62, i32* %11, align 4
  br label %458

63:                                               ; preds = %58
  %64 = load %struct.socket*, %struct.socket** %12, align 8
  %65 = call i32 @socket_lock(%struct.socket* %64, i32 1)
  %66 = load %struct.socket*, %struct.socket** %12, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 12
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load i32* (%struct.socket*, i32)*, i32* (%struct.socket*, i32)** %69, align 8
  %71 = icmp ne i32* (%struct.socket*, i32)* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = load %struct.socket*, %struct.socket** %12, align 8
  %74 = getelementptr inbounds %struct.socket, %struct.socket* %73, i32 0, i32 12
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = load i32* (%struct.socket*, i32)*, i32* (%struct.socket*, i32)** %76, align 8
  %78 = load %struct.socket*, %struct.socket** %12, align 8
  %79 = load i32, i32* @PR_F_WILLUNLOCK, align 4
  %80 = call i32* %77(%struct.socket* %78, i32 %79)
  store i32* %80, i32** %14, align 8
  store i32 1, i32* %18, align 4
  br label %89

81:                                               ; preds = %63
  %82 = load %struct.socket*, %struct.socket** %12, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 12
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %14, align 8
  store i32 0, i32* %18, align 4
  br label %89

89:                                               ; preds = %81, %72
  %90 = load %struct.socket*, %struct.socket** %12, align 8
  %91 = getelementptr inbounds %struct.socket, %struct.socket* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @SO_ACCEPTCONN, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %89
  %97 = load %struct.socket*, %struct.socket** %12, align 8
  %98 = getelementptr inbounds %struct.socket, %struct.socket* %97, i32 0, i32 12
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @PR_CONNREQUIRED, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %106, i32* %11, align 4
  br label %109

107:                                              ; preds = %96
  %108 = load i32, i32* @EINVAL, align 4
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = load %struct.socket*, %struct.socket** %12, align 8
  %111 = call i32 @socket_unlock(%struct.socket* %110, i32 1)
  br label %458

112:                                              ; preds = %89
  br label %113

113:                                              ; preds = %225, %112
  %114 = load %struct.socket*, %struct.socket** %12, align 8
  %115 = getelementptr inbounds %struct.socket, %struct.socket* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @SS_NBIO, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %113
  %121 = load %struct.socket*, %struct.socket** %12, align 8
  %122 = getelementptr inbounds %struct.socket, %struct.socket* %121, i32 0, i32 10
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.socket*, %struct.socket** %12, align 8
  %128 = call i32 @socket_unlock(%struct.socket* %127, i32 1)
  %129 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %129, i32* %11, align 4
  br label %458

130:                                              ; preds = %120, %113
  br label %131

131:                                              ; preds = %201, %130
  %132 = load %struct.socket*, %struct.socket** %12, align 8
  %133 = getelementptr inbounds %struct.socket, %struct.socket* %132, i32 0, i32 10
  %134 = call i64 @TAILQ_EMPTY(%struct.TYPE_12__* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.socket*, %struct.socket** %12, align 8
  %138 = getelementptr inbounds %struct.socket, %struct.socket* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 0
  br label %141

141:                                              ; preds = %136, %131
  %142 = phi i1 [ false, %131 ], [ %140, %136 ]
  br i1 %142, label %143, label %202

143:                                              ; preds = %141
  %144 = load %struct.socket*, %struct.socket** %12, align 8
  %145 = getelementptr inbounds %struct.socket, %struct.socket* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @SS_CANTRCVMORE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %143
  %151 = load i8*, i8** @ECONNABORTED, align 8
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.socket*, %struct.socket** %12, align 8
  %154 = getelementptr inbounds %struct.socket, %struct.socket* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  br label %202

155:                                              ; preds = %143
  %156 = load %struct.socket*, %struct.socket** %12, align 8
  %157 = getelementptr inbounds %struct.socket, %struct.socket* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %158, 1
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load %struct.socket*, %struct.socket** %12, align 8
  %162 = load %struct.socket*, %struct.socket** %12, align 8
  %163 = getelementptr inbounds %struct.socket, %struct.socket* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.socket* %161, i32 %164)
  br label %166

166:                                              ; preds = %160, %155
  %167 = load %struct.socket*, %struct.socket** %12, align 8
  %168 = getelementptr inbounds %struct.socket, %struct.socket* %167, i32 0, i32 11
  %169 = bitcast i32* %168 to %struct.sockaddr*
  %170 = load i32*, i32** %14, align 8
  %171 = load i32, i32* @PSOCK, align 4
  %172 = load i32, i32* @PCATCH, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @msleep(%struct.sockaddr* %169, i32* %170, i32 %173, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %174, i32* %11, align 4
  %175 = load %struct.socket*, %struct.socket** %12, align 8
  %176 = getelementptr inbounds %struct.socket, %struct.socket* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %177, 1
  br i1 %178, label %179, label %185

179:                                              ; preds = %166
  %180 = load %struct.socket*, %struct.socket** %12, align 8
  %181 = load %struct.socket*, %struct.socket** %12, align 8
  %182 = getelementptr inbounds %struct.socket, %struct.socket* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.socket* %180, i32 %183)
  br label %185

185:                                              ; preds = %179, %166
  %186 = load %struct.socket*, %struct.socket** %12, align 8
  %187 = getelementptr inbounds %struct.socket, %struct.socket* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @SS_DRAINING, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load i8*, i8** @ECONNABORTED, align 8
  %194 = ptrtoint i8* %193 to i32
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %192, %185
  %196 = load i32, i32* %11, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load %struct.socket*, %struct.socket** %12, align 8
  %200 = call i32 @socket_unlock(%struct.socket* %199, i32 1)
  br label %458

201:                                              ; preds = %195
  br label %131

202:                                              ; preds = %150, %141
  %203 = load %struct.socket*, %struct.socket** %12, align 8
  %204 = getelementptr inbounds %struct.socket, %struct.socket* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %202
  %208 = load %struct.socket*, %struct.socket** %12, align 8
  %209 = getelementptr inbounds %struct.socket, %struct.socket* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  store i32 %210, i32* %11, align 4
  %211 = load %struct.socket*, %struct.socket** %12, align 8
  %212 = getelementptr inbounds %struct.socket, %struct.socket* %211, i32 0, i32 2
  store i32 0, i32* %212, align 8
  %213 = load %struct.socket*, %struct.socket** %12, align 8
  %214 = call i32 @socket_unlock(%struct.socket* %213, i32 1)
  br label %458

215:                                              ; preds = %202
  %216 = load i32*, i32** %14, align 8
  %217 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %218 = call i32 @lck_mtx_assert(i32* %216, i32 %217)
  %219 = load %struct.socket*, %struct.socket** %12, align 8
  %220 = call i32 @so_acquire_accept_list(%struct.socket* %219, i32* null)
  %221 = load %struct.socket*, %struct.socket** %12, align 8
  %222 = getelementptr inbounds %struct.socket, %struct.socket* %221, i32 0, i32 10
  %223 = call i64 @TAILQ_EMPTY(%struct.TYPE_12__* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %215
  %226 = load %struct.socket*, %struct.socket** %12, align 8
  %227 = call i32 @so_release_accept_list(%struct.socket* %226)
  br label %113

228:                                              ; preds = %215
  %229 = load %struct.socket*, %struct.socket** %12, align 8
  %230 = getelementptr inbounds %struct.socket, %struct.socket* %229, i32 0, i32 10
  %231 = call %struct.socket* @TAILQ_FIRST(%struct.TYPE_12__* %230)
  store %struct.socket* %231, %struct.socket** %13, align 8
  %232 = load %struct.socket*, %struct.socket** %12, align 8
  %233 = getelementptr inbounds %struct.socket, %struct.socket* %232, i32 0, i32 10
  %234 = load %struct.socket*, %struct.socket** %13, align 8
  %235 = load i32, i32* @so_list, align 4
  %236 = call i32 @TAILQ_REMOVE(%struct.TYPE_12__* %233, %struct.socket* %234, i32 %235)
  %237 = load %struct.socket*, %struct.socket** %13, align 8
  %238 = getelementptr inbounds %struct.socket, %struct.socket* %237, i32 0, i32 9
  store i32* null, i32** %238, align 8
  %239 = load i32, i32* @SS_COMP, align 4
  %240 = xor i32 %239, -1
  %241 = load %struct.socket*, %struct.socket** %13, align 8
  %242 = getelementptr inbounds %struct.socket, %struct.socket* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, %240
  store i32 %244, i32* %242, align 4
  %245 = load %struct.socket*, %struct.socket** %12, align 8
  %246 = getelementptr inbounds %struct.socket, %struct.socket* %245, i32 0, i32 8
  %247 = load i32, i32* %246, align 8
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %246, align 8
  %249 = load %struct.socket*, %struct.socket** %12, align 8
  %250 = call i32 @so_release_accept_list(%struct.socket* %249)
  %251 = load %struct.socket*, %struct.socket** %12, align 8
  %252 = call i32 @socket_unlock(%struct.socket* %251, i32 0)
  %253 = load %struct.socket*, %struct.socket** %13, align 8
  %254 = getelementptr inbounds %struct.socket, %struct.socket* %253, i32 0, i32 7
  %255 = load i32*, i32** %254, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %257, label %265

257:                                              ; preds = %228
  %258 = load %struct.socket*, %struct.socket** %13, align 8
  %259 = load %struct.socket*, %struct.socket** %12, align 8
  %260 = call i32 @soacceptfilter(%struct.socket* %258, %struct.socket* %259)
  store i32 %260, i32* %11, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %257
  %263 = load %struct.socket*, %struct.socket** %12, align 8
  %264 = call i32 @sodereference(%struct.socket* %263)
  br label %458

265:                                              ; preds = %257, %228
  %266 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %267 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %266, i32 0, i32 0
  %268 = load i16, i16* %267, align 8
  store i16 %268, i16* %17, align 2
  %269 = load %struct.proc*, %struct.proc** %5, align 8
  %270 = call i32 (...) @vfs_context_current()
  %271 = call i32 @falloc(%struct.proc* %269, %struct.fileproc** %8, i32* %16, i32 %270)
  store i32 %271, i32* %11, align 4
  %272 = load i32, i32* %11, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %289

274:                                              ; preds = %265
  %275 = load %struct.socket*, %struct.socket** %13, align 8
  %276 = call i32 @socket_lock(%struct.socket* %275, i32 1)
  %277 = load i32, i32* @SS_NOFDREF, align 4
  %278 = xor i32 %277, -1
  %279 = load %struct.socket*, %struct.socket** %13, align 8
  %280 = getelementptr inbounds %struct.socket, %struct.socket* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, %278
  store i32 %282, i32* %280, align 4
  %283 = load %struct.socket*, %struct.socket** %13, align 8
  %284 = call i32 @socket_unlock(%struct.socket* %283, i32 1)
  %285 = load %struct.socket*, %struct.socket** %13, align 8
  %286 = call i32 @soclose(%struct.socket* %285)
  %287 = load %struct.socket*, %struct.socket** %12, align 8
  %288 = call i32 @sodereference(%struct.socket* %287)
  br label %458

289:                                              ; preds = %265
  %290 = load i32, i32* %16, align 4
  %291 = load i32*, i32** %7, align 8
  store i32 %290, i32* %291, align 4
  %292 = load i16, i16* %17, align 2
  %293 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %294 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %293, i32 0, i32 0
  store i16 %292, i16* %294, align 8
  %295 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %296 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %295, i32 0, i32 2
  store i32* @socketops, i32** %296, align 8
  %297 = load %struct.socket*, %struct.socket** %13, align 8
  %298 = bitcast %struct.socket* %297 to %struct.sockaddr*
  %299 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %300 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %299, i32 0, i32 1
  store %struct.sockaddr* %298, %struct.sockaddr** %300, align 8
  %301 = load %struct.socket*, %struct.socket** %12, align 8
  %302 = call i32 @socket_lock(%struct.socket* %301, i32 0)
  %303 = load i32, i32* %18, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %289
  %306 = load %struct.socket*, %struct.socket** %13, align 8
  %307 = call i32 @socket_lock(%struct.socket* %306, i32 1)
  br label %308

308:                                              ; preds = %305, %289
  %309 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %310 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %309, i32 0, i32 0
  %311 = load i16, i16* %310, align 8
  %312 = sext i16 %311 to i32
  %313 = load i32, i32* @FNONBLOCK, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %308
  %317 = load i32, i32* @SS_NBIO, align 4
  %318 = load %struct.socket*, %struct.socket** %13, align 8
  %319 = getelementptr inbounds %struct.socket, %struct.socket* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 4
  br label %329

322:                                              ; preds = %308
  %323 = load i32, i32* @SS_NBIO, align 4
  %324 = xor i32 %323, -1
  %325 = load %struct.socket*, %struct.socket** %13, align 8
  %326 = getelementptr inbounds %struct.socket, %struct.socket* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = and i32 %327, %324
  store i32 %328, i32* %326, align 4
  br label %329

329:                                              ; preds = %322, %316
  %330 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %331 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %330, i32 0, i32 0
  %332 = load i16, i16* %331, align 8
  %333 = sext i16 %332 to i32
  %334 = load i32, i32* @FASYNC, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %355

337:                                              ; preds = %329
  %338 = load i32, i32* @SS_ASYNC, align 4
  %339 = load %struct.socket*, %struct.socket** %13, align 8
  %340 = getelementptr inbounds %struct.socket, %struct.socket* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = or i32 %341, %338
  store i32 %342, i32* %340, align 4
  %343 = load i32, i32* @SB_ASYNC, align 4
  %344 = load %struct.socket*, %struct.socket** %13, align 8
  %345 = getelementptr inbounds %struct.socket, %struct.socket* %344, i32 0, i32 6
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = or i32 %347, %343
  store i32 %348, i32* %346, align 8
  %349 = load i32, i32* @SB_ASYNC, align 4
  %350 = load %struct.socket*, %struct.socket** %13, align 8
  %351 = getelementptr inbounds %struct.socket, %struct.socket* %350, i32 0, i32 5
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = or i32 %353, %349
  store i32 %354, i32* %352, align 4
  br label %376

355:                                              ; preds = %329
  %356 = load i32, i32* @SS_ASYNC, align 4
  %357 = xor i32 %356, -1
  %358 = load %struct.socket*, %struct.socket** %13, align 8
  %359 = getelementptr inbounds %struct.socket, %struct.socket* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = and i32 %360, %357
  store i32 %361, i32* %359, align 4
  %362 = load i32, i32* @SB_ASYNC, align 4
  %363 = xor i32 %362, -1
  %364 = load %struct.socket*, %struct.socket** %13, align 8
  %365 = getelementptr inbounds %struct.socket, %struct.socket* %364, i32 0, i32 6
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = and i32 %367, %363
  store i32 %368, i32* %366, align 8
  %369 = load i32, i32* @SB_ASYNC, align 4
  %370 = xor i32 %369, -1
  %371 = load %struct.socket*, %struct.socket** %13, align 8
  %372 = getelementptr inbounds %struct.socket, %struct.socket* %371, i32 0, i32 5
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = and i32 %374, %370
  store i32 %375, i32* %373, align 4
  br label %376

376:                                              ; preds = %355, %337
  %377 = load %struct.socket*, %struct.socket** %13, align 8
  %378 = call i32 @soacceptlock(%struct.socket* %377, %struct.sockaddr** %9, i32 0)
  %379 = load %struct.socket*, %struct.socket** %12, align 8
  %380 = call i32 @socket_unlock(%struct.socket* %379, i32 1)
  %381 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %382 = icmp eq %struct.sockaddr* %381, null
  br i1 %382, label %383, label %390

383:                                              ; preds = %376
  store i32 0, i32* %10, align 4
  %384 = load %struct.accept_nocancel_args*, %struct.accept_nocancel_args** %6, align 8
  %385 = getelementptr inbounds %struct.accept_nocancel_args, %struct.accept_nocancel_args* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %389

388:                                              ; preds = %383
  br label %418

389:                                              ; preds = %383
  store i32 0, i32* %11, align 4
  br label %428

390:                                              ; preds = %376
  %391 = load i32, i32* @sockaddr, align 4
  %392 = call i32 (...) @vfs_context_current()
  %393 = call i32 @vfs_context_cwd(i32 %392)
  %394 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %395 = call i32 (i32, i32, ...) @AUDIT_ARG(i32 %391, i32 %393, %struct.sockaddr* %394)
  %396 = load %struct.accept_nocancel_args*, %struct.accept_nocancel_args** %6, align 8
  %397 = getelementptr inbounds %struct.accept_nocancel_args, %struct.accept_nocancel_args* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %424

400:                                              ; preds = %390
  %401 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %402 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  store i32 %403, i32* %19, align 4
  %404 = load i32, i32* %10, align 4
  %405 = load i32, i32* %19, align 4
  %406 = call i32 @MIN(i32 %404, i32 %405)
  store i32 %406, i32* %10, align 4
  %407 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %408 = load %struct.accept_nocancel_args*, %struct.accept_nocancel_args** %6, align 8
  %409 = getelementptr inbounds %struct.accept_nocancel_args, %struct.accept_nocancel_args* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* %10, align 4
  %412 = call i32 @copyout(%struct.sockaddr* %407, i32 %410, i32 %411)
  store i32 %412, i32* %11, align 4
  %413 = load i32, i32* %11, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %417, label %415

415:                                              ; preds = %400
  %416 = load i32, i32* %19, align 4
  store i32 %416, i32* %10, align 4
  br label %417

417:                                              ; preds = %415, %400
  br label %418

418:                                              ; preds = %417, %388
  %419 = bitcast i32* %10 to %struct.sockaddr*
  %420 = load %struct.accept_nocancel_args*, %struct.accept_nocancel_args** %6, align 8
  %421 = getelementptr inbounds %struct.accept_nocancel_args, %struct.accept_nocancel_args* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @copyout(%struct.sockaddr* %419, i32 %422, i32 4)
  store i32 %423, i32* %11, align 4
  br label %424

424:                                              ; preds = %418, %390
  %425 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %426 = load i32, i32* @M_SONAME, align 4
  %427 = call i32 @FREE(%struct.sockaddr* %425, i32 %426)
  br label %428

428:                                              ; preds = %424, %389
  %429 = load %struct.socket*, %struct.socket** %13, align 8
  %430 = getelementptr inbounds %struct.socket, %struct.socket* %429, i32 0, i32 4
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* @SOF_DEFUNCT, align 4
  %433 = and i32 %431, %432
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %440

435:                                              ; preds = %428
  %436 = call i32 (...) @current_proc()
  %437 = load %struct.socket*, %struct.socket** %13, align 8
  %438 = load i32, i32* @SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL, align 4
  %439 = call i32 @sodefunct(i32 %436, %struct.socket* %437, i32 %438)
  br label %440

440:                                              ; preds = %435, %428
  %441 = load i32, i32* %18, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %446

443:                                              ; preds = %440
  %444 = load %struct.socket*, %struct.socket** %13, align 8
  %445 = call i32 @socket_unlock(%struct.socket* %444, i32 1)
  br label %446

446:                                              ; preds = %443, %440
  %447 = load %struct.proc*, %struct.proc** %5, align 8
  %448 = call i32 @proc_fdlock(%struct.proc* %447)
  %449 = load %struct.proc*, %struct.proc** %5, align 8
  %450 = load i32, i32* %16, align 4
  %451 = call i32 @procfdtbl_releasefd(%struct.proc* %449, i32 %450, i32* null)
  %452 = load %struct.proc*, %struct.proc** %5, align 8
  %453 = load i32, i32* %16, align 4
  %454 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %455 = call i32 @fp_drop(%struct.proc* %452, i32 %453, %struct.fileproc* %454, i32 1)
  %456 = load %struct.proc*, %struct.proc** %5, align 8
  %457 = call i32 @proc_fdunlock(%struct.proc* %456)
  br label %458

458:                                              ; preds = %446, %274, %262, %207, %198, %126, %109, %61
  %459 = load i32, i32* %15, align 4
  %460 = call i32 @file_drop(i32 %459)
  %461 = load i32, i32* %11, align 4
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %474

463:                                              ; preds = %458
  %464 = load i64, i64* @ENTR_SHOULDTRACE, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %474

466:                                              ; preds = %463
  %467 = load i32, i32* @kEnTrActKernSocket, align 4
  %468 = load i32, i32* @DBG_FUNC_START, align 4
  %469 = load i32, i32* %16, align 4
  %470 = load %struct.socket*, %struct.socket** %13, align 8
  %471 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %470)
  %472 = trunc i64 %471 to i32
  %473 = call i32 @KERNEL_ENERGYTRACE(i32 %467, i32 %468, i32 %469, i32 0, i32 %472)
  br label %474

474:                                              ; preds = %466, %463, %458
  %475 = load i32, i32* %11, align 4
  store i32 %475, i32* %4, align 4
  br label %476

476:                                              ; preds = %474, %56, %41
  %477 = load i32, i32* %4, align 4
  ret i32 %477
}

declare dso_local i32 @AUDIT_ARG(i32, i32, ...) #1

declare dso_local i32 @copyin(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @fp_getfsock(%struct.proc*, i32, %struct.fileproc**, %struct.socket**) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(%struct.TYPE_12__*) #1

declare dso_local i32 @panic(i8*, %struct.socket*, i32) #1

declare dso_local i32 @msleep(%struct.sockaddr*, i32*, i32, i8*, i32) #1

declare dso_local i32 @lck_mtx_assert(i32*, i32) #1

declare dso_local i32 @so_acquire_accept_list(%struct.socket*, i32*) #1

declare dso_local i32 @so_release_accept_list(%struct.socket*) #1

declare dso_local %struct.socket* @TAILQ_FIRST(%struct.TYPE_12__*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.TYPE_12__*, %struct.socket*, i32) #1

declare dso_local i32 @soacceptfilter(%struct.socket*, %struct.socket*) #1

declare dso_local i32 @sodereference(%struct.socket*) #1

declare dso_local i32 @falloc(%struct.proc*, %struct.fileproc**, i32*, i32) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @soclose(%struct.socket*) #1

declare dso_local i32 @soacceptlock(%struct.socket*, %struct.sockaddr**, i32) #1

declare dso_local i32 @vfs_context_cwd(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @copyout(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @FREE(%struct.sockaddr*, i32) #1

declare dso_local i32 @sodefunct(i32, %struct.socket*, i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @proc_fdlock(%struct.proc*) #1

declare dso_local i32 @procfdtbl_releasefd(%struct.proc*, i32, i32*) #1

declare dso_local i32 @fp_drop(%struct.proc*, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @proc_fdunlock(%struct.proc*) #1

declare dso_local i32 @file_drop(i32) #1

declare dso_local i32 @KERNEL_ENERGYTRACE(i32, i32, i32, i32, i32) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
