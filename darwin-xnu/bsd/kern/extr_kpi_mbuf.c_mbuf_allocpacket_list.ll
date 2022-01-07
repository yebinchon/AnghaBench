; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_allocpacket_list.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_allocpacket_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbuf_allocpacket_list(i32 %0, i32 %1, i64 %2, i32* %3, %struct.mbuf** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mbuf**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.mbuf** %4, %struct.mbuf*** %10, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  br label %20

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ]
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* @EINVAL, align 8
  store i64 %25, i64* %11, align 8
  br label %70

26:                                               ; preds = %20
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64, i64* @EINVAL, align 8
  store i64 %30, i64* %11, align 8
  br label %70

31:                                               ; preds = %26
  %32 = load i64, i64* %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %37

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %35
  %38 = phi i32* [ %13, %35 ], [ null, %36 ]
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.mbuf* @m_allocpacket_internal(i32* %6, i64 %32, i32* %38, i32 %39, i32 1, i32 0)
  store %struct.mbuf* %40, %struct.mbuf** %12, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %42 = icmp eq %struct.mbuf* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp ugt i32 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* @ENOBUFS, align 8
  store i64 %56, i64* %11, align 8
  br label %59

57:                                               ; preds = %50, %46, %43
  %58 = load i64, i64* @ENOMEM, align 8
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %57, %55
  br label %69

60:                                               ; preds = %37
  %61 = load i32*, i32** %9, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60
  store i64 0, i64* %11, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %68 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  store %struct.mbuf* %67, %struct.mbuf** %68, align 8
  br label %69

69:                                               ; preds = %66, %59
  br label %70

70:                                               ; preds = %69, %29, %24
  %71 = load i64, i64* %11, align 8
  ret i64 %71
}

declare dso_local %struct.mbuf* @m_allocpacket_internal(i32*, i64, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
