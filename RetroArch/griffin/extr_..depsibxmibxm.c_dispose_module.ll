; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_dispose_module.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_dispose_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32, i32, i32, %struct.module*, %struct.module*, %struct.module*, %struct.module*, %struct.module*, %struct.module* }
%struct.instrument = type { i32, i32, i32, %struct.instrument*, %struct.instrument*, %struct.instrument*, %struct.instrument*, %struct.instrument*, %struct.instrument* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispose_module(%struct.module* %0) #0 {
  %2 = alloca %struct.module*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.instrument*, align 8
  store %struct.module* %0, %struct.module** %2, align 8
  %6 = load %struct.module*, %struct.module** %2, align 8
  %7 = getelementptr inbounds %struct.module, %struct.module* %6, i32 0, i32 8
  %8 = load %struct.module*, %struct.module** %7, align 8
  %9 = call i32 @free(%struct.module* %8)
  %10 = load %struct.module*, %struct.module** %2, align 8
  %11 = getelementptr inbounds %struct.module, %struct.module* %10, i32 0, i32 7
  %12 = load %struct.module*, %struct.module** %11, align 8
  %13 = call i32 @free(%struct.module* %12)
  %14 = load %struct.module*, %struct.module** %2, align 8
  %15 = getelementptr inbounds %struct.module, %struct.module* %14, i32 0, i32 6
  %16 = load %struct.module*, %struct.module** %15, align 8
  %17 = icmp ne %struct.module* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %35, %18
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.module*, %struct.module** %2, align 8
  %22 = getelementptr inbounds %struct.module, %struct.module* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.module*, %struct.module** %2, align 8
  %27 = getelementptr inbounds %struct.module, %struct.module* %26, i32 0, i32 6
  %28 = load %struct.module*, %struct.module** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.module, %struct.module* %28, i64 %30
  %32 = getelementptr inbounds %struct.module, %struct.module* %31, i32 0, i32 5
  %33 = load %struct.module*, %struct.module** %32, align 8
  %34 = call i32 @free(%struct.module* %33)
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load %struct.module*, %struct.module** %2, align 8
  %40 = getelementptr inbounds %struct.module, %struct.module* %39, i32 0, i32 6
  %41 = load %struct.module*, %struct.module** %40, align 8
  %42 = call i32 @free(%struct.module* %41)
  br label %43

43:                                               ; preds = %38, %1
  %44 = load %struct.module*, %struct.module** %2, align 8
  %45 = getelementptr inbounds %struct.module, %struct.module* %44, i32 0, i32 3
  %46 = load %struct.module*, %struct.module** %45, align 8
  %47 = icmp ne %struct.module* %46, null
  br i1 %47, label %48, label %103

48:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %95, %48
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.module*, %struct.module** %2, align 8
  %52 = getelementptr inbounds %struct.module, %struct.module* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sle i32 %50, %53
  br i1 %54, label %55, label %98

55:                                               ; preds = %49
  %56 = load %struct.module*, %struct.module** %2, align 8
  %57 = getelementptr inbounds %struct.module, %struct.module* %56, i32 0, i32 3
  %58 = load %struct.module*, %struct.module** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.module, %struct.module* %58, i64 %60
  %62 = bitcast %struct.module* %61 to %struct.instrument*
  store %struct.instrument* %62, %struct.instrument** %5, align 8
  %63 = load %struct.instrument*, %struct.instrument** %5, align 8
  %64 = getelementptr inbounds %struct.instrument, %struct.instrument* %63, i32 0, i32 4
  %65 = load %struct.instrument*, %struct.instrument** %64, align 8
  %66 = icmp ne %struct.instrument* %65, null
  br i1 %66, label %67, label %94

67:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %85, %67
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.instrument*, %struct.instrument** %5, align 8
  %71 = getelementptr inbounds %struct.instrument, %struct.instrument* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %68
  %75 = load %struct.instrument*, %struct.instrument** %5, align 8
  %76 = getelementptr inbounds %struct.instrument, %struct.instrument* %75, i32 0, i32 4
  %77 = load %struct.instrument*, %struct.instrument** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.instrument, %struct.instrument* %77, i64 %79
  %81 = getelementptr inbounds %struct.instrument, %struct.instrument* %80, i32 0, i32 5
  %82 = load %struct.instrument*, %struct.instrument** %81, align 8
  %83 = bitcast %struct.instrument* %82 to %struct.module*
  %84 = call i32 @free(%struct.module* %83)
  br label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %68

88:                                               ; preds = %68
  %89 = load %struct.instrument*, %struct.instrument** %5, align 8
  %90 = getelementptr inbounds %struct.instrument, %struct.instrument* %89, i32 0, i32 4
  %91 = load %struct.instrument*, %struct.instrument** %90, align 8
  %92 = bitcast %struct.instrument* %91 to %struct.module*
  %93 = call i32 @free(%struct.module* %92)
  br label %94

94:                                               ; preds = %88, %55
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %49

98:                                               ; preds = %49
  %99 = load %struct.module*, %struct.module** %2, align 8
  %100 = getelementptr inbounds %struct.module, %struct.module* %99, i32 0, i32 3
  %101 = load %struct.module*, %struct.module** %100, align 8
  %102 = call i32 @free(%struct.module* %101)
  br label %103

103:                                              ; preds = %98, %43
  %104 = load %struct.module*, %struct.module** %2, align 8
  %105 = call i32 @free(%struct.module* %104)
  ret void
}

declare dso_local i32 @free(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
