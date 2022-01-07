; ModuleID = '/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_rwlock_timedwrlock.c_pthread_rwlock_timedwrlock.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_rwlock_timedwrlock.c_pthread_rwlock_timedwrlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.timespec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_RWLOCK_INITIALIZER = common dso_local global %struct.TYPE_5__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@PTW32_RWLOCK_MAGIC = common dso_local global i64 0, align 8
@ptw32_rwlock_cancelwrwait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_rwlock_timedwrlock(%struct.TYPE_5__** %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %8 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %9 = icmp eq %struct.TYPE_5__** %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %138

16:                                               ; preds = %10
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PTHREAD_RWLOCK_INITIALIZER, align 8
  %20 = icmp eq %struct.TYPE_5__* %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %23 = call i32 @ptw32_rwlock_check_need_init(%struct.TYPE_5__** %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @EBUSY, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %138

32:                                               ; preds = %26, %21
  br label %33

33:                                               ; preds = %32, %16
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %7, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PTW32_RWLOCK_MAGIC, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  br label %138

43:                                               ; preds = %33
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 6
  %46 = load %struct.timespec*, %struct.timespec** %5, align 8
  %47 = call i32 @pthread_mutex_timedlock(i32* %45, %struct.timespec* %46)
  store i32 %47, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %138

51:                                               ; preds = %43
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load %struct.timespec*, %struct.timespec** %5, align 8
  %55 = call i32 @pthread_mutex_timedlock(i32* %53, %struct.timespec* %54)
  store i32 %55, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 6
  %60 = call i32 @pthread_mutex_unlock(i32* %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %138

62:                                               ; preds = %51
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %128

67:                                               ; preds = %62
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 5
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %72, %67
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %127

87:                                               ; preds = %82
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 0, %90
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @ptw32_rwlock_cancelwrwait, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %96 = bitcast %struct.TYPE_5__* %95 to i8*
  %97 = call i32 @pthread_cleanup_push(i32 %94, i8* %96)
  br label %98

98:                                               ; preds = %113, %87
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  %103 = load %struct.timespec*, %struct.timespec** %5, align 8
  %104 = call i32 @pthread_cond_timedwait(i32* %100, i32* %102, %struct.timespec* %103)
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %111, 0
  br label %113

113:                                              ; preds = %108, %105
  %114 = phi i1 [ false, %105 ], [ %112, %108 ]
  br i1 %114, label %98, label %115

115:                                              ; preds = %113
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 1, i32 0
  %120 = call i32 @pthread_cleanup_pop(i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  store i32 0, i32* %125, align 8
  br label %126

126:                                              ; preds = %123, %115
  br label %127

127:                                              ; preds = %126, %82
  br label %128

128:                                              ; preds = %127, %62
  %129 = load i32, i32* %6, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %133, align 8
  br label %136

136:                                              ; preds = %131, %128
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %57, %49, %41, %30, %14
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @ptw32_rwlock_check_need_init(%struct.TYPE_5__**) #1

declare dso_local i32 @pthread_mutex_timedlock(i32*, %struct.timespec*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_cleanup_push(i32, i8*) #1

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

declare dso_local i32 @pthread_cleanup_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
