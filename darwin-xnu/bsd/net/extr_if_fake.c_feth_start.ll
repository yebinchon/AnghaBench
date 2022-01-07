; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_fake.c_feth_start.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_fake.c_feth_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.TYPE_3__ = type { %struct.mbuf*, i32*, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"if_fake: start is busy\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @feth_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @feth_start(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mbuf*, align 8
  store i32* %0, i32** %2, align 8
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %9 = call i32 (...) @feth_lock()
  %10 = load i32*, i32** %2, align 8
  %11 = call %struct.TYPE_3__* @ifnet_get_if_fake(i32* %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %4, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = call i32 (...) @feth_unlock()
  %18 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %120

19:                                               ; preds = %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %6, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %22, %19
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.mbuf*, %struct.mbuf** %31, align 8
  store %struct.mbuf* %32, %struct.mbuf** %7, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %34 = icmp ne %struct.mbuf* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %40 = call %struct.mbuf* @copy_mbuf(%struct.mbuf* %39)
  store %struct.mbuf* %40, %struct.mbuf** %3, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %42 = icmp eq %struct.mbuf* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (...) @feth_unlock()
  br label %120

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %35
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %48, align 8
  %49 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %50 = call i32 @m_freem(%struct.mbuf* %49)
  store %struct.mbuf* null, %struct.mbuf** %7, align 8
  br label %51

51:                                               ; preds = %46, %29
  %52 = load i64, i64* @TRUE, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = call i32 (...) @feth_unlock()
  store %struct.mbuf* null, %struct.mbuf** %8, align 8
  br label %56

56:                                               ; preds = %90, %51
  %57 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %58 = icmp ne %struct.mbuf* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32*, i32** %6, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32*, i32** %2, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @feth_output_common(i32* %64, %struct.mbuf* %65, i32* %66, i32 %67)
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %69

69:                                               ; preds = %59, %56
  %70 = load i32*, i32** %2, align 8
  %71 = call i64 @ifnet_dequeue(i32* %70, %struct.mbuf** %7)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %91

74:                                               ; preds = %69
  %75 = load i32*, i32** %6, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %79 = call i32 @m_freem(%struct.mbuf* %78)
  br label %90

80:                                               ; preds = %74
  %81 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %82 = call %struct.mbuf* @copy_mbuf(%struct.mbuf* %81)
  store %struct.mbuf* %82, %struct.mbuf** %3, align 8
  %83 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %84 = icmp eq %struct.mbuf* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %86, %struct.mbuf** %8, align 8
  br label %91

87:                                               ; preds = %80
  %88 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %89 = call i32 @m_freem(%struct.mbuf* %88)
  br label %90

90:                                               ; preds = %87, %77
  br label %56

91:                                               ; preds = %85, %73
  store i32* null, i32** %6, align 8
  %92 = call i32 (...) @feth_lock()
  %93 = load i32*, i32** %2, align 8
  %94 = call %struct.TYPE_3__* @ifnet_get_if_fake(i32* %93)
  store %struct.TYPE_3__* %94, %struct.TYPE_3__** %4, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = icmp ne %struct.TYPE_3__* %95, null
  br i1 %96, label %97, label %113

97:                                               ; preds = %91
  %98 = load i64, i64* @FALSE, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  %101 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %102 = icmp ne %struct.mbuf* %101, null
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store %struct.mbuf* %109, %struct.mbuf** %111, align 8
  store %struct.mbuf* null, %struct.mbuf** %8, align 8
  br label %112

112:                                              ; preds = %108, %103, %97
  br label %113

113:                                              ; preds = %112, %91
  %114 = call i32 (...) @feth_unlock()
  %115 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %116 = icmp ne %struct.mbuf* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %119 = call i32 @m_freem(%struct.mbuf* %118)
  br label %120

120:                                              ; preds = %16, %43, %117, %113
  ret void
}

declare dso_local i32 @feth_lock(...) #1

declare dso_local %struct.TYPE_3__* @ifnet_get_if_fake(i32*) #1

declare dso_local i32 @feth_unlock(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.mbuf* @copy_mbuf(%struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @feth_output_common(i32*, %struct.mbuf*, i32*, i32) #1

declare dso_local i64 @ifnet_dequeue(i32*, %struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
