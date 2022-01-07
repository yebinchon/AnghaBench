; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_input.c_pragma.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_input.c_pragma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@t = common dso_local global i32 0, align 4
@ID = common dso_local global i32 0, align 4
@token = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@cp = common dso_local global i8* null, align 8
@tsym = common dso_local global %struct.TYPE_3__* null, align 8
@src = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pragma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pragma() #0 {
  %1 = call i32 (...) @gettok()
  store i32 %1, i32* @t, align 4
  %2 = load i32, i32* @ID, align 4
  %3 = icmp eq i32 %1, %2
  br i1 %3, label %4, label %53

4:                                                ; preds = %0
  %5 = load i32, i32* @token, align 4
  %6 = call i64 @strcmp(i32 %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %53

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %51, %8
  br label %10

10:                                               ; preds = %22, %9
  %11 = load i8*, i8** @cp, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load i8*, i8** @cp, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 9
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i1 [ true, %10 ], [ %19, %15 ]
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load i8*, i8** @cp, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** @cp, align 8
  br label %10

25:                                               ; preds = %20
  %26 = load i8*, i8** @cp, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** @cp, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %25
  br label %52

36:                                               ; preds = %30
  %37 = call i32 (...) @gettok()
  store i32 %37, i32* @t, align 4
  %38 = load i32, i32* @ID, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tsym, align 8
  %42 = icmp ne %struct.TYPE_3__* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tsym, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tsym, align 8
  %49 = load i32, i32* @src, align 4
  %50 = call i32 @use(%struct.TYPE_3__* %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %40, %36
  br label %9

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52, %4, %0
  ret void
}

declare dso_local i32 @gettok(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @use(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
