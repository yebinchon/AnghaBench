; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lgc.c_checkstacksizes.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lgc.c_checkstacksizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i64, i64 }

@LUAI_MAXCALLS = common dso_local global i32 0, align 4
@BASIC_CI_SIZE = common dso_local global i32 0, align 4
@BASIC_STACK_SIZE = common dso_local global i32 0, align 4
@EXTRA_STACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64)* @checkstacksizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkstacksizes(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = call i32 @cast_int(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = call i32 @cast_int(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @LUAI_MAXCALLS, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %81

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 4, %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load i32, i32* @BASIC_CI_SIZE, align 4
  %36 = mul nsw i32 2, %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sdiv i32 %45, 2
  %47 = call i32 @luaD_reallocCI(%struct.TYPE_5__* %42, i32 %46)
  br label %48

48:                                               ; preds = %41, %34, %27
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @luaD_reallocCI(%struct.TYPE_5__* %49, i32 %51)
  %53 = call i32 @condhardstacktests(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 4, %54
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %48
  %61 = load i32, i32* @BASIC_STACK_SIZE, align 4
  %62 = load i32, i32* @EXTRA_STACK, align 4
  %63 = add nsw i32 %61, %62
  %64 = mul nsw i32 2, %63
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %73, 2
  %75 = call i32 @luaD_reallocstack(%struct.TYPE_5__* %70, i32 %74)
  br label %76

76:                                               ; preds = %69, %60, %48
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @luaD_reallocstack(%struct.TYPE_5__* %77, i32 %78)
  %80 = call i32 @condhardstacktests(i32 %79)
  br label %81

81:                                               ; preds = %76, %26
  ret void
}

declare dso_local i32 @cast_int(i64) #1

declare dso_local i32 @luaD_reallocCI(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @condhardstacktests(i32) #1

declare dso_local i32 @luaD_reallocstack(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
