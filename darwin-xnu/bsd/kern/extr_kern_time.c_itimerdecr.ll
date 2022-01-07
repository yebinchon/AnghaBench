; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_time.c_itimerdecr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_time.c_itimerdecr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerval = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @itimerdecr(i32 %0, %struct.itimerval* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.itimerval*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.itimerval* %1, %struct.itimerval** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @proc_spinlock(i32 %8)
  %10 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %11 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %3
  %17 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %18 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %24 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %55

29:                                               ; preds = %16
  %30 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %31 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1000000
  store i32 %34, i32* %32, align 8
  %35 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %36 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %29, %3
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %43 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, %41
  store i32 %46, i32* %44, align 8
  store i32 0, i32* %7, align 4
  %47 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %48 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %47, i32 0, i32 0
  %49 = call i64 @timerisset(%struct.TYPE_2__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @proc_spinunlock(i32 %52)
  store i32 1, i32* %4, align 4
  br label %104

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %22
  %56 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %57 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %56, i32 0, i32 1
  %58 = call i64 @timerisset(%struct.TYPE_2__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %97

60:                                               ; preds = %55
  %61 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %62 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %61, i32 0, i32 0
  %63 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %64 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %63, i32 0, i32 1
  %65 = bitcast %struct.TYPE_2__* %62 to i8*
  %66 = bitcast %struct.TYPE_2__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 16, i1 false)
  %67 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %68 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %60
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %75 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, %73
  store i32 %78, i32* %76, align 8
  %79 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %80 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %72
  %85 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %86 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1000000
  store i32 %89, i32* %87, align 8
  %90 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %91 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %92, align 8
  br label %95

95:                                               ; preds = %84, %72
  br label %96

96:                                               ; preds = %95, %60
  br label %101

97:                                               ; preds = %55
  %98 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %99 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  br label %101

101:                                              ; preds = %97, %96
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @proc_spinunlock(i32 %102)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %101, %51
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @proc_spinlock(i32) #1

declare dso_local i64 @timerisset(%struct.TYPE_2__*) #1

declare dso_local i32 @proc_spinunlock(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
