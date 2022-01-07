; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_usr_sosend.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_usr_sosend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.socket*, i32, %struct.mbuf*, i32*, i32*, %struct.proc*)* }
%struct.proc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.uio = type { i32 }
%struct.mbuf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOF_MP_SUBFLOW = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@MSG_DONTROUTE = common dso_local global i32 0, align 4
@MSG_HOLD = common dso_local global i32 0, align 4
@MSG_SEND = common dso_local global i32 0, align 4
@MSG_FLUSH = common dso_local global i32 0, align 4
@SOF_ENABLE_MSGS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@PRUS_MORETOCOME = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, %struct.uio*, %struct.mbuf*, %struct.mbuf*, i32)* @mptcp_usr_sosend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_usr_sosend(%struct.socket* %0, %struct.sockaddr* %1, %struct.uio* %2, %struct.mbuf* %3, %struct.mbuf* %4, i32 %5) #0 {
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.uio*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.proc*, align 8
  %18 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store %struct.uio* %2, %struct.uio** %9, align 8
  store %struct.mbuf* %3, %struct.mbuf** %10, align 8
  store %struct.mbuf* %4, %struct.mbuf** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = call %struct.proc* (...) @current_proc()
  store %struct.proc* %19, %struct.proc** %17, align 8
  store i32 0, i32* %18, align 4
  %20 = load %struct.uio*, %struct.uio** %9, align 8
  %21 = icmp eq %struct.uio* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %24 = icmp ne %struct.mbuf* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %6
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %15, align 4
  br label %209

27:                                               ; preds = %22
  %28 = load %struct.uio*, %struct.uio** %9, align 8
  %29 = call i64 @uio_resid(%struct.uio* %28)
  store i64 %29, i64* %14, align 8
  %30 = load %struct.socket*, %struct.socket** %7, align 8
  %31 = call i32 @socket_lock(%struct.socket* %30, i32 1)
  %32 = load %struct.socket*, %struct.socket** %7, align 8
  %33 = load %struct.proc*, %struct.proc** %17, align 8
  %34 = call i32 @so_update_last_owner_locked(%struct.socket* %32, %struct.proc* %33)
  %35 = load %struct.socket*, %struct.socket** %7, align 8
  %36 = call i32 @so_update_policy(%struct.socket* %35)
  %37 = load %struct.socket*, %struct.socket** %7, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SOCK_STREAM, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @VERIFY(i32 %42)
  %44 = load %struct.socket*, %struct.socket** %7, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SOF_MP_SUBFLOW, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @VERIFY(i32 %51)
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @MSG_OOB, align 4
  %55 = load i32, i32* @MSG_DONTROUTE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @MSG_HOLD, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @MSG_SEND, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @MSG_FLUSH, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %53, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %27
  %66 = load %struct.socket*, %struct.socket** %7, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SOF_ENABLE_MSGS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65, %27
  %73 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %73, i32* %15, align 4
  %74 = load %struct.socket*, %struct.socket** %7, align 8
  %75 = call i32 @socket_unlock(%struct.socket* %74, i32 1)
  br label %209

76:                                               ; preds = %65
  %77 = load i64, i64* %14, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @MSG_EOR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %86 = icmp ne %struct.mbuf* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84, %79, %76
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %15, align 4
  %89 = load %struct.socket*, %struct.socket** %7, align 8
  %90 = call i32 @socket_unlock(%struct.socket* %89, i32 1)
  br label %209

91:                                               ; preds = %84
  %92 = load %struct.proc*, %struct.proc** %17, align 8
  %93 = getelementptr inbounds %struct.proc, %struct.proc* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = call i32 @OSIncrementAtomicLong(i32* %96)
  br label %98

98:                                               ; preds = %193, %91
  %99 = load %struct.socket*, %struct.socket** %7, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @sosendcheck(%struct.socket* %99, i32* null, i64 %100, i32 0, i32 0, i32 %101, i32* %18, i32* null)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %197

106:                                              ; preds = %98
  %107 = load %struct.socket*, %struct.socket** %7, align 8
  %108 = getelementptr inbounds %struct.socket, %struct.socket* %107, i32 0, i32 2
  %109 = call i64 @sbspace(i32* %108)
  store i64 %109, i64* %13, align 8
  br label %110

110:                                              ; preds = %190, %106
  %111 = load %struct.socket*, %struct.socket** %7, align 8
  %112 = call i32 @socket_unlock(%struct.socket* %111, i32 0)
  %113 = load %struct.uio*, %struct.uio** %9, align 8
  %114 = load i32, i32* @M_WAITOK, align 4
  %115 = load i64, i64* %13, align 8
  %116 = call i32 @mptcp_uiotombuf(%struct.uio* %113, i32 %114, i64 %115, i32 0, %struct.mbuf** %10)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %110
  %120 = load %struct.socket*, %struct.socket** %7, align 8
  %121 = call i32 @socket_lock(%struct.socket* %120, i32 0)
  br label %197

122:                                              ; preds = %110
  %123 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %124 = icmp ne %struct.mbuf* %123, null
  %125 = zext i1 %124 to i32
  %126 = call i32 @VERIFY(i32 %125)
  %127 = load i64, i64* %14, align 8
  %128 = load %struct.uio*, %struct.uio** %9, align 8
  %129 = call i64 @uio_resid(%struct.uio* %128)
  %130 = sub nsw i64 %127, %129
  %131 = load i64, i64* %13, align 8
  %132 = sub nsw i64 %131, %130
  store i64 %132, i64* %13, align 8
  %133 = load %struct.uio*, %struct.uio** %9, align 8
  %134 = call i64 @uio_resid(%struct.uio* %133)
  store i64 %134, i64* %14, align 8
  %135 = load %struct.socket*, %struct.socket** %7, align 8
  %136 = call i32 @socket_lock(%struct.socket* %135, i32 0)
  %137 = load i64, i64* %14, align 8
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %122
  %140 = load i64, i64* %13, align 8
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* @PRUS_MORETOCOME, align 4
  br label %145

144:                                              ; preds = %139, %122
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i32 [ %143, %142 ], [ 0, %144 ]
  store i32 %146, i32* %16, align 4
  %147 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %148 = icmp eq %struct.mbuf* %147, null
  %149 = zext i1 %148 to i32
  %150 = call i32 @VERIFY(i32 %149)
  %151 = load %struct.socket*, %struct.socket** %7, align 8
  %152 = call i32 @sflt_data_out(%struct.socket* %151, i32* null, %struct.mbuf** %10, %struct.mbuf** %11, i32 0)
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %145
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* @EJUSTRETURN, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store i32 0, i32* %15, align 4
  store %struct.mbuf* null, %struct.mbuf** %10, align 8
  br label %160

160:                                              ; preds = %159, %155
  br label %197

161:                                              ; preds = %145
  %162 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %163 = icmp ne %struct.mbuf* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %166 = call i32 @m_freem(%struct.mbuf* %165)
  store %struct.mbuf* null, %struct.mbuf** %11, align 8
  br label %167

167:                                              ; preds = %164, %161
  %168 = load %struct.socket*, %struct.socket** %7, align 8
  %169 = getelementptr inbounds %struct.socket, %struct.socket* %168, i32 0, i32 3
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32 (%struct.socket*, i32, %struct.mbuf*, i32*, i32*, %struct.proc*)*, i32 (%struct.socket*, i32, %struct.mbuf*, i32*, i32*, %struct.proc*)** %173, align 8
  %175 = load %struct.socket*, %struct.socket** %7, align 8
  %176 = load i32, i32* %16, align 4
  %177 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %178 = load %struct.proc*, %struct.proc** %17, align 8
  %179 = call i32 %174(%struct.socket* %175, i32 %176, %struct.mbuf* %177, i32* null, i32* null, %struct.proc* %178)
  store i32 %179, i32* %15, align 4
  store %struct.mbuf* null, %struct.mbuf** %10, align 8
  %180 = load i32, i32* %15, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %167
  br label %197

183:                                              ; preds = %167
  br label %184

184:                                              ; preds = %183
  %185 = load i64, i64* %14, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i64, i64* %13, align 8
  %189 = icmp sgt i64 %188, 0
  br label %190

190:                                              ; preds = %187, %184
  %191 = phi i1 [ false, %184 ], [ %189, %187 ]
  br i1 %191, label %110, label %192

192:                                              ; preds = %190
  br label %193

193:                                              ; preds = %192
  %194 = load i64, i64* %14, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %98, label %196

196:                                              ; preds = %193
  br label %197

197:                                              ; preds = %196, %182, %160, %119, %105
  %198 = load i32, i32* %18, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = load %struct.socket*, %struct.socket** %7, align 8
  %202 = getelementptr inbounds %struct.socket, %struct.socket* %201, i32 0, i32 2
  %203 = load i32, i32* @FALSE, align 4
  %204 = call i32 @sbunlock(i32* %202, i32 %203)
  br label %208

205:                                              ; preds = %197
  %206 = load %struct.socket*, %struct.socket** %7, align 8
  %207 = call i32 @socket_unlock(%struct.socket* %206, i32 1)
  br label %208

208:                                              ; preds = %205, %200
  br label %209

209:                                              ; preds = %208, %87, %72, %25
  %210 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %211 = icmp ne %struct.mbuf* %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %214 = call i32 @m_freem(%struct.mbuf* %213)
  br label %215

215:                                              ; preds = %212, %209
  %216 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %217 = icmp ne %struct.mbuf* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %220 = call i32 @m_freem(%struct.mbuf* %219)
  br label %221

221:                                              ; preds = %218, %215
  %222 = load %struct.socket*, %struct.socket** %7, align 8
  %223 = call i32 @soclearfastopen(%struct.socket* %222)
  %224 = load i32, i32* %15, align 4
  ret i32 %224
}

declare dso_local %struct.proc* @current_proc(...) #1

declare dso_local i64 @uio_resid(%struct.uio*) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @so_update_last_owner_locked(%struct.socket*, %struct.proc*) #1

declare dso_local i32 @so_update_policy(%struct.socket*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @OSIncrementAtomicLong(i32*) #1

declare dso_local i32 @sosendcheck(%struct.socket*, i32*, i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @sbspace(i32*) #1

declare dso_local i32 @mptcp_uiotombuf(%struct.uio*, i32, i64, i32, %struct.mbuf**) #1

declare dso_local i32 @sflt_data_out(%struct.socket*, i32*, %struct.mbuf**, %struct.mbuf**, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @sbunlock(i32*, i32) #1

declare dso_local i32 @soclearfastopen(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
