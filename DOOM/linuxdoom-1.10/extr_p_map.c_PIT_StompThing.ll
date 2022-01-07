; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_PIT_StompThing.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_PIT_StompThing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i64, i64 }

@MF_SHOOTABLE = common dso_local global i32 0, align 4
@tmthing = common dso_local global %struct.TYPE_7__* null, align 8
@tmx = common dso_local global i64 0, align 8
@tmy = common dso_local global i64 0, align 8
@gamemap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PIT_StompThing(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MF_SHOOTABLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %57

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @tmthing, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  store i64 %19, i64* %4, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @tmx, align 8
  %24 = sub nsw i64 %22, %23
  %25 = call i64 @abs(i64 %24)
  %26 = load i64, i64* %4, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %12
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @tmy, align 8
  %33 = sub nsw i64 %31, %32
  %34 = call i64 @abs(i64 %33)
  %35 = load i64, i64* %4, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28, %12
  store i32 1, i32* %2, align 4
  br label %57

38:                                               ; preds = %28
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @tmthing, align 8
  %41 = icmp eq %struct.TYPE_7__* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %57

43:                                               ; preds = %38
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @tmthing, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @gamemap, align 4
  %50 = icmp ne i32 %49, 30
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %57

52:                                               ; preds = %48, %43
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @tmthing, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @tmthing, align 8
  %56 = call i32 @P_DamageMobj(%struct.TYPE_7__* %53, %struct.TYPE_7__* %54, %struct.TYPE_7__* %55, i32 10000)
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %52, %51, %42, %37, %11
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @P_DamageMobj(%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
