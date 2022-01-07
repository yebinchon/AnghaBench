; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_input.c_in_set_config.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_input.c_in_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8**, i32, i32, i64 }
%struct.TYPE_5__ = type { i32 (i32, i32, i32)* }

@IN_CFG_BLOCKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"input: set_key_names: not enough keys\0A\00", align 1
@menu_last_used_dev = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_set_config(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @IN_CFG_BLOCKING, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @in_set_blocking(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %74

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.TYPE_4__* @get_dev(i32 %25)
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %12, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = icmp eq %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %74

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %52 [
    i32 128, label %32
    i32 129, label %50
  ]

32:                                               ; preds = %30
  %33 = load i8*, i8** %8, align 8
  %34 = bitcast i8* %33 to i8**
  store i8** %34, i8*** %10, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %36, 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = call i32 @lprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %74

46:                                               ; preds = %32
  %47 = load i8**, i8*** %10, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i8** %47, i8*** %49, align 8
  store i32 0, i32* %5, align 4
  br label %74

50:                                               ; preds = %30
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* @menu_last_used_dev, align 4
  store i32 0, i32* %5, align 4
  br label %74

52:                                               ; preds = %30
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i32, i32)* @DRV(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 (i32, i32, i32)* %62, i32 (i32, i32, i32)** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %65 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %64, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 %65(i32 %68, i32 %69, i32 %71)
  store i32 %72, i32* %5, align 4
  br label %74

73:                                               ; preds = %53
  store i32 -1, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %58, %50, %46, %44, %29, %20
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @in_set_blocking(i32) #1

declare dso_local %struct.TYPE_4__* @get_dev(i32) #1

declare dso_local i32 @lprintf(i8*) #1

declare dso_local i32 (i32, i32, i32)* @DRV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
