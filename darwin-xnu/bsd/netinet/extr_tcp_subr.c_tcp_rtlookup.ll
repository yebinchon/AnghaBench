; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_rtlookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_rtlookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.inpcb = type { i32, %struct.TYPE_13__, %struct.TYPE_12__*, i32, %struct.TYPE_9__*, %struct.route }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.route = type { %struct.rtentry*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.tcpcb = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_13__ }

@rnh_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@INP_BOUND_IF = common dso_local global i32 0, align 4
@path_mtu_discovery = common dso_local global i32 0, align 4
@RTF_UP = common dso_local global i32 0, align 4
@RTV_MTU = common dso_local global i32 0, align 4
@TF_PMTUD = common dso_local global i32 0, align 4
@IFNET_MULTIPAGES = common dso_local global i32 0, align 4
@IFEF_2KCL = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i64 0, align 8
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@TF_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtentry* @tcp_rtlookup(%struct.inpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.route*, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.tcpcb*, align 8
  %8 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @rnh_lock, align 4
  %10 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %11 = call i32 @LCK_MTX_ASSERT(i32 %9, i32 %10)
  %12 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %13 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %12, i32 0, i32 5
  store %struct.route* %13, %struct.route** %5, align 8
  %14 = load %struct.route*, %struct.route** %5, align 8
  %15 = getelementptr inbounds %struct.route, %struct.route* %14, i32 0, i32 0
  %16 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  store %struct.rtentry* %16, %struct.rtentry** %6, align 8
  %17 = icmp ne %struct.rtentry* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %20 = call i32 @RT_LOCK(%struct.rtentry* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.route*, %struct.route** %5, align 8
  %23 = call i64 @ROUTE_UNUSABLE(%struct.route* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %85

25:                                               ; preds = %21
  %26 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %27 = icmp ne %struct.rtentry* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %30 = call i32 @RT_UNLOCK(%struct.rtentry* %29)
  store %struct.rtentry* null, %struct.rtentry** %6, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.route*, %struct.route** %5, align 8
  %33 = call i32 @ROUTE_RELEASE(%struct.route* %32)
  %34 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %35 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @INADDR_ANY, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %31
  %41 = load i32, i32* @AF_INET, align 4
  %42 = load %struct.route*, %struct.route** %5, align 8
  %43 = getelementptr inbounds %struct.route, %struct.route* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.route*, %struct.route** %5, align 8
  %46 = getelementptr inbounds %struct.route, %struct.route* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 8, i32* %47, align 8
  %48 = load %struct.route*, %struct.route** %5, align 8
  %49 = getelementptr inbounds %struct.route, %struct.route* %48, i32 0, i32 1
  %50 = bitcast %struct.TYPE_8__* %49 to i8*
  %51 = bitcast i8* %50 to %struct.sockaddr_in*
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %51, i32 0, i32 0
  %53 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %54 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %53, i32 0, i32 1
  %55 = bitcast %struct.TYPE_13__* %52 to i8*
  %56 = bitcast %struct.TYPE_13__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 8, i1 false)
  %57 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %58 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @INP_BOUND_IF, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %40
  %64 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %65 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %64, i32 0, i32 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  br label %71

69:                                               ; preds = %40
  %70 = load i32, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %63
  %72 = phi i32 [ %68, %63 ], [ %70, %69 ]
  store i32 %72, i32* %8, align 4
  %73 = load %struct.route*, %struct.route** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @rtalloc_scoped(%struct.route* %73, i32 %74)
  %76 = load %struct.route*, %struct.route** %5, align 8
  %77 = getelementptr inbounds %struct.route, %struct.route* %76, i32 0, i32 0
  %78 = load %struct.rtentry*, %struct.rtentry** %77, align 8
  store %struct.rtentry* %78, %struct.rtentry** %6, align 8
  %79 = icmp ne %struct.rtentry* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %82 = call i32 @RT_LOCK(%struct.rtentry* %81)
  br label %83

83:                                               ; preds = %80, %71
  br label %84

84:                                               ; preds = %83, %31
  br label %85

85:                                               ; preds = %84, %21
  %86 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %87 = icmp ne %struct.rtentry* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %90 = call i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %93 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %92)
  store %struct.tcpcb* %93, %struct.tcpcb** %7, align 8
  %94 = load i32, i32* @path_mtu_discovery, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %91
  %97 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %98 = icmp ne %struct.rtentry* %97, null
  br i1 %98, label %99, label %121

99:                                               ; preds = %96
  %100 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %101 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @RTF_UP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %108 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @RTV_MTU, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %106, %99, %91
  %115 = load i32, i32* @TF_PMTUD, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %118 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %127

121:                                              ; preds = %106, %96
  %122 = load i32, i32* @TF_PMTUD, align 4
  %123 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %124 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %114
  %128 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %129 = icmp ne %struct.rtentry* %128, null
  br i1 %129, label %130, label %179

130:                                              ; preds = %127
  %131 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %132 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %131, i32 0, i32 1
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = icmp ne %struct.TYPE_12__* %133, null
  br i1 %134, label %135, label %179

135:                                              ; preds = %130
  %136 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %137 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %140 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %139, i32 0, i32 1
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @IFNET_MULTIPAGES, align 4
  %145 = and i32 %143, %144
  %146 = call i32 @somultipages(i32 %138, i32 %145)
  %147 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %148 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %149 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %148, i32 0, i32 1
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = call i32 @tcp_set_tso(%struct.tcpcb* %147, %struct.TYPE_12__* %150)
  %152 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %153 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %156 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %155, i32 0, i32 1
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @IFEF_2KCL, align 4
  %161 = and i32 %159, %160
  %162 = call i32 @soif2kcl(i32 %154, i32 %161)
  %163 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %164 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %165 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %164, i32 0, i32 1
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = call i32 @tcp_set_ecn(%struct.tcpcb* %163, %struct.TYPE_12__* %166)
  %168 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %169 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %168, i32 0, i32 2
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = icmp eq %struct.TYPE_12__* %170, null
  br i1 %171, label %172, label %178

172:                                              ; preds = %135
  %173 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %174 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %173, i32 0, i32 1
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %177 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %176, i32 0, i32 2
  store %struct.TYPE_12__* %175, %struct.TYPE_12__** %177, align 8
  br label %178

178:                                              ; preds = %172, %135
  br label %179

179:                                              ; preds = %178, %130, %127
  %180 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %181 = icmp ne %struct.rtentry* %180, null
  br i1 %181, label %182, label %221

182:                                              ; preds = %179
  %183 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %184 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %183, i32 0, i32 1
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @IFF_POINTOPOINT, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %221, label %191

191:                                              ; preds = %182
  %192 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %193 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %192, i32 0, i32 2
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @AF_LINK, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %215, label %199

199:                                              ; preds = %191
  %200 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %201 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %200, i32 0, i32 1
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @IFF_LOOPBACK, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %199
  %209 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %210 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i64 @in_localaddr(i64 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %208, %199, %191
  %216 = load i32, i32* @TF_LOCAL, align 4
  %217 = load %struct.tcpcb*, %struct.tcpcb** %7, align 8
  %218 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %215, %208, %182, %179
  %222 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  ret %struct.rtentry* %222
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i64 @ROUTE_UNUSABLE(%struct.route*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @ROUTE_RELEASE(%struct.route*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rtalloc_scoped(%struct.route*, i32) #1

declare dso_local i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @somultipages(i32, i32) #1

declare dso_local i32 @tcp_set_tso(%struct.tcpcb*, %struct.TYPE_12__*) #1

declare dso_local i32 @soif2kcl(i32, i32) #1

declare dso_local i32 @tcp_set_ecn(%struct.tcpcb*, %struct.TYPE_12__*) #1

declare dso_local i64 @in_localaddr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
