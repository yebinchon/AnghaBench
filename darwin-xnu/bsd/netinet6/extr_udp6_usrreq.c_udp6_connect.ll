; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_udp6_usrreq.c_udp6_connect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_udp6_usrreq.c_udp6_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.socket = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.proc = type { i32 }
%struct.inpcb = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr_in = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IN6P_IPV6_V6ONLY = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@EISCONN = common dso_local global i32 0, align 4
@SOF1_CONNECT_COUNTED = common dso_local global i32 0, align 4
@net_api_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@IFSCOPE_NONE = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@ip6_mapped_addr_on = common dso_local global i64 0, align 8
@IN6P_AUTOFLOWLABEL = common dso_local global i32 0, align 4
@IPV6_FLOWLABEL_MASK = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp6_connect(%struct.socket* %0, %struct.sockaddr* %1, %struct.proc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.sockaddr_in, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.proc* %2, %struct.proc** %7, align 8
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = call %struct.inpcb* @sotoinpcb(%struct.socket* %12)
  store %struct.inpcb* %13, %struct.inpcb** %8, align 8
  %14 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %15 = icmp eq %struct.inpcb* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %179

18:                                               ; preds = %3
  %19 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IN6P_IPV6_V6ONLY, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %84

25:                                               ; preds = %18
  %26 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %27 = bitcast %struct.sockaddr* %26 to i8*
  %28 = bitcast i8* %27 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %28, %struct.sockaddr_in6** %10, align 8
  %29 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 0
  %31 = call i64 @IN6_IS_ADDR_V4MAPPED(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %83

33:                                               ; preds = %25
  %34 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %35 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @INADDR_ANY, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @EISCONN, align 4
  store i32 %41, i32* %4, align 4
  br label %179

42:                                               ; preds = %33
  %43 = load %struct.socket*, %struct.socket** %5, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SOF1_CONNECT_COUNTED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @SOF1_CONNECT_COUNTED, align 4
  %51 = load %struct.socket*, %struct.socket** %5, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @net_api_stats, i32 0, i32 1), align 4
  %56 = call i32 @INC_ATOMIC_INT64_LIM(i32 %55)
  br label %57

57:                                               ; preds = %49, %42
  %58 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %59 = call i32 @in6_sin6_2_sin(%struct.sockaddr_in* %11, %struct.sockaddr_in6* %58)
  %60 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %61 = bitcast %struct.sockaddr_in* %11 to %struct.sockaddr*
  %62 = load %struct.proc*, %struct.proc** %7, align 8
  %63 = load i32, i32* @IFSCOPE_NONE, align 4
  %64 = call i32 @in_pcbconnect(%struct.inpcb* %60, %struct.sockaddr* %61, %struct.proc* %62, i32 %63, i32* null)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %57
  %68 = load i32, i32* @INP_IPV4, align 4
  %69 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %70 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @INP_IPV6, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %76 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.socket*, %struct.socket** %5, align 8
  %80 = call i32 @soisconnected(%struct.socket* %79)
  br label %81

81:                                               ; preds = %67, %57
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %179

83:                                               ; preds = %25
  br label %84

84:                                               ; preds = %83, %18
  %85 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %86 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %85, i32 0, i32 6
  %87 = call i32 @IN6_IS_ADDR_UNSPECIFIED(i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @EISCONN, align 4
  store i32 %90, i32* %4, align 4
  br label %179

91:                                               ; preds = %84
  %92 = load %struct.socket*, %struct.socket** %5, align 8
  %93 = getelementptr inbounds %struct.socket, %struct.socket* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SOF1_CONNECT_COUNTED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* @SOF1_CONNECT_COUNTED, align 4
  %100 = load %struct.socket*, %struct.socket** %5, align 8
  %101 = getelementptr inbounds %struct.socket, %struct.socket* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @net_api_stats, i32 0, i32 0), align 4
  %105 = call i32 @INC_ATOMIC_INT64_LIM(i32 %104)
  br label %106

106:                                              ; preds = %98, %91
  %107 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %108 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %109 = load %struct.proc*, %struct.proc** %7, align 8
  %110 = call i32 @in6_pcbconnect(%struct.inpcb* %107, %struct.sockaddr* %108, %struct.proc* %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %177

113:                                              ; preds = %106
  %114 = load i64, i64* @ip6_mapped_addr_on, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %118 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @IN6P_IPV6_V6ONLY, align 4
  %121 = and i32 %119, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %116, %113
  %124 = load i32, i32* @INP_IPV4, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %127 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* @INP_IPV6, align 4
  %131 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %132 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %123, %116
  %136 = load %struct.socket*, %struct.socket** %5, align 8
  %137 = call i32 @soisconnected(%struct.socket* %136)
  %138 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %139 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %144 = call i64 @inp_calc_flowhash(%struct.inpcb* %143)
  %145 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %146 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %142, %135
  %148 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %149 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %176

152:                                              ; preds = %147
  %153 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %154 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @IN6P_AUTOFLOWLABEL, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %152
  %160 = load i32, i32* @IPV6_FLOWLABEL_MASK, align 4
  %161 = xor i32 %160, -1
  %162 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %163 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %167 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @htonl(i64 %168)
  %170 = load i32, i32* @IPV6_FLOWLABEL_MASK, align 4
  %171 = and i32 %169, %170
  %172 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %173 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %159, %152, %147
  br label %177

177:                                              ; preds = %176, %106
  %178 = load i32, i32* %9, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %177, %89, %81, %40, %16
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i64 @IN6_IS_ADDR_V4MAPPED(i32*) #1

declare dso_local i32 @INC_ATOMIC_INT64_LIM(i32) #1

declare dso_local i32 @in6_sin6_2_sin(%struct.sockaddr_in*, %struct.sockaddr_in6*) #1

declare dso_local i32 @in_pcbconnect(%struct.inpcb*, %struct.sockaddr*, %struct.proc*, i32, i32*) #1

declare dso_local i32 @soisconnected(%struct.socket*) #1

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local i32 @in6_pcbconnect(%struct.inpcb*, %struct.sockaddr*, %struct.proc*) #1

declare dso_local i64 @inp_calc_flowhash(%struct.inpcb*) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
