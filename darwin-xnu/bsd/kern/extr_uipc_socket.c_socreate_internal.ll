; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_socreate_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_socreate_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.proc = type { i32 }
%struct.socket = type { i32, i64, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.protosw*, i32, i32, i8*, i8*, i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_7__ = type { %struct.socket* }
%struct.TYPE_6__ = type { %struct.socket*, i32 }
%struct.protosw = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 (%struct.socket*, i32, %struct.proc*)* }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EPROTOTYPE = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@net_api_stats = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCF_ASYNC = common dso_local global i32 0, align 4
@SS_NBIO = common dso_local global i32 0, align 4
@PROC_NULL = common dso_local global %struct.proc* null, align 8
@SOF_DELEGATED = common dso_local global i32 0, align 4
@SS_PRIV = common dso_local global i32 0, align 4
@SB_RECV = common dso_local global i32 0, align 4
@SS_NOFDREF = common dso_local global i32 0, align 4
@TASK_POLICY_NEW_SOCKETS_BG = common dso_local global i32 0, align 4
@TRAFFIC_MGT_SO_BACKGROUND = common dso_local global i32 0, align 4
@SOF_NODEFUNCT = common dso_local global i32 0, align 4
@SO_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socreate_internal(i32 %0, %struct.socket** %1, i32 %2, i32 %3, %struct.proc* %4, i32 %5, %struct.proc* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.socket**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.proc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.proc*, align 8
  %16 = alloca %struct.protosw*, align 8
  %17 = alloca %struct.socket*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.socket** %1, %struct.socket*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.proc* %4, %struct.proc** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.proc* %6, %struct.proc** %15, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.socket**, %struct.socket*** %10, align 8
  %20 = icmp ne %struct.socket** %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @VERIFY(i32 %21)
  %23 = load %struct.socket**, %struct.socket*** %10, align 8
  store %struct.socket* null, %struct.socket** %23, align 8
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %7
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call %struct.protosw* @pffindproto(i32 %27, i32 %28, i32 %29)
  store %struct.protosw* %30, %struct.protosw** %16, align 8
  br label %35

31:                                               ; preds = %7
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.protosw* @pffindtype(i32 %32, i32 %33)
  store %struct.protosw* %34, %struct.protosw** %16, align 8
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.protosw*, %struct.protosw** %16, align 8
  %37 = icmp eq %struct.protosw* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load %struct.protosw*, %struct.protosw** %16, align 8
  %40 = getelementptr inbounds %struct.protosw, %struct.protosw* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32 (%struct.socket*, i32, %struct.proc*)*, i32 (%struct.socket*, i32, %struct.proc*)** %42, align 8
  %44 = icmp eq i32 (%struct.socket*, i32, %struct.proc*)* %43, null
  br i1 %44, label %45, label %64

45:                                               ; preds = %38, %35
  %46 = load i32, i32* %9, align 4
  %47 = call i32* @pffinddomain(i32 %46)
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %50, i32* %8, align 4
  br label %298

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32* @pffindprotonotype(i32 %55, i32 %56)
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @EPROTOTYPE, align 4
  store i32 %60, i32* %8, align 4
  br label %298

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %51
  %63 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %63, i32* %8, align 4
  br label %298

64:                                               ; preds = %38
  %65 = load %struct.protosw*, %struct.protosw** %16, align 8
  %66 = getelementptr inbounds %struct.protosw, %struct.protosw* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @EPROTOTYPE, align 4
  store i32 %71, i32* %8, align 4
  br label %298

72:                                               ; preds = %64
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call %struct.socket* @soalloc(i32 1, i32 %73, i32 %74)
  store %struct.socket* %75, %struct.socket** %17, align 8
  %76 = load %struct.socket*, %struct.socket** %17, align 8
  %77 = icmp eq %struct.socket* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @ENOBUFS, align 4
  store i32 %79, i32* %8, align 4
  br label %298

80:                                               ; preds = %72
  %81 = load i32, i32* %9, align 4
  switch i32 %81, label %126 [
    i32 132, label %82
    i32 135, label %85
    i32 129, label %98
    i32 130, label %101
    i32 133, label %104
    i32 134, label %107
    i32 128, label %120
    i32 131, label %123
  ]

82:                                               ; preds = %80
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @net_api_stats, i32 0, i32 12), align 4
  %84 = call i32 @INC_ATOMIC_INT64_LIM(i32 %83)
  br label %129

85:                                               ; preds = %80
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @net_api_stats, i32 0, i32 11), align 4
  %87 = call i32 @INC_ATOMIC_INT64_LIM(i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @SOCK_STREAM, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @net_api_stats, i32 0, i32 10), align 4
  %93 = call i32 @INC_ATOMIC_INT64_LIM(i32 %92)
  br label %97

94:                                               ; preds = %85
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @net_api_stats, i32 0, i32 9), align 4
  %96 = call i32 @INC_ATOMIC_INT64_LIM(i32 %95)
  br label %97

97:                                               ; preds = %94, %91
  br label %129

98:                                               ; preds = %80
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @net_api_stats, i32 0, i32 8), align 4
  %100 = call i32 @INC_ATOMIC_INT64_LIM(i32 %99)
  br label %129

101:                                              ; preds = %80
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @net_api_stats, i32 0, i32 7), align 4
  %103 = call i32 @INC_ATOMIC_INT64_LIM(i32 %102)
  br label %129

104:                                              ; preds = %80
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @net_api_stats, i32 0, i32 6), align 4
  %106 = call i32 @INC_ATOMIC_INT64_LIM(i32 %105)
  br label %129

107:                                              ; preds = %80
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @net_api_stats, i32 0, i32 5), align 4
  %109 = call i32 @INC_ATOMIC_INT64_LIM(i32 %108)
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @SOCK_STREAM, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @net_api_stats, i32 0, i32 4), align 4
  %115 = call i32 @INC_ATOMIC_INT64_LIM(i32 %114)
  br label %119

116:                                              ; preds = %107
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @net_api_stats, i32 0, i32 3), align 4
  %118 = call i32 @INC_ATOMIC_INT64_LIM(i32 %117)
  br label %119

119:                                              ; preds = %116, %113
  br label %129

120:                                              ; preds = %80
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @net_api_stats, i32 0, i32 2), align 4
  %122 = call i32 @INC_ATOMIC_INT64_LIM(i32 %121)
  br label %129

123:                                              ; preds = %80
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @net_api_stats, i32 0, i32 1), align 4
  %125 = call i32 @INC_ATOMIC_INT64_LIM(i32 %124)
  br label %129

126:                                              ; preds = %80
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @net_api_stats, i32 0, i32 0), align 4
  %128 = call i32 @INC_ATOMIC_INT64_LIM(i32 %127)
  br label %129

129:                                              ; preds = %126, %123, %120, %119, %104, %101, %98, %97, %82
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* @SOCF_ASYNC, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32, i32* @SS_NBIO, align 4
  %136 = load %struct.socket*, %struct.socket** %17, align 8
  %137 = getelementptr inbounds %struct.socket, %struct.socket* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %134, %129
  %141 = load %struct.socket*, %struct.socket** %17, align 8
  %142 = getelementptr inbounds %struct.socket, %struct.socket* %141, i32 0, i32 21
  %143 = call i32 @TAILQ_INIT(i32* %142)
  %144 = load %struct.socket*, %struct.socket** %17, align 8
  %145 = getelementptr inbounds %struct.socket, %struct.socket* %144, i32 0, i32 20
  %146 = call i32 @TAILQ_INIT(i32* %145)
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.socket*, %struct.socket** %17, align 8
  %149 = getelementptr inbounds %struct.socket, %struct.socket* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.proc*, %struct.proc** %13, align 8
  %151 = call i8* @proc_uniqueid(%struct.proc* %150)
  %152 = load %struct.socket*, %struct.socket** %17, align 8
  %153 = getelementptr inbounds %struct.socket, %struct.socket* %152, i32 0, i32 19
  store i8* %151, i8** %153, align 8
  %154 = load %struct.proc*, %struct.proc** %13, align 8
  %155 = call i8* @proc_pid(%struct.proc* %154)
  %156 = load %struct.socket*, %struct.socket** %17, align 8
  %157 = getelementptr inbounds %struct.socket, %struct.socket* %156, i32 0, i32 18
  store i8* %155, i8** %157, align 8
  %158 = load %struct.proc*, %struct.proc** %13, align 8
  %159 = load %struct.socket*, %struct.socket** %17, align 8
  %160 = getelementptr inbounds %struct.socket, %struct.socket* %159, i32 0, i32 17
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @proc_getexecutableuuid(%struct.proc* %158, i32 %161, i32 4)
  %163 = load %struct.socket*, %struct.socket** %17, align 8
  %164 = getelementptr inbounds %struct.socket, %struct.socket* %163, i32 0, i32 16
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @proc_pidoriginatoruuid(i32 %165, i32 4)
  %167 = load %struct.proc*, %struct.proc** %15, align 8
  %168 = load %struct.proc*, %struct.proc** @PROC_NULL, align 8
  %169 = icmp ne %struct.proc* %167, %168
  br i1 %169, label %170, label %193

170:                                              ; preds = %140
  %171 = load %struct.proc*, %struct.proc** %15, align 8
  %172 = load %struct.proc*, %struct.proc** %13, align 8
  %173 = icmp ne %struct.proc* %171, %172
  br i1 %173, label %174, label %193

174:                                              ; preds = %170
  %175 = load %struct.proc*, %struct.proc** %15, align 8
  %176 = call i8* @proc_uniqueid(%struct.proc* %175)
  %177 = load %struct.socket*, %struct.socket** %17, align 8
  %178 = getelementptr inbounds %struct.socket, %struct.socket* %177, i32 0, i32 15
  store i8* %176, i8** %178, align 8
  %179 = load %struct.proc*, %struct.proc** %15, align 8
  %180 = call i8* @proc_pid(%struct.proc* %179)
  %181 = load %struct.socket*, %struct.socket** %17, align 8
  %182 = getelementptr inbounds %struct.socket, %struct.socket* %181, i32 0, i32 14
  store i8* %180, i8** %182, align 8
  %183 = load %struct.proc*, %struct.proc** %15, align 8
  %184 = load %struct.socket*, %struct.socket** %17, align 8
  %185 = getelementptr inbounds %struct.socket, %struct.socket* %184, i32 0, i32 13
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @proc_getexecutableuuid(%struct.proc* %183, i32 %186, i32 4)
  %188 = load i32, i32* @SOF_DELEGATED, align 4
  %189 = load %struct.socket*, %struct.socket** %17, align 8
  %190 = getelementptr inbounds %struct.socket, %struct.socket* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %174, %170, %140
  %194 = load %struct.proc*, %struct.proc** %13, align 8
  %195 = call i32 @kauth_cred_proc_ref(%struct.proc* %194)
  %196 = load %struct.socket*, %struct.socket** %17, align 8
  %197 = getelementptr inbounds %struct.socket, %struct.socket* %196, i32 0, i32 12
  store i32 %195, i32* %197, align 8
  %198 = call i32 (...) @kauth_cred_get()
  %199 = call i32 @suser(i32 %198, i32* null)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %193
  %202 = load i32, i32* @SS_PRIV, align 4
  %203 = load %struct.socket*, %struct.socket** %17, align 8
  %204 = getelementptr inbounds %struct.socket, %struct.socket* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %201, %193
  %208 = load %struct.protosw*, %struct.protosw** %16, align 8
  %209 = load %struct.socket*, %struct.socket** %17, align 8
  %210 = getelementptr inbounds %struct.socket, %struct.socket* %209, i32 0, i32 11
  store %struct.protosw* %208, %struct.protosw** %210, align 8
  %211 = load i32, i32* @SB_RECV, align 4
  %212 = load %struct.socket*, %struct.socket** %17, align 8
  %213 = getelementptr inbounds %struct.socket, %struct.socket* %212, i32 0, i32 10
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %211
  store i32 %216, i32* %214, align 8
  %217 = load %struct.socket*, %struct.socket** %17, align 8
  %218 = load %struct.socket*, %struct.socket** %17, align 8
  %219 = getelementptr inbounds %struct.socket, %struct.socket* %218, i32 0, i32 9
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  store %struct.socket* %217, %struct.socket** %220, align 8
  %221 = load %struct.socket*, %struct.socket** %17, align 8
  %222 = getelementptr inbounds %struct.socket, %struct.socket* %221, i32 0, i32 10
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  store %struct.socket* %217, %struct.socket** %223, align 8
  %224 = load %struct.socket*, %struct.socket** %17, align 8
  %225 = getelementptr inbounds %struct.socket, %struct.socket* %224, i32 0, i32 8
  store i64 0, i64* %225, align 8
  %226 = load %struct.socket*, %struct.socket** %17, align 8
  %227 = getelementptr inbounds %struct.socket, %struct.socket* %226, i32 0, i32 7
  store i64 0, i64* %227, align 8
  %228 = load %struct.socket*, %struct.socket** %17, align 8
  %229 = getelementptr inbounds %struct.socket, %struct.socket* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %230, 1
  store i64 %231, i64* %229, align 8
  %232 = load %struct.protosw*, %struct.protosw** %16, align 8
  %233 = getelementptr inbounds %struct.protosw, %struct.protosw* %232, i32 0, i32 2
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i32 (%struct.socket*, i32, %struct.proc*)*, i32 (%struct.socket*, i32, %struct.proc*)** %235, align 8
  %237 = load %struct.socket*, %struct.socket** %17, align 8
  %238 = load i32, i32* %12, align 4
  %239 = load %struct.proc*, %struct.proc** %13, align 8
  %240 = call i32 %236(%struct.socket* %237, i32 %238, %struct.proc* %239)
  store i32 %240, i32* %18, align 4
  %241 = load i32, i32* %18, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %262

243:                                              ; preds = %207
  %244 = load i32, i32* @SS_NOFDREF, align 4
  %245 = load %struct.socket*, %struct.socket** %17, align 8
  %246 = getelementptr inbounds %struct.socket, %struct.socket* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 8
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 8
  %249 = load %struct.socket*, %struct.socket** %17, align 8
  %250 = getelementptr inbounds %struct.socket, %struct.socket* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = icmp sgt i64 %251, 0
  %253 = zext i1 %252 to i32
  %254 = call i32 @VERIFY(i32 %253)
  %255 = load %struct.socket*, %struct.socket** %17, align 8
  %256 = getelementptr inbounds %struct.socket, %struct.socket* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = add nsw i64 %257, -1
  store i64 %258, i64* %256, align 8
  %259 = load %struct.socket*, %struct.socket** %17, align 8
  %260 = call i32 @sofreelastref(%struct.socket* %259, i32 1)
  %261 = load i32, i32* %18, align 4
  store i32 %261, i32* %8, align 4
  br label %298

262:                                              ; preds = %207
  %263 = load %struct.protosw*, %struct.protosw** %16, align 8
  %264 = getelementptr inbounds %struct.protosw, %struct.protosw* %263, i32 0, i32 1
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 0
  %267 = call i32 @atomic_add_32(i32* %266, i32 1)
  %268 = load %struct.socket*, %struct.socket** %17, align 8
  %269 = getelementptr inbounds %struct.socket, %struct.socket* %268, i32 0, i32 5
  %270 = call i32 @TAILQ_INIT(i32* %269)
  %271 = load %struct.socket*, %struct.socket** %17, align 8
  %272 = call i32 @sflt_initsock(%struct.socket* %271)
  %273 = load %struct.socket*, %struct.socket** %17, align 8
  %274 = call i32 @so_set_default_traffic_class(%struct.socket* %273)
  %275 = call i32 (...) @current_thread()
  %276 = load i32, i32* @TASK_POLICY_NEW_SOCKETS_BG, align 4
  %277 = call i64 @proc_get_effective_thread_policy(i32 %275, i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %286

279:                                              ; preds = %262
  %280 = load %struct.socket*, %struct.socket** %17, align 8
  %281 = load i32, i32* @TRAFFIC_MGT_SO_BACKGROUND, align 4
  %282 = call i32 @socket_set_traffic_mgt_flags(%struct.socket* %280, i32 %281)
  %283 = call i32 (...) @current_thread()
  %284 = load %struct.socket*, %struct.socket** %17, align 8
  %285 = getelementptr inbounds %struct.socket, %struct.socket* %284, i32 0, i32 3
  store i32 %283, i32* %285, align 4
  br label %286

286:                                              ; preds = %279, %262
  %287 = load i32, i32* %9, align 4
  switch i32 %287, label %294 [
    i32 132, label %288
    i32 128, label %288
    i32 131, label %288
  ]

288:                                              ; preds = %286, %286, %286
  %289 = load i32, i32* @SOF_NODEFUNCT, align 4
  %290 = load %struct.socket*, %struct.socket** %17, align 8
  %291 = getelementptr inbounds %struct.socket, %struct.socket* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = or i32 %292, %289
  store i32 %293, i32* %291, align 8
  br label %295

294:                                              ; preds = %286
  br label %295

295:                                              ; preds = %294, %288
  %296 = load %struct.socket*, %struct.socket** %17, align 8
  %297 = load %struct.socket**, %struct.socket*** %10, align 8
  store %struct.socket* %296, %struct.socket** %297, align 8
  store i32 0, i32* %8, align 4
  br label %298

298:                                              ; preds = %295, %243, %78, %70, %62, %59, %49
  %299 = load i32, i32* %8, align 4
  ret i32 %299
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.protosw* @pffindproto(i32, i32, i32) #1

declare dso_local %struct.protosw* @pffindtype(i32, i32) #1

declare dso_local i32* @pffinddomain(i32) #1

declare dso_local i32* @pffindprotonotype(i32, i32) #1

declare dso_local %struct.socket* @soalloc(i32, i32, i32) #1

declare dso_local i32 @INC_ATOMIC_INT64_LIM(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i8* @proc_uniqueid(%struct.proc*) #1

declare dso_local i8* @proc_pid(%struct.proc*) #1

declare dso_local i32 @proc_getexecutableuuid(%struct.proc*, i32, i32) #1

declare dso_local i32 @proc_pidoriginatoruuid(i32, i32) #1

declare dso_local i32 @kauth_cred_proc_ref(%struct.proc*) #1

declare dso_local i32 @suser(i32, i32*) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i32 @sofreelastref(%struct.socket*, i32) #1

declare dso_local i32 @atomic_add_32(i32*, i32) #1

declare dso_local i32 @sflt_initsock(%struct.socket*) #1

declare dso_local i32 @so_set_default_traffic_class(%struct.socket*) #1

declare dso_local i64 @proc_get_effective_thread_policy(i32, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @socket_set_traffic_mgt_flags(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
