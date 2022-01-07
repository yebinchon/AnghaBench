; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_mcast.c_inm_record_source.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_mcast.c_inm_record_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_multi = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ip_msource = type { i64, i32 }

@ip_msource_tree = common dso_local global i32 0, align 4
@in_mcast_maxgrpsrc = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inm_record_source(%struct.in_multi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in_multi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_msource, align 8
  %7 = alloca %struct.ip_msource*, align 8
  %8 = alloca %struct.ip_msource*, align 8
  store %struct.in_multi* %0, %struct.in_multi** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.in_multi*, %struct.in_multi** %4, align 8
  %10 = call i32 @INM_LOCK_ASSERT_HELD(%struct.in_multi* %9)
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ntohl(i32 %11)
  %13 = getelementptr inbounds %struct.ip_msource, %struct.ip_msource* %6, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* @ip_msource_tree, align 4
  %15 = load %struct.in_multi*, %struct.in_multi** %4, align 8
  %16 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %15, i32 0, i32 2
  %17 = call %struct.ip_msource* @RB_FIND(i32 %14, i32* %16, %struct.ip_msource* %6)
  store %struct.ip_msource* %17, %struct.ip_msource** %7, align 8
  %18 = load %struct.ip_msource*, %struct.ip_msource** %7, align 8
  %19 = icmp ne %struct.ip_msource* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.ip_msource*, %struct.ip_msource** %7, align 8
  %22 = getelementptr inbounds %struct.ip_msource, %struct.ip_msource* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %73

26:                                               ; preds = %20, %2
  %27 = load %struct.ip_msource*, %struct.ip_msource** %7, align 8
  %28 = icmp eq %struct.ip_msource* %27, null
  br i1 %28, label %29, label %61

29:                                               ; preds = %26
  %30 = load %struct.in_multi*, %struct.in_multi** %4, align 8
  %31 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @in_mcast_maxgrpsrc, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOSPC, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %73

38:                                               ; preds = %29
  %39 = load i32, i32* @M_WAITOK, align 4
  %40 = call %struct.ip_msource* @ipms_alloc(i32 %39)
  store %struct.ip_msource* %40, %struct.ip_msource** %8, align 8
  %41 = load %struct.ip_msource*, %struct.ip_msource** %8, align 8
  %42 = icmp eq %struct.ip_msource* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %73

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.ip_msource, %struct.ip_msource* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ip_msource*, %struct.ip_msource** %8, align 8
  %50 = getelementptr inbounds %struct.ip_msource, %struct.ip_msource* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @ip_msource_tree, align 4
  %52 = load %struct.in_multi*, %struct.in_multi** %4, align 8
  %53 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %52, i32 0, i32 2
  %54 = load %struct.ip_msource*, %struct.ip_msource** %8, align 8
  %55 = call i32 @RB_INSERT(i32 %51, i32* %53, %struct.ip_msource* %54)
  %56 = load %struct.in_multi*, %struct.in_multi** %4, align 8
  %57 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.ip_msource*, %struct.ip_msource** %8, align 8
  store %struct.ip_msource* %60, %struct.ip_msource** %7, align 8
  br label %61

61:                                               ; preds = %46, %26
  %62 = load %struct.ip_msource*, %struct.ip_msource** %7, align 8
  %63 = getelementptr inbounds %struct.ip_msource, %struct.ip_msource* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.in_multi*, %struct.in_multi** %4, align 8
  %67 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %61, %43, %35, %25
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @INM_LOCK_ASSERT_HELD(%struct.in_multi*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.ip_msource* @RB_FIND(i32, i32*, %struct.ip_msource*) #1

declare dso_local %struct.ip_msource* @ipms_alloc(i32) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.ip_msource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
