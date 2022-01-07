; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_plural.c_new_exp.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_plural.c_new_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.expression** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expression* (i32, i32, %struct.expression**)* @new_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expression* @new_exp(i32 %0, i32 %1, %struct.expression** %2) #0 {
  %4 = alloca %struct.expression*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.expression**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.expression*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.expression** %2, %struct.expression*** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %24, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load %struct.expression**, %struct.expression*** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.expression*, %struct.expression** %16, i64 %18
  %20 = load %struct.expression*, %struct.expression** %19, align 8
  %21 = icmp eq %struct.expression* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %63

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %8, align 4
  br label %12

27:                                               ; preds = %12
  %28 = call i64 @malloc(i32 16)
  %29 = inttoptr i64 %28 to %struct.expression*
  store %struct.expression* %29, %struct.expression** %9, align 8
  %30 = load %struct.expression*, %struct.expression** %9, align 8
  %31 = icmp ne %struct.expression* %30, null
  br i1 %31, label %32, label %62

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.expression*, %struct.expression** %9, align 8
  %35 = getelementptr inbounds %struct.expression, %struct.expression* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.expression*, %struct.expression** %9, align 8
  %38 = getelementptr inbounds %struct.expression, %struct.expression* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %57, %32
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load %struct.expression**, %struct.expression*** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.expression*, %struct.expression** %45, i64 %47
  %49 = load %struct.expression*, %struct.expression** %48, align 8
  %50 = load %struct.expression*, %struct.expression** %9, align 8
  %51 = getelementptr inbounds %struct.expression, %struct.expression* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.expression**, %struct.expression*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.expression*, %struct.expression** %53, i64 %55
  store %struct.expression* %49, %struct.expression** %56, align 8
  br label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %8, align 4
  br label %41

60:                                               ; preds = %41
  %61 = load %struct.expression*, %struct.expression** %9, align 8
  store %struct.expression* %61, %struct.expression** %4, align 8
  br label %80

62:                                               ; preds = %27
  br label %63

63:                                               ; preds = %62, %22
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %76, %63
  %67 = load i32, i32* %8, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.expression**, %struct.expression*** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.expression*, %struct.expression** %70, i64 %72
  %74 = load %struct.expression*, %struct.expression** %73, align 8
  %75 = call i32 @FREE_EXPRESSION(%struct.expression* %74)
  br label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %8, align 4
  br label %66

79:                                               ; preds = %66
  store %struct.expression* null, %struct.expression** %4, align 8
  br label %80

80:                                               ; preds = %79, %60
  %81 = load %struct.expression*, %struct.expression** %4, align 8
  ret %struct.expression* %81
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @FREE_EXPRESSION(%struct.expression*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
