; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiFreeConfiguration.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiFreeConfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CiFreeConfiguration(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = icmp eq %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %72

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = call i32 @CiSaveConfigurationFile(%struct.TYPE_4__* %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @FreeCfgRw(i32 %14)
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %32, %9
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @LIST_NUM(i32* %20)
  %22 = icmp slt i64 %17, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = call i8* @LIST_DATA(i32* %26, i64 %27)
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @CiFreeAccount(i32* %30)
  br label %32

32:                                               ; preds = %23
  %33 = load i64, i64* %3, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %3, align 8
  br label %16

35:                                               ; preds = %16
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @ReleaseList(i32* %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %69

44:                                               ; preds = %35
  store i64 0, i64* %3, align 8
  br label %45

45:                                               ; preds = %61, %44
  %46 = load i64, i64* %3, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @LIST_NUM(i32* %49)
  %51 = icmp slt i64 %46, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %3, align 8
  %57 = call i8* @LIST_DATA(i32* %55, i64 %56)
  %58 = bitcast i8* %57 to i32*
  store i32* %58, i32** %5, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @Free(i32* %59)
  br label %61

61:                                               ; preds = %52
  %62 = load i64, i64* %3, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %3, align 8
  br label %45

64:                                               ; preds = %45
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @ReleaseList(i32* %67)
  br label %69

69:                                               ; preds = %64, %35
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %69, %8
  ret void
}

declare dso_local i32 @CiSaveConfigurationFile(%struct.TYPE_4__*) #1

declare dso_local i32 @FreeCfgRw(i32) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i8* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @CiFreeAccount(i32*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i32 @Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
