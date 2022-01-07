; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_attachcluster.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_attachcluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbuf_attachcluster(i32 %0, i32 %1, i32** %2, i32* %3, void (i32*, i32, i32*)* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca void (i32*, i32, i32*)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32** %2, i32*** %11, align 8
  store i32* %3, i32** %12, align 8
  store void (i32*, i32, i32*)* %4, void (i32*, i32, i32*)** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %16 = load i32**, i32*** %11, align 8
  %17 = icmp eq i32** %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %7
  %19 = load i32*, i32** %12, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load void (i32*, i32, i32*)*, void (i32*, i32, i32*)** %13, align 8
  %23 = icmp eq void (i32*, i32, i32*)* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %14, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %21, %18, %7
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %8, align 4
  br label %44

29:                                               ; preds = %24
  %30 = load i32**, i32*** %11, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = load void (i32*, i32, i32*)*, void (i32*, i32, i32*)** %13, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32* @m_clattach(i32* %31, i32 %32, i32* %33, void (i32*, i32, i32*)* %34, i64 %35, i32* %36, i32 %37, i32 0)
  %39 = load i32**, i32*** %11, align 8
  store i32* %38, i32** %39, align 8
  %40 = icmp eq i32* %38, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* %8, align 4
  br label %44

43:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %41, %27
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32* @m_clattach(i32*, i32, i32*, void (i32*, i32, i32*)*, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
