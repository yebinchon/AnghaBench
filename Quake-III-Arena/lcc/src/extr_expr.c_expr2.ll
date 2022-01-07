; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_expr.c_expr2.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_expr.c_expr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@t = common dso_local global i8 0, align 1
@Aflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s used in a conditional expression\0A\00", align 1
@src = common dso_local global i32 0, align 4
@events = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* ()* @expr2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @expr2() #0 {
  %1 = alloca %struct.TYPE_14__*, align 8
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = call %struct.TYPE_14__* @expr3(i32 4)
  store %struct.TYPE_14__* %5, %struct.TYPE_14__** %1, align 8
  %6 = load i8, i8* @t, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 63
  br i1 %8, label %9, label %48

9:                                                ; preds = %0
  %10 = load i32, i32* @Aflag, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @isfunc(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %20 = call i32 @funcname(%struct.TYPE_14__* %19)
  %21 = call i32 @warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %12, %9
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %24 = call %struct.TYPE_14__* @pointer(%struct.TYPE_14__* %23)
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %1, align 8
  %25 = call signext i8 (...) @gettok()
  store i8 %25, i8* @t, align 1
  %26 = load i32, i32* @src, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %26, i32* %27, align 4
  %28 = call %struct.TYPE_14__* @expr(i8 signext 58)
  %29 = call %struct.TYPE_14__* @pointer(%struct.TYPE_14__* %28)
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %2, align 8
  %30 = load i32, i32* @src, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = call %struct.TYPE_14__* @expr2()
  %33 = call %struct.TYPE_14__* @pointer(%struct.TYPE_14__* %32)
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %3, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @events, i32 0, i32 0), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %22
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @events, i32 0, i32 0), align 8
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %39 = call i32 @apply(i64 %37, i32* %38, %struct.TYPE_14__** %2)
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @events, i32 0, i32 0), align 8
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %42 = call i32 @apply(i64 %40, i32* %41, %struct.TYPE_14__** %3)
  br label %43

43:                                               ; preds = %36, %22
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = call %struct.TYPE_14__* @condtree(%struct.TYPE_14__* %44, %struct.TYPE_14__* %45, %struct.TYPE_14__* %46)
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %1, align 8
  br label %48

48:                                               ; preds = %43, %0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  ret %struct.TYPE_14__* %49
}

declare dso_local %struct.TYPE_14__* @expr3(i32) #1

declare dso_local i64 @isfunc(i32) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @funcname(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @pointer(%struct.TYPE_14__*) #1

declare dso_local signext i8 @gettok(...) #1

declare dso_local %struct.TYPE_14__* @expr(i8 signext) #1

declare dso_local i32 @apply(i64, i32*, %struct.TYPE_14__**) #1

declare dso_local %struct.TYPE_14__* @condtree(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
