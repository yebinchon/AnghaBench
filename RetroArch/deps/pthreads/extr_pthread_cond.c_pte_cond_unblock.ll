; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_cond.c_pte_cond_unblock.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_cond.c_pte_cond_unblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_COND_INITIALIZER = common dso_local global %struct.TYPE_4__* null, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__**, i32)* @pte_cond_unblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pte_cond_unblock(%struct.TYPE_4__** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %10 = icmp eq %struct.TYPE_4__** %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp eq %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %142

17:                                               ; preds = %11
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %7, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PTHREAD_COND_INITIALIZER, align 8
  %22 = icmp eq %struct.TYPE_4__* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %142

24:                                               ; preds = %17
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  %27 = call i32 @pthread_mutex_lock(i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %142

31:                                               ; preds = %24
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 0, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 0, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = call i32 @pthread_mutex_unlock(i32* %43)
  store i32 %44, i32* %3, align 4
  br label %142

45:                                               ; preds = %36
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  br label %67

58:                                               ; preds = %45
  store i32 1, i32* %8, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %58, %48
  br label %126

68:                                               ; preds = %31
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %121

76:                                               ; preds = %68
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  %79 = call i64 @sem_wait(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* @errno, align 4
  store i32 %82, i32* %6, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = call i32 @pthread_mutex_unlock(i32* %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %142

87:                                               ; preds = %76
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 0, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %92, %87
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  store i32 %108, i32* %8, align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  store i32 0, i32* %112, align 4
  br label %120

113:                                              ; preds = %102
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i32 1, i32* %115, align 4
  store i32 1, i32* %8, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %113, %105
  br label %125

121:                                              ; preds = %68
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 4
  %124 = call i32 @pthread_mutex_unlock(i32* %123)
  store i32 %124, i32* %3, align 4
  br label %142

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125, %67
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  %129 = call i32 @pthread_mutex_unlock(i32* %128)
  store i32 %129, i32* %6, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 3
  %134 = load i32, i32* %8, align 4
  %135 = call i64 @sem_post_multiple(i32* %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* @errno, align 4
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %137, %131
  br label %140

140:                                              ; preds = %139, %126
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %121, %81, %41, %29, %23, %15
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @sem_wait(i32*) #1

declare dso_local i64 @sem_post_multiple(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
