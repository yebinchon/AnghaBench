; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_lockf.c_lf_coalesce_adjacent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_lockf.c_lf_coalesce_adjacent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lockf = type { i64, i64, i32, i32, %struct.lockf*, %struct.lockf** }

@NOLOCKF = common dso_local global %struct.lockf* null, align 8
@LF_DBG_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"lf_coalesce_adjacent: coalesce adjacent previous\0A\00", align 1
@M_LOCKF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"lf_coalesce_adjacent: coalesce adjacent following\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lockf*)* @lf_coalesce_adjacent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lf_coalesce_adjacent(%struct.lockf* %0) #0 {
  %2 = alloca %struct.lockf*, align 8
  %3 = alloca %struct.lockf**, align 8
  %4 = alloca %struct.lockf*, align 8
  %5 = alloca %struct.lockf*, align 8
  store %struct.lockf* %0, %struct.lockf** %2, align 8
  %6 = load %struct.lockf*, %struct.lockf** %2, align 8
  %7 = getelementptr inbounds %struct.lockf, %struct.lockf* %6, i32 0, i32 5
  %8 = load %struct.lockf**, %struct.lockf*** %7, align 8
  store %struct.lockf** %8, %struct.lockf*** %3, align 8
  br label %9

9:                                                ; preds = %119, %94, %57, %37, %1
  %10 = load %struct.lockf**, %struct.lockf*** %3, align 8
  %11 = load %struct.lockf*, %struct.lockf** %10, align 8
  %12 = load %struct.lockf*, %struct.lockf** @NOLOCKF, align 8
  %13 = icmp ne %struct.lockf* %11, %12
  br i1 %13, label %14, label %123

14:                                               ; preds = %9
  %15 = load %struct.lockf**, %struct.lockf*** %3, align 8
  %16 = load %struct.lockf*, %struct.lockf** %15, align 8
  %17 = load %struct.lockf*, %struct.lockf** %2, align 8
  %18 = icmp eq %struct.lockf* %16, %17
  br i1 %18, label %37, label %19

19:                                               ; preds = %14
  %20 = load %struct.lockf**, %struct.lockf*** %3, align 8
  %21 = load %struct.lockf*, %struct.lockf** %20, align 8
  %22 = getelementptr inbounds %struct.lockf, %struct.lockf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.lockf*, %struct.lockf** %2, align 8
  %25 = getelementptr inbounds %struct.lockf, %struct.lockf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %19
  %29 = load %struct.lockf**, %struct.lockf*** %3, align 8
  %30 = load %struct.lockf*, %struct.lockf** %29, align 8
  %31 = getelementptr inbounds %struct.lockf, %struct.lockf* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.lockf*, %struct.lockf** %2, align 8
  %34 = getelementptr inbounds %struct.lockf, %struct.lockf* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %28, %19, %14
  %38 = load %struct.lockf**, %struct.lockf*** %3, align 8
  %39 = load %struct.lockf*, %struct.lockf** %38, align 8
  %40 = getelementptr inbounds %struct.lockf, %struct.lockf* %39, i32 0, i32 4
  store %struct.lockf** %40, %struct.lockf*** %3, align 8
  br label %9

41:                                               ; preds = %28
  %42 = load %struct.lockf**, %struct.lockf*** %3, align 8
  %43 = load %struct.lockf*, %struct.lockf** %42, align 8
  %44 = getelementptr inbounds %struct.lockf, %struct.lockf* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %79

47:                                               ; preds = %41
  %48 = load %struct.lockf**, %struct.lockf*** %3, align 8
  %49 = load %struct.lockf*, %struct.lockf** %48, align 8
  %50 = getelementptr inbounds %struct.lockf, %struct.lockf* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  %53 = load %struct.lockf*, %struct.lockf** %2, align 8
  %54 = getelementptr inbounds %struct.lockf, %struct.lockf* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %47
  %58 = load %struct.lockf**, %struct.lockf*** %3, align 8
  %59 = load %struct.lockf*, %struct.lockf** %58, align 8
  store %struct.lockf* %59, %struct.lockf** %4, align 8
  %60 = load i32, i32* @LF_DBG_LIST, align 4
  %61 = call i32 @LOCKF_DEBUG(i32 %60, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.lockf**, %struct.lockf*** %3, align 8
  %63 = load %struct.lockf*, %struct.lockf** %62, align 8
  %64 = getelementptr inbounds %struct.lockf, %struct.lockf* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.lockf*, %struct.lockf** %2, align 8
  %67 = getelementptr inbounds %struct.lockf, %struct.lockf* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.lockf*, %struct.lockf** %2, align 8
  %69 = load %struct.lockf**, %struct.lockf*** %3, align 8
  store %struct.lockf* %68, %struct.lockf** %69, align 8
  %70 = load %struct.lockf**, %struct.lockf*** %3, align 8
  %71 = load %struct.lockf*, %struct.lockf** %70, align 8
  %72 = getelementptr inbounds %struct.lockf, %struct.lockf* %71, i32 0, i32 4
  store %struct.lockf** %72, %struct.lockf*** %3, align 8
  %73 = load %struct.lockf*, %struct.lockf** %2, align 8
  %74 = load %struct.lockf*, %struct.lockf** %4, align 8
  %75 = call i32 @lf_move_blocked(%struct.lockf* %73, %struct.lockf* %74)
  %76 = load %struct.lockf*, %struct.lockf** %4, align 8
  %77 = load i32, i32* @M_LOCKF, align 4
  %78 = call i32 @FREE(%struct.lockf* %76, i32 %77)
  br label %9

79:                                               ; preds = %47, %41
  %80 = load %struct.lockf*, %struct.lockf** %2, align 8
  %81 = getelementptr inbounds %struct.lockf, %struct.lockf* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %119

84:                                               ; preds = %79
  %85 = load %struct.lockf*, %struct.lockf** %2, align 8
  %86 = getelementptr inbounds %struct.lockf, %struct.lockf* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  %89 = load %struct.lockf**, %struct.lockf*** %3, align 8
  %90 = load %struct.lockf*, %struct.lockf** %89, align 8
  %91 = getelementptr inbounds %struct.lockf, %struct.lockf* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %88, %92
  br i1 %93, label %94, label %119

94:                                               ; preds = %84
  %95 = load %struct.lockf**, %struct.lockf*** %3, align 8
  %96 = load %struct.lockf*, %struct.lockf** %95, align 8
  store %struct.lockf* %96, %struct.lockf** %5, align 8
  %97 = load i32, i32* @LF_DBG_LIST, align 4
  %98 = call i32 @LOCKF_DEBUG(i32 %97, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.lockf**, %struct.lockf*** %3, align 8
  %100 = load %struct.lockf*, %struct.lockf** %99, align 8
  %101 = getelementptr inbounds %struct.lockf, %struct.lockf* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.lockf*, %struct.lockf** %2, align 8
  %104 = getelementptr inbounds %struct.lockf, %struct.lockf* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.lockf**, %struct.lockf*** %3, align 8
  %106 = load %struct.lockf*, %struct.lockf** %105, align 8
  %107 = getelementptr inbounds %struct.lockf, %struct.lockf* %106, i32 0, i32 4
  %108 = load %struct.lockf*, %struct.lockf** %107, align 8
  %109 = load %struct.lockf*, %struct.lockf** %2, align 8
  %110 = getelementptr inbounds %struct.lockf, %struct.lockf* %109, i32 0, i32 4
  store %struct.lockf* %108, %struct.lockf** %110, align 8
  %111 = load %struct.lockf*, %struct.lockf** %2, align 8
  %112 = getelementptr inbounds %struct.lockf, %struct.lockf* %111, i32 0, i32 4
  store %struct.lockf** %112, %struct.lockf*** %3, align 8
  %113 = load %struct.lockf*, %struct.lockf** %2, align 8
  %114 = load %struct.lockf*, %struct.lockf** %5, align 8
  %115 = call i32 @lf_move_blocked(%struct.lockf* %113, %struct.lockf* %114)
  %116 = load %struct.lockf*, %struct.lockf** %5, align 8
  %117 = load i32, i32* @M_LOCKF, align 4
  %118 = call i32 @FREE(%struct.lockf* %116, i32 %117)
  br label %9

119:                                              ; preds = %84, %79
  %120 = load %struct.lockf**, %struct.lockf*** %3, align 8
  %121 = load %struct.lockf*, %struct.lockf** %120, align 8
  %122 = getelementptr inbounds %struct.lockf, %struct.lockf* %121, i32 0, i32 4
  store %struct.lockf** %122, %struct.lockf*** %3, align 8
  br label %9

123:                                              ; preds = %9
  ret void
}

declare dso_local i32 @LOCKF_DEBUG(i32, i8*) #1

declare dso_local i32 @lf_move_blocked(%struct.lockf*, %struct.lockf*) #1

declare dso_local i32 @FREE(%struct.lockf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
