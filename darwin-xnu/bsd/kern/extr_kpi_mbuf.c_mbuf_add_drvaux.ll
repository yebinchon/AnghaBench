; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_add_drvaux.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_add_drvaux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.m_drvaux_tag = type { i64, i8*, i8* }
%struct.m_tag = type { i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@MBUF_DRVAUX_MAXLEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@KERNEL_MODULE_TAG_ID = common dso_local global i32 0, align 4
@KERNEL_TAG_TYPE_DRVAUX = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@MBUF_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbuf_add_drvaux(%struct.TYPE_6__* %0, i32 %1, i8* %2, i8* %3, i64 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.m_drvaux_tag*, align 8
  %15 = alloca %struct.m_tag*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8** %5, i8*** %13, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = icmp eq %struct.TYPE_6__* %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %6
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @M_PKTHDR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i64, i64* %12, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @MBUF_DRVAUX_MAXLEN, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %25, %18, %6
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %7, align 4
  br label %91

34:                                               ; preds = %28
  %35 = load i8**, i8*** %13, align 8
  %36 = icmp ne i8** %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i8**, i8*** %13, align 8
  store i8* null, i8** %38, align 8
  br label %39

39:                                               ; preds = %37, %34
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = load i32, i32* @KERNEL_MODULE_TAG_ID, align 4
  %42 = load i32, i32* @KERNEL_TAG_TYPE_DRVAUX, align 4
  %43 = call %struct.m_tag* @m_tag_locate(%struct.TYPE_6__* %40, i32 %41, i32 %42, i32* null)
  store %struct.m_tag* %43, %struct.m_tag** %15, align 8
  %44 = icmp ne %struct.m_tag* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @EEXIST, align 4
  store i32 %46, i32* %7, align 4
  br label %91

47:                                               ; preds = %39
  %48 = load i32, i32* @KERNEL_MODULE_TAG_ID, align 4
  %49 = load i32, i32* @KERNEL_TAG_TYPE_DRVAUX, align 4
  %50 = load i64, i64* %12, align 8
  %51 = add i64 24, %50
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = call %struct.m_tag* @m_tag_create(i32 %48, i32 %49, i32 %52, i32 %53, %struct.TYPE_6__* %54)
  store %struct.m_tag* %55, %struct.m_tag** %15, align 8
  %56 = icmp eq %struct.m_tag* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @MBUF_WAITOK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @ENOMEM, align 4
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @EWOULDBLOCK, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %7, align 4
  br label %91

67:                                               ; preds = %47
  %68 = load %struct.m_tag*, %struct.m_tag** %15, align 8
  %69 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %68, i64 1
  %70 = bitcast %struct.m_tag* %69 to %struct.m_drvaux_tag*
  store %struct.m_drvaux_tag* %70, %struct.m_drvaux_tag** %14, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load %struct.m_drvaux_tag*, %struct.m_drvaux_tag** %14, align 8
  %73 = getelementptr inbounds %struct.m_drvaux_tag, %struct.m_drvaux_tag* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.m_drvaux_tag*, %struct.m_drvaux_tag** %14, align 8
  %76 = getelementptr inbounds %struct.m_drvaux_tag, %struct.m_drvaux_tag* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load %struct.m_drvaux_tag*, %struct.m_drvaux_tag** %14, align 8
  %79 = getelementptr inbounds %struct.m_drvaux_tag, %struct.m_drvaux_tag* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %81 = load %struct.m_tag*, %struct.m_tag** %15, align 8
  %82 = call i32 @m_tag_prepend(%struct.TYPE_6__* %80, %struct.m_tag* %81)
  %83 = load i8**, i8*** %13, align 8
  %84 = icmp ne i8** %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %67
  %86 = load %struct.m_drvaux_tag*, %struct.m_drvaux_tag** %14, align 8
  %87 = getelementptr inbounds %struct.m_drvaux_tag, %struct.m_drvaux_tag* %86, i64 1
  %88 = bitcast %struct.m_drvaux_tag* %87 to i8*
  %89 = load i8**, i8*** %13, align 8
  store i8* %88, i8** %89, align 8
  br label %90

90:                                               ; preds = %85, %67
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %90, %65, %45, %32
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local %struct.m_tag* @m_tag_locate(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local %struct.m_tag* @m_tag_create(i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @m_tag_prepend(%struct.TYPE_6__*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
