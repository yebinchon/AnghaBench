; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_addr_wrap_neq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_addr_wrap_neq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_addr_wrap = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"invalid address type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_addr_wrap*, %struct.pf_addr_wrap*)* @pf_addr_wrap_neq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_addr_wrap_neq(%struct.pf_addr_wrap* %0, %struct.pf_addr_wrap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pf_addr_wrap*, align 8
  %5 = alloca %struct.pf_addr_wrap*, align 8
  store %struct.pf_addr_wrap* %0, %struct.pf_addr_wrap** %4, align 8
  store %struct.pf_addr_wrap* %1, %struct.pf_addr_wrap** %5, align 8
  %6 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %7 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %5, align 8
  %10 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %100

14:                                               ; preds = %2
  %15 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %16 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %95 [
    i32 134, label %18
    i32 131, label %18
    i32 133, label %43
    i32 132, label %72
    i32 128, label %72
    i32 129, label %73
    i32 130, label %84
  ]

18:                                               ; preds = %14, %14
  %19 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %20 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %5, align 8
  %24 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = call i32 @PF_ANEQ(i32* %22, i32* %26, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %100

30:                                               ; preds = %18
  %31 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %32 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %5, align 8
  %36 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i32 @PF_ANEQ(i32* %34, i32* %38, i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %100

42:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %100

43:                                               ; preds = %14
  %44 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %45 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = icmp eq %struct.TYPE_6__* %47, null
  br i1 %48, label %69, label %49

49:                                               ; preds = %43
  %50 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %5, align 8
  %51 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = icmp eq %struct.TYPE_6__* %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %49
  %56 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %57 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %5, align 8
  %63 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %61, %67
  br label %69

69:                                               ; preds = %55, %49, %43
  %70 = phi i1 [ true, %49 ], [ true, %43 ], [ %68, %55 ]
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %100

72:                                               ; preds = %14, %14
  store i32 0, i32* %3, align 4
  br label %100

73:                                               ; preds = %14
  %74 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %75 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %5, align 8
  %79 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %77, %81
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %3, align 4
  br label %100

84:                                               ; preds = %14
  %85 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %86 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %5, align 8
  %90 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %88, %92
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %3, align 4
  br label %100

95:                                               ; preds = %14
  %96 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %97 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %98)
  store i32 1, i32* %3, align 4
  br label %100

100:                                              ; preds = %95, %84, %73, %72, %69, %42, %41, %29, %13
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @PF_ANEQ(i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
