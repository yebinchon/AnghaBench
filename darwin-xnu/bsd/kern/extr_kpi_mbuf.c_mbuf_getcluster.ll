; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_getcluster.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_getcluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MCLBYTES = common dso_local global i64 0, align 8
@MBIGCLBYTES = common dso_local global i64 0, align 8
@M16KCLBYTES = common dso_local global i64 0, align 8
@njcl = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i64 0, align 8
@M_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbuf_getcluster(i32 %0, i32 %1, i64 %2, %struct.TYPE_11__** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_11__** %3, %struct.TYPE_11__*** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %13 = icmp eq %struct.TYPE_11__** %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i64, i64* @EINVAL, align 8
  store i64 %15, i64* %5, align 8
  br label %99

16:                                               ; preds = %4
  %17 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = icmp eq %struct.TYPE_11__* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.TYPE_11__* @m_get(i32 %21, i32 %22)
  %24 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %24, align 8
  %25 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = icmp eq %struct.TYPE_11__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i64, i64* @ENOMEM, align 8
  store i64 %29, i64* %5, align 8
  br label %99

30:                                               ; preds = %20
  store i32 1, i32* %11, align 4
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @MCLBYTES, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.TYPE_11__* @m_mclget(%struct.TYPE_11__* %37, i32 %38)
  %40 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %40, align 8
  br label %71

41:                                               ; preds = %31
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @MBIGCLBYTES, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.TYPE_11__* @m_mbigget(%struct.TYPE_11__* %47, i32 %48)
  %50 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %50, align 8
  br label %70

51:                                               ; preds = %41
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @M16KCLBYTES, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i64, i64* @njcl, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call %struct.TYPE_11__* @m_m16kget(%struct.TYPE_11__* %60, i32 %61)
  %63 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %63, align 8
  br label %66

64:                                               ; preds = %55
  %65 = load i64, i64* @ENOTSUP, align 8
  store i64 %65, i64* %10, align 8
  br label %86

66:                                               ; preds = %58
  br label %69

67:                                               ; preds = %51
  %68 = load i64, i64* @EINVAL, align 8
  store i64 %68, i64* %10, align 8
  br label %86

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70, %35
  %72 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = icmp eq %struct.TYPE_11__* %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  %76 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @M_EXT, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75, %71
  %84 = load i64, i64* @ENOMEM, align 8
  store i64 %84, i64* %10, align 8
  br label %85

85:                                               ; preds = %83, %75
  br label %86

86:                                               ; preds = %85, %67, %64
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load i64, i64* %10, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = call i32 @mbuf_free(%struct.TYPE_11__* %94)
  %96 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %96, align 8
  br label %97

97:                                               ; preds = %92, %89, %86
  %98 = load i64, i64* %10, align 8
  store i64 %98, i64* %5, align 8
  br label %99

99:                                               ; preds = %97, %28, %14
  %100 = load i64, i64* %5, align 8
  ret i64 %100
}

declare dso_local %struct.TYPE_11__* @m_get(i32, i32) #1

declare dso_local %struct.TYPE_11__* @m_mclget(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @m_mbigget(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @m_m16kget(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mbuf_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
