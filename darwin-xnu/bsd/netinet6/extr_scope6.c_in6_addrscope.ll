; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_in6_addrscope.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_in6_addrscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32* }

@IPV6_ADDR_SCOPE_GLOBAL = common dso_local global i32 0, align 4
@in6addr_loopback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_addrscope(%struct.in6_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  %5 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %6 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 254
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %13 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 192
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %21 [
    i32 128, label %19
    i32 192, label %20
  ]

19:                                               ; preds = %11
  store i32 129, i32* %2, align 4
  br label %67

20:                                               ; preds = %11
  store i32 128, i32* %2, align 4
  br label %67

21:                                               ; preds = %11
  %22 = load i32, i32* @IPV6_ADDR_SCOPE_GLOBAL, align 4
  store i32 %22, i32* %2, align 4
  br label %67

23:                                               ; preds = %1
  %24 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %25 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 255
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %32 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 15
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %41 [
    i32 130, label %38
    i32 129, label %39
    i32 128, label %40
  ]

38:                                               ; preds = %30
  store i32 130, i32* %2, align 4
  br label %67

39:                                               ; preds = %30
  store i32 129, i32* %2, align 4
  br label %67

40:                                               ; preds = %30
  store i32 128, i32* %2, align 4
  br label %67

41:                                               ; preds = %30
  %42 = load i32, i32* @IPV6_ADDR_SCOPE_GLOBAL, align 4
  store i32 %42, i32* %2, align 4
  br label %67

43:                                               ; preds = %23
  %44 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %45 = call i64 @bcmp(i32* @in6addr_loopback, %struct.in6_addr* %44, i32 7)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %49 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 15
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 129, i32* %2, align 4
  br label %67

55:                                               ; preds = %47
  %56 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %57 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 15
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @IPV6_ADDR_SCOPE_GLOBAL, align 4
  store i32 %63, i32* %2, align 4
  br label %67

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %43
  %66 = load i32, i32* @IPV6_ADDR_SCOPE_GLOBAL, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %62, %54, %41, %40, %39, %38, %21, %20, %19
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @bcmp(i32*, %struct.in6_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
