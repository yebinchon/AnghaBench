; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_utils.c_G_Find.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_utils.c_G_Find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@g_entities = common dso_local global %struct.TYPE_6__* null, align 8
@level = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @G_Find(%struct.TYPE_6__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_entities, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %5, align 8
  br label %16

13:                                               ; preds = %3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 1
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %5, align 8
  br label %16

16:                                               ; preds = %13, %11
  br label %17

17:                                               ; preds = %48, %16
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_entities, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @level, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %20
  %22 = icmp ult %struct.TYPE_6__* %18, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %48

29:                                               ; preds = %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = bitcast %struct.TYPE_6__* %30 to i32*
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = bitcast i32* %34 to i8**
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %48

40:                                               ; preds = %29
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @Q_stricmp(i8* %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %4, align 8
  br label %52

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %39, %28
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 1
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %5, align 8
  br label %17

51:                                               ; preds = %17
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %52

52:                                               ; preds = %51, %45
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %53
}

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
