; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_ldebug.c_collectvalidlines.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_ldebug.c_collectvalidlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*)* @collectvalidlines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collectvalidlines(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = call i64 @noLuaClosure(%struct.TYPE_15__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @setnilvalue(i32 %15)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = call i32 @api_incr_top(%struct.TYPE_14__* %17)
  br label %59

19:                                               ; preds = %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %7, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = call i32* @luaH_new(%struct.TYPE_14__* %26)
  store i32* %27, i32** %8, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @sethvalue(%struct.TYPE_14__* %28, i32 %31, i32* %32)
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = call i32 @api_incr_top(%struct.TYPE_14__* %34)
  %36 = call i32 @setbvalue(i32* %6, i32 1)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %55, %19
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %38, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %37
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @luaH_setint(%struct.TYPE_14__* %47, i32* %48, i32 %53, i32* %6)
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %37

58:                                               ; preds = %37
  br label %59

59:                                               ; preds = %58, %12
  ret void
}

declare dso_local i64 @noLuaClosure(%struct.TYPE_15__*) #1

declare dso_local i32 @setnilvalue(i32) #1

declare dso_local i32 @api_incr_top(%struct.TYPE_14__*) #1

declare dso_local i32* @luaH_new(%struct.TYPE_14__*) #1

declare dso_local i32 @sethvalue(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @setbvalue(i32*, i32) #1

declare dso_local i32 @luaH_setint(%struct.TYPE_14__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
