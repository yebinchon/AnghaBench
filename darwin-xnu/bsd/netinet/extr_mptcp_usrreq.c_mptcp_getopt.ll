; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_getopt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptses = type { i32, i32 }
%struct.sockopt = type { i64, i32 }
%struct.mptopt = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@ENOPROTOOPT = common dso_local global i32 0, align 4
@SOF_NOTSENT_LOWAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mptses*, %struct.sockopt*)* @mptcp_getopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_getopt(%struct.mptses* %0, %struct.sockopt* %1) #0 {
  %3 = alloca %struct.mptses*, align 8
  %4 = alloca %struct.sockopt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mptopt*, align 8
  store %struct.mptses* %0, %struct.mptses** %3, align 8
  store %struct.sockopt* %1, %struct.sockopt** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %9 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IPPROTO_TCP, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %14, i32* %5, align 4
  br label %66

15:                                               ; preds = %2
  %16 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %17 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %23 [
    i32 131, label %19
    i32 128, label %19
    i32 134, label %19
    i32 132, label %19
    i32 133, label %19
    i32 135, label %19
    i32 129, label %19
    i32 138, label %19
    i32 137, label %19
    i32 136, label %19
    i32 130, label %19
    i32 139, label %19
    i32 140, label %19
  ]

19:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15
  %20 = load %struct.mptses*, %struct.mptses** %3, align 8
  %21 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %22 = call i32 @mptcp_default_tcp_optval(%struct.mptses* %20, %struct.sockopt* %21, i32* %6)
  store i32 %22, i32* %5, align 4
  br label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %27 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %50 [
    i32 130, label %29
    i32 139, label %42
    i32 140, label %46
  ]

29:                                               ; preds = %25
  %30 = load %struct.mptses*, %struct.mptses** %3, align 8
  %31 = call %struct.TYPE_2__* @mptetoso(%struct.mptses* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SOF_NOTSENT_LOWAT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.mptses*, %struct.mptses** %3, align 8
  %39 = call i32 @mptcp_get_notsent_lowat(%struct.mptses* %38)
  store i32 %39, i32* %6, align 4
  br label %41

40:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %37
  br label %66

42:                                               ; preds = %25
  %43 = load %struct.mptses*, %struct.mptses** %3, align 8
  %44 = getelementptr inbounds %struct.mptses, %struct.mptses* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  br label %66

46:                                               ; preds = %25
  %47 = load %struct.mptses*, %struct.mptses** %3, align 8
  %48 = getelementptr inbounds %struct.mptses, %struct.mptses* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  br label %66

50:                                               ; preds = %25
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load %struct.mptses*, %struct.mptses** %3, align 8
  %55 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %56 = call %struct.mptopt* @mptcp_sopt_find(%struct.mptses* %54, %struct.sockopt* %55)
  store %struct.mptopt* %56, %struct.mptopt** %7, align 8
  %57 = icmp ne %struct.mptopt* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.mptopt*, %struct.mptopt** %7, align 8
  %60 = getelementptr inbounds %struct.mptopt, %struct.mptopt* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %64 = call i32 @sooptcopyout(%struct.sockopt* %63, i32* %6, i32 4)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %50
  br label %66

66:                                               ; preds = %65, %46, %42, %41, %13
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @mptcp_default_tcp_optval(%struct.mptses*, %struct.sockopt*, i32*) #1

declare dso_local %struct.TYPE_2__* @mptetoso(%struct.mptses*) #1

declare dso_local i32 @mptcp_get_notsent_lowat(%struct.mptses*) #1

declare dso_local %struct.mptopt* @mptcp_sopt_find(%struct.mptses*, %struct.sockopt*) #1

declare dso_local i32 @sooptcopyout(%struct.sockopt*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
