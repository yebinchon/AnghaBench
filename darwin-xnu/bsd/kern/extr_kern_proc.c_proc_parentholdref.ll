; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_parentholdref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_parentholdref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, %struct.TYPE_5__* }

@PROC_NULL = common dso_local global %struct.TYPE_5__* null, align 8
@SZOMB = common dso_local global i64 0, align 8
@P_LIST_CHILDDRSTART = common dso_local global i32 0, align 4
@P_LIST_CHILDDRAINED = common dso_local global i32 0, align 4
@P_LIST_CHILDDRWAIT = common dso_local global i32 0, align 4
@proc_list_mlock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"proc_parent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @proc_parentholdref(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PROC_NULL, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 (...) @proc_list_lock()
  br label %8

8:                                                ; preds = %61, %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PROC_NULL, align 8
  %14 = icmp eq %struct.TYPE_5__* %12, %13
  br i1 %14, label %33, label %15

15:                                               ; preds = %8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SZOMB, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @P_LIST_CHILDDRSTART, align 4
  %26 = load i32, i32* @P_LIST_CHILDDRAINED, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = load i32, i32* @P_LIST_CHILDDRSTART, align 4
  %30 = load i32, i32* @P_LIST_CHILDDRAINED, align 4
  %31 = or i32 %29, %30
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %21, %15, %8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PROC_NULL, align 8
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %3, align 8
  br label %78

35:                                               ; preds = %21
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @P_LIST_CHILDDRSTART, align 4
  %40 = load i32, i32* @P_LIST_CHILDDRAINED, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = load i32, i32* @P_LIST_CHILDDRSTART, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %35
  %46 = load i32, i32* @P_LIST_CHILDDRWAIT, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i32, i32* @proc_list_mlock, align 4
  %54 = call i32 @msleep(i32* %52, i32 %53, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 5
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PROC_NULL, align 8
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %3, align 8
  br label %78

61:                                               ; preds = %45
  br label %8

62:                                               ; preds = %35
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @P_LIST_CHILDDRSTART, align 4
  %67 = load i32, i32* @P_LIST_CHILDDRAINED, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %3, align 8
  br label %78

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77, %71, %59, %33
  %79 = call i32 (...) @proc_list_unlock()
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %80
}

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @proc_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
