; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_nd6_prefix_offlink.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_nd6_prefix_offlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_prefix = type { i32, i32, i64, i32, %struct.rtentry*, %struct.sockaddr_in6, i32, %struct.ifnet* }
%struct.rtentry = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i8* }
%struct.ifnet = type { i32 }
%struct.sockaddr = type { i32 }

@nd6_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@NDPRF_ONLINK = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"nd6_prefix_offlink: %s/%d on %s scoped=%d is already off-link\0A\00", align 1
@NDPRF_IFSCOPE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i8* null, align 8
@IFSCOPE_NONE = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"nd6_prefix_offlink: failed to delete route: %s/%d on %s, scoped %d, (errno = %d)\0A\00", align 1
@proxy6_lock = common dso_local global i32 0, align 4
@NDPRF_PRPROXY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd6_prefix_offlink(%struct.nd_prefix* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nd_prefix*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.sockaddr_in6, align 8
  %9 = alloca %struct.sockaddr_in6, align 8
  %10 = alloca %struct.sockaddr_in6, align 8
  %11 = alloca %struct.rtentry*, align 8
  %12 = alloca %struct.rtentry*, align 8
  %13 = alloca i32, align 4
  store %struct.nd_prefix* %0, %struct.nd_prefix** %3, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %15 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %14, i32 0, i32 7
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %7, align 8
  store %struct.rtentry* null, %struct.rtentry** %11, align 8
  store %struct.rtentry* null, %struct.rtentry** %12, align 8
  %17 = load i32, i32* @nd6_mutex, align 4
  %18 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %19 = call i32 @LCK_MTX_ASSERT(i32 %17, i32 %18)
  %20 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %21 = call i32 @NDPR_LOCK(%struct.nd_prefix* %20)
  %22 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %23 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NDPRF_ONLINK, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %1
  %29 = load i32, i32* @LOG_ERR, align 4
  %30 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %31 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %31, i32 0, i32 1
  %33 = call i32 @ip6_sprintf(i32* %32)
  %34 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %35 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %38 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %37, i32 0, i32 7
  %39 = load %struct.ifnet*, %struct.ifnet** %38, align 8
  %40 = call i32 @if_name(%struct.ifnet* %39)
  %41 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %42 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @NDPRF_IFSCOPE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = call i32 @nd6log(i32 %48)
  %50 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %51 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %50)
  %52 = load i32, i32* @EEXIST, align 4
  store i32 %52, i32* %2, align 4
  br label %208

53:                                               ; preds = %1
  %54 = call i32 @bzero(%struct.sockaddr_in6* %8, i32 16)
  %55 = load i8*, i8** @AF_INET6, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 0
  store i32 16, i32* %57, align 8
  %58 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %59 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 1
  %62 = call i32 @bcopy(i32* %60, i32* %61, i32 4)
  %63 = call i32 @bzero(%struct.sockaddr_in6* %9, i32 16)
  %64 = load i8*, i8** @AF_INET6, align 8
  %65 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 2
  store i8* %64, i8** %65, align 8
  %66 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0
  store i32 16, i32* %66, align 8
  %67 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %68 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 1
  %70 = call i32 @bcopy(i32* %68, i32* %69, i32 4)
  %71 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %72 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %71, i32 0, i32 5
  %73 = bitcast %struct.sockaddr_in6* %10 to i8*
  %74 = bitcast %struct.sockaddr_in6* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 16, i1 false)
  %75 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %76 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %4, align 4
  %78 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %79 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %78, i32 0, i32 4
  %80 = load %struct.rtentry*, %struct.rtentry** %79, align 8
  store %struct.rtentry* %80, %struct.rtentry** %12, align 8
  %81 = icmp ne %struct.rtentry* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %53
  %83 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %84 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %83, i32 0, i32 4
  store %struct.rtentry* null, %struct.rtentry** %84, align 8
  br label %85

85:                                               ; preds = %82, %53
  %86 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %87 = call i32 @NDPR_ADDREF_LOCKED(%struct.nd_prefix* %86)
  %88 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %89 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %88)
  %90 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %91 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @NDPRF_IFSCOPE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %85
  %97 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %98 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  br label %102

100:                                              ; preds = %85
  %101 = load i32, i32* @IFSCOPE_NONE, align 4
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi i32 [ %99, %96 ], [ %101, %100 ]
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* @RTM_DELETE, align 4
  %105 = bitcast %struct.sockaddr_in6* %8 to %struct.sockaddr*
  %106 = bitcast %struct.sockaddr_in6* %9 to %struct.sockaddr*
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @rtrequest_scoped(i32 %104, %struct.sockaddr* %105, i32* null, %struct.sockaddr* %106, i32 0, %struct.rtentry** %11, i32 %107)
  store i32 %108, i32* %5, align 4
  %109 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %110 = icmp ne %struct.rtentry* %109, null
  br i1 %110, label %111, label %121

111:                                              ; preds = %102
  %112 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %113 = call i32 @RT_LOCK(%struct.rtentry* %112)
  %114 = load i32, i32* @RTM_DELETE, align 4
  %115 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %116 = call i32 @nd6_rtmsg(i32 %114, %struct.rtentry* %115)
  %117 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %118 = call i32 @RT_UNLOCK(%struct.rtentry* %117)
  %119 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %120 = call i32 @rtfree(%struct.rtentry* %119)
  br label %134

121:                                              ; preds = %102
  %122 = load i32, i32* @LOG_ERR, align 4
  %123 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 1
  %124 = call i32 @ip6_sprintf(i32* %123)
  %125 = load i32, i32* %4, align 4
  %126 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %127 = call i32 @if_name(%struct.ifnet* %126)
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* @IFSCOPE_NONE, align 4
  %130 = icmp ne i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @nd6log(i32 %132)
  br label %134

134:                                              ; preds = %121, %111
  %135 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %136 = icmp ne %struct.rtentry* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %139 = call i32 @rtfree(%struct.rtentry* %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = call i32 @lck_mtx_lock(i32* @proxy6_lock)
  %142 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %143 = call i32 @NDPR_LOCK(%struct.nd_prefix* %142)
  %144 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %145 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @NDPRF_PRPROXY, align 4
  %148 = and i32 %146, %147
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %140
  %152 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %153 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @NDPRF_IFSCOPE, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  br label %159

159:                                              ; preds = %151, %140
  %160 = phi i1 [ true, %140 ], [ %158, %151 ]
  %161 = zext i1 %160 to i32
  %162 = call i32 @VERIFY(i32 %161)
  %163 = load i32, i32* @NDPRF_ONLINK, align 4
  %164 = load i32, i32* @NDPRF_IFSCOPE, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @NDPRF_PRPROXY, align 4
  %167 = or i32 %165, %166
  %168 = xor i32 %167, -1
  %169 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %170 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 8
  %173 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %174 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp sgt i64 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %159
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @VERIFY(i32 %178)
  %180 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %181 = call i32 @nd6_prproxy_sols_reap(%struct.nd_prefix* %180)
  %182 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %183 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i32 @VERIFY(i32 %186)
  %188 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %189 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %188, i32 0, i32 3
  %190 = call i32 @RB_EMPTY(i32* %189)
  %191 = call i32 @VERIFY(i32 %190)
  br label %192

192:                                              ; preds = %177, %159
  %193 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %194 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %193)
  %195 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %196 = load i32, i32* %6, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %192
  %199 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  br label %201

200:                                              ; preds = %192
  br label %201

201:                                              ; preds = %200, %198
  %202 = phi %struct.nd_prefix* [ %199, %198 ], [ null, %200 ]
  %203 = call i32 @nd6_prproxy_prelist_update(%struct.nd_prefix* %195, %struct.nd_prefix* %202)
  %204 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %205 = call i32 @NDPR_REMREF(%struct.nd_prefix* %204)
  %206 = call i32 @lck_mtx_unlock(i32* @proxy6_lock)
  %207 = load i32, i32* %5, align 4
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %201, %28
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @NDPR_LOCK(%struct.nd_prefix*) #1

declare dso_local i32 @nd6log(i32) #1

declare dso_local i32 @ip6_sprintf(i32*) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @NDPR_UNLOCK(%struct.nd_prefix*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NDPR_ADDREF_LOCKED(%struct.nd_prefix*) #1

declare dso_local i32 @rtrequest_scoped(i32, %struct.sockaddr*, i32*, %struct.sockaddr*, i32, %struct.rtentry**, i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @nd6_rtmsg(i32, %struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @rtfree(%struct.rtentry*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @nd6_prproxy_sols_reap(%struct.nd_prefix*) #1

declare dso_local i32 @RB_EMPTY(i32*) #1

declare dso_local i32 @nd6_prproxy_prelist_update(%struct.nd_prefix*, %struct.nd_prefix*) #1

declare dso_local i32 @NDPR_REMREF(%struct.nd_prefix*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
