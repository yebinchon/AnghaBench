; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exception.c__cpu_print_stack.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exception.c__cpu_print_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.TYPE_2__* }

@.str = private unnamed_addr constant [14 x i8] c"\0A\09STACK DUMP:\00", align 1
@CPU_STACK_TRACE_DEPTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" --> \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" -->\0A\09\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @_cpu_print_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_cpu_print_stack(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %9, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %9, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = call %struct.TYPE_2__* asm sideeffect "mr $0,%r1", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %9, align 8
  br label %19

19:                                               ; preds = %17, %3
  %20 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %76, %19
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @CPU_STACK_TRACE_DEPTH, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i1 [ false, %21 ], [ %30, %26 ]
  br i1 %32, label %33, label %82

33:                                               ; preds = %31
  %34 = load i32, i32* %7, align 4
  %35 = srem i32 %34, 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %47

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %46

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %42
  br label %47

47:                                               ; preds = %46, %37
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %67 [
    i32 0, label %49
    i32 1, label %56
  ]

49:                                               ; preds = %47
  %50 = load i8*, i8** %4, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %49
  br label %75

56:                                               ; preds = %47
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %58 = icmp ne %struct.TYPE_2__* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = call i32 @mfspr(i32 8)
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %62, %struct.TYPE_2__** %8, align 8
  br label %63

63:                                               ; preds = %59, %56
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %65 = bitcast %struct.TYPE_2__* %64 to i8*
  %66 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  br label %75

67:                                               ; preds = %47
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %67, %63, %55
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  store %struct.TYPE_2__* %79, %struct.TYPE_2__** %9, align 8
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %21

82:                                               ; preds = %31
  ret void
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @mfspr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 553}
