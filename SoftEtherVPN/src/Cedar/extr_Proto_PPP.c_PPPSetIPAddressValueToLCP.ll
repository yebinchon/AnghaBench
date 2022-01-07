; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_PPPSetIPAddressValueToLCP.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_PPPSetIPAddressValueToLCP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PPPSetIPAddressValueToLCP(%struct.TYPE_10__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %4
  store i32 0, i32* %5, align 4
  br label %86

20:                                               ; preds = %16
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @IPToUINT(i32* %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @PPPGetIPAddressValueFromLCP(%struct.TYPE_10__* %23, i32 %24, i32* %10)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %20
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.TYPE_9__* @GetOptionValue(%struct.TYPE_10__* %28, i32 %29)
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %12, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %32 = icmp ne %struct.TYPE_9__* %31, null
  br i1 %32, label %33, label %64

33:                                               ; preds = %27
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @IsZeroIP(i32* %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @CmpIpAddr(i32* %10, i32* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %57

46:                                               ; preds = %37
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  store i32 4, i32* %52, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @Copy(i32 %55, i32* %11, i32 4)
  br label %57

57:                                               ; preds = %46, %41
  br label %63

58:                                               ; preds = %33
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %57
  br label %64

64:                                               ; preds = %63, %27
  store i32 1, i32* %5, align 4
  br label %86

65:                                               ; preds = %20
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @IsZeroIP(i32* %66)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %86

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = call %struct.TYPE_9__* @NewPPPOption(i32 %74, i32* %11, i32 4)
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** %13, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %84 = call i32 @Add(i32 %82, %struct.TYPE_9__* %83)
  store i32 1, i32* %5, align 4
  br label %86

85:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %73, %72, %64, %19
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @IPToUINT(i32*) #1

declare dso_local i64 @PPPGetIPAddressValueFromLCP(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local %struct.TYPE_9__* @GetOptionValue(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @IsZeroIP(i32*) #1

declare dso_local i64 @CmpIpAddr(i32*, i32*) #1

declare dso_local i32 @Copy(i32, i32*, i32) #1

declare dso_local %struct.TYPE_9__* @NewPPPOption(i32, i32*, i32) #1

declare dso_local i32 @Add(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
