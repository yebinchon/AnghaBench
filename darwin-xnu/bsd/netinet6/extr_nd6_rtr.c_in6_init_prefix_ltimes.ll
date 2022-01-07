; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_in6_init_prefix_ltimes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_in6_init_prefix_ltimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_prefix = type { i64, i64, i8*, i8*, i8*, i32 }
%struct.timeval = type { i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"in6_init_prefix_ltimes: preferred lifetime(%d) is greater than valid lifetime(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ND6_INFINITE_LIFETIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_init_prefix_ltimes(%struct.nd_prefix* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nd_prefix*, align 8
  %4 = alloca %struct.timeval, align 4
  %5 = alloca i8*, align 8
  store %struct.nd_prefix* %0, %struct.nd_prefix** %3, align 8
  %6 = call i8* (...) @net_uptime()
  store i8* %6, i8** %5, align 8
  %7 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %8 = call i32 @NDPR_LOCK_ASSERT_HELD(%struct.nd_prefix* %7)
  %9 = call i32 @getmicrotime(%struct.timeval* %4)
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %13 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %16 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %18 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %21 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %1
  %25 = load i32, i32* @LOG_INFO, align 4
  %26 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %27 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %31 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @nd6log(i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %2, align 4
  br label %71

36:                                               ; preds = %1
  %37 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %38 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %44 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %43, i32 0, i32 3
  store i8* null, i8** %44, align 8
  br label %53

45:                                               ; preds = %36
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %48 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr i8, i8* %46, i64 %49
  %51 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %52 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %45, %42
  %54 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %55 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %61 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %60, i32 0, i32 2
  store i8* null, i8** %61, align 8
  br label %70

62:                                               ; preds = %53
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %65 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr i8, i8* %63, i64 %66
  %68 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %69 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %62, %59
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %24
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i8* @net_uptime(...) #1

declare dso_local i32 @NDPR_LOCK_ASSERT_HELD(%struct.nd_prefix*) #1

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i32 @nd6log(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
