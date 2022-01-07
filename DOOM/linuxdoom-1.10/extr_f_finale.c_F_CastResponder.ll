; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_finale.c_F_CastResponder.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_finale.c_F_CastResponder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@ev_keydown = common dso_local global i64 0, align 8
@castdeath = common dso_local global i32 0, align 4
@states = common dso_local global %struct.TYPE_8__* null, align 8
@mobjinfo = common dso_local global %struct.TYPE_9__* null, align 8
@castorder = common dso_local global %struct.TYPE_10__* null, align 8
@castnum = common dso_local global i64 0, align 8
@caststate = common dso_local global %struct.TYPE_8__* null, align 8
@casttics = common dso_local global i32 0, align 4
@castframes = common dso_local global i64 0, align 8
@castattacking = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @F_CastResponder(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ev_keydown, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

10:                                               ; preds = %1
  %11 = load i32, i32* @castdeath, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %51

14:                                               ; preds = %10
  store i32 1, i32* @castdeath, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @states, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mobjinfo, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** @castorder, align 8
  %18 = load i64, i64* @castnum, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 %24
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** @caststate, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @caststate, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* @casttics, align 4
  store i64 0, i64* @castframes, align 8
  store i32 0, i32* @castattacking, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mobjinfo, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @castorder, align 8
  %31 = load i64, i64* @castnum, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %14
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mobjinfo, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @castorder, align 8
  %42 = load i64, i64* @castnum, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @S_StartSound(i32* null, i64 %48)
  br label %50

50:                                               ; preds = %39, %14
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %13, %9
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @S_StartSound(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
