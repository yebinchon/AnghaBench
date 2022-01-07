; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_recvit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_recvit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.user_msghdr = type { i32, i32, i64, i32, i32 }
%struct.mbuf = type { i32 }
%struct.socket = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.socket*, %struct.sockaddr**, i32, %struct.mbuf**, %struct.mbuf**, i32*)* }
%struct.sockaddr = type { i32 }
%struct.fileproc = type { i64, i64 }

@DBG_FNC_RECVIT = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@DTYPE_SOCKET = common dso_local global i64 0, align 8
@ENOTSOCK = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@sockaddr = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@PR_CONNREQUIRED = common dso_local global i32 0, align 4
@SS_DEFUNCT = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, i32, %struct.user_msghdr*, i32, i64, i64*)* @recvit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recvit(%struct.proc* %0, i32 %1, %struct.user_msghdr* %2, i32 %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.user_msghdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca %struct.socket*, align 8
  %18 = alloca %struct.sockaddr*, align 8
  %19 = alloca %struct.fileproc*, align 8
  store %struct.proc* %0, %struct.proc** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.user_msghdr* %2, %struct.user_msghdr** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store %struct.mbuf* null, %struct.mbuf** %16, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %18, align 8
  %20 = load i32, i32* @DBG_FNC_RECVIT, align 4
  %21 = load i32, i32* @DBG_FUNC_START, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @KERNEL_DEBUG(i32 %22, i32 0, i32 0, i32 0, i32 0, i32 0)
  %24 = load %struct.proc*, %struct.proc** %8, align 8
  %25 = call i32 @proc_fdlock(%struct.proc* %24)
  %26 = load %struct.proc*, %struct.proc** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @fp_lookup(%struct.proc* %26, i32 %27, %struct.fileproc** %19, i32 1)
  store i32 %28, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %6
  %31 = load i32, i32* @DBG_FNC_RECVIT, align 4
  %32 = load i32, i32* @DBG_FUNC_END, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @KERNEL_DEBUG(i32 %33, i32 %34, i32 0, i32 0, i32 0, i32 0)
  %36 = load %struct.proc*, %struct.proc** %8, align 8
  %37 = call i32 @proc_fdunlock(%struct.proc* %36)
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %7, align 4
  br label %213

39:                                               ; preds = %6
  %40 = load %struct.fileproc*, %struct.fileproc** %19, align 8
  %41 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DTYPE_SOCKET, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.proc*, %struct.proc** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.fileproc*, %struct.fileproc** %19, align 8
  %49 = call i32 @fp_drop(%struct.proc* %46, i32 %47, %struct.fileproc* %48, i32 1)
  %50 = load %struct.proc*, %struct.proc** %8, align 8
  %51 = call i32 @proc_fdunlock(%struct.proc* %50)
  %52 = load i32, i32* @ENOTSOCK, align 4
  store i32 %52, i32* %7, align 4
  br label %213

53:                                               ; preds = %39
  %54 = load %struct.fileproc*, %struct.fileproc** %19, align 8
  %55 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.socket*
  store %struct.socket* %57, %struct.socket** %17, align 8
  %58 = load %struct.socket*, %struct.socket** %17, align 8
  %59 = icmp eq %struct.socket* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load %struct.proc*, %struct.proc** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.fileproc*, %struct.fileproc** %19, align 8
  %64 = call i32 @fp_drop(%struct.proc* %61, i32 %62, %struct.fileproc* %63, i32 1)
  %65 = load %struct.proc*, %struct.proc** %8, align 8
  %66 = call i32 @proc_fdunlock(%struct.proc* %65)
  %67 = load i32, i32* @EBADF, align 4
  store i32 %67, i32* %7, align 4
  br label %213

68:                                               ; preds = %53
  %69 = load %struct.proc*, %struct.proc** %8, align 8
  %70 = call i32 @proc_fdunlock(%struct.proc* %69)
  %71 = load i32, i32* %11, align 4
  %72 = call i64 @uio_resid(i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load i32, i32* @DBG_FNC_RECVIT, align 4
  %76 = load i32, i32* @DBG_FUNC_END, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @EINVAL, align 4
  %79 = call i32 @KERNEL_DEBUG(i32 %77, i32 %78, i32 0, i32 0, i32 0, i32 0)
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %15, align 4
  br label %207

81:                                               ; preds = %68
  %82 = load i32, i32* %11, align 4
  %83 = call i64 @uio_resid(i32 %82)
  store i64 %83, i64* %14, align 8
  %84 = load %struct.socket*, %struct.socket** %17, align 8
  %85 = getelementptr inbounds %struct.socket, %struct.socket* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32 (%struct.socket*, %struct.sockaddr**, i32, %struct.mbuf**, %struct.mbuf**, i32*)*, i32 (%struct.socket*, %struct.sockaddr**, i32, %struct.mbuf**, %struct.mbuf**, i32*)** %89, align 8
  %91 = load %struct.socket*, %struct.socket** %17, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.user_msghdr*, %struct.user_msghdr** %10, align 8
  %94 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %81
  br label %99

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %98, %97
  %100 = phi %struct.mbuf** [ %16, %97 ], [ null, %98 ]
  %101 = load %struct.user_msghdr*, %struct.user_msghdr** %10, align 8
  %102 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %101, i32 0, i32 0
  %103 = call i32 %90(%struct.socket* %91, %struct.sockaddr** %18, i32 %92, %struct.mbuf** null, %struct.mbuf** %100, i32* %102)
  store i32 %103, i32* %15, align 4
  %104 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %105 = icmp ne %struct.sockaddr* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load i32, i32* @sockaddr, align 4
  %108 = call i32 (...) @vfs_context_current()
  %109 = call i32 @vfs_context_cwd(i32 %108)
  %110 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %111 = call i32 @AUDIT_ARG(i32 %107, i32 %109, %struct.sockaddr* %110)
  br label %112

112:                                              ; preds = %106, %99
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %112
  %116 = load i32, i32* %11, align 4
  %117 = call i64 @uio_resid(i32 %116)
  %118 = load i64, i64* %14, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %115
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* @ERESTART, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %132, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* @EINTR, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @EWOULDBLOCK, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128, %124, %120
  store i32 0, i32* %15, align 4
  br label %133

133:                                              ; preds = %132, %128, %115
  br label %134

134:                                              ; preds = %133, %112
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  br label %188

138:                                              ; preds = %134
  %139 = load i64, i64* %14, align 8
  %140 = load i32, i32* %11, align 4
  %141 = call i64 @uio_resid(i32 %140)
  %142 = sub nsw i64 %139, %141
  %143 = load i64*, i64** %13, align 8
  store i64 %142, i64* %143, align 8
  %144 = load %struct.user_msghdr*, %struct.user_msghdr** %10, align 8
  %145 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %171

148:                                              ; preds = %138
  %149 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %150 = load %struct.user_msghdr*, %struct.user_msghdr** %10, align 8
  %151 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.user_msghdr*, %struct.user_msghdr** %10, align 8
  %154 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %153, i32 0, i32 3
  %155 = call i32 @copyout_sa(%struct.sockaddr* %149, i32 %152, i32* %154)
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  br label %188

159:                                              ; preds = %148
  %160 = load i64, i64* %12, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = load %struct.user_msghdr*, %struct.user_msghdr** %10, align 8
  %164 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %163, i32 0, i32 3
  %165 = ptrtoint i32* %164 to i32
  %166 = load i64, i64* %12, align 8
  %167 = call i32 @copyout(i32 %165, i64 %166, i32 4)
  store i32 %167, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %188

170:                                              ; preds = %162, %159
  br label %171

171:                                              ; preds = %170, %138
  %172 = load %struct.user_msghdr*, %struct.user_msghdr** %10, align 8
  %173 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %171
  %177 = load %struct.proc*, %struct.proc** %8, align 8
  %178 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %179 = load %struct.user_msghdr*, %struct.user_msghdr** %10, align 8
  %180 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.user_msghdr*, %struct.user_msghdr** %10, align 8
  %183 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %182, i32 0, i32 1
  %184 = load %struct.user_msghdr*, %struct.user_msghdr** %10, align 8
  %185 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %184, i32 0, i32 0
  %186 = call i32 @copyout_control(%struct.proc* %177, %struct.mbuf* %178, i64 %181, i32* %183, i32* %185)
  store i32 %186, i32* %15, align 4
  br label %187

187:                                              ; preds = %176, %171
  br label %188

188:                                              ; preds = %187, %169, %158, %137
  %189 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %190 = icmp ne %struct.sockaddr* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %193 = load i32, i32* @M_SONAME, align 4
  %194 = call i32 @FREE(%struct.sockaddr* %192, i32 %193)
  br label %195

195:                                              ; preds = %191, %188
  %196 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %197 = icmp ne %struct.mbuf* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %200 = call i32 @m_freem(%struct.mbuf* %199)
  br label %201

201:                                              ; preds = %198, %195
  %202 = load i32, i32* @DBG_FNC_RECVIT, align 4
  %203 = load i32, i32* @DBG_FUNC_END, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* %15, align 4
  %206 = call i32 @KERNEL_DEBUG(i32 %204, i32 %205, i32 0, i32 0, i32 0, i32 0)
  br label %207

207:                                              ; preds = %201, %74
  %208 = load %struct.proc*, %struct.proc** %8, align 8
  %209 = load i32, i32* %9, align 4
  %210 = load %struct.fileproc*, %struct.fileproc** %19, align 8
  %211 = call i32 @fp_drop(%struct.proc* %208, i32 %209, %struct.fileproc* %210, i32 0)
  %212 = load i32, i32* %15, align 4
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %207, %60, %45, %30
  %214 = load i32, i32* %7, align 4
  ret i32 %214
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @proc_fdlock(%struct.proc*) #1

declare dso_local i32 @fp_lookup(%struct.proc*, i32, %struct.fileproc**, i32) #1

declare dso_local i32 @proc_fdunlock(%struct.proc*) #1

declare dso_local i32 @fp_drop(%struct.proc*, i32, %struct.fileproc*, i32) #1

declare dso_local i64 @uio_resid(i32) #1

declare dso_local i32 @AUDIT_ARG(i32, i32, %struct.sockaddr*) #1

declare dso_local i32 @vfs_context_cwd(i32) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @copyout_sa(%struct.sockaddr*, i32, i32*) #1

declare dso_local i32 @copyout(i32, i64, i32) #1

declare dso_local i32 @copyout_control(%struct.proc*, %struct.mbuf*, i64, i32*, i32*) #1

declare dso_local i32 @FREE(%struct.sockaddr*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
