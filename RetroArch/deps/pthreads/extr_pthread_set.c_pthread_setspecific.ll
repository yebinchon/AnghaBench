; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_set.c_pthread_setspecific.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_set.c_pthread_setspecific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_12__* }

@pte_selfThreadKey = common dso_local global %struct.TYPE_12__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@PTE_OS_OK = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_setspecific(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pte_selfThreadKey, align 8
  %13 = icmp ne %struct.TYPE_12__* %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = call %struct.TYPE_11__* (...) @pthread_self()
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %6, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = icmp eq %struct.TYPE_11__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @ENOENT, align 4
  store i32 %19, i32* %3, align 4
  br label %113

20:                                               ; preds = %14
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pte_selfThreadKey, align 8
  %23 = call i64 @pthread_getspecific(%struct.TYPE_12__* %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %8, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = icmp eq %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @ENOENT, align 4
  store i32 %31, i32* %3, align 4
  br label %113

32:                                               ; preds = %27
  %33 = load i8*, i8** %5, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_11__**
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %6, align 8
  br label %38

36:                                               ; preds = %21
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %6, align 8
  br label %38

38:                                               ; preds = %36, %32
  br label %39

39:                                               ; preds = %38, %20
  store i32 0, i32* %7, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = icmp ne %struct.TYPE_12__* %40, null
  br i1 %41, label %42, label %111

42:                                               ; preds = %39
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = icmp ne %struct.TYPE_11__* %43, null
  br i1 %44, label %45, label %96

45:                                               ; preds = %42
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %96

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %96

53:                                               ; preds = %50
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = call i64 @pthread_mutex_lock(i32* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %53
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %10, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = call i64 @pthread_mutex_lock(i32* %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %9, align 8
  br label %67

67:                                               ; preds = %77, %58
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = icmp ne %struct.TYPE_13__* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = icmp eq %struct.TYPE_12__* %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %81

77:                                               ; preds = %70
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %9, align 8
  br label %67

81:                                               ; preds = %76, %67
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %83 = icmp eq %struct.TYPE_13__* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = call i32 @pte_tkAssocCreate(%struct.TYPE_11__* %85, %struct.TYPE_12__* %86)
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %84, %81
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = call i32 @pthread_mutex_unlock(i32* %90)
  br label %92

92:                                               ; preds = %88, %53
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = call i32 @pthread_mutex_unlock(i32* %94)
  br label %96

96:                                               ; preds = %92, %50, %45, %42
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = call i64 @pte_osTlsSetValue(i32 %102, i8* %103)
  %105 = load i64, i64* @PTE_OS_OK, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i32, i32* @EAGAIN, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %107, %99
  br label %110

110:                                              ; preds = %109, %96
  br label %111

111:                                              ; preds = %110, %39
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %30, %18
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.TYPE_11__* @pthread_self(...) #1

declare dso_local i64 @pthread_getspecific(%struct.TYPE_12__*) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pte_tkAssocCreate(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @pte_osTlsSetValue(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
