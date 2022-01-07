; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_lockf.c_lf_clearlock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_lockf.c_lf_clearlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lockf = type { i64, i64, i32, i32, %struct.lockf*, %struct.lockf** }

@NOLOCKF = common dso_local global %struct.lockf* null, align 8
@SELF = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@M_LOCKF = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@LF_BOOSTED = common dso_local global i64 0, align 8
@LF_DBG_LOCKOP = common dso_local global i32 0, align 4
@lockf_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lockf*)* @lf_clearlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lf_clearlock(%struct.lockf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lockf*, align 8
  %4 = alloca %struct.lockf**, align 8
  %5 = alloca %struct.lockf*, align 8
  %6 = alloca %struct.lockf*, align 8
  %7 = alloca %struct.lockf**, align 8
  %8 = alloca i32, align 4
  store %struct.lockf* %0, %struct.lockf** %3, align 8
  %9 = load %struct.lockf*, %struct.lockf** %3, align 8
  %10 = getelementptr inbounds %struct.lockf, %struct.lockf* %9, i32 0, i32 5
  %11 = load %struct.lockf**, %struct.lockf*** %10, align 8
  store %struct.lockf** %11, %struct.lockf*** %4, align 8
  %12 = load %struct.lockf**, %struct.lockf*** %4, align 8
  %13 = load %struct.lockf*, %struct.lockf** %12, align 8
  store %struct.lockf* %13, %struct.lockf** %5, align 8
  %14 = load %struct.lockf*, %struct.lockf** %5, align 8
  %15 = load %struct.lockf*, %struct.lockf** @NOLOCKF, align 8
  %16 = icmp eq %struct.lockf* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %100

18:                                               ; preds = %1
  %19 = load %struct.lockf**, %struct.lockf*** %4, align 8
  store %struct.lockf** %19, %struct.lockf*** %7, align 8
  br label %20

20:                                               ; preds = %79, %68, %18
  %21 = load %struct.lockf*, %struct.lockf** %5, align 8
  %22 = load %struct.lockf*, %struct.lockf** %3, align 8
  %23 = load i32, i32* @SELF, align 4
  %24 = call i32 @lf_findoverlap(%struct.lockf* %21, %struct.lockf* %22, i32 %23, %struct.lockf*** %7, %struct.lockf** %6)
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %24, 129
  br i1 %25, label %26, label %99

26:                                               ; preds = %20
  %27 = load %struct.lockf*, %struct.lockf** %6, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i32 @lf_wakelock(%struct.lockf* %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %98 [
    i32 129, label %31
    i32 130, label %32
    i32 132, label %40
    i32 133, label %68
    i32 128, label %79
    i32 131, label %91
  ]

31:                                               ; preds = %26
  br label %98

32:                                               ; preds = %26
  %33 = load %struct.lockf*, %struct.lockf** %6, align 8
  %34 = getelementptr inbounds %struct.lockf, %struct.lockf* %33, i32 0, i32 4
  %35 = load %struct.lockf*, %struct.lockf** %34, align 8
  %36 = load %struct.lockf**, %struct.lockf*** %7, align 8
  store %struct.lockf* %35, %struct.lockf** %36, align 8
  %37 = load %struct.lockf*, %struct.lockf** %6, align 8
  %38 = load i32, i32* @M_LOCKF, align 4
  %39 = call i32 @FREE(%struct.lockf* %37, i32 %38)
  br label %98

40:                                               ; preds = %26
  %41 = load %struct.lockf*, %struct.lockf** %6, align 8
  %42 = getelementptr inbounds %struct.lockf, %struct.lockf* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.lockf*, %struct.lockf** %3, align 8
  %45 = getelementptr inbounds %struct.lockf, %struct.lockf* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load %struct.lockf*, %struct.lockf** %3, align 8
  %50 = getelementptr inbounds %struct.lockf, %struct.lockf* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  %53 = load %struct.lockf*, %struct.lockf** %6, align 8
  %54 = getelementptr inbounds %struct.lockf, %struct.lockf* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  br label %98

55:                                               ; preds = %40
  %56 = load %struct.lockf*, %struct.lockf** %6, align 8
  %57 = load %struct.lockf*, %struct.lockf** %3, align 8
  %58 = call i32 @lf_split(%struct.lockf* %56, %struct.lockf* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOLCK, align 4
  store i32 %61, i32* %2, align 4
  br label %100

62:                                               ; preds = %55
  %63 = load %struct.lockf*, %struct.lockf** %3, align 8
  %64 = getelementptr inbounds %struct.lockf, %struct.lockf* %63, i32 0, i32 4
  %65 = load %struct.lockf*, %struct.lockf** %64, align 8
  %66 = load %struct.lockf*, %struct.lockf** %6, align 8
  %67 = getelementptr inbounds %struct.lockf, %struct.lockf* %66, i32 0, i32 4
  store %struct.lockf* %65, %struct.lockf** %67, align 8
  br label %98

68:                                               ; preds = %26
  %69 = load %struct.lockf*, %struct.lockf** %6, align 8
  %70 = getelementptr inbounds %struct.lockf, %struct.lockf* %69, i32 0, i32 4
  %71 = load %struct.lockf*, %struct.lockf** %70, align 8
  %72 = load %struct.lockf**, %struct.lockf*** %7, align 8
  store %struct.lockf* %71, %struct.lockf** %72, align 8
  %73 = load %struct.lockf*, %struct.lockf** %6, align 8
  %74 = getelementptr inbounds %struct.lockf, %struct.lockf* %73, i32 0, i32 4
  %75 = load %struct.lockf*, %struct.lockf** %74, align 8
  store %struct.lockf* %75, %struct.lockf** %5, align 8
  %76 = load %struct.lockf*, %struct.lockf** %6, align 8
  %77 = load i32, i32* @M_LOCKF, align 4
  %78 = call i32 @FREE(%struct.lockf* %76, i32 %77)
  br label %20

79:                                               ; preds = %26
  %80 = load %struct.lockf*, %struct.lockf** %3, align 8
  %81 = getelementptr inbounds %struct.lockf, %struct.lockf* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load %struct.lockf*, %struct.lockf** %6, align 8
  %85 = getelementptr inbounds %struct.lockf, %struct.lockf* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.lockf*, %struct.lockf** %6, align 8
  %87 = getelementptr inbounds %struct.lockf, %struct.lockf* %86, i32 0, i32 4
  store %struct.lockf** %87, %struct.lockf*** %7, align 8
  %88 = load %struct.lockf*, %struct.lockf** %6, align 8
  %89 = getelementptr inbounds %struct.lockf, %struct.lockf* %88, i32 0, i32 4
  %90 = load %struct.lockf*, %struct.lockf** %89, align 8
  store %struct.lockf* %90, %struct.lockf** %5, align 8
  br label %20

91:                                               ; preds = %26
  %92 = load %struct.lockf*, %struct.lockf** %3, align 8
  %93 = getelementptr inbounds %struct.lockf, %struct.lockf* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  %96 = load %struct.lockf*, %struct.lockf** %6, align 8
  %97 = getelementptr inbounds %struct.lockf, %struct.lockf* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %26, %91, %62, %48, %32, %31
  br label %99

99:                                               ; preds = %98, %20
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %60, %17
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @lf_findoverlap(%struct.lockf*, %struct.lockf*, i32, %struct.lockf***, %struct.lockf**) #1

declare dso_local i32 @lf_wakelock(%struct.lockf*, i32) #1

declare dso_local i32 @FREE(%struct.lockf*, i32) #1

declare dso_local i32 @lf_split(%struct.lockf*, %struct.lockf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
