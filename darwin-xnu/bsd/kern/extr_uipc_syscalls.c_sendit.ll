; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_sendit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_sendit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.socket = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32, i32, %struct.mbuf*, i32)* }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }
%struct.user_msghdr = type { i32, i32, i32, i32 }
%struct.sockaddr_storage = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@DBG_FNC_SENDIT = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@USER_ADDR_NULL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@sockaddr = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MT_CONTROL = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SOF_NOSIGPIPE = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@SS_DEFUNCT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, %struct.socket*, %struct.user_msghdr*, i32, i32, i32*)* @sendit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendit(%struct.proc* %0, %struct.socket* %1, %struct.user_msghdr* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.user_msghdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.sockaddr_storage, align 4
  %15 = alloca %struct.sockaddr*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.proc* %0, %struct.proc** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store %struct.user_msghdr* %2, %struct.user_msghdr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store %struct.mbuf* null, %struct.mbuf** %13, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %15, align 8
  %19 = load i64, i64* @TRUE, align 8
  store i64 %19, i64* %16, align 8
  %20 = load i32, i32* @DBG_FNC_SENDIT, align 4
  %21 = load i32, i32* @DBG_FUNC_START, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @KERNEL_DEBUG(i32 %22, i32 0, i32 0, i32 0, i32 0, i32 0)
  %24 = load %struct.user_msghdr*, %struct.user_msghdr** %9, align 8
  %25 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @USER_ADDR_NULL, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %6
  %30 = load %struct.user_msghdr*, %struct.user_msghdr** %9, align 8
  %31 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %33, 4
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.socket*, %struct.socket** %8, align 8
  %37 = load %struct.user_msghdr*, %struct.user_msghdr** %9, align 8
  %38 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.user_msghdr*, %struct.user_msghdr** %9, align 8
  %41 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* @TRUE, align 8
  %44 = call i32 @getsockaddr(%struct.socket* %36, %struct.sockaddr** %15, i32 %39, i32 %42, i64 %43)
  store i32 %44, i32* %17, align 4
  br label %61

45:                                               ; preds = %29
  %46 = load %struct.socket*, %struct.socket** %8, align 8
  %47 = load %struct.user_msghdr*, %struct.user_msghdr** %9, align 8
  %48 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.user_msghdr*, %struct.user_msghdr** %9, align 8
  %51 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* @TRUE, align 8
  %54 = call i32 @getsockaddr_s(%struct.socket* %46, %struct.sockaddr_storage* %14, i32 %49, i32 %52, i64 %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr*
  store %struct.sockaddr* %58, %struct.sockaddr** %15, align 8
  %59 = load i64, i64* @FALSE, align 8
  store i64 %59, i64* %16, align 8
  br label %60

60:                                               ; preds = %57, %45
  br label %61

61:                                               ; preds = %60, %35
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %172

65:                                               ; preds = %61
  %66 = load i32, i32* @sockaddr, align 4
  %67 = call i32 (...) @vfs_context_current()
  %68 = call i32 @vfs_context_cwd(i32 %67)
  %69 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %70 = call i32 @AUDIT_ARG(i32 %66, i32 %68, %struct.sockaddr* %69)
  br label %71

71:                                               ; preds = %65, %6
  %72 = load %struct.user_msghdr*, %struct.user_msghdr** %9, align 8
  %73 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @USER_ADDR_NULL, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %71
  %78 = load %struct.user_msghdr*, %struct.user_msghdr** %9, align 8
  %79 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp ult i64 %81, 4
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %17, align 4
  br label %161

85:                                               ; preds = %77
  %86 = load %struct.user_msghdr*, %struct.user_msghdr** %9, align 8
  %87 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.user_msghdr*, %struct.user_msghdr** %9, align 8
  %90 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MT_CONTROL, align 4
  %93 = call i32 @sockargs(%struct.mbuf** %13, i32 %88, i32 %91, i32 %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %161

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %71
  %99 = load i32, i32* %10, align 4
  %100 = call i64 @uio_resid(i32 %99)
  store i64 %100, i64* %18, align 8
  %101 = load %struct.socket*, %struct.socket** %8, align 8
  %102 = getelementptr inbounds %struct.socket, %struct.socket* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32 (%struct.socket*, %struct.sockaddr*, i32, i32, %struct.mbuf*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32, %struct.mbuf*, i32)** %106, align 8
  %108 = load %struct.socket*, %struct.socket** %8, align 8
  %109 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 %107(%struct.socket* %108, %struct.sockaddr* %109, i32 %110, i32 0, %struct.mbuf* %111, i32 %112)
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %17, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %150

116:                                              ; preds = %98
  %117 = load i32, i32* %10, align 4
  %118 = call i64 @uio_resid(i32 %117)
  %119 = load i64, i64* %18, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %116
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* @ERESTART, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %133, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* @EINTR, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* @EWOULDBLOCK, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129, %125, %121
  store i32 0, i32* %17, align 4
  br label %134

134:                                              ; preds = %133, %129, %116
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* @EPIPE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load %struct.socket*, %struct.socket** %8, align 8
  %140 = getelementptr inbounds %struct.socket, %struct.socket* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @SOF_NOSIGPIPE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %138
  %146 = load %struct.proc*, %struct.proc** %7, align 8
  %147 = load i32, i32* @SIGPIPE, align 4
  %148 = call i32 @psignal(%struct.proc* %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %138, %134
  br label %150

150:                                              ; preds = %149, %98
  %151 = load i32, i32* %17, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load i64, i64* %18, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i64 @uio_resid(i32 %155)
  %157 = sub nsw i64 %154, %156
  %158 = trunc i64 %157 to i32
  %159 = load i32*, i32** %12, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %153, %150
  br label %161

161:                                              ; preds = %160, %96, %83
  %162 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %163 = icmp ne %struct.sockaddr* %162, null
  br i1 %163, label %164, label %171

164:                                              ; preds = %161
  %165 = load i64, i64* %16, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %169 = load i32, i32* @M_SONAME, align 4
  %170 = call i32 @FREE(%struct.sockaddr* %168, i32 %169)
  br label %171

171:                                              ; preds = %167, %164, %161
  br label %172

172:                                              ; preds = %171, %64
  %173 = load i32, i32* @DBG_FNC_SENDIT, align 4
  %174 = load i32, i32* @DBG_FUNC_END, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* %17, align 4
  %177 = call i32 @KERNEL_DEBUG(i32 %175, i32 %176, i32 0, i32 0, i32 0, i32 0)
  %178 = load i32, i32* %17, align 4
  ret i32 %178
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @getsockaddr(%struct.socket*, %struct.sockaddr**, i32, i32, i64) #1

declare dso_local i32 @getsockaddr_s(%struct.socket*, %struct.sockaddr_storage*, i32, i32, i64) #1

declare dso_local i32 @AUDIT_ARG(i32, i32, %struct.sockaddr*) #1

declare dso_local i32 @vfs_context_cwd(i32) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @sockargs(%struct.mbuf**, i32, i32, i32) #1

declare dso_local i64 @uio_resid(i32) #1

declare dso_local i32 @psignal(%struct.proc*, i32) #1

declare dso_local i32 @FREE(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
