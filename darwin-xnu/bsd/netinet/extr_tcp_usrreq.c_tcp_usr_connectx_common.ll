; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_usrreq.c_tcp_usr_connectx_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_usrreq.c_tcp_usr_connectx_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.socket*, i32*, i32, i32*, i32*, i32)* }
%struct.sockaddr = type { i32 }
%struct.proc = type { i32 }
%struct.uio = type { i32 }
%struct.inpcb = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@INP2_CONNECT_IN_PROGRESS = common dso_local global i32 0, align 4
@SOF1_DATA_IDEMPOTENT = common dso_local global i32 0, align 4
@tcp_fastopen = common dso_local global i32 0, align 4
@TCP_FASTOPEN_CLIENT = common dso_local global i32 0, align 4
@TF_FASTOPEN = common dso_local global i32 0, align 4
@IFSCOPE_NONE = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@SOF1_PRECONNECT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.sockaddr*, %struct.sockaddr*, %struct.proc*, i32, i32, i32*, i32, i8*, i32, %struct.uio*, i64*)* @tcp_usr_connectx_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_usr_connectx_common(%struct.socket* %0, i32 %1, %struct.sockaddr* %2, %struct.sockaddr* %3, %struct.proc* %4, i32 %5, i32 %6, i32* %7, i32 %8, i8* %9, i32 %10, %struct.uio* %11, i64* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.socket*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sockaddr*, align 8
  %18 = alloca %struct.sockaddr*, align 8
  %19 = alloca %struct.proc*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.uio*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca %struct.inpcb*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %15, align 8
  store i32 %1, i32* %16, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %17, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %18, align 8
  store %struct.proc* %4, %struct.proc** %19, align 8
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32* %7, i32** %22, align 8
  store i32 %8, i32* %23, align 4
  store i8* %9, i8** %24, align 8
  store i32 %10, i32* %25, align 4
  store %struct.uio* %11, %struct.uio** %26, align 8
  store i64* %12, i64** %27, align 8
  %31 = load %struct.socket*, %struct.socket** %15, align 8
  %32 = call %struct.inpcb* @sotoinpcb(%struct.socket* %31)
  store %struct.inpcb* %32, %struct.inpcb** %28, align 8
  store i32 0, i32* %29, align 4
  store i64 0, i64* %30, align 8
  %33 = load %struct.inpcb*, %struct.inpcb** %28, align 8
  %34 = icmp eq %struct.inpcb* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %13
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %14, align 4
  br label %183

37:                                               ; preds = %13
  %38 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %39 = icmp ne %struct.sockaddr* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @VERIFY(i32 %40)
  %42 = load %struct.inpcb*, %struct.inpcb** %28, align 8
  %43 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @INP2_CONNECT_IN_PROGRESS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load i32, i32* @INP2_CONNECT_IN_PROGRESS, align 4
  %52 = load %struct.inpcb*, %struct.inpcb** %28, align 8
  %53 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.socket*, %struct.socket** %15, align 8
  %57 = getelementptr inbounds %struct.socket, %struct.socket* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SOF1_DATA_IDEMPOTENT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %37
  %63 = load i32, i32* @tcp_fastopen, align 4
  %64 = load i32, i32* @TCP_FASTOPEN_CLIENT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* @TF_FASTOPEN, align 4
  %69 = load %struct.socket*, %struct.socket** %15, align 8
  %70 = call %struct.TYPE_6__* @sototcpcb(%struct.socket* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %67, %62, %37
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* @IFSCOPE_NONE, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load %struct.inpcb*, %struct.inpcb** %28, align 8
  %80 = load i32, i32* %20, align 4
  %81 = call i32 @inp_bindif(%struct.inpcb* %79, i32 %80, i32* null)
  store i32 %81, i32* %29, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %161

84:                                               ; preds = %78, %74
  %85 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %86 = icmp ne %struct.sockaddr* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load %struct.socket*, %struct.socket** %15, align 8
  %89 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %90 = call i32 @sobindlock(%struct.socket* %88, %struct.sockaddr* %89, i32 0)
  store i32 %90, i32* %29, align 4
  %91 = load i32, i32* %29, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %161

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %84
  %96 = load i32, i32* %16, align 4
  switch i32 %96, label %102 [
    i32 129, label %97
  ]

97:                                               ; preds = %95
  %98 = load %struct.socket*, %struct.socket** %15, align 8
  %99 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %100 = load %struct.proc*, %struct.proc** %19, align 8
  %101 = call i32 @tcp_usr_connect(%struct.socket* %98, %struct.sockaddr* %99, %struct.proc* %100)
  store i32 %101, i32* %29, align 4
  br label %104

102:                                              ; preds = %95
  %103 = call i32 @VERIFY(i32 0)
  br label %104

104:                                              ; preds = %102, %97
  %105 = load i32, i32* %29, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %161

108:                                              ; preds = %104
  %109 = load %struct.uio*, %struct.uio** %26, align 8
  %110 = icmp ne %struct.uio* %109, null
  br i1 %110, label %111, label %152

111:                                              ; preds = %108
  %112 = load %struct.socket*, %struct.socket** %15, align 8
  %113 = call i32 @socket_unlock(%struct.socket* %112, i32 0)
  %114 = load i64*, i64** %27, align 8
  %115 = icmp ne i64* %114, null
  %116 = zext i1 %115 to i32
  %117 = call i32 @VERIFY(i32 %116)
  %118 = load %struct.uio*, %struct.uio** %26, align 8
  %119 = call i64 @uio_resid(%struct.uio* %118)
  store i64 %119, i64* %30, align 8
  %120 = load %struct.socket*, %struct.socket** %15, align 8
  %121 = getelementptr inbounds %struct.socket, %struct.socket* %120, i32 0, i32 1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32 (%struct.socket*, i32*, i32, i32*, i32*, i32)*, i32 (%struct.socket*, i32*, i32, i32*, i32*, i32)** %125, align 8
  %127 = load %struct.socket*, %struct.socket** %15, align 8
  %128 = load %struct.uio*, %struct.uio** %26, align 8
  %129 = ptrtoint %struct.uio* %128 to i32
  %130 = call i32 %126(%struct.socket* %127, i32* null, i32 %129, i32* null, i32* null, i32 0)
  store i32 %130, i32* %29, align 4
  %131 = load %struct.socket*, %struct.socket** %15, align 8
  %132 = call i32 @socket_lock(%struct.socket* %131, i32 0)
  %133 = load i32, i32* %29, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %111
  %136 = load i32, i32* %29, align 4
  %137 = load i32, i32* @EWOULDBLOCK, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %135, %111
  %140 = load i64, i64* %30, align 8
  %141 = load %struct.uio*, %struct.uio** %26, align 8
  %142 = call i64 @uio_resid(%struct.uio* %141)
  %143 = sub nsw i64 %140, %142
  %144 = load i64*, i64** %27, align 8
  store i64 %143, i64* %144, align 8
  br label %145

145:                                              ; preds = %139, %135
  %146 = load i32, i32* %29, align 4
  %147 = load i32, i32* @EWOULDBLOCK, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* @EINPROGRESS, align 4
  store i32 %150, i32* %29, align 4
  br label %151

151:                                              ; preds = %149, %145
  br label %152

152:                                              ; preds = %151, %108
  %153 = load i32, i32* %29, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load i32*, i32** %22, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32*, i32** %22, align 8
  store i32 1, i32* %159, align 4
  br label %160

160:                                              ; preds = %158, %155, %152
  br label %161

161:                                              ; preds = %160, %107, %93, %83
  %162 = load i32, i32* %29, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %161
  %165 = load i32, i32* %29, align 4
  %166 = load i32, i32* @EINPROGRESS, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %164
  %169 = load i32, i32* @SOF1_PRECONNECT_DATA, align 4
  %170 = xor i32 %169, -1
  %171 = load %struct.socket*, %struct.socket** %15, align 8
  %172 = getelementptr inbounds %struct.socket, %struct.socket* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %168, %164, %161
  %176 = load i32, i32* @INP2_CONNECT_IN_PROGRESS, align 4
  %177 = xor i32 %176, -1
  %178 = load %struct.inpcb*, %struct.inpcb** %28, align 8
  %179 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load i32, i32* %29, align 4
  store i32 %182, i32* %14, align 4
  br label %183

183:                                              ; preds = %175, %35
  %184 = load i32, i32* %14, align 4
  ret i32 %184
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_6__* @sototcpcb(%struct.socket*) #1

declare dso_local i32 @inp_bindif(%struct.inpcb*, i32, i32*) #1

declare dso_local i32 @sobindlock(%struct.socket*, %struct.sockaddr*, i32) #1

declare dso_local i32 @tcp_usr_connect(%struct.socket*, %struct.sockaddr*, %struct.proc*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i64 @uio_resid(%struct.uio*) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
