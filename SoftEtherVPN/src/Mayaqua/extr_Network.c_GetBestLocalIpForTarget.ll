; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetBestLocalIpForTarget.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetBestLocalIpForTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetBestLocalIpForTarget(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @Zero(i32* %11, i32 4)
  %13 = call i32 @ZeroIP4(i32* %10)
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32* %10, i32** %5, align 8
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i32*, i32** %4, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @IsIP4(i32* %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %17
  store i32 0, i32* %3, align 4
  br label %79

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @Copy(i32* %8, i32* %26, i32 4)
  br label %28

28:                                               ; preds = %25, %65
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sge i32 %31, 64
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %66

34:                                               ; preds = %28
  %35 = call %struct.TYPE_4__* @GetBestRouteEntry(i32* %8)
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %7, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %34
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i64 @IsZeroIp(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = call i32 @Free(%struct.TYPE_4__* %44)
  br label %66

46:                                               ; preds = %38
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  store i32 1, i32* %6, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @Copy(i32* %52, i32* %54, i32 4)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = call i32 @Free(%struct.TYPE_4__* %56)
  br label %66

58:                                               ; preds = %46
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i32 @Copy(i32* %8, i32* %60, i32 4)
  br label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = call i32 @Free(%struct.TYPE_4__* %63)
  br label %65

65:                                               ; preds = %62, %34
  br label %28

66:                                               ; preds = %51, %43, %33
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32*, i32** %5, align 8
  %71 = call i64 @IsLocalHostIP4(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @GetLocalHostIP4(i32* %74)
  store i32 1, i32* %6, align 4
  br label %76

76:                                               ; preds = %73, %69
  br label %77

77:                                               ; preds = %76, %66
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %24
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i32 @ZeroIP4(i32*) #1

declare dso_local i32 @IsIP4(i32*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @GetBestRouteEntry(i32*) #1

declare dso_local i64 @IsZeroIp(i32*) #1

declare dso_local i32 @Free(%struct.TYPE_4__*) #1

declare dso_local i64 @IsLocalHostIP4(i32*) #1

declare dso_local i32 @GetLocalHostIP4(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
