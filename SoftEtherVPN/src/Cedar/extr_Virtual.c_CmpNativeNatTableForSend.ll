; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_CmpNativeNatTableForSend.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_CmpNativeNatTableForSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@NAT_TCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CmpNativeNatTableForSend(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
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
  br label %96

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__**
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__**
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %8, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %23 = icmp eq %struct.TYPE_2__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %26 = icmp eq %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %15
  store i32 0, i32* %3, align 4
  br label %96

28:                                               ; preds = %24
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @COMPARE_RET(i64 %31, i64 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %96

40:                                               ; preds = %28
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @COMPARE_RET(i64 %43, i64 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %96

52:                                               ; preds = %40
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @COMPARE_RET(i64 %55, i64 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %96

64:                                               ; preds = %52
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NAT_TCP, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %64
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @COMPARE_RET(i64 %73, i64 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %96

82:                                               ; preds = %70
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @COMPARE_RET(i64 %85, i64 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %96

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94, %64
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %92, %80, %62, %50, %38, %27, %14
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @COMPARE_RET(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
