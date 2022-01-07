; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_copydata.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_copydata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__* }

@EINVAL = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbuf_copydata(%struct.TYPE_4__* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %11, align 8
  br label %13

13:                                               ; preds = %28, %4
  %14 = load i64, i64* %7, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %85

21:                                               ; preds = %16
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %37

28:                                               ; preds = %21
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = sub i64 %32, %31
  store i64 %33, i64* %7, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %11, align 8
  br label %13

37:                                               ; preds = %27, %13
  br label %38

38:                                               ; preds = %62, %37
  %39 = load i64, i64* %8, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %84

41:                                               ; preds = %38
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %43 = icmp eq %struct.TYPE_4__* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %5, align 4
  br label %85

46:                                               ; preds = %41
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 %49, %50
  %52 = load i64, i64* %8, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i64, i64* %8, align 8
  br label %62

56:                                               ; preds = %46
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 %59, %60
  br label %62

62:                                               ; preds = %56, %54
  %63 = phi i64 [ %55, %54 ], [ %61, %56 ]
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %10, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %66 = load i32, i32* @caddr_t, align 4
  %67 = call i64 @mtod(%struct.TYPE_4__* %65, i32 %66)
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %67, %68
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @bcopy(i64 %69, i8* %70, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %8, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8* %80, i8** %9, align 8
  store i64 0, i64* %7, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  store %struct.TYPE_4__* %83, %struct.TYPE_4__** %11, align 8
  br label %38

84:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %44, %19
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @bcopy(i64, i8*, i32) #1

declare dso_local i64 @mtod(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
