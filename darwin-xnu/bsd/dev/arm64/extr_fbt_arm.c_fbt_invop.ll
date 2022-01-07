; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_fbt_arm.c_fbt_invop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_fbt_arm.c_fbt_invop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_6__ = type { i32 }

@fbt_probetab = common dso_local global %struct.TYPE_5__** null, align 8
@CPU = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fbt_invop(i64 %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @fbt_probetab, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @FBT_ADDR2NDX(i64 %12)
  %14 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %11, i64 %13
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %8, align 8
  br label %16

16:                                               ; preds = %87, %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %91

19:                                               ; preds = %16
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %86

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CPU, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 0, %28
  br i1 %29, label %30, label %82

30:                                               ; preds = %25
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CPU, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %30
  %38 = load i64*, i64** %6, align 8
  %39 = bitcast i64* %38 to %struct.TYPE_6__*
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i8* @get_saved_state_lr(i32* %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CPU, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call i64 @get_saved_state_reg(i32* %48, i32 0)
  %50 = load i32*, i32** %9, align 8
  %51 = call i64 @get_saved_state_reg(i32* %50, i32 1)
  %52 = load i32*, i32** %9, align 8
  %53 = call i64 @get_saved_state_reg(i32* %52, i32 2)
  %54 = load i32*, i32** %9, align 8
  %55 = call i64 @get_saved_state_reg(i32* %54, i32 3)
  %56 = load i32*, i32** %9, align 8
  %57 = call i64 @get_saved_state_reg(i32* %56, i32 4)
  %58 = call i32 @dtrace_probe(i32 %47, i64 %49, i64 %51, i64 %53, i64 %55, i64 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CPU, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i8* null, i8** %60, align 8
  br label %79

61:                                               ; preds = %30
  %62 = load i64*, i64** %6, align 8
  %63 = bitcast i64* %62 to %struct.TYPE_6__*
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32* %64, i32** %10, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = call i8* @get_saved_state_lr(i32* %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CPU, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @dtrace_probe(i32 %71, i64 %74, i64 %75, i64 0, i64 0, i64 0)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CPU, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i8* null, i8** %78, align 8
  br label %79

79:                                               ; preds = %61, %37
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CPU, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %25
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %4, align 4
  br label %92

86:                                               ; preds = %19
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  store %struct.TYPE_5__* %90, %struct.TYPE_5__** %8, align 8
  br label %16

91:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %82
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @FBT_ADDR2NDX(i64) #1

declare dso_local i8* @get_saved_state_lr(i32*) #1

declare dso_local i32 @dtrace_probe(i32, i64, i64, i64, i64, i64) #1

declare dso_local i64 @get_saved_state_reg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
