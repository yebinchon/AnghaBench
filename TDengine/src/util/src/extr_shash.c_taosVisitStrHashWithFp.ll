; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_shash.c_taosVisitStrHashWithFp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_shash.c_taosVisitStrHashWithFp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_4__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @taosVisitStrHashWithFp(i8* %0, i32 (i8*)* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 (i8*)* %1, i32 (i8*)** %5, align 8
  store i8* null, i8** %9, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = icmp eq %struct.TYPE_3__* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  store i8* null, i8** %3, align 8
  br label %77

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 @pthread_mutex_lock(i32* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %27, align 8
  %29 = icmp ne %struct.TYPE_4__** %28, null
  br i1 %29, label %30, label %71

30:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %67, %30
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %31
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %41, i64 %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %7, align 8
  br label %46

46:                                               ; preds = %64, %38
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %8, align 8
  %53 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 %53(i8* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %9, align 8
  br label %72

64:                                               ; preds = %49
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %7, align 8
  br label %46

66:                                               ; preds = %46
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %31

70:                                               ; preds = %31
  br label %71

71:                                               ; preds = %70, %22
  br label %72

72:                                               ; preds = %71, %60
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = call i32 @pthread_mutex_unlock(i32* %74)
  %76 = load i8*, i8** %9, align 8
  store i8* %76, i8** %3, align 8
  br label %77

77:                                               ; preds = %72, %21
  %78 = load i8*, i8** %3, align 8
  ret i8* %78
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
