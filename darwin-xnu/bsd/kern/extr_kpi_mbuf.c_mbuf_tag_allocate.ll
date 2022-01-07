; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_tag_allocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_tag_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.m_tag = type { i32 }

@NSI_MBUF_TAG = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbuf_tag_allocate(%struct.TYPE_6__* %0, i64 %1, i32 %2, i64 %3, i64 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.m_tag*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8** %5, i8*** %13, align 8
  %17 = load i8**, i8*** %13, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i8**, i8*** %13, align 8
  store i8* null, i8** %20, align 8
  br label %21

21:                                               ; preds = %19, %6
  %22 = load i32, i32* @NSI_MBUF_TAG, align 4
  %23 = call i32 @net_str_id_first_last(i64* %15, i64* %16, i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = icmp eq %struct.TYPE_6__* %24, null
  br i1 %25, label %51, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @M_PKTHDR, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %26
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %15, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %51, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %16, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %11, align 8
  %43 = icmp ult i64 %42, 1
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %11, align 8
  %46 = and i64 %45, 4294901760
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i8**, i8*** %13, align 8
  %50 = icmp eq i8** %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48, %44, %41, %37, %33, %26, %21
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %7, align 4
  br label %89

53:                                               ; preds = %48
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call %struct.m_tag* @m_tag_locate(%struct.TYPE_6__* %54, i64 %55, i32 %56, i32* null)
  store %struct.m_tag* %57, %struct.m_tag** %14, align 8
  %58 = load %struct.m_tag*, %struct.m_tag** %14, align 8
  %59 = icmp ne %struct.m_tag* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @EEXIST, align 4
  store i32 %61, i32* %7, align 4
  br label %89

62:                                               ; preds = %53
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = call %struct.m_tag* @m_tag_create(i64 %63, i32 %64, i64 %65, i64 %66, %struct.TYPE_6__* %67)
  store %struct.m_tag* %68, %struct.m_tag** %14, align 8
  %69 = load %struct.m_tag*, %struct.m_tag** %14, align 8
  %70 = icmp eq %struct.m_tag* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %62
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @M_WAITOK, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @ENOMEM, align 4
  br label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @EWOULDBLOCK, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %7, align 4
  br label %89

81:                                               ; preds = %62
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %83 = load %struct.m_tag*, %struct.m_tag** %14, align 8
  %84 = call i32 @m_tag_prepend(%struct.TYPE_6__* %82, %struct.m_tag* %83)
  %85 = load %struct.m_tag*, %struct.m_tag** %14, align 8
  %86 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %85, i64 1
  %87 = bitcast %struct.m_tag* %86 to i8*
  %88 = load i8**, i8*** %13, align 8
  store i8* %87, i8** %88, align 8
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %81, %79, %60, %51
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @net_str_id_first_last(i64*, i64*, i32) #1

declare dso_local %struct.m_tag* @m_tag_locate(%struct.TYPE_6__*, i64, i32, i32*) #1

declare dso_local %struct.m_tag* @m_tag_create(i64, i32, i64, i64, %struct.TYPE_6__*) #1

declare dso_local i32 @m_tag_prepend(%struct.TYPE_6__*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
