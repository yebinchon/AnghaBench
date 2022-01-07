; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_data_length.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_data_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__, i64, %struct.mbuf* }
%struct.TYPE_2__ = type { i64 }

@M_PKTHDR = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cfil_data_length: no M_PKTHDR\00", align 1
@MSIZE = common dso_local global i64 0, align 8
@M_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, i32*, i32*)* @cfil_data_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfil_data_length(%struct.mbuf* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %12, %struct.mbuf** %8, align 8
  br label %13

13:                                               ; preds = %25, %3
  %14 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %15 = icmp ne %struct.mbuf* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @M_PKTHDR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %29

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 3
  %28 = load %struct.mbuf*, %struct.mbuf** %27, align 8
  store %struct.mbuf* %28, %struct.mbuf** %8, align 8
  br label %13

29:                                               ; preds = %23, %13
  %30 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %31 = icmp eq %struct.mbuf* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @LOG_ERR, align 4
  %34 = call i32 @CFIL_LOG(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %99

35:                                               ; preds = %29
  %36 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %36, %struct.mbuf** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32*, i32** %7, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %44 = call i32 @m_length(%struct.mbuf* %43)
  store i32 %44, i32* %4, align 4
  br label %99

45:                                               ; preds = %39, %35
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %46 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %46, %struct.mbuf** %8, align 8
  br label %47

47:                                               ; preds = %81, %45
  %48 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %49 = icmp ne %struct.mbuf* %48, null
  br i1 %49, label %50, label %85

50:                                               ; preds = %47
  %51 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %52 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  %60 = load i64, i64* @MSIZE, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %10, align 4
  %65 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %66 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @M_EXT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %50
  %72 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %73 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %71, %50
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 3
  %84 = load %struct.mbuf*, %struct.mbuf** %83, align 8
  store %struct.mbuf* %84, %struct.mbuf** %8, align 8
  br label %47

85:                                               ; preds = %47
  %86 = load i32*, i32** %6, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %10, align 4
  %90 = load i32*, i32** %6, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32*, i32** %7, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = load i32*, i32** %7, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %42, %32
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @CFIL_LOG(i32, i8*) #1

declare dso_local i32 @m_length(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
