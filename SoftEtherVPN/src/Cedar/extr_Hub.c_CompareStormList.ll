; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_CompareStormList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_CompareStormList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CompareStormList(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %106

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_2__**
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_2__**
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %7, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %25 = icmp eq %struct.TYPE_2__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %28 = icmp eq %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %17
  store i32 0, i32* %3, align 4
  br label %106

30:                                               ; preds = %26
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %30
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %35
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = call i8* @CmpIpAddr(i32* %42, i32* %44)
  %46 = ptrtoint i8* %45 to i64
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i64, i64* %8, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %106

52:                                               ; preds = %40
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = call i8* @CmpIpAddr(i32* %54, i32* %56)
  %58 = ptrtoint i8* %57 to i64
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i64, i64* %8, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %106

64:                                               ; preds = %52
  br label %96

65:                                               ; preds = %35, %30
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = call i8* @CmpIpAddr(i32* %67, i32* %69)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %9, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = call i8* @CmpIpAddr(i32* %73, i32* %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80, %65
  br label %95

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %106

89:                                               ; preds = %84
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %3, align 4
  br label %106

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %83
  br label %96

96:                                               ; preds = %95, %64
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @Cmp(i32 %99, i32 %102, i32 6)
  store i64 %103, i64* %8, align 8
  %104 = load i64, i64* %8, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %96, %92, %87, %61, %49, %29, %16
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i8* @CmpIpAddr(i32*, i32*) #1

declare dso_local i64 @Cmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
