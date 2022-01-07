; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellEngine.c_write_history.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellEngine.c_write_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8** }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Opening file %s\0A\00", align 1
@history = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MAX_HISTORY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_history() #0 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %5 = call i32 @get_history_path(i8* %4)
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %7 = call i32* @fopen(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32*, i32** @stderr, align 8
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %13 = call i32 @fprintf(i32* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %49

14:                                               ; preds = %0
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 0), align 8
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %41, %14
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 1), align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 2), align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %20
  %28 = load i32*, i32** %2, align 8
  %29 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 2), align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @fprintf(i32* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @history, i32 0, i32 2), align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @tfree(i8* %39)
  br label %41

41:                                               ; preds = %27, %20
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* @MAX_HISTORY_SIZE, align 4
  %45 = srem i32 %43, %44
  store i32 %45, i32* %3, align 4
  br label %16

46:                                               ; preds = %16
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @fclose(i32* %47)
  br label %49

49:                                               ; preds = %46, %10
  ret void
}

declare dso_local i32 @get_history_path(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @tfree(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
