; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsCompareSessionList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsCompareSessionList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OvsCompareSessionList(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %83

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__**
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__**
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %7, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %23 = icmp eq %struct.TYPE_2__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %26 = icmp eq %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %15
  store i32 0, i32* %3, align 4
  br label %83

28:                                               ; preds = %24
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  %33 = call i32 @CmpIpAddr(i32* %30, i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %83

38:                                               ; preds = %28
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = call i32 @CmpIpAddr(i32* %40, i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %83

48:                                               ; preds = %38
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @COMPARE_RET(i32 %51, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %83

60:                                               ; preds = %48
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = call i32 @CmpIpAddr(i32* %62, i32* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %83

70:                                               ; preds = %60
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @COMPARE_RET(i32 %73, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %83

82:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %80, %68, %58, %46, %36, %27, %14
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @CmpIpAddr(i32*, i32*) #1

declare dso_local i32 @COMPARE_RET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
