; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_find_drvaux.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_find_drvaux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.m_drvaux_tag = type { i64, i64, i64 }
%struct.m_tag = type { i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERNEL_MODULE_TAG_ID = common dso_local global i32 0, align 4
@KERNEL_TAG_TYPE_DRVAUX = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MBUF_DRVAUX_MAXLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbuf_find_drvaux(%struct.TYPE_4__* %0, i64* %1, i64* %2, i64* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.m_drvaux_tag*, align 8
  %13 = alloca %struct.m_tag*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i8** %4, i8*** %11, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %5
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @M_PKTHDR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i8**, i8*** %11, align 8
  %25 = icmp eq i8** %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %16, %5
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %6, align 4
  br label %90

28:                                               ; preds = %23
  %29 = load i8**, i8*** %11, align 8
  store i8* null, i8** %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = load i32, i32* @KERNEL_MODULE_TAG_ID, align 4
  %32 = load i32, i32* @KERNEL_TAG_TYPE_DRVAUX, align 4
  %33 = call %struct.m_tag* @m_tag_locate(%struct.TYPE_4__* %30, i32 %31, i32 %32, i32* null)
  store %struct.m_tag* %33, %struct.m_tag** %13, align 8
  %34 = icmp eq %struct.m_tag* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOENT, align 4
  store i32 %36, i32* %6, align 4
  br label %90

37:                                               ; preds = %28
  %38 = load %struct.m_tag*, %struct.m_tag** %13, align 8
  %39 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp uge i64 %41, 24
  %43 = zext i1 %42 to i32
  %44 = call i32 @VERIFY(i32 %43)
  %45 = load %struct.m_tag*, %struct.m_tag** %13, align 8
  %46 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %45, i64 1
  %47 = bitcast %struct.m_tag* %46 to %struct.m_drvaux_tag*
  store %struct.m_drvaux_tag* %47, %struct.m_drvaux_tag** %12, align 8
  %48 = load %struct.m_drvaux_tag*, %struct.m_drvaux_tag** %12, align 8
  %49 = getelementptr inbounds %struct.m_drvaux_tag, %struct.m_drvaux_tag* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %37
  %53 = load %struct.m_drvaux_tag*, %struct.m_drvaux_tag** %12, align 8
  %54 = getelementptr inbounds %struct.m_drvaux_tag, %struct.m_drvaux_tag* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MBUF_DRVAUX_MAXLEN, align 8
  %57 = icmp sle i64 %55, %56
  br label %58

58:                                               ; preds = %52, %37
  %59 = phi i1 [ false, %37 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @VERIFY(i32 %60)
  %62 = load i64*, i64** %8, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.m_drvaux_tag*, %struct.m_drvaux_tag** %12, align 8
  %66 = getelementptr inbounds %struct.m_drvaux_tag, %struct.m_drvaux_tag* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %8, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %64, %58
  %70 = load i64*, i64** %9, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.m_drvaux_tag*, %struct.m_drvaux_tag** %12, align 8
  %74 = getelementptr inbounds %struct.m_drvaux_tag, %struct.m_drvaux_tag* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %9, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %69
  %78 = load i64*, i64** %10, align 8
  %79 = icmp ne i64* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.m_drvaux_tag*, %struct.m_drvaux_tag** %12, align 8
  %82 = getelementptr inbounds %struct.m_drvaux_tag, %struct.m_drvaux_tag* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %10, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %80, %77
  %86 = load %struct.m_drvaux_tag*, %struct.m_drvaux_tag** %12, align 8
  %87 = getelementptr inbounds %struct.m_drvaux_tag, %struct.m_drvaux_tag* %86, i64 1
  %88 = bitcast %struct.m_drvaux_tag* %87 to i8*
  %89 = load i8**, i8*** %11, align 8
  store i8* %88, i8** %89, align 8
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %85, %35, %26
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local %struct.m_tag* @m_tag_locate(%struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
