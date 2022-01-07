; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_udp_usrreq.c_udp_connectx_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_udp_usrreq.c_udp_connectx_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.socket*, i32*, i32, i32*, i32*, i32)*, i32 (%struct.socket*, i32, i32)* }
%struct.sockaddr = type { i32 }
%struct.proc = type { i32 }
%struct.uio = type { i32 }
%struct.inpcb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@INP2_CONNECT_IN_PROGRESS = common dso_local global i32 0, align 4
@IFSCOPE_NONE = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@SAE_ASSOCID_ANY = common dso_local global i32 0, align 4
@SAE_CONNID_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_connectx_common(%struct.socket* %0, i32 %1, %struct.sockaddr* %2, %struct.sockaddr* %3, %struct.proc* %4, i32 %5, i32 %6, i32* %7, i32 %8, i8* %9, i32 %10, %struct.uio* %11, i64* %12) #0 {
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
  br label %161

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
  %56 = load i32, i32* %20, align 4
  %57 = load i32, i32* @IFSCOPE_NONE, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %37
  %60 = load %struct.inpcb*, %struct.inpcb** %28, align 8
  %61 = load i32, i32* %20, align 4
  %62 = call i32 @inp_bindif(%struct.inpcb* %60, i32 %61, i32* null)
  store i32 %62, i32* %29, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %153

65:                                               ; preds = %59, %37
  %66 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %67 = icmp ne %struct.sockaddr* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.socket*, %struct.socket** %15, align 8
  %70 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %71 = call i32 @sobindlock(%struct.socket* %69, %struct.sockaddr* %70, i32 0)
  store i32 %71, i32* %29, align 4
  %72 = load i32, i32* %29, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %153

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %65
  %77 = load i32, i32* %16, align 4
  switch i32 %77, label %83 [
    i32 129, label %78
  ]

78:                                               ; preds = %76
  %79 = load %struct.socket*, %struct.socket** %15, align 8
  %80 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %81 = load %struct.proc*, %struct.proc** %19, align 8
  %82 = call i32 @udp_connect(%struct.socket* %79, %struct.sockaddr* %80, %struct.proc* %81)
  store i32 %82, i32* %29, align 4
  br label %85

83:                                               ; preds = %76
  %84 = call i32 @VERIFY(i32 0)
  br label %85

85:                                               ; preds = %83, %78
  %86 = load i32, i32* %29, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %153

89:                                               ; preds = %85
  %90 = load %struct.uio*, %struct.uio** %26, align 8
  %91 = icmp ne %struct.uio* %90, null
  br i1 %91, label %92, label %144

92:                                               ; preds = %89
  %93 = load %struct.socket*, %struct.socket** %15, align 8
  %94 = call i32 @socket_unlock(%struct.socket* %93, i32 0)
  %95 = load i64*, i64** %27, align 8
  %96 = icmp ne i64* %95, null
  %97 = zext i1 %96 to i32
  %98 = call i32 @VERIFY(i32 %97)
  %99 = load %struct.uio*, %struct.uio** %26, align 8
  %100 = call i64 @uio_resid(%struct.uio* %99)
  store i64 %100, i64* %30, align 8
  %101 = load %struct.socket*, %struct.socket** %15, align 8
  %102 = getelementptr inbounds %struct.socket, %struct.socket* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32 (%struct.socket*, i32*, i32, i32*, i32*, i32)*, i32 (%struct.socket*, i32*, i32, i32*, i32*, i32)** %106, align 8
  %108 = load %struct.socket*, %struct.socket** %15, align 8
  %109 = load %struct.uio*, %struct.uio** %26, align 8
  %110 = ptrtoint %struct.uio* %109 to i32
  %111 = call i32 %107(%struct.socket* %108, i32* null, i32 %110, i32* null, i32* null, i32 0)
  store i32 %111, i32* %29, align 4
  %112 = load %struct.socket*, %struct.socket** %15, align 8
  %113 = call i32 @socket_lock(%struct.socket* %112, i32 0)
  %114 = load i32, i32* %29, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %92
  %117 = load i32, i32* %29, align 4
  %118 = load i32, i32* @EWOULDBLOCK, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %116, %92
  %121 = load i64, i64* %30, align 8
  %122 = load %struct.uio*, %struct.uio** %26, align 8
  %123 = call i64 @uio_resid(%struct.uio* %122)
  %124 = sub nsw i64 %121, %123
  %125 = load i64*, i64** %27, align 8
  store i64 %124, i64* %125, align 8
  br label %138

126:                                              ; preds = %116
  %127 = load %struct.socket*, %struct.socket** %15, align 8
  %128 = getelementptr inbounds %struct.socket, %struct.socket* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32 (%struct.socket*, i32, i32)*, i32 (%struct.socket*, i32, i32)** %132, align 8
  %134 = load %struct.socket*, %struct.socket** %15, align 8
  %135 = load i32, i32* @SAE_ASSOCID_ANY, align 4
  %136 = load i32, i32* @SAE_CONNID_ANY, align 4
  %137 = call i32 %133(%struct.socket* %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %126, %120
  %139 = load i32, i32* %29, align 4
  %140 = load i32, i32* @EWOULDBLOCK, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 0, i32* %29, align 4
  br label %143

143:                                              ; preds = %142, %138
  br label %144

144:                                              ; preds = %143, %89
  %145 = load i32, i32* %29, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i32*, i32** %22, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load i32*, i32** %22, align 8
  store i32 1, i32* %151, align 4
  br label %152

152:                                              ; preds = %150, %147, %144
  br label %153

153:                                              ; preds = %152, %88, %74, %64
  %154 = load i32, i32* @INP2_CONNECT_IN_PROGRESS, align 4
  %155 = xor i32 %154, -1
  %156 = load %struct.inpcb*, %struct.inpcb** %28, align 8
  %157 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* %29, align 4
  store i32 %160, i32* %14, align 4
  br label %161

161:                                              ; preds = %153, %35
  %162 = load i32, i32* %14, align 4
  ret i32 %162
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @inp_bindif(%struct.inpcb*, i32, i32*) #1

declare dso_local i32 @sobindlock(%struct.socket*, %struct.sockaddr*, i32) #1

declare dso_local i32 @udp_connect(%struct.socket*, %struct.sockaddr*, %struct.proc*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i64 @uio_resid(%struct.uio*) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
