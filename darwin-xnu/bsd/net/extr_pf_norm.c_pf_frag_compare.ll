; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_frag_compare.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_frag_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_fragment = type { i32, i32, i32, i32, %struct.pf_addr, %struct.pf_addr }
%struct.pf_addr = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"only IPv4 and IPv6 supported!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_fragment*, %struct.pf_fragment*)* @pf_frag_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_frag_compare(%struct.pf_fragment* %0, %struct.pf_fragment* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pf_fragment*, align 8
  %5 = alloca %struct.pf_fragment*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pf_addr*, align 8
  %8 = alloca %struct.pf_addr*, align 8
  %9 = alloca %struct.pf_addr*, align 8
  %10 = alloca %struct.pf_addr*, align 8
  store %struct.pf_fragment* %0, %struct.pf_fragment** %4, align 8
  store %struct.pf_fragment* %1, %struct.pf_fragment** %5, align 8
  %11 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %12 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %15 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %23 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %26 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  store i32 %28, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %21
  %33 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %34 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %33, i32 0, i32 5
  store %struct.pf_addr* %34, %struct.pf_addr** %7, align 8
  %35 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %36 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %35, i32 0, i32 5
  store %struct.pf_addr* %36, %struct.pf_addr** %8, align 8
  %37 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %38 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %37, i32 0, i32 4
  store %struct.pf_addr* %38, %struct.pf_addr** %9, align 8
  %39 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %40 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %39, i32 0, i32 4
  store %struct.pf_addr* %40, %struct.pf_addr** %10, align 8
  %41 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %42 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %44 [
  ]

44:                                               ; preds = %32
  %45 = call i32 @VERIFY(i32 1)
  br label %46

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %30, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
