; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_cond.c_pthread_cond_destroy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_cond.c_pthread_cond_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_COND_INITIALIZER = common dso_local global %struct.TYPE_7__* null, align 8
@pte_cond_list_lock = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@pte_cond_list_head = common dso_local global %struct.TYPE_7__* null, align 8
@pte_cond_list_tail = common dso_local global %struct.TYPE_7__* null, align 8
@pte_cond_test_init_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_cond_destroy(%struct.TYPE_7__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__**, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %9 = icmp eq %struct.TYPE_7__** %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %2, align 4
  br label %154

16:                                               ; preds = %10
  %17 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PTHREAD_COND_INITIALIZER, align 8
  %20 = icmp ne %struct.TYPE_7__* %18, %19
  br i1 %20, label %21, label %124

21:                                               ; preds = %16
  %22 = load i32, i32* @pte_cond_list_lock, align 4
  %23 = call i32 @pte_osMutexLock(i32 %22)
  %24 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %4, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 6
  %28 = call i64 @sem_wait(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @errno, align 4
  store i32 %31, i32* %2, align 4
  br label %154

32:                                               ; preds = %21
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  %35 = call i32 @pthread_mutex_trylock(i32* %34)
  store i32 %35, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 6
  %40 = call i64 @sem_post(i32* %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %154

42:                                               ; preds = %32
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %42
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 6
  %53 = call i64 @sem_post(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @errno, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %50
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  %60 = call i32 @pthread_mutex_unlock(i32* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @EBUSY, align 4
  store i32 %61, i32* %7, align 4
  br label %121

62:                                               ; preds = %42
  %63 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %63, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 6
  %66 = call i64 @sem_destroy(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @errno, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %62
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 5
  %73 = call i64 @sem_destroy(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @errno, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %70
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  %80 = call i32 @pthread_mutex_unlock(i32* %79)
  store i32 %80, i32* %7, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 4
  %85 = call i32 @pthread_mutex_destroy(i32* %84)
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %82, %77
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pte_cond_list_head, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = icmp eq %struct.TYPE_7__* %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** @pte_cond_list_head, align 8
  br label %102

94:                                               ; preds = %86
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %101, align 8
  br label %102

102:                                              ; preds = %94, %90
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pte_cond_list_tail, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = icmp eq %struct.TYPE_7__* %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  store %struct.TYPE_7__* %109, %struct.TYPE_7__** @pte_cond_list_tail, align 8
  br label %118

110:                                              ; preds = %102
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  store %struct.TYPE_7__* %113, %struct.TYPE_7__** %117, align 8
  br label %118

118:                                              ; preds = %110, %106
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = call i32 @free(%struct.TYPE_7__* %119)
  br label %121

121:                                              ; preds = %118, %57
  %122 = load i32, i32* @pte_cond_list_lock, align 4
  %123 = call i32 @pte_osMutexUnlock(i32 %122)
  br label %138

124:                                              ; preds = %16
  %125 = load i32, i32* @pte_cond_test_init_lock, align 4
  %126 = call i32 @pte_osMutexLock(i32 %125)
  %127 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PTHREAD_COND_INITIALIZER, align 8
  %130 = icmp eq %struct.TYPE_7__* %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %132, align 8
  br label %135

133:                                              ; preds = %124
  %134 = load i32, i32* @EBUSY, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = load i32, i32* @pte_cond_test_init_lock, align 4
  %137 = call i32 @pte_osMutexUnlock(i32 %136)
  br label %138

138:                                              ; preds = %135, %121
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32, i32* %5, align 4
  br label %152

143:                                              ; preds = %138
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i32, i32* %6, align 4
  br label %150

148:                                              ; preds = %143
  %149 = load i32, i32* %7, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  br label %152

152:                                              ; preds = %150, %141
  %153 = phi i32 [ %142, %141 ], [ %151, %150 ]
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %152, %37, %30, %14
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @pte_osMutexLock(i32) #1

declare dso_local i64 @sem_wait(i32*) #1

declare dso_local i32 @pthread_mutex_trylock(i32*) #1

declare dso_local i64 @sem_post(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @sem_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @pte_osMutexUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
