; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_expand.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, i32, %struct.mbuf*, i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@M_EXT = common dso_local global i32 0, align 4
@M_DONTWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.mbuf*, %struct.mbuf**)* @m_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @m_expand(%struct.mbuf* %0, %struct.mbuf** %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf**, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %4, align 8
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  store %struct.mbuf** %5, %struct.mbuf*** %6, align 8
  %12 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %13 = call i32 @MBUF_MULTIPAGES(%struct.mbuf* %12)
  %14 = call i32 @VERIFY(i32 %13)
  %15 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 3
  %17 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %18 = icmp eq %struct.mbuf* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @VERIFY(i32 %19)
  %21 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 4
  %23 = load i8*, i8** %22, align 8
  %24 = ptrtoint i8* %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %29 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  store %struct.mbuf* %28, %struct.mbuf** %29, align 8
  br label %30

30:                                               ; preds = %111, %2
  %31 = load i64, i64* %7, align 8
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = call i64 @IS_P2ALIGNED(i64 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %41, i32* %10, align 4
  br label %66

42:                                               ; preds = %36, %30
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = call i64 @IS_P2ALIGNED(i64 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %42
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = call i64 @P2ROUNDUP(i64 %48, i32 %49)
  %51 = load i64, i64* %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = add i64 %51, %53
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = call i64 @P2ROUNDUP(i64 %57, i32 %58)
  %60 = load i64, i64* %8, align 8
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %10, align 4
  br label %65

63:                                               ; preds = %47, %42
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %63, %56
  br label %66

66:                                               ; preds = %65, %40
  %67 = load i32, i32* %10, align 4
  %68 = icmp ugt i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @VERIFY(i32 %69)
  %71 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %72 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @M_EXT, align 4
  %75 = and i32 %73, %74
  %76 = call i32 @VERIFY(i32 %75)
  %77 = load i64, i64* %8, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %85 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  store %struct.mbuf* %84, %struct.mbuf** %85, align 8
  %86 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* %84, %struct.mbuf** %86, align 8
  %87 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %88 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %87, i32 0, i32 3
  store %struct.mbuf** %88, %struct.mbuf*** %6, align 8
  %89 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %90 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %89, i32 0, i32 3
  store %struct.mbuf* null, %struct.mbuf** %90, align 8
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %7, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sub i32 %96, %95
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %66
  br label %125

101:                                              ; preds = %66
  %102 = load i32, i32* @M_DONTWAIT, align 4
  %103 = load i32, i32* @MT_DATA, align 4
  %104 = call %struct.mbuf* @_M_RETRY(i32 %102, i32 %103)
  store %struct.mbuf* %104, %struct.mbuf** %11, align 8
  %105 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %106 = icmp eq %struct.mbuf* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %109 = call i32 @m_freem(%struct.mbuf* %108)
  %110 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  store %struct.mbuf* null, %struct.mbuf** %110, align 8
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %125

111:                                              ; preds = %101
  %112 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %113 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %116 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %118 = call i32 @m_incref(%struct.mbuf* %117)
  %119 = load i32, i32* @M_EXT, align 4
  %120 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %121 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %124, %struct.mbuf** %3, align 8
  br label %30

125:                                              ; preds = %107, %100
  %126 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %126
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @MBUF_MULTIPAGES(%struct.mbuf*) #1

declare dso_local i64 @IS_P2ALIGNED(i64, i32) #1

declare dso_local i64 @P2ROUNDUP(i64, i32) #1

declare dso_local %struct.mbuf* @_M_RETRY(i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_incref(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
