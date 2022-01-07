; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_sa6_recoverscope.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_sa6_recoverscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"sa6_recoverscope: assumption failure (non 0 ID): %s%%%d\0A\00", align 1
@if_index = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ifindex2ifnet = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sa6_recoverscope(%struct.sockaddr_in6* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in6*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %8 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i32, i32* @LOG_NOTICE, align 4
  %13 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %14 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %13, i32 0, i32 1
  %15 = call i32 @ip6_sprintf(%struct.TYPE_4__* %14)
  %16 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @log(i32 %12, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %11, %2
  %21 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %21, i32 0, i32 1
  %23 = call i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.TYPE_4__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %26, i32 0, i32 1
  %28 = call i64 @IN6_IS_ADDR_MC_INTFACELOCAL(%struct.TYPE_4__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %72

30:                                               ; preds = %25, %20
  %31 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ntohs(i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %30
  %41 = load i32, i32* @if_index, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %3, align 4
  br label %73

46:                                               ; preds = %40
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = call i32 (...) @ifnet_head_lock_shared()
  %51 = load i32**, i32*** @ifindex2ifnet, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = call i32 (...) @ifnet_head_done()
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %3, align 4
  br label %73

60:                                               ; preds = %49
  %61 = call i32 (...) @ifnet_head_done()
  br label %62

62:                                               ; preds = %60, %46
  %63 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %64 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %70 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %62, %30
  br label %72

72:                                               ; preds = %71, %25
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %57, %44
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @log(i32, i8*, i32, i32) #1

declare dso_local i32 @ip6_sprintf(%struct.TYPE_4__*) #1

declare dso_local i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.TYPE_4__*) #1

declare dso_local i64 @IN6_IS_ADDR_MC_INTFACELOCAL(%struct.TYPE_4__*) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local i32 @ifnet_head_done(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
