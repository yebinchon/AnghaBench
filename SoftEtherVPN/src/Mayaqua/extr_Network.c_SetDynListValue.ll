; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_SetDynListValue.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_SetDynListValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@g_dyn_value_list = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetDynListValue(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %58

11:                                               ; preds = %2
  %12 = load i32*, i32** @g_dyn_value_list, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %58

15:                                               ; preds = %11
  %16 = load i32*, i32** @g_dyn_value_list, align 8
  %17 = call i32 @LockList(i32* %16)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %36, %15
  %19 = load i64, i64* %5, align 8
  %20 = load i32*, i32** @g_dyn_value_list, align 8
  %21 = call i64 @LIST_NUM(i32* %20)
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load i32*, i32** @g_dyn_value_list, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call %struct.TYPE_5__* @LIST_DATA(i32* %24, i64 %25)
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %7, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @StrCmpi(i32 %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %6, align 8
  br label %39

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %18

39:                                               ; preds = %33, %18
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = icmp eq %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = call %struct.TYPE_5__* @ZeroMalloc(i32 8)
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %6, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @StrCpy(i32 %46, i32 4, i8* %47)
  %49 = load i32*, i32** @g_dyn_value_list, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = call i32 @Add(i32* %49, %struct.TYPE_5__* %50)
  br label %52

52:                                               ; preds = %42, %39
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** @g_dyn_value_list, align 8
  %57 = call i32 @UnlockList(i32* %56)
  br label %58

58:                                               ; preds = %52, %14, %10
  ret void
}

declare dso_local i32 @LockList(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_5__* @LIST_DATA(i32*, i64) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @ZeroMalloc(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @UnlockList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
