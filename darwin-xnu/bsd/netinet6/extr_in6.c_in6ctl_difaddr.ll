; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ctl_difaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ctl_difaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_ifaddr = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.nd_prefix = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_8__, %struct.ifnet* }

@ND6_PREFIX_EXPIRY_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.in6_ifaddr*)* @in6ctl_difaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in6ctl_difaddr(%struct.ifnet* %0, %struct.in6_ifaddr* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.in6_ifaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nd_prefix, align 8
  %7 = alloca %struct.nd_prefix*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.in6_ifaddr* %1, %struct.in6_ifaddr** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = icmp ne %struct.ifnet* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %12 = icmp ne %struct.in6_ifaddr* %11, null
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i1 [ false, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @VERIFY(i32 %15)
  %17 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %18 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %17, i32 0, i32 0
  %19 = call i32 @IFA_LOCK(i32* %18)
  %20 = call i32 @bzero(%struct.nd_prefix* %6, i32 40)
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %6, i32 0, i32 5
  store %struct.ifnet* %21, %struct.ifnet** %22, align 8
  %23 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %24 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = call i32 @in6_mask2len(%struct.TYPE_8__* %25, i32* null)
  %27 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %6, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %35

31:                                               ; preds = %13
  %32 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %33 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %32, i32 0, i32 0
  %34 = call i32 @IFA_UNLOCK(i32* %33)
  br label %101

35:                                               ; preds = %13
  %36 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %6, i32 0, i32 3
  %37 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %38 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %37, i32 0, i32 2
  %39 = bitcast %struct.TYPE_6__* %36 to i8*
  %40 = bitcast %struct.TYPE_6__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 8, i1 false)
  %41 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %6, i32 0, i32 4
  %42 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %43 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = bitcast %struct.TYPE_8__* %41 to i8*
  %46 = bitcast %struct.TYPE_8__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %69, %35
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %72

50:                                               ; preds = %47
  %51 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %52 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %6, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %59
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %50
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %47

72:                                               ; preds = %47
  %73 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %74 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %73, i32 0, i32 0
  %75 = call i32 @IFA_UNLOCK(i32* %74)
  %76 = load i32, i32* @ND6_PREFIX_EXPIRY_UNSPEC, align 4
  %77 = call %struct.nd_prefix* @nd6_prefix_lookup(%struct.nd_prefix* %6, i32 %76)
  store %struct.nd_prefix* %77, %struct.nd_prefix** %7, align 8
  %78 = icmp ne %struct.nd_prefix* %77, null
  br i1 %78, label %79, label %100

79:                                               ; preds = %72
  %80 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %81 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %80, i32 0, i32 0
  %82 = call i32 @IFA_LOCK(i32* %81)
  %83 = load %struct.nd_prefix*, %struct.nd_prefix** %7, align 8
  %84 = call i32 @NDPR_LOCK(%struct.nd_prefix* %83)
  %85 = load %struct.nd_prefix*, %struct.nd_prefix** %7, align 8
  %86 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  %90 = load %struct.nd_prefix*, %struct.nd_prefix** %7, align 8
  %91 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %79
  %93 = load %struct.nd_prefix*, %struct.nd_prefix** %7, align 8
  %94 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %93)
  %95 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %96 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %95, i32 0, i32 0
  %97 = call i32 @IFA_UNLOCK(i32* %96)
  %98 = load %struct.nd_prefix*, %struct.nd_prefix** %7, align 8
  %99 = call i32 @NDPR_REMREF(%struct.nd_prefix* %98)
  br label %100

100:                                              ; preds = %92, %72
  br label %101

101:                                              ; preds = %100, %31
  %102 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %103 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %102, i32 0, i32 0
  %104 = call i32 @in6_purgeaddr(i32* %103)
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @IFA_LOCK(i32*) #1

declare dso_local i32 @bzero(%struct.nd_prefix*, i32) #1

declare dso_local i32 @in6_mask2len(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @IFA_UNLOCK(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.nd_prefix* @nd6_prefix_lookup(%struct.nd_prefix*, i32) #1

declare dso_local i32 @NDPR_LOCK(%struct.nd_prefix*) #1

declare dso_local i32 @NDPR_UNLOCK(%struct.nd_prefix*) #1

declare dso_local i32 @NDPR_REMREF(%struct.nd_prefix*) #1

declare dso_local i32 @in6_purgeaddr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
