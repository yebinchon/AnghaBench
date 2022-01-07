; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_stat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32, i32 }
%struct.stat64 = type { i32, i8*, i32 }
%struct.stat = type { i32, i8*, i32 }

@KQ_WORKQ = common dso_local global i32 0, align 4
@KQ_KEV_QOS = common dso_local global i32 0, align 4
@KQ_KEV64 = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kqueue_stat(%struct.kqueue* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kqueue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat64*, align 8
  %10 = alloca %struct.stat*, align 8
  store %struct.kqueue* %0, %struct.kqueue** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %12 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @KQ_WORKQ, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %20 = call i32 @kqlock(%struct.kqueue* %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %69

23:                                               ; preds = %4
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to %struct.stat64*
  store %struct.stat64* %25, %struct.stat64** %9, align 8
  %26 = load %struct.stat64*, %struct.stat64** %9, align 8
  %27 = bitcast %struct.stat64* %26 to i8*
  %28 = call i32 @bzero(i8* %27, i32 24)
  %29 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %30 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.stat64*, %struct.stat64** %9, align 8
  %33 = getelementptr inbounds %struct.stat64, %struct.stat64* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %35 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @KQ_KEV_QOS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %23
  %41 = load %struct.stat64*, %struct.stat64** %9, align 8
  %42 = getelementptr inbounds %struct.stat64, %struct.stat64* %41, i32 0, i32 0
  store i32 4, i32* %42, align 8
  br label %65

43:                                               ; preds = %23
  %44 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %45 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @KQ_KEV64, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.stat64*, %struct.stat64** %9, align 8
  %52 = getelementptr inbounds %struct.stat64, %struct.stat64* %51, i32 0, i32 0
  store i32 4, i32* %52, align 8
  br label %64

53:                                               ; preds = %43
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @IS_64BIT_PROCESS(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.stat64*, %struct.stat64** %9, align 8
  %59 = getelementptr inbounds %struct.stat64, %struct.stat64* %58, i32 0, i32 0
  store i32 4, i32* %59, align 8
  br label %63

60:                                               ; preds = %53
  %61 = load %struct.stat64*, %struct.stat64** %9, align 8
  %62 = getelementptr inbounds %struct.stat64, %struct.stat64* %61, i32 0, i32 0
  store i32 4, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %50
  br label %65

65:                                               ; preds = %64, %40
  %66 = load i8*, i8** @S_IFIFO, align 8
  %67 = load %struct.stat64*, %struct.stat64** %9, align 8
  %68 = getelementptr inbounds %struct.stat64, %struct.stat64* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  br label %115

69:                                               ; preds = %4
  %70 = load i8*, i8** %6, align 8
  %71 = bitcast i8* %70 to %struct.stat*
  store %struct.stat* %71, %struct.stat** %10, align 8
  %72 = load %struct.stat*, %struct.stat** %10, align 8
  %73 = bitcast %struct.stat* %72 to i8*
  %74 = call i32 @bzero(i8* %73, i32 24)
  %75 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %76 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.stat*, %struct.stat** %10, align 8
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %81 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @KQ_KEV_QOS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %69
  %87 = load %struct.stat*, %struct.stat** %10, align 8
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %87, i32 0, i32 0
  store i32 4, i32* %88, align 8
  br label %111

89:                                               ; preds = %69
  %90 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %91 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @KQ_KEV64, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load %struct.stat*, %struct.stat** %10, align 8
  %98 = getelementptr inbounds %struct.stat, %struct.stat* %97, i32 0, i32 0
  store i32 4, i32* %98, align 8
  br label %110

99:                                               ; preds = %89
  %100 = load i32, i32* %8, align 4
  %101 = call i64 @IS_64BIT_PROCESS(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.stat*, %struct.stat** %10, align 8
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %104, i32 0, i32 0
  store i32 4, i32* %105, align 8
  br label %109

106:                                              ; preds = %99
  %107 = load %struct.stat*, %struct.stat** %10, align 8
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %107, i32 0, i32 0
  store i32 4, i32* %108, align 8
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %96
  br label %111

111:                                              ; preds = %110, %86
  %112 = load i8*, i8** @S_IFIFO, align 8
  %113 = load %struct.stat*, %struct.stat** %10, align 8
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %111, %65
  %116 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %117 = call i32 @kqunlock(%struct.kqueue* %116)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kqlock(%struct.kqueue*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @IS_64BIT_PROCESS(i32) #1

declare dso_local i32 @kqunlock(%struct.kqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
