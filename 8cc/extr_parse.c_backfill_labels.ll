; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_backfill_labels.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_backfill_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i64 }

@gotos = common dso_local global i32 0, align 4
@labels = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"stray %s: %s\00", align 1
@AST_GOTO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"unary &&\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @backfill_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backfill_labels() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %50, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @gotos, align 4
  %8 = call i32 @vec_len(i32 %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %53

10:                                               ; preds = %5
  %11 = load i32, i32* @gotos, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call %struct.TYPE_4__* @vec_get(i32 %11, i32 %12)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %2, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %3, align 8
  %17 = load i32, i32* @labels, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call %struct.TYPE_4__* @map_get(i32 %17, i8* %18)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %4, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %10
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AST_GOTO, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30)
  br label %32

32:                                               ; preds = %22, %10
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  br label %49

43:                                               ; preds = %32
  %44 = call i64 (...) @make_label()
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i64 %44, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %5

53:                                               ; preds = %5
  ret void
}

declare dso_local i32 @vec_len(i32) #1

declare dso_local %struct.TYPE_4__* @vec_get(i32, i32) #1

declare dso_local %struct.TYPE_4__* @map_get(i32, i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i64 @make_label(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
