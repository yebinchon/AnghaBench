; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_in6_addr2scopeid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_in6_addr2scopeid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_addr = type { i32 }
%struct.scope6_id = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_addr2scopeid(%struct.ifnet* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scope6_id*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  %8 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %9 = call i32 @in6_addrscope(%struct.in6_addr* %8)
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = call i32 @if_inet6data_lock_shared(%struct.ifnet* %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = call i32* @IN6_IFEXTRA(%struct.ifnet* %12)
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = call %struct.scope6_id* @SID(%struct.ifnet* %17)
  store %struct.scope6_id* %18, %struct.scope6_id** %7, align 8
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %39 [
    i32 130, label %20
    i32 131, label %21
    i32 128, label %27
    i32 129, label %33
  ]

20:                                               ; preds = %16
  store i32 -1, i32* %6, align 4
  br label %40

21:                                               ; preds = %16
  %22 = load %struct.scope6_id*, %struct.scope6_id** %7, align 8
  %23 = getelementptr inbounds %struct.scope6_id, %struct.scope6_id* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 131
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  br label %40

27:                                               ; preds = %16
  %28 = load %struct.scope6_id*, %struct.scope6_id** %7, align 8
  %29 = getelementptr inbounds %struct.scope6_id, %struct.scope6_id* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 128
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  br label %40

33:                                               ; preds = %16
  %34 = load %struct.scope6_id*, %struct.scope6_id** %7, align 8
  %35 = getelementptr inbounds %struct.scope6_id, %struct.scope6_id* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 129
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  br label %40

39:                                               ; preds = %16
  br label %40

40:                                               ; preds = %39, %33, %27, %21, %20
  br label %41

41:                                               ; preds = %40, %15
  %42 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %43 = call i32 @if_inet6data_lock_done(%struct.ifnet* %42)
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @in6_addrscope(%struct.in6_addr*) #1

declare dso_local i32 @if_inet6data_lock_shared(%struct.ifnet*) #1

declare dso_local i32* @IN6_IFEXTRA(%struct.ifnet*) #1

declare dso_local %struct.scope6_id* @SID(%struct.ifnet*) #1

declare dso_local i32 @if_inet6data_lock_done(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
