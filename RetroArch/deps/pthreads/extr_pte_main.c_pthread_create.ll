; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte_main.c_pthread_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte_main.c_pthread_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64, i32, i32*, i32, i32 }
%struct.TYPE_11__ = type { i8* (i8*)*, i8*, i32* }

@EAGAIN = common dso_local global i32 0, align 4
@PTE_TRUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_INHERIT_SCHED = common dso_local global i64 0, align 8
@PTHREAD_STACK_MIN = common dso_local global i64 0, align 8
@PThreadStateInitial = common dso_local global i32 0, align 4
@PThreadStateSuspended = common dso_local global i32 0, align 4
@pte_threadStart = common dso_local global i32 0, align 4
@PTE_OS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_create(i32** %0, %struct.TYPE_9__** %1, i8* (i8*)* %2, i8* %3) #0 !callback !2 {
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca i8* (i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %6, align 8
  store i8* (i8*)* %2, i8* (i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %19 = load i32, i32* @EAGAIN, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @PTE_TRUE, align 4
  store i32 %20, i32* %12, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  store i32 0, i32* %15, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %18, align 8
  %21 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %22 = icmp ne %struct.TYPE_9__** %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %18, align 8
  br label %26

26:                                               ; preds = %23, %4
  %27 = call i32* (...) @pte_new()
  store i32* %27, i32** %9, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %135

30:                                               ; preds = %26
  %31 = load i32*, i32** %9, align 8
  %32 = bitcast i32* %31 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %10, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %15, align 4
  %36 = call i64 @malloc(i32 24)
  %37 = inttoptr i64 %36 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %13, align 8
  %38 = icmp eq %struct.TYPE_11__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %135

40:                                               ; preds = %30
  %41 = load i32*, i32** %9, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = load i8* (i8*)*, i8* (i8*)** %7, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  store i8* (i8*)* %44, i8* (i8*)** %46, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %87

52:                                               ; preds = %40
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %14, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32 (...) @pte_osThreadGetMaxPriority()
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %15, align 4
  %70 = call i32 (...) @pte_osThreadGetMinPriority()
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68, %52
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %11, align 4
  br label %135

74:                                               ; preds = %68
  %75 = load i64, i64* @PTHREAD_INHERIT_SCHED, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = call i32* (...) @pthread_self()
  store i32* %81, i32** %16, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = bitcast i32* %82 to %struct.TYPE_10__*
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %80, %74
  br label %89

87:                                               ; preds = %40
  %88 = load i64, i64* @PTHREAD_STACK_MIN, align 8
  store i64 %88, i64* %14, align 8
  br label %89

89:                                               ; preds = %87, %86
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @PThreadStateInitial, align 4
  br label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @PThreadStateSuspended, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  store i32* null, i32** %101, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = call i32 @pthread_mutex_lock(i32* %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %96
  %108 = load i32, i32* %15, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = call i32 @pthread_mutex_unlock(i32* %112)
  br label %114

114:                                              ; preds = %107, %96
  %115 = load i32, i32* @pte_threadStart, align 4
  %116 = load i64, i64* %14, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = call i64 @pte_osThreadCreate(i32 %115, i64 %116, i32 %117, %struct.TYPE_11__* %118, i64* %120)
  store i64 %121, i64* %17, align 8
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* @PTE_OS_OK, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %114
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @pte_osThreadStart(i64 %128)
  store i32 0, i32* %11, align 4
  br label %134

130:                                              ; preds = %114
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = load i32, i32* @EAGAIN, align 4
  store i32 %133, i32* %11, align 4
  br label %135

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %130, %72, %39, %29
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @pte_threadDestroy(i32* %139)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %142 = icmp ne %struct.TYPE_11__* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %145 = call i32 @free(%struct.TYPE_11__* %144)
  br label %146

146:                                              ; preds = %143, %138
  br label %154

147:                                              ; preds = %135
  %148 = load i32**, i32*** %5, align 8
  %149 = icmp ne i32** %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32*, i32** %9, align 8
  %152 = load i32**, i32*** %5, align 8
  store i32* %151, i32** %152, align 8
  br label %153

153:                                              ; preds = %150, %147
  br label %154

154:                                              ; preds = %153, %146
  %155 = load i32, i32* %11, align 4
  ret i32 %155
}

declare dso_local i32* @pte_new(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @pte_osThreadGetMaxPriority(...) #1

declare dso_local i32 @pte_osThreadGetMinPriority(...) #1

declare dso_local i32* @pthread_self(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @pte_osThreadCreate(i32, i64, i32, %struct.TYPE_11__*, i64*) #1

declare dso_local i32 @pte_osThreadStart(i64) #1

declare dso_local i32 @pte_threadDestroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
