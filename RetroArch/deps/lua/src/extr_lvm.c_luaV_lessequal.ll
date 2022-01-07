; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lvm.c_luaV_lessequal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lvm.c_luaV_lessequal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@TM_LE = common dso_local global i32 0, align 4
@CIST_LEQ = common dso_local global i32 0, align 4
@TM_LT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaV_lessequal(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i64 @ttisnumber(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @ttisnumber(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @LEnum(i32* %17, i32* %18)
  store i32 %19, i32* %4, align 4
  br label %77

20:                                               ; preds = %12, %3
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @ttisstring(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @ttisstring(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @tsvalue(i32* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @tsvalue(i32* %31)
  %33 = call i64 @l_strcmp(i32 %30, i32 %32)
  %34 = icmp sle i64 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %77

36:                                               ; preds = %24, %20
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @TM_LE, align 4
  %41 = call i32 @luaT_callorderTM(%struct.TYPE_7__* %37, i32* %38, i32* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %77

45:                                               ; preds = %36
  %46 = load i32, i32* @CIST_LEQ, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %46
  store i32 %52, i32* %50, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @TM_LT, align 4
  %57 = call i32 @luaT_callorderTM(%struct.TYPE_7__* %53, i32* %54, i32* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @CIST_LEQ, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %63, %58
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %45
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @luaG_ordererror(%struct.TYPE_7__* %68, i32* %69, i32* %70)
  br label %72

72:                                               ; preds = %67, %45
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %72, %43, %28, %16
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @ttisnumber(i32*) #1

declare dso_local i32 @LEnum(i32*, i32*) #1

declare dso_local i64 @ttisstring(i32*) #1

declare dso_local i64 @l_strcmp(i32, i32) #1

declare dso_local i32 @tsvalue(i32*) #1

declare dso_local i32 @luaT_callorderTM(%struct.TYPE_7__*, i32*, i32*, i32) #1

declare dso_local i32 @luaG_ordererror(%struct.TYPE_7__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
