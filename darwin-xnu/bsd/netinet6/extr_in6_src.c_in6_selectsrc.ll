; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_selectsrc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_selectsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i32, i32, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { i32 }
%struct.ip6_pktopts = type { i64, %struct.in6_pktinfo* }
%struct.in6_pktinfo = type { %struct.in6_addr }
%struct.inpcb = type { %struct.in6_addr, %struct.ip6_moptions* }
%struct.ip6_moptions = type { i32 }
%struct.route_in6 = type { i32 }
%struct.ifnet = type { i32 }
%struct.ip6_out_args = type { i32, i32, i32, %struct.in6_addr, i32, i32, i32 }
%struct.in6_ifaddr = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.ifnet* }
%struct.sockaddr = type { i32 }
%struct.TYPE_5__ = type { %struct.in6_addr }

@FALSE = common dso_local global i32 0, align 4
@IP6OAF_SELECT_SRCIF = common dso_local global i32 0, align 4
@SO_TC_UNSPEC = common dso_local global i32 0, align 4
@_NET_SERVICE_TYPE_UNSPEC = common dso_local global i32 0, align 4
@IP6OAF_NO_CELLULAR = common dso_local global i32 0, align 4
@IP6OAF_NO_EXPENSIVE = common dso_local global i32 0, align 4
@IP6OAF_AWDL_UNRESTRICTED = common dso_local global i32 0, align 4
@IP6OAF_INTCOPROC_ALLOWED = common dso_local global i32 0, align 4
@IFSCOPE_NONE = common dso_local global i32 0, align 4
@IP6OAF_BOUND_IF = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IN6_IFF_ANYCAST = common dso_local global i32 0, align 4
@IN6_IFF_NOTREADY = common dso_local global i32 0, align 4
@IN6_IFF_CLAT46 = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@IP6PO_TEMPADDR_SYSTEM = common dso_local global i64 0, align 8
@ip6_prefer_tempaddr = common dso_local global i32 0, align 4
@IP6PO_TEMPADDR_NOTPREFER = common dso_local global i64 0, align 8
@IPV6_SRCSEL_HINT_PREFER_TMPADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.in6_addr* @in6_selectsrc(%struct.sockaddr_in6* %0, %struct.ip6_pktopts* %1, %struct.inpcb* %2, %struct.route_in6* %3, %struct.ifnet** %4, %struct.in6_addr* %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.ip6_pktopts*, align 8
  %11 = alloca %struct.inpcb*, align 8
  %12 = alloca %struct.route_in6*, align 8
  %13 = alloca %struct.ifnet**, align 8
  %14 = alloca %struct.in6_addr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.ifnet*, align 8
  %18 = alloca %struct.in6_pktinfo*, align 8
  %19 = alloca %struct.ip6_moptions*, align 8
  %20 = alloca %struct.ip6_out_args, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.ifnet*, align 8
  %25 = alloca %struct.sockaddr_in6, align 4
  %26 = alloca %struct.in6_ifaddr*, align 8
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %9, align 8
  store %struct.ip6_pktopts* %1, %struct.ip6_pktopts** %10, align 8
  store %struct.inpcb* %2, %struct.inpcb** %11, align 8
  store %struct.route_in6* %3, %struct.route_in6** %12, align 8
  store %struct.ifnet** %4, %struct.ifnet*** %13, align 8
  store %struct.in6_addr* %5, %struct.in6_addr** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  store %struct.ifnet* null, %struct.ifnet** %17, align 8
  store %struct.in6_pktinfo* null, %struct.in6_pktinfo** %18, align 8
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store %struct.ifnet* null, %struct.ifnet** %24, align 8
  %28 = bitcast %struct.ip6_out_args* %20 to %struct.sockaddr_in6*
  %29 = call i32 @bzero(%struct.sockaddr_in6* %28, i32 28)
  %30 = load i32, i32* %15, align 4
  %31 = getelementptr inbounds %struct.ip6_out_args, %struct.ip6_out_args* %20, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @IP6OAF_SELECT_SRCIF, align 4
  %33 = getelementptr inbounds %struct.ip6_out_args, %struct.ip6_out_args* %20, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @SO_TC_UNSPEC, align 4
  %35 = getelementptr inbounds %struct.ip6_out_args, %struct.ip6_out_args* %20, i32 0, i32 6
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @_NET_SERVICE_TYPE_UNSPEC, align 4
  %37 = getelementptr inbounds %struct.ip6_out_args, %struct.ip6_out_args* %20, i32 0, i32 5
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %16, align 8
  store i32 0, i32* %38, align 4
  %39 = load %struct.ifnet**, %struct.ifnet*** %13, align 8
  %40 = icmp ne %struct.ifnet** %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %8
  %42 = load %struct.ifnet**, %struct.ifnet*** %13, align 8
  store %struct.ifnet* null, %struct.ifnet** %42, align 8
  br label %43

43:                                               ; preds = %41, %8
  %44 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %45 = icmp ne %struct.inpcb* %44, null
  br i1 %45, label %46, label %88

46:                                               ; preds = %43
  %47 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %48 = call i32 @SASEL_DO_DBG(%struct.inpcb* %47)
  store i32 %48, i32* %21, align 4
  %49 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %50 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %49, i32 0, i32 1
  %51 = load %struct.ip6_moptions*, %struct.ip6_moptions** %50, align 8
  store %struct.ip6_moptions* %51, %struct.ip6_moptions** %19, align 8
  %52 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %53 = call i64 @INP_NO_CELLULAR(%struct.inpcb* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load i32, i32* @IP6OAF_NO_CELLULAR, align 4
  %57 = getelementptr inbounds %struct.ip6_out_args, %struct.ip6_out_args* %20, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %55, %46
  %61 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %62 = call i64 @INP_NO_EXPENSIVE(%struct.inpcb* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* @IP6OAF_NO_EXPENSIVE, align 4
  %66 = getelementptr inbounds %struct.ip6_out_args, %struct.ip6_out_args* %20, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %60
  %70 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %71 = call i64 @INP_AWDL_UNRESTRICTED(%struct.inpcb* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* @IP6OAF_AWDL_UNRESTRICTED, align 4
  %75 = getelementptr inbounds %struct.ip6_out_args, %struct.ip6_out_args* %20, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %69
  %79 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %80 = call i64 @INP_INTCOPROC_ALLOWED(%struct.inpcb* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32, i32* @IP6OAF_INTCOPROC_ALLOWED, align 4
  %84 = getelementptr inbounds %struct.ip6_out_args, %struct.ip6_out_args* %20, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %78
  br label %95

88:                                               ; preds = %43
  store %struct.ip6_moptions* null, %struct.ip6_moptions** %19, align 8
  %89 = load i32, i32* @IP6OAF_INTCOPROC_ALLOWED, align 4
  %90 = load i32, i32* @IP6OAF_AWDL_UNRESTRICTED, align 4
  %91 = or i32 %89, %90
  %92 = getelementptr inbounds %struct.ip6_out_args, %struct.ip6_out_args* %20, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %88, %87
  %96 = getelementptr inbounds %struct.ip6_out_args, %struct.ip6_out_args* %20, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IFSCOPE_NONE, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i32, i32* @IP6OAF_BOUND_IF, align 4
  %102 = getelementptr inbounds %struct.ip6_out_args, %struct.ip6_out_args* %20, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %101
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %107 = icmp ne %struct.ip6_pktopts* %106, null
  br i1 %107, label %108, label %207

108:                                              ; preds = %105
  %109 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %110 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %109, i32 0, i32 1
  %111 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %110, align 8
  store %struct.in6_pktinfo* %111, %struct.in6_pktinfo** %18, align 8
  %112 = icmp ne %struct.in6_pktinfo* %111, null
  br i1 %112, label %113, label %207

113:                                              ; preds = %108
  %114 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %18, align 8
  %115 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %114, i32 0, i32 0
  %116 = call i32 @IN6_IS_ADDR_UNSPECIFIED(%struct.in6_addr* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %207, label %118

118:                                              ; preds = %113
  %119 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %120 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %121 = load %struct.ip6_moptions*, %struct.ip6_moptions** %19, align 8
  %122 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %123 = bitcast %struct.ip6_out_args* %20 to %struct.sockaddr_in6*
  %124 = call i32 @in6_selectif(%struct.sockaddr_in6* %119, %struct.ip6_pktopts* %120, %struct.ip6_moptions* %121, %struct.route_in6* %122, %struct.sockaddr_in6* %123, %struct.ifnet** %17)
  %125 = load i32*, i32** %16, align 8
  store i32 %124, i32* %125, align 4
  %126 = icmp ne i32 %124, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  store %struct.in6_addr* null, %struct.in6_addr** %14, align 8
  br label %290

128:                                              ; preds = %118
  %129 = call i32 @bzero(%struct.sockaddr_in6* %25, i32 28)
  %130 = load i32, i32* @AF_INET6, align 4
  %131 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %25, i32 0, i32 4
  store i32 %130, i32* %131, align 4
  %132 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %25, i32 0, i32 2
  store i32 28, i32* %132, align 4
  %133 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %25, i32 0, i32 3
  %134 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %18, align 8
  %135 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %134, i32 0, i32 0
  %136 = bitcast %struct.in6_addr* %133 to i8*
  %137 = bitcast %struct.in6_addr* %135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 4 %137, i64 4, i1 false)
  %138 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  %139 = icmp ne %struct.ifnet* %138, null
  br i1 %139, label %140, label %150

140:                                              ; preds = %128
  %141 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %25, i32 0, i32 3
  %142 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  %143 = call i32 @in6_setscope(%struct.in6_addr* %141, %struct.ifnet* %142, i32* null)
  %144 = load i32*, i32** %16, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32*, i32** %16, align 8
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  store %struct.in6_addr* null, %struct.in6_addr** %14, align 8
  br label %290

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149, %128
  %151 = bitcast %struct.sockaddr_in6* %25 to %struct.sockaddr*
  %152 = call i64 @ifa_ifwithaddr(%struct.sockaddr* %151)
  %153 = inttoptr i64 %152 to %struct.in6_ifaddr*
  store %struct.in6_ifaddr* %153, %struct.in6_ifaddr** %26, align 8
  %154 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %26, align 8
  %155 = icmp eq %struct.in6_ifaddr* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load i32, i32* @EADDRNOTAVAIL, align 4
  %158 = load i32*, i32** %16, align 8
  store i32 %157, i32* %158, align 4
  store %struct.in6_addr* null, %struct.in6_addr** %14, align 8
  br label %290

159:                                              ; preds = %150
  %160 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %26, align 8
  %161 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %160, i32 0, i32 1
  %162 = call i32 @IFA_LOCK_SPIN(%struct.TYPE_6__* %161)
  %163 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %26, align 8
  %164 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @IN6_IFF_ANYCAST, align 4
  %167 = load i32, i32* @IN6_IFF_NOTREADY, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @IN6_IFF_CLAT46, align 4
  %170 = or i32 %168, %169
  %171 = and i32 %165, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %184, label %173

173:                                              ; preds = %159
  %174 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %175 = icmp ne %struct.inpcb* %174, null
  br i1 %175, label %176, label %193

176:                                              ; preds = %173
  %177 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %178 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %26, align 8
  %179 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load %struct.ifnet*, %struct.ifnet** %180, align 8
  %182 = call i64 @inp_restricted_send(%struct.inpcb* %177, %struct.ifnet* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %176, %159
  %185 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %26, align 8
  %186 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %185, i32 0, i32 1
  %187 = call i32 @IFA_UNLOCK(%struct.TYPE_6__* %186)
  %188 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %26, align 8
  %189 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %188, i32 0, i32 1
  %190 = call i32 @IFA_REMREF(%struct.TYPE_6__* %189)
  %191 = load i32, i32* @EHOSTUNREACH, align 4
  %192 = load i32*, i32** %16, align 8
  store i32 %191, i32* %192, align 4
  store %struct.in6_addr* null, %struct.in6_addr** %14, align 8
  br label %290

193:                                              ; preds = %176, %173
  %194 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %195 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %26, align 8
  %196 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %195, i32 0, i32 2
  %197 = call %struct.TYPE_5__* @satosin6(i32* %196)
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = bitcast %struct.in6_addr* %194 to i8*
  %200 = bitcast %struct.in6_addr* %198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %199, i8* align 4 %200, i64 4, i1 false)
  %201 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %26, align 8
  %202 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %201, i32 0, i32 1
  %203 = call i32 @IFA_UNLOCK(%struct.TYPE_6__* %202)
  %204 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %26, align 8
  %205 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %204, i32 0, i32 1
  %206 = call i32 @IFA_REMREF(%struct.TYPE_6__* %205)
  br label %290

207:                                              ; preds = %113, %108, %105
  %208 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %209 = icmp ne %struct.inpcb* %208, null
  br i1 %209, label %210, label %218

210:                                              ; preds = %207
  %211 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %212 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %211, i32 0, i32 0
  %213 = call i32 @IN6_IS_ADDR_UNSPECIFIED(%struct.in6_addr* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %210
  %216 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %217 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %216, i32 0, i32 0
  store %struct.in6_addr* %217, %struct.in6_addr** %14, align 8
  br label %290

218:                                              ; preds = %210, %207
  %219 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %220 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %221 = load %struct.ip6_moptions*, %struct.ip6_moptions** %19, align 8
  %222 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %223 = bitcast %struct.ip6_out_args* %20 to %struct.sockaddr_in6*
  %224 = call i32 @in6_selectif(%struct.sockaddr_in6* %219, %struct.ip6_pktopts* %220, %struct.ip6_moptions* %221, %struct.route_in6* %222, %struct.sockaddr_in6* %223, %struct.ifnet** %17)
  %225 = load i32*, i32** %16, align 8
  store i32 %224, i32* %225, align 4
  %226 = icmp ne i32 %224, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %218
  store %struct.in6_addr* null, %struct.in6_addr** %14, align 8
  br label %290

228:                                              ; preds = %218
  %229 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  %230 = icmp ne %struct.ifnet* %229, null
  %231 = zext i1 %230 to i32
  %232 = call i32 @VERIFY(i32 %231)
  %233 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %234 = icmp eq %struct.ip6_pktopts* %233, null
  br i1 %234, label %241, label %235

235:                                              ; preds = %228
  %236 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %237 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @IP6PO_TEMPADDR_SYSTEM, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %235, %228
  %242 = load i32, i32* @ip6_prefer_tempaddr, align 4
  store i32 %242, i32* %23, align 4
  br label %252

243:                                              ; preds = %235
  %244 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %245 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @IP6PO_TEMPADDR_NOTPREFER, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %243
  store i32 0, i32* %23, align 4
  br label %251

250:                                              ; preds = %243
  store i32 1, i32* %23, align 4
  br label %251

251:                                              ; preds = %250, %249
  br label %252

252:                                              ; preds = %251, %241
  %253 = load i32, i32* %23, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load i32, i32* @IPV6_SRCSEL_HINT_PREFER_TMPADDR, align 4
  %257 = load i32, i32* %22, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %22, align 4
  br label %259

259:                                              ; preds = %255, %252
  %260 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %261 = load i32, i32* %22, align 4
  %262 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  %263 = load i32, i32* %21, align 4
  %264 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %265 = load i32*, i32** %16, align 8
  %266 = call i32* @in6_selectsrc_core(%struct.sockaddr_in6* %260, i32 %261, %struct.ifnet* %262, i32 %263, %struct.in6_addr* %264, %struct.ifnet** %24, i32* %265, i32* null)
  %267 = icmp eq i32* %266, null
  br i1 %267, label %268, label %269

268:                                              ; preds = %259
  store %struct.in6_addr* null, %struct.in6_addr** %14, align 8
  br label %290

269:                                              ; preds = %259
  %270 = load %struct.ifnet*, %struct.ifnet** %24, align 8
  %271 = icmp ne %struct.ifnet* %270, null
  %272 = zext i1 %271 to i32
  %273 = call i32 @VERIFY(i32 %272)
  %274 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %275 = icmp ne %struct.inpcb* %274, null
  br i1 %275, label %276, label %286

276:                                              ; preds = %269
  %277 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %278 = load %struct.ifnet*, %struct.ifnet** %24, align 8
  %279 = call i64 @inp_restricted_send(%struct.inpcb* %277, %struct.ifnet* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %276
  store %struct.in6_addr* null, %struct.in6_addr** %14, align 8
  %282 = load i32, i32* @EHOSTUNREACH, align 4
  %283 = load i32*, i32** %16, align 8
  store i32 %282, i32* %283, align 4
  %284 = load %struct.ifnet*, %struct.ifnet** %24, align 8
  %285 = call i32 @ifnet_release(%struct.ifnet* %284)
  br label %290

286:                                              ; preds = %276, %269
  %287 = load %struct.ifnet*, %struct.ifnet** %24, align 8
  %288 = call i32 @ifnet_release(%struct.ifnet* %287)
  br label %289

289:                                              ; preds = %286
  br label %290

290:                                              ; preds = %289, %281, %268, %227, %215, %193, %184, %156, %148, %127
  %291 = load %struct.ifnet**, %struct.ifnet*** %13, align 8
  %292 = icmp ne %struct.ifnet** %291, null
  br i1 %292, label %293, label %296

293:                                              ; preds = %290
  %294 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  %295 = load %struct.ifnet**, %struct.ifnet*** %13, align 8
  store %struct.ifnet* %294, %struct.ifnet** %295, align 8
  br label %303

296:                                              ; preds = %290
  %297 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  %298 = icmp ne %struct.ifnet* %297, null
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  %301 = call i32 @ifnet_release(%struct.ifnet* %300)
  br label %302

302:                                              ; preds = %299, %296
  br label %303

303:                                              ; preds = %302, %293
  %304 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  ret %struct.in6_addr* %304
}

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @SASEL_DO_DBG(%struct.inpcb*) #1

declare dso_local i64 @INP_NO_CELLULAR(%struct.inpcb*) #1

declare dso_local i64 @INP_NO_EXPENSIVE(%struct.inpcb*) #1

declare dso_local i64 @INP_AWDL_UNRESTRICTED(%struct.inpcb*) #1

declare dso_local i64 @INP_INTCOPROC_ALLOWED(%struct.inpcb*) #1

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(%struct.in6_addr*) #1

declare dso_local i32 @in6_selectif(%struct.sockaddr_in6*, %struct.ip6_pktopts*, %struct.ip6_moptions*, %struct.route_in6*, %struct.sockaddr_in6*, %struct.ifnet**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @in6_setscope(%struct.in6_addr*, %struct.ifnet*, i32*) #1

declare dso_local i64 @ifa_ifwithaddr(%struct.sockaddr*) #1

declare dso_local i32 @IFA_LOCK_SPIN(%struct.TYPE_6__*) #1

declare dso_local i64 @inp_restricted_send(%struct.inpcb*, %struct.ifnet*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @IFA_REMREF(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_5__* @satosin6(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32* @in6_selectsrc_core(%struct.sockaddr_in6*, i32, %struct.ifnet*, i32, %struct.in6_addr*, %struct.ifnet**, i32*, i32*) #1

declare dso_local i32 @ifnet_release(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
