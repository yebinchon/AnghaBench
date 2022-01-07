; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mcl_audit_buf2mca.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mcl_audit_buf2mca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32** }

@maxclaudit = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@NMBPG = common dso_local global i64 0, align 8
@mclaudit = common dso_local global %struct.TYPE_2__* null, align 8
@NCLPG = common dso_local global i64 0, align 8
@NBCLPG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*)* @mcl_audit_buf2mca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mcl_audit_buf2mca(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @MTOPG(i32* %9)
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @maxclaudit, align 4
  %13 = icmp slt i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @VERIFY(i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @m_maxsize(i32 %17)
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = call i32 @MIN(i32 %18, i32 %19)
  %21 = call i32 @IS_P2ALIGNED(i32* %16, i32 %20)
  %22 = call i32 @VERIFY(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @PGTOM(i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i32, i32* %3, align 4
  switch i32 %25, label %95 [
    i32 128, label %26
    i32 129, label %46
    i32 130, label %66
    i32 131, label %86
  ]

26:                                               ; preds = %2
  %27 = load i8*, i8** %8, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @MBPAGEIDX(i8* %27, i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i64, i64* @NMBPG, align 8
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i32 %30, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @VERIFY(i32 %34)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mclaudit, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %5, align 8
  br label %97

46:                                               ; preds = %2
  %47 = load i8*, i8** %8, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @CLPAGEIDX(i8* %47, i32* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i64, i64* @NCLPG, align 8
  %52 = trunc i64 %51 to i32
  %53 = icmp slt i32 %50, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @VERIFY(i32 %54)
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mclaudit, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %5, align 8
  br label %97

66:                                               ; preds = %2
  %67 = load i8*, i8** %8, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @BCLPAGEIDX(i8* %67, i32* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i64, i64* @NBCLPG, align 8
  %72 = trunc i64 %71 to i32
  %73 = icmp slt i32 %70, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @VERIFY(i32 %74)
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mclaudit, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %5, align 8
  br label %97

86:                                               ; preds = %2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mclaudit, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32**, i32*** %91, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 0
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %5, align 8
  br label %97

95:                                               ; preds = %2
  %96 = call i32 @VERIFY(i32 0)
  br label %97

97:                                               ; preds = %95, %86, %66, %46, %26
  %98 = load i32*, i32** %5, align 8
  ret i32* %98
}

declare dso_local i32 @MTOPG(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @IS_P2ALIGNED(i32*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @m_maxsize(i32) #1

declare dso_local i8* @PGTOM(i32) #1

declare dso_local i32 @MBPAGEIDX(i8*, i32*) #1

declare dso_local i32 @CLPAGEIDX(i8*, i32*) #1

declare dso_local i32 @BCLPAGEIDX(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
