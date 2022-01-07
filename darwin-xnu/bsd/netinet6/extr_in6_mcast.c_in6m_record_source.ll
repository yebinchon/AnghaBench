; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6m_record_source.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6m_record_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_multi = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ip6_msource = type { i64, %struct.in6_addr }

@ip6_msource_tree = common dso_local global i32 0, align 4
@in6_mcast_maxgrpsrc = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6m_record_source(%struct.in6_multi* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in6_multi*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.ip6_msource, align 8
  %7 = alloca %struct.ip6_msource*, align 8
  %8 = alloca %struct.ip6_msource*, align 8
  store %struct.in6_multi* %0, %struct.in6_multi** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %9 = load %struct.in6_multi*, %struct.in6_multi** %4, align 8
  %10 = call i32 @IN6M_LOCK_ASSERT_HELD(%struct.in6_multi* %9)
  %11 = getelementptr inbounds %struct.ip6_msource, %struct.ip6_msource* %6, i32 0, i32 1
  %12 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %13 = bitcast %struct.in6_addr* %11 to i8*
  %14 = bitcast %struct.in6_addr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load i32, i32* @ip6_msource_tree, align 4
  %16 = load %struct.in6_multi*, %struct.in6_multi** %4, align 8
  %17 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %16, i32 0, i32 2
  %18 = call %struct.ip6_msource* @RB_FIND(i32 %15, i32* %17, %struct.ip6_msource* %6)
  store %struct.ip6_msource* %18, %struct.ip6_msource** %7, align 8
  %19 = load %struct.ip6_msource*, %struct.ip6_msource** %7, align 8
  %20 = icmp ne %struct.ip6_msource* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.ip6_msource*, %struct.ip6_msource** %7, align 8
  %23 = getelementptr inbounds %struct.ip6_msource, %struct.ip6_msource* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %75

27:                                               ; preds = %21, %2
  %28 = load %struct.ip6_msource*, %struct.ip6_msource** %7, align 8
  %29 = icmp eq %struct.ip6_msource* %28, null
  br i1 %29, label %30, label %63

30:                                               ; preds = %27
  %31 = load %struct.in6_multi*, %struct.in6_multi** %4, align 8
  %32 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @in6_mcast_maxgrpsrc, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOSPC, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %75

39:                                               ; preds = %30
  %40 = load i32, i32* @M_WAITOK, align 4
  %41 = call %struct.ip6_msource* @ip6ms_alloc(i32 %40)
  store %struct.ip6_msource* %41, %struct.ip6_msource** %8, align 8
  %42 = load %struct.ip6_msource*, %struct.ip6_msource** %8, align 8
  %43 = icmp eq %struct.ip6_msource* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %75

47:                                               ; preds = %39
  %48 = load %struct.ip6_msource*, %struct.ip6_msource** %8, align 8
  %49 = getelementptr inbounds %struct.ip6_msource, %struct.ip6_msource* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.ip6_msource, %struct.ip6_msource* %6, i32 0, i32 1
  %51 = bitcast %struct.in6_addr* %49 to i8*
  %52 = bitcast %struct.in6_addr* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 4, i1 false)
  %53 = load i32, i32* @ip6_msource_tree, align 4
  %54 = load %struct.in6_multi*, %struct.in6_multi** %4, align 8
  %55 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %54, i32 0, i32 2
  %56 = load %struct.ip6_msource*, %struct.ip6_msource** %8, align 8
  %57 = call i32 @RB_INSERT(i32 %53, i32* %55, %struct.ip6_msource* %56)
  %58 = load %struct.in6_multi*, %struct.in6_multi** %4, align 8
  %59 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.ip6_msource*, %struct.ip6_msource** %8, align 8
  store %struct.ip6_msource* %62, %struct.ip6_msource** %7, align 8
  br label %63

63:                                               ; preds = %47, %27
  %64 = load %struct.ip6_msource*, %struct.ip6_msource** %7, align 8
  %65 = getelementptr inbounds %struct.ip6_msource, %struct.ip6_msource* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.in6_multi*, %struct.in6_multi** %4, align 8
  %69 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %63, %44, %36, %26
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @IN6M_LOCK_ASSERT_HELD(%struct.in6_multi*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.ip6_msource* @RB_FIND(i32, i32*, %struct.ip6_msource*) #1

declare dso_local %struct.ip6_msource* @ip6ms_alloc(i32) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.ip6_msource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
