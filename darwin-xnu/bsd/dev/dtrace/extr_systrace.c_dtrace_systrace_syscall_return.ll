; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_systrace.c_dtrace_systrace_syscall_return.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_systrace.c_dtrace_systrace_syscall_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@nsysent = common dso_local global i16 0, align 2
@systrace_sysent = common dso_local global %struct.TYPE_5__* null, align 8
@SYS_invalid = common dso_local global i64 0, align 8
@DTRACE_IDNONE = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_systrace_syscall_return(i16 zeroext %0, i32 %1, i32* %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  store i16 %0, i16* %4, align 2
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load i16, i16* %4, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* @nsysent, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp sge i32 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @systrace_sysent, align 8
  %19 = load i64, i64* @SYS_invalid, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %19
  br label %26

21:                                               ; preds = %3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @systrace_sysent, align 8
  %23 = load i16, i16* %4, align 2
  %24 = zext i16 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi %struct.TYPE_5__* [ %20, %17 ], [ %25, %21 ]
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %7, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @DTRACE_IDNONE, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %94

33:                                               ; preds = %26
  %34 = call i32 (...) @current_thread()
  %35 = call i32 @get_bsdthread_info(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %11, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %33
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @ERESTART, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  br label %87

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @EJUSTRETURN, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  br label %84

57:                                               ; preds = %53
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %82 [
    i32 134, label %61
    i32 128, label %68
    i32 132, label %75
    i32 129, label %75
    i32 135, label %78
    i32 131, label %78
    i32 130, label %78
    i32 133, label %81
  ]

61:                                               ; preds = %57
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %10, align 4
  br label %83

68:                                               ; preds = %57
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %10, align 4
  br label %83

75:                                               ; preds = %57, %57
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %83

78:                                               ; preds = %57, %57, %57
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %83

81:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %83

82:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %82, %81, %78, %75, %68, %61
  br label %84

84:                                               ; preds = %83, %56
  br label %86

85:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %85, %84
  br label %87

87:                                               ; preds = %86, %48
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @systrace_probe(i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 0)
  br label %94

94:                                               ; preds = %87, %26
  ret void
}

declare dso_local i32 @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @systrace_probe(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
