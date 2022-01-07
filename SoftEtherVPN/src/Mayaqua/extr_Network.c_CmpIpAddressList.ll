; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_CmpIpAddressList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_CmpIpAddressList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CmpIpAddressList(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
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
  br label %100

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_7__**
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_7__**
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %7, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = icmp eq %struct.TYPE_7__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = icmp eq %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %15
  store i32 0, i32* %3, align 4
  br label %100

28:                                               ; preds = %24
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = call i64 @IsIP6(%struct.TYPE_7__* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = call i64 @IsIP6(%struct.TYPE_7__* %31)
  %33 = call i64 @COMPARE_RET(i64 %30, i64 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i64, i64* %8, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %100

39:                                               ; preds = %28
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = call i32 @IsZeroIP(%struct.TYPE_7__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = call i32 @IsZeroIP(%struct.TYPE_7__* %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %100

48:                                               ; preds = %43, %39
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = call i32 @IsZeroIP(%struct.TYPE_7__* %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = call i32 @IsZeroIP(%struct.TYPE_7__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %100

57:                                               ; preds = %52, %48
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = call i32 @IsLocalHostIP(%struct.TYPE_7__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = call i32 @IsLocalHostIP(%struct.TYPE_7__* %62)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %100

66:                                               ; preds = %61, %57
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = call i32 @IsLocalHostIP(%struct.TYPE_7__* %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = call i32 @IsLocalHostIP(%struct.TYPE_7__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 -1, i32* %3, align 4
  br label %100

75:                                               ; preds = %70, %66
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = call i64 @CmpIpAddr(%struct.TYPE_7__* %76, %struct.TYPE_7__* %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i64, i64* %8, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %3, align 4
  br label %100

84:                                               ; preds = %75
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = call i64 @IsIP6(%struct.TYPE_7__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @COMPARE_RET(i64 %91, i64 %94)
  store i64 %95, i64* %8, align 8
  br label %97

96:                                               ; preds = %84
  store i64 0, i64* %8, align 8
  br label %97

97:                                               ; preds = %96, %88
  %98 = load i64, i64* %8, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %97, %81, %74, %65, %56, %47, %36, %27, %14
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i64 @COMPARE_RET(i64, i64) #1

declare dso_local i64 @IsIP6(%struct.TYPE_7__*) #1

declare dso_local i32 @IsZeroIP(%struct.TYPE_7__*) #1

declare dso_local i32 @IsLocalHostIP(%struct.TYPE_7__*) #1

declare dso_local i64 @CmpIpAddr(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
