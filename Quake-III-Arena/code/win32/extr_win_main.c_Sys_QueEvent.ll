; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_main.c_Sys_QueEvent.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_main.c_Sys_QueEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i32 }

@eventQue = common dso_local global %struct.TYPE_3__* null, align 8
@eventHead = common dso_local global i64 0, align 8
@MASK_QUED_EVENTS = common dso_local global i64 0, align 8
@eventTail = common dso_local global i64 0, align 8
@MAX_QUED_EVENTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Sys_QueEvent: overflow\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Sys_QueEvent(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @eventQue, align 8
  %15 = load i64, i64* @eventHead, align 8
  %16 = load i64, i64* @MASK_QUED_EVENTS, align 8
  %17 = and i64 %15, %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %17
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %13, align 8
  %19 = load i64, i64* @eventHead, align 8
  %20 = load i64, i64* @eventTail, align 8
  %21 = sub i64 %19, %20
  %22 = load i64, i64* @MAX_QUED_EVENTS, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %6
  %25 = call i32 @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @Z_Free(i8* %33)
  br label %35

35:                                               ; preds = %30, %24
  %36 = load i64, i64* @eventTail, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* @eventTail, align 8
  br label %38

38:                                               ; preds = %35, %6
  %39 = load i64, i64* @eventHead, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* @eventHead, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (...) @Sys_Milliseconds()
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i8*, i8** %12, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @Z_Free(i8*) #1

declare dso_local i32 @Sys_Milliseconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
