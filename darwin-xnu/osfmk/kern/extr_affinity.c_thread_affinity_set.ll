; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_affinity.c_thread_affinity_set.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_affinity.c_thread_affinity_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_26__*, i32, %struct.TYPE_27__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"thread_affinity_set(%p,%u)\0A\00", align 1
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@KERN_TERMINATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"thread_affinity_set(%p,%u) removing from aset %p\0A\00", align 1
@THREAD_AFFINITY_TAG_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"thread_affinity_set(%p,%u) found aset %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"thread_affinity_set(%p,%u) (re-)using aset %p\0A\00", align 1
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_affinity_set(%struct.TYPE_24__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %9, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i8*, %struct.TYPE_24__*, i32, ...) @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %10, i32 %11)
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %16 = call i32 @task_lock(%struct.TYPE_27__* %15)
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  store %struct.TYPE_25__* %21, %struct.TYPE_25__** %8, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %23 = icmp eq %struct.TYPE_25__* %22, null
  br i1 %23, label %24, label %57

24:                                               ; preds = %2
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  %28 = call i32 @task_unlock(%struct.TYPE_27__* %27)
  %29 = call %struct.TYPE_25__* (...) @affinity_space_alloc()
  store %struct.TYPE_25__* %29, %struct.TYPE_25__** %9, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %31 = icmp eq %struct.TYPE_25__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %33, i32* %3, align 4
  br label %162

34:                                               ; preds = %24
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %36, align 8
  %38 = call i32 @task_lock(%struct.TYPE_27__* %37)
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %42, align 8
  %44 = icmp eq %struct.TYPE_25__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 0
  store %struct.TYPE_25__* %46, %struct.TYPE_25__** %50, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %9, align 8
  br label %51

51:                                               ; preds = %45, %34
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %55, align 8
  store %struct.TYPE_25__* %56, %struct.TYPE_25__** %8, align 8
  br label %57

57:                                               ; preds = %51, %2
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %59, align 8
  %61 = call i32 @task_unlock(%struct.TYPE_27__* %60)
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %63 = icmp ne %struct.TYPE_25__* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %66 = call i32 @affinity_space_free(%struct.TYPE_25__* %65)
  br label %67

67:                                               ; preds = %64, %57
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %69 = call i32 @thread_mtx_lock(%struct.TYPE_24__* %68)
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %67
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %76 = call i32 @thread_mtx_unlock(%struct.TYPE_24__* %75)
  %77 = load i32, i32* @KERN_TERMINATED, align 4
  store i32 %77, i32* %3, align 4
  br label %162

78:                                               ; preds = %67
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = call i32 @lck_mtx_lock(i32* %80)
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %83, align 8
  store %struct.TYPE_26__* %84, %struct.TYPE_26__** %6, align 8
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %86 = icmp ne %struct.TYPE_26__* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %78
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %91 = call i32 (i8*, %struct.TYPE_24__*, i32, ...) @DBG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_24__* %88, i32 %89, %struct.TYPE_26__* %90)
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %94 = call %struct.TYPE_26__* @affinity_set_remove(%struct.TYPE_26__* %92, %struct.TYPE_24__* %93)
  store %struct.TYPE_26__* %94, %struct.TYPE_26__** %7, align 8
  br label %95

95:                                               ; preds = %87, %78
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @THREAD_AFFINITY_TAG_NULL, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %142

99:                                               ; preds = %95
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call %struct.TYPE_26__* @affinity_set_find(%struct.TYPE_25__* %100, i32 %101)
  store %struct.TYPE_26__* %102, %struct.TYPE_26__** %6, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %104 = icmp ne %struct.TYPE_26__* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %109 = call i32 (i8*, %struct.TYPE_24__*, i32, ...) @DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_24__* %106, i32 %107, %struct.TYPE_26__* %108)
  br label %138

110:                                              ; preds = %99
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %112 = icmp ne %struct.TYPE_26__* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_26__* %114, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %7, align 8
  br label %127

115:                                              ; preds = %110
  %116 = call %struct.TYPE_26__* (...) @affinity_set_alloc()
  store %struct.TYPE_26__* %116, %struct.TYPE_26__** %6, align 8
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %118 = icmp eq %struct.TYPE_26__* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  %122 = call i32 @lck_mtx_unlock(i32* %121)
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %124 = call i32 @thread_mtx_unlock(%struct.TYPE_24__* %123)
  %125 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %125, i32* %3, align 4
  br label %162

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %113
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %131 = call i32 (i8*, %struct.TYPE_24__*, i32, ...) @DBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_24__* %128, i32 %129, %struct.TYPE_26__* %130)
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %137 = call i32 @affinity_set_place(%struct.TYPE_25__* %135, %struct.TYPE_26__* %136)
  br label %138

138:                                              ; preds = %127, %105
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %141 = call i32 @affinity_set_add(%struct.TYPE_26__* %139, %struct.TYPE_24__* %140)
  br label %142

142:                                              ; preds = %138, %95
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 0
  %145 = call i32 @lck_mtx_unlock(i32* %144)
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %147 = call i32 @thread_mtx_unlock(%struct.TYPE_24__* %146)
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %149 = icmp ne %struct.TYPE_26__* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %152 = call i32 @affinity_set_free(%struct.TYPE_26__* %151)
  br label %153

153:                                              ; preds = %150, %142
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %155 = call %struct.TYPE_24__* (...) @current_thread()
  %156 = icmp eq %struct.TYPE_24__* %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %159 = call i32 @thread_block(i32 %158)
  br label %160

160:                                              ; preds = %157, %153
  %161 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %119, %74, %32
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @DBG(i8*, %struct.TYPE_24__*, i32, ...) #1

declare dso_local i32 @task_lock(%struct.TYPE_27__*) #1

declare dso_local i32 @task_unlock(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_25__* @affinity_space_alloc(...) #1

declare dso_local i32 @affinity_space_free(%struct.TYPE_25__*) #1

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_24__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_24__*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local %struct.TYPE_26__* @affinity_set_remove(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_26__* @affinity_set_find(%struct.TYPE_25__*, i32) #1

declare dso_local %struct.TYPE_26__* @affinity_set_alloc(...) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @affinity_set_place(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i32 @affinity_set_add(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local i32 @affinity_set_free(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_24__* @current_thread(...) #1

declare dso_local i32 @thread_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
