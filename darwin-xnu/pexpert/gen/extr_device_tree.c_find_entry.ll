; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/gen/extr_device_tree.c_find_entry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/gen/extr_device_tree.c_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i8* }

@startingP = common dso_local global i8* null, align 8
@kError = common dso_local global i32 0, align 4
@kSuccess = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_entry(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i8*, i8** @startingP, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %8, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @kError, align 4
  store i32 %18, i32* %4, align 4
  br label %89

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 1
  %22 = bitcast %struct.TYPE_4__* %21 to i8*
  store i8* %22, i8** @startingP, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %64, %19
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %23
  %30 = load i8*, i8** @startingP, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %10, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 3
  %36 = and i32 %35, -4
  %37 = sext i32 %36 to i64
  %38 = add i64 16, %37
  %39 = load i8*, i8** @startingP, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** @startingP, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %29
  %48 = load i8*, i8** %6, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 1
  %53 = bitcast %struct.TYPE_3__* %52 to i8*
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strcmp(i8* %53, i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50, %47
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = ptrtoint %struct.TYPE_4__* %58 to i64
  %60 = load i64*, i64** %7, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i32, i32* @kSuccess, align 4
  store i32 %61, i32* %4, align 4
  br label %89

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %29
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %23

67:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %84, %67
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load i8*, i8** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i64*, i64** %7, align 8
  %78 = call i32 @find_entry(i8* %75, i8* %76, i64* %77)
  %79 = load i32, i32* @kSuccess, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @kSuccess, align 4
  store i32 %82, i32* %4, align 4
  br label %89

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %68

87:                                               ; preds = %68
  %88 = load i32, i32* @kError, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %81, %57, %17
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
