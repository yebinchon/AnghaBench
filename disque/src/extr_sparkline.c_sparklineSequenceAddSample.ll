; ModuleID = '/home/carl/AnghaBench/disque/src/extr_sparkline.c_sparklineSequenceAddSample.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_sparkline.c_sparklineSequenceAddSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sequence = type { i32, double, double, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { double, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparklineSequenceAddSample(%struct.sequence* %0, double %1, i8* %2) #0 {
  %4 = alloca %struct.sequence*, align 8
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  store %struct.sequence* %0, %struct.sequence** %4, align 8
  store double %1, double* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.sequence*, %struct.sequence** %4, align 8
  %8 = getelementptr inbounds %struct.sequence, %struct.sequence* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load double, double* %5, align 8
  %13 = load %struct.sequence*, %struct.sequence** %4, align 8
  %14 = getelementptr inbounds %struct.sequence, %struct.sequence* %13, i32 0, i32 2
  store double %12, double* %14, align 8
  %15 = load %struct.sequence*, %struct.sequence** %4, align 8
  %16 = getelementptr inbounds %struct.sequence, %struct.sequence* %15, i32 0, i32 1
  store double %12, double* %16, align 8
  br label %39

17:                                               ; preds = %3
  %18 = load double, double* %5, align 8
  %19 = load %struct.sequence*, %struct.sequence** %4, align 8
  %20 = getelementptr inbounds %struct.sequence, %struct.sequence* %19, i32 0, i32 1
  %21 = load double, double* %20, align 8
  %22 = fcmp olt double %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load double, double* %5, align 8
  %25 = load %struct.sequence*, %struct.sequence** %4, align 8
  %26 = getelementptr inbounds %struct.sequence, %struct.sequence* %25, i32 0, i32 1
  store double %24, double* %26, align 8
  br label %38

27:                                               ; preds = %17
  %28 = load double, double* %5, align 8
  %29 = load %struct.sequence*, %struct.sequence** %4, align 8
  %30 = getelementptr inbounds %struct.sequence, %struct.sequence* %29, i32 0, i32 2
  %31 = load double, double* %30, align 8
  %32 = fcmp ogt double %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load double, double* %5, align 8
  %35 = load %struct.sequence*, %struct.sequence** %4, align 8
  %36 = getelementptr inbounds %struct.sequence, %struct.sequence* %35, i32 0, i32 2
  store double %34, double* %36, align 8
  br label %37

37:                                               ; preds = %33, %27
  br label %38

38:                                               ; preds = %37, %23
  br label %39

39:                                               ; preds = %38, %11
  %40 = load %struct.sequence*, %struct.sequence** %4, align 8
  %41 = getelementptr inbounds %struct.sequence, %struct.sequence* %40, i32 0, i32 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load %struct.sequence*, %struct.sequence** %4, align 8
  %44 = getelementptr inbounds %struct.sequence, %struct.sequence* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = trunc i64 %48 to i32
  %50 = call %struct.TYPE_3__* @zrealloc(%struct.TYPE_3__* %42, i32 %49)
  %51 = load %struct.sequence*, %struct.sequence** %4, align 8
  %52 = getelementptr inbounds %struct.sequence, %struct.sequence* %51, i32 0, i32 4
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %52, align 8
  %53 = load double, double* %5, align 8
  %54 = load %struct.sequence*, %struct.sequence** %4, align 8
  %55 = getelementptr inbounds %struct.sequence, %struct.sequence* %54, i32 0, i32 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load %struct.sequence*, %struct.sequence** %4, align 8
  %58 = getelementptr inbounds %struct.sequence, %struct.sequence* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store double %53, double* %62, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.sequence*, %struct.sequence** %4, align 8
  %65 = getelementptr inbounds %struct.sequence, %struct.sequence* %64, i32 0, i32 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load %struct.sequence*, %struct.sequence** %4, align 8
  %68 = getelementptr inbounds %struct.sequence, %struct.sequence* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i8* %63, i8** %72, align 8
  %73 = load %struct.sequence*, %struct.sequence** %4, align 8
  %74 = getelementptr inbounds %struct.sequence, %struct.sequence* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %39
  %80 = load %struct.sequence*, %struct.sequence** %4, align 8
  %81 = getelementptr inbounds %struct.sequence, %struct.sequence* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %79, %39
  ret void
}

declare dso_local %struct.TYPE_3__* @zrealloc(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
