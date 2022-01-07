; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_alloccluster.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_alloccluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@MBIGCLBYTES = common dso_local global i64 0, align 8
@njcl = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i64 0, align 8
@M16KCLBYTES = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbuf_alloccluster(i32 %0, i64* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32**, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i32** %2, i32*** %7, align 8
  %8 = load i64*, i64** %6, align 8
  %9 = icmp eq i64* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = load i64*, i64** %6, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i32**, i32*** %7, align 8
  %16 = icmp eq i32** %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %10, %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %90

19:                                               ; preds = %14
  %20 = load i32**, i32*** %7, align 8
  store i32* null, i32** %20, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MBIGCLBYTES, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i64, i64* @njcl, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @ENOTSUP, align 4
  store i32 %29, i32* %4, align 4
  br label %90

30:                                               ; preds = %25, %19
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MCLBYTES, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = call i32* @m_mclalloc(i32 %36)
  %38 = load i32**, i32*** %7, align 8
  store i32* %37, i32** %38, align 8
  %39 = icmp ne i32* %37, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i64, i64* @MCLBYTES, align 8
  %42 = load i64*, i64** %6, align 8
  store i64 %41, i64* %42, align 8
  br label %83

43:                                               ; preds = %35, %30
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MCLBYTES, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MBIGCLBYTES, align 8
  %52 = icmp ule i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = call i32* @m_bigalloc(i32 %54)
  %56 = load i32**, i32*** %7, align 8
  store i32* %55, i32** %56, align 8
  %57 = icmp ne i32* %55, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i64, i64* @MBIGCLBYTES, align 8
  %60 = load i64*, i64** %6, align 8
  store i64 %59, i64* %60, align 8
  br label %82

61:                                               ; preds = %53, %48, %43
  %62 = load i64*, i64** %6, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MBIGCLBYTES, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load i64*, i64** %6, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @M16KCLBYTES, align 8
  %70 = icmp ule i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = call i32* @m_16kalloc(i32 %72)
  %74 = load i32**, i32*** %7, align 8
  store i32* %73, i32** %74, align 8
  %75 = icmp ne i32* %73, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i64, i64* @M16KCLBYTES, align 8
  %78 = load i64*, i64** %6, align 8
  store i64 %77, i64* %78, align 8
  br label %81

79:                                               ; preds = %71, %66, %61
  %80 = load i64*, i64** %6, align 8
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %79, %76
  br label %82

82:                                               ; preds = %81, %58
  br label %83

83:                                               ; preds = %82, %40
  %84 = load i32**, i32*** %7, align 8
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @ENOMEM, align 4
  store i32 %88, i32* %4, align 4
  br label %90

89:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %87, %28, %17
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32* @m_mclalloc(i32) #1

declare dso_local i32* @m_bigalloc(i32) #1

declare dso_local i32* @m_16kalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
