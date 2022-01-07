; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_tag_find.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_tag_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.m_tag = type { i64 }

@NSI_MBUF_TAG = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbuf_tag_find(%struct.TYPE_4__* %0, i64 %1, i32 %2, i64* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.m_tag*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i8** %4, i8*** %11, align 8
  %15 = load i64*, i64** %10, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i64*, i64** %10, align 8
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %17, %5
  %20 = load i8**, i8*** %11, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i8**, i8*** %11, align 8
  store i8* null, i8** %23, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, i32* @NSI_MBUF_TAG, align 4
  %26 = call i32 @net_str_id_first_last(i64* %13, i64* %14, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = icmp eq %struct.TYPE_4__* %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @M_PKTHDR, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %29
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %13, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load i64*, i64** %10, align 8
  %46 = icmp eq i64* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i8**, i8*** %11, align 8
  %49 = icmp eq i8** %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %44, %40, %36, %29, %24
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %6, align 4
  br label %70

52:                                               ; preds = %47
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call %struct.m_tag* @m_tag_locate(%struct.TYPE_4__* %53, i64 %54, i32 %55, i32* null)
  store %struct.m_tag* %56, %struct.m_tag** %12, align 8
  %57 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %58 = icmp eq %struct.m_tag* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @ENOENT, align 4
  store i32 %60, i32* %6, align 4
  br label %70

61:                                               ; preds = %52
  %62 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %63 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %10, align 8
  store i64 %64, i64* %65, align 8
  %66 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %67 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %66, i64 1
  %68 = bitcast %struct.m_tag* %67 to i8*
  %69 = load i8**, i8*** %11, align 8
  store i8* %68, i8** %69, align 8
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %61, %59, %50
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @net_str_id_first_last(i64*, i64*, i32) #1

declare dso_local %struct.m_tag* @m_tag_locate(%struct.TYPE_4__*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
