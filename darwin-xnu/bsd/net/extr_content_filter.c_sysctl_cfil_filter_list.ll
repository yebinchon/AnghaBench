; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_sysctl_cfil_filter_list.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_sysctl_cfil_filter_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.content_filter = type { i32, i32, i32, i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_req = type { i64, i64, i64 }
%struct.cfil_filter_stat = type { i32, i32, i32, i32, i32 }

@USER_ADDR_NULL = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@cfil_lck_rw = common dso_local global i32 0, align 4
@content_filters = common dso_local global %struct.content_filter** null, align 8
@MAX_CONTENT_FILTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysctl_cfil_filter_list(%struct.sysctl_oid* %0, i8* %1, i32 %2, %struct.sysctl_req* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sysctl_req*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cfil_filter_stat, align 4
  %14 = alloca %struct.content_filter*, align 8
  store %struct.sysctl_oid* %0, %struct.sysctl_oid** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sysctl_req* %3, %struct.sysctl_req** %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %15 = load %struct.sysctl_req*, %struct.sysctl_req** %9, align 8
  %16 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @USER_ADDR_NULL, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @EPERM, align 4
  store i32 %21, i32* %5, align 4
  br label %91

22:                                               ; preds = %4
  %23 = call i32 @cfil_rw_lock_shared(i32* @cfil_lck_rw)
  store i64 0, i64* %12, align 8
  br label %24

24:                                               ; preds = %75, %22
  %25 = load %struct.content_filter**, %struct.content_filter*** @content_filters, align 8
  %26 = icmp ne %struct.content_filter** %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @MAX_CONTENT_FILTER, align 8
  %30 = icmp ult i64 %28, %29
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i1 [ false, %24 ], [ %30, %27 ]
  br i1 %32, label %33, label %78

33:                                               ; preds = %31
  %34 = load %struct.content_filter**, %struct.content_filter*** @content_filters, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds %struct.content_filter*, %struct.content_filter** %34, i64 %35
  %37 = load %struct.content_filter*, %struct.content_filter** %36, align 8
  store %struct.content_filter* %37, %struct.content_filter** %14, align 8
  %38 = load %struct.content_filter*, %struct.content_filter** %14, align 8
  %39 = icmp eq %struct.content_filter* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %75

41:                                               ; preds = %33
  %42 = load %struct.sysctl_req*, %struct.sysctl_req** %9, align 8
  %43 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @USER_ADDR_NULL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %48, 20
  store i64 %49, i64* %11, align 8
  br label %75

50:                                               ; preds = %41
  %51 = call i32 @bzero(%struct.cfil_filter_stat* %13, i32 20)
  %52 = getelementptr inbounds %struct.cfil_filter_stat, %struct.cfil_filter_stat* %13, i32 0, i32 0
  store i32 20, i32* %52, align 4
  %53 = load %struct.content_filter*, %struct.content_filter** %14, align 8
  %54 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.cfil_filter_stat, %struct.cfil_filter_stat* %13, i32 0, i32 4
  store i32 %55, i32* %56, align 4
  %57 = load %struct.content_filter*, %struct.content_filter** %14, align 8
  %58 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.cfil_filter_stat, %struct.cfil_filter_stat* %13, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  %61 = load %struct.content_filter*, %struct.content_filter** %14, align 8
  %62 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.cfil_filter_stat, %struct.cfil_filter_stat* %13, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load %struct.content_filter*, %struct.content_filter** %14, align 8
  %66 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.cfil_filter_stat, %struct.cfil_filter_stat* %13, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load %struct.sysctl_req*, %struct.sysctl_req** %9, align 8
  %70 = call i32 @SYSCTL_OUT(%struct.sysctl_req* %69, %struct.cfil_filter_stat* %13, i32 20)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %50
  br label %78

74:                                               ; preds = %50
  br label %75

75:                                               ; preds = %74, %47, %40
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %12, align 8
  br label %24

78:                                               ; preds = %73, %31
  %79 = load %struct.sysctl_req*, %struct.sysctl_req** %9, align 8
  %80 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @USER_ADDR_NULL, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i64, i64* %11, align 8
  %86 = load %struct.sysctl_req*, %struct.sysctl_req** %9, align 8
  %87 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %78
  %89 = call i32 @cfil_rw_unlock_shared(i32* @cfil_lck_rw)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %20
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @cfil_rw_lock_shared(i32*) #1

declare dso_local i32 @bzero(%struct.cfil_filter_stat*, i32) #1

declare dso_local i32 @SYSCTL_OUT(%struct.sysctl_req*, %struct.cfil_filter_stat*, i32) #1

declare dso_local i32 @cfil_rw_unlock_shared(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
