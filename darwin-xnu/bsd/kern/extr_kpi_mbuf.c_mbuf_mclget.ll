; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_mclget.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_mclget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@M_EXT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbuf_mclget(i32 %0, i32 %1, %struct.TYPE_7__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__** %2, %struct.TYPE_7__*** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %11 = icmp eq %struct.TYPE_7__** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i64, i64* @EINVAL, align 8
  store i64 %13, i64* %4, align 8
  br label %65

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = icmp eq %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %22 = call i64 @mbuf_get(i32 %19, i32 %20, %struct.TYPE_7__** %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %4, align 8
  br label %65

27:                                               ; preds = %18
  store i32 1, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %14
  %29 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.TYPE_7__* @m_mclget(%struct.TYPE_7__* %30, i32 %31)
  %33 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %28
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @M_EXT, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = call i32 @mbuf_free(%struct.TYPE_7__* %46)
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %48, align 8
  br label %49

49:                                               ; preds = %44, %36, %28
  %50 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = icmp eq %struct.TYPE_7__* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @M_EXT, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53, %49
  %62 = load i64, i64* @ENOMEM, align 8
  store i64 %62, i64* %8, align 8
  br label %63

63:                                               ; preds = %61, %53
  %64 = load i64, i64* %8, align 8
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %63, %25, %12
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

declare dso_local i64 @mbuf_get(i32, i32, %struct.TYPE_7__**) #1

declare dso_local %struct.TYPE_7__* @m_mclget(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mbuf_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
