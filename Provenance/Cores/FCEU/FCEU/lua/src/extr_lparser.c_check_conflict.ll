; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lparser.c_check_conflict.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lparser.c_check_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.LHS_assign = type { %struct.TYPE_15__, %struct.LHS_assign* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@VINDEXED = common dso_local global i64 0, align 8
@OP_MOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.LHS_assign*, %struct.TYPE_18__*)* @check_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_conflict(%struct.TYPE_19__* %0, %struct.LHS_assign* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.LHS_assign*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.LHS_assign* %1, %struct.LHS_assign** %5, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %6, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %7, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %68, %3
  %17 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %18 = icmp ne %struct.LHS_assign* %17, null
  br i1 %18, label %19, label %72

19:                                               ; preds = %16
  %20 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %21 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VINDEXED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %19
  %27 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %28 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %32, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %42 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 8
  br label %46

46:                                               ; preds = %39, %26
  %47 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %48 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %52, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %62 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  store i32 %60, i32* %65, align 4
  br label %66

66:                                               ; preds = %59, %46
  br label %67

67:                                               ; preds = %66, %19
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %70 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %69, i32 0, i32 1
  %71 = load %struct.LHS_assign*, %struct.LHS_assign** %70, align 8
  store %struct.LHS_assign* %71, %struct.LHS_assign** %5, align 8
  br label %16

72:                                               ; preds = %16
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %77 = load i32, i32* @OP_MOVE, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @luaK_codeABC(%struct.TYPE_20__* %76, i32 %77, i32 %80, i32 %85, i32 0)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %88 = call i32 @luaK_reserveregs(%struct.TYPE_20__* %87, i32 1)
  br label %89

89:                                               ; preds = %75, %72
  ret void
}

declare dso_local i32 @luaK_codeABC(%struct.TYPE_20__*, i32, i32, i32, i32) #1

declare dso_local i32 @luaK_reserveregs(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
