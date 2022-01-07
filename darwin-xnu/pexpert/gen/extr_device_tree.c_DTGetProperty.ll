; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/gen/extr_device_tree.c_DTGetProperty.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/gen/extr_device_tree.c_DTGetProperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@kError = common dso_local global i32 0, align 4
@kSuccess = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DTGetProperty(%struct.TYPE_7__* %0, i8* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %4
  %20 = load i32, i32* @kError, align 4
  store i32 %20, i32* %5, align 4
  br label %58

21:                                               ; preds = %14
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 1
  %24 = bitcast %struct.TYPE_7__* %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %52, %21
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strcmp(i32 %34, i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %40 = ptrtoint %struct.TYPE_6__* %39 to i64
  %41 = add i64 %40, 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load i8**, i8*** %8, align 8
  store i8* %42, i8** %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @kSuccess, align 4
  store i32 %48, i32* %5, align 4
  br label %58

49:                                               ; preds = %31
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = call %struct.TYPE_6__* @next_prop(%struct.TYPE_6__* %50)
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %10, align 8
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %25

55:                                               ; preds = %25
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* @kError, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %38, %19
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_6__* @next_prop(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
