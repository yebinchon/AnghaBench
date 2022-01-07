; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_pcbladdr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_pcbladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.rtentry* }
%struct.rtentry = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@in6_ifaddrs = common dso_local global i64 0, align 8
@in6addr_loopback = common dso_local global i32 0, align 4
@INP_BOUND_IF = common dso_local global i32 0, align 4
@IFSCOPE_NONE = common dso_local global i32 0, align 4
@SO_FILT_HINT_LOCKED = common dso_local global i32 0, align 4
@SO_FILT_HINT_IFDENIED = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_pcbladdr(%struct.inpcb* %0, %struct.sockaddr* %1, %struct.in6_addr* %2, %struct.ifnet** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inpcb*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.ifnet**, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.in6_addr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rtentry*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store %struct.ifnet** %3, %struct.ifnet*** %9, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  %16 = icmp ne %struct.ifnet** %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  store %struct.ifnet* null, %struct.ifnet** %18, align 8
  br label %19

19:                                               ; preds = %17, %4
  %20 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %5, align 4
  br label %169

27:                                               ; preds = %19
  %28 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %29 = call %struct.TYPE_7__* @SIN6(%struct.sockaddr* %28)
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AF_INET6, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %35, i32* %5, align 4
  br label %169

36:                                               ; preds = %27
  %37 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %38 = call %struct.TYPE_7__* @SIN6(%struct.sockaddr* %37)
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %43, i32* %5, align 4
  br label %169

44:                                               ; preds = %36
  %45 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %46 = call %struct.TYPE_7__* @SIN6(%struct.sockaddr* %45)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %49 = call %struct.TYPE_7__* @SIN6(%struct.sockaddr* %48)
  %50 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %51 = call i64 @in6_embedscope(i32* %47, %struct.TYPE_7__* %49, %struct.inpcb* %50, i32* null, i32* null)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %5, align 4
  br label %169

55:                                               ; preds = %44
  %56 = load i64, i64* @in6_ifaddrs, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %60 = call %struct.TYPE_7__* @SIN6(%struct.sockaddr* %59)
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* @in6addr_loopback, align 4
  %66 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %67 = call %struct.TYPE_7__* @SIN6(%struct.sockaddr* %66)
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  br label %69

69:                                               ; preds = %64, %58
  br label %70

70:                                               ; preds = %69, %55
  %71 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %72 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @INP_BOUND_IF, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %79 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %78, i32 0, i32 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  br label %85

83:                                               ; preds = %70
  %84 = load i32, i32* @IFSCOPE_NONE, align 4
  br label %85

85:                                               ; preds = %83, %77
  %86 = phi i32 [ %82, %77 ], [ %84, %83 ]
  store i32 %86, i32* %13, align 4
  %87 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %88 = call %struct.TYPE_7__* @SIN6(%struct.sockaddr* %87)
  %89 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %90 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %93 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %94 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %93, i32 0, i32 2
  %95 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call %struct.in6_addr* @in6_selectsrc(%struct.TYPE_7__* %88, i32 %91, %struct.inpcb* %92, %struct.TYPE_8__* %94, %struct.ifnet** %95, %struct.in6_addr* %11, i32 %96, i32* %12)
  store %struct.in6_addr* %97, %struct.in6_addr** %10, align 8
  %98 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  %99 = icmp ne %struct.ifnet** %98, null
  br i1 %99, label %100, label %132

100:                                              ; preds = %85
  %101 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %102 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.rtentry*, %struct.rtentry** %103, align 8
  store %struct.rtentry* %104, %struct.rtentry** %14, align 8
  %105 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %106 = icmp ne %struct.rtentry* %105, null
  br i1 %106, label %107, label %131

107:                                              ; preds = %100
  %108 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %109 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %108, i32 0, i32 0
  %110 = load %struct.ifnet*, %struct.ifnet** %109, align 8
  %111 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  %112 = load %struct.ifnet*, %struct.ifnet** %111, align 8
  %113 = icmp ne %struct.ifnet* %110, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %107
  %115 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %116 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %115, i32 0, i32 0
  %117 = load %struct.ifnet*, %struct.ifnet** %116, align 8
  %118 = call i32 @ifnet_reference(%struct.ifnet* %117)
  %119 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  %120 = load %struct.ifnet*, %struct.ifnet** %119, align 8
  %121 = icmp ne %struct.ifnet* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %114
  %123 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  %124 = load %struct.ifnet*, %struct.ifnet** %123, align 8
  %125 = call i32 @ifnet_release(%struct.ifnet* %124)
  br label %126

126:                                              ; preds = %122, %114
  %127 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  %128 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %127, i32 0, i32 0
  %129 = load %struct.ifnet*, %struct.ifnet** %128, align 8
  %130 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  store %struct.ifnet* %129, %struct.ifnet** %130, align 8
  br label %131

131:                                              ; preds = %126, %107, %100
  br label %132

132:                                              ; preds = %131, %85
  %133 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %134 = icmp eq %struct.in6_addr* %133, null
  br i1 %134, label %135, label %164

135:                                              ; preds = %132
  %136 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  %137 = icmp ne %struct.ifnet** %136, null
  br i1 %137, label %138, label %157

138:                                              ; preds = %135
  %139 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  %140 = load %struct.ifnet*, %struct.ifnet** %139, align 8
  %141 = icmp ne %struct.ifnet* %140, null
  br i1 %141, label %142, label %157

142:                                              ; preds = %138
  %143 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %144 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  %145 = load %struct.ifnet*, %struct.ifnet** %144, align 8
  %146 = call i64 @inp_restricted_send(%struct.inpcb* %143, %struct.ifnet* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %142
  %149 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %150 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @SO_FILT_HINT_LOCKED, align 4
  %153 = load i32, i32* @SO_FILT_HINT_IFDENIED, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @soevent(i32 %151, i32 %154)
  %156 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %156, i32* %12, align 4
  br label %157

157:                                              ; preds = %148, %142, %138, %135
  %158 = load i32, i32* %12, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %161, i32* %12, align 4
  br label %162

162:                                              ; preds = %160, %157
  %163 = load i32, i32* %12, align 4
  store i32 %163, i32* %5, align 4
  br label %169

164:                                              ; preds = %132
  %165 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %166 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %167 = bitcast %struct.in6_addr* %165 to i8*
  %168 = bitcast %struct.in6_addr* %166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %167, i8* align 4 %168, i64 4, i1 false)
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %164, %162, %53, %42, %34, %25
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local %struct.TYPE_7__* @SIN6(%struct.sockaddr*) #1

declare dso_local i64 @in6_embedscope(i32*, %struct.TYPE_7__*, %struct.inpcb*, i32*, i32*) #1

declare dso_local i64 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local %struct.in6_addr* @in6_selectsrc(%struct.TYPE_7__*, i32, %struct.inpcb*, %struct.TYPE_8__*, %struct.ifnet**, %struct.in6_addr*, i32, i32*) #1

declare dso_local i32 @ifnet_reference(%struct.ifnet*) #1

declare dso_local i32 @ifnet_release(%struct.ifnet*) #1

declare dso_local i64 @inp_restricted_send(%struct.inpcb*, %struct.ifnet*) #1

declare dso_local i32 @soevent(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
