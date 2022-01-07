; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_load_unixthread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_load_unixthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_command = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i8*, i64, i8*, i32 }

@LOAD_BADMACHO = common dso_local global i64 0, align 8
@LOAD_FAILURE = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global i64 0, align 8
@LOAD_SUCCESS = common dso_local global i64 0, align 8
@MAXSSIZ = common dso_local global i32 0, align 4
@MACH_VM_MIN_ADDRESS = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.thread_command*, i64, i64, %struct.TYPE_5__*)* @load_unixthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_unixthread(%struct.thread_command* %0, i64 %1, i64 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.thread_command*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.thread_command* %0, %struct.thread_command** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.thread_command*, %struct.thread_command** %6, align 8
  %14 = getelementptr inbounds %struct.thread_command, %struct.thread_command* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* @LOAD_BADMACHO, align 8
  store i64 %19, i64* %5, align 8
  br label %135

20:                                               ; preds = %4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* @LOAD_FAILURE, align 8
  store i64 %26, i64* %5, align 8
  br label %135

27:                                               ; preds = %20
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @THREAD_NULL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @LOAD_SUCCESS, align 8
  store i64 %32, i64* %5, align 8
  br label %135

33:                                               ; preds = %27
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.thread_command*, %struct.thread_command** %6, align 8
  %36 = ptrtoint %struct.thread_command* %35 to i64
  %37 = add i64 %36, 4
  %38 = inttoptr i64 %37 to i32*
  %39 = load %struct.thread_command*, %struct.thread_command** %6, align 8
  %40 = getelementptr inbounds %struct.thread_command, %struct.thread_command* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = call i64 @load_threadstack(i64 %34, i32* %38, i32 %44, i8** %12, i32* %11, %struct.TYPE_5__* %45)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @LOAD_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i64, i64* %10, align 8
  store i64 %51, i64* %5, align 8
  br label %135

52:                                               ; preds = %33
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @MAXSSIZ, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i8*, i8** %12, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = sub i64 0, %63
  %68 = getelementptr i8, i8* %66, i64 %67
  store i8* %68, i8** %65, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.thread_command*, %struct.thread_command** %6, align 8
  %71 = ptrtoint %struct.thread_command* %70 to i64
  %72 = add i64 %71, 4
  %73 = inttoptr i64 %72 to i32*
  %74 = load %struct.thread_command*, %struct.thread_command** %6, align 8
  %75 = getelementptr inbounds %struct.thread_command, %struct.thread_command* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = sub i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i64 @load_threadentry(i64 %69, i32* %73, i32 %79, i8** %12)
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @LOAD_SUCCESS, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %59
  %85 = load i64, i64* %10, align 8
  store i64 %85, i64* %5, align 8
  br label %135

86:                                               ; preds = %59
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** @MACH_VM_MIN_ADDRESS, align 8
  %96 = icmp ne i8* %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91, %86
  %98 = load i64, i64* @LOAD_FAILURE, align 8
  store i64 %98, i64* %5, align 8
  br label %135

99:                                               ; preds = %91
  %100 = load i8*, i8** %12, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr i8, i8* %106, i64 %103
  store i8* %107, i8** %105, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load %struct.thread_command*, %struct.thread_command** %6, align 8
  %110 = ptrtoint %struct.thread_command* %109 to i64
  %111 = add i64 %110, 4
  %112 = inttoptr i64 %111 to i32*
  %113 = load %struct.thread_command*, %struct.thread_command** %6, align 8
  %114 = getelementptr inbounds %struct.thread_command, %struct.thread_command* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = sub i64 %116, 4
  %118 = trunc i64 %117 to i32
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %120 = call i64 @load_threadstate(i64 %108, i32* %112, i32 %118, %struct.TYPE_5__* %119)
  store i64 %120, i64* %10, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* @LOAD_SUCCESS, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %99
  %125 = load i64, i64* %10, align 8
  store i64 %125, i64* %5, align 8
  br label %135

126:                                              ; preds = %99
  %127 = load i32, i32* @TRUE, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = load i64, i64* @LOAD_SUCCESS, align 8
  store i64 %134, i64* %5, align 8
  br label %135

135:                                              ; preds = %126, %124, %97, %84, %50, %31, %25, %18
  %136 = load i64, i64* %5, align 8
  ret i64 %136
}

declare dso_local i64 @load_threadstack(i64, i32*, i32, i8**, i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @load_threadentry(i64, i32*, i32, i8**) #1

declare dso_local i64 @load_threadstate(i64, i32*, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
