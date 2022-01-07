; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_enode.c_eqtree.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_enode.c_eqtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }

@unsignedptr = common dso_local global %struct.TYPE_20__* null, align 8
@inttype = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @eqtree(i32 %0, %struct.TYPE_21__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %8, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %9, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %18 = call i64 @isptr(%struct.TYPE_20__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %22 = call i64 @isnullptr(%struct.TYPE_21__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %20, %3
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %26 = call i64 @isptr(%struct.TYPE_20__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @isfunc(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %36 = call i64 @isvoidptr(%struct.TYPE_20__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %34, %28, %24
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %40 = call i64 @isptr(%struct.TYPE_20__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %38
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %44 = call i64 @isptr(%struct.TYPE_20__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %42
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @unqual(i32 %49)
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @unqual(i32 %53)
  %55 = call i64 @eqtype(i32 %50, i32 %54, i32 1)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %46, %34, %20
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** @unsignedptr, align 8
  store %struct.TYPE_20__* %58, %struct.TYPE_20__** %10, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %61 = call %struct.TYPE_21__* @cast(%struct.TYPE_21__* %59, %struct.TYPE_20__* %60)
  store %struct.TYPE_21__* %61, %struct.TYPE_21__** %6, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %64 = call %struct.TYPE_21__* @cast(%struct.TYPE_21__* %62, %struct.TYPE_20__* %63)
  store %struct.TYPE_21__* %64, %struct.TYPE_21__** %7, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %67 = call i32 @mkop(i32 %65, %struct.TYPE_20__* %66)
  %68 = load i32, i32* @inttype, align 4
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %71 = call %struct.TYPE_21__* @simplify(i32 %67, i32 %68, %struct.TYPE_21__* %69, %struct.TYPE_21__* %70)
  store %struct.TYPE_21__* %71, %struct.TYPE_21__** %4, align 8
  br label %104

72:                                               ; preds = %46, %42, %38
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %74 = call i64 @isptr(%struct.TYPE_20__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %78 = call i64 @isnullptr(%struct.TYPE_21__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %76, %72
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %82 = call i64 @isptr(%struct.TYPE_20__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @isfunc(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %92 = call i64 @isvoidptr(%struct.TYPE_20__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90, %76
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %98 = call %struct.TYPE_21__* @eqtree(i32 %95, %struct.TYPE_21__* %96, %struct.TYPE_21__* %97)
  store %struct.TYPE_21__* %98, %struct.TYPE_21__** %4, align 8
  br label %104

99:                                               ; preds = %90, %84, %80
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %103 = call %struct.TYPE_21__* @cmptree(i32 %100, %struct.TYPE_21__* %101, %struct.TYPE_21__* %102)
  store %struct.TYPE_21__* %103, %struct.TYPE_21__** %4, align 8
  br label %104

104:                                              ; preds = %99, %94, %57
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  ret %struct.TYPE_21__* %105
}

declare dso_local i64 @isptr(%struct.TYPE_20__*) #1

declare dso_local i64 @isnullptr(%struct.TYPE_21__*) #1

declare dso_local i32 @isfunc(i32) #1

declare dso_local i64 @isvoidptr(%struct.TYPE_20__*) #1

declare dso_local i64 @eqtype(i32, i32, i32) #1

declare dso_local i32 @unqual(i32) #1

declare dso_local %struct.TYPE_21__* @cast(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_21__* @simplify(i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @mkop(i32, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_21__* @cmptree(i32, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
