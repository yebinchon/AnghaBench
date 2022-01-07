; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_in6_setscope.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_in6_setscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32* }
%struct.ifnet = type { i32 }
%struct.scope6_id = type { i32* }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_setscope(%struct.in6_addr* %0, %struct.ifnet* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scope6_id*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %5, align 8
  store %struct.ifnet* %1, %struct.ifnet** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %12 = call i64 @IN6_IS_ADDR_LOOPBACK(%struct.in6_addr* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_LOOPBACK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %100

23:                                               ; preds = %14
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %26, %23
  store i32 0, i32* %4, align 4
  br label %100

29:                                               ; preds = %3
  %30 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %31 = call i32 @in6_addrscope(%struct.in6_addr* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %33 = call i32 @if_inet6data_lock_shared(%struct.ifnet* %32)
  %34 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %35 = call i32* @IN6_IFEXTRA(%struct.ifnet* %34)
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %39 = call i32 @if_inet6data_lock_done(%struct.ifnet* %38)
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32*, i32** %7, align 8
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %4, align 4
  br label %100

46:                                               ; preds = %29
  %47 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %48 = call %struct.scope6_id* @SID(%struct.ifnet* %47)
  store %struct.scope6_id* %48, %struct.scope6_id** %10, align 8
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %74 [
    i32 131, label %50
    i32 130, label %56
    i32 128, label %62
    i32 129, label %68
  ]

50:                                               ; preds = %46
  %51 = load %struct.scope6_id*, %struct.scope6_id** %10, align 8
  %52 = getelementptr inbounds %struct.scope6_id, %struct.scope6_id* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 131
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  br label %75

56:                                               ; preds = %46
  %57 = load %struct.scope6_id*, %struct.scope6_id** %10, align 8
  %58 = getelementptr inbounds %struct.scope6_id, %struct.scope6_id* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 130
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  br label %75

62:                                               ; preds = %46
  %63 = load %struct.scope6_id*, %struct.scope6_id** %10, align 8
  %64 = getelementptr inbounds %struct.scope6_id, %struct.scope6_id* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 128
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  br label %75

68:                                               ; preds = %46
  %69 = load %struct.scope6_id*, %struct.scope6_id** %10, align 8
  %70 = getelementptr inbounds %struct.scope6_id, %struct.scope6_id* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 129
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %9, align 4
  br label %75

74:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %74, %68, %62, %56, %50
  %76 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %77 = call i32 @if_inet6data_lock_done(%struct.ifnet* %76)
  %78 = load i32*, i32** %7, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %85 = call i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.in6_addr* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %89 = call i64 @IN6_IS_ADDR_MC_INTFACELOCAL(%struct.in6_addr* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87, %83
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %92, 65535
  %94 = call i32 @htons(i32 %93)
  %95 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %96 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %91, %87
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %44, %28, %21
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @IN6_IS_ADDR_LOOPBACK(%struct.in6_addr*) #1

declare dso_local i32 @in6_addrscope(%struct.in6_addr*) #1

declare dso_local i32 @if_inet6data_lock_shared(%struct.ifnet*) #1

declare dso_local i32* @IN6_IFEXTRA(%struct.ifnet*) #1

declare dso_local i32 @if_inet6data_lock_done(%struct.ifnet*) #1

declare dso_local %struct.scope6_id* @SID(%struct.ifnet*) #1

declare dso_local i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.in6_addr*) #1

declare dso_local i64 @IN6_IS_ADDR_MC_INTFACELOCAL(%struct.in6_addr*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
