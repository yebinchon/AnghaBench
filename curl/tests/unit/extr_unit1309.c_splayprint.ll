; ModuleID = '/home/carl/AnghaBench/curl/tests/unit/extr_unit1309.c_splayprint.c'
source_filename = "/home/carl/AnghaBench/curl/tests/unit/extr_unit1309.c_splayprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_tree = type { %struct.Curl_tree*, %struct.Curl_tree*, %struct.TYPE_2__, %struct.Curl_tree* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%ld.%ld[%d]\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" [%d more]\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Curl_tree*, i32, i8)* @splayprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @splayprint(%struct.Curl_tree* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca %struct.Curl_tree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.Curl_tree*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.Curl_tree* %0, %struct.Curl_tree** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %10 = load %struct.Curl_tree*, %struct.Curl_tree** %4, align 8
  %11 = icmp eq %struct.Curl_tree* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %81

13:                                               ; preds = %3
  %14 = load %struct.Curl_tree*, %struct.Curl_tree** %4, align 8
  %15 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %14, i32 0, i32 3
  %16 = load %struct.Curl_tree*, %struct.Curl_tree** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i8, i8* %6, align 1
  call void @splayprint(%struct.Curl_tree* %16, i32 %18, i8 signext %19)
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %30, %13
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i8, i8* %6, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %20

33:                                               ; preds = %20
  %34 = load i8, i8* %6, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.Curl_tree*, %struct.Curl_tree** %4, align 8
  %38 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.Curl_tree*, %struct.Curl_tree** %4, align 8
  %42 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %36, %33
  store i32 0, i32* %9, align 4
  %48 = load %struct.Curl_tree*, %struct.Curl_tree** %4, align 8
  %49 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %48, i32 0, i32 1
  %50 = load %struct.Curl_tree*, %struct.Curl_tree** %49, align 8
  store %struct.Curl_tree* %50, %struct.Curl_tree** %7, align 8
  br label %51

51:                                               ; preds = %56, %47
  %52 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %53 = load %struct.Curl_tree*, %struct.Curl_tree** %4, align 8
  %54 = icmp ne %struct.Curl_tree* %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %58 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %57, i32 0, i32 1
  %59 = load %struct.Curl_tree*, %struct.Curl_tree** %58, align 8
  store %struct.Curl_tree* %59, %struct.Curl_tree** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %51

62:                                               ; preds = %51
  %63 = load i8, i8* %6, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %73

71:                                               ; preds = %65
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  br label %74

74:                                               ; preds = %73, %62
  %75 = load %struct.Curl_tree*, %struct.Curl_tree** %4, align 8
  %76 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %75, i32 0, i32 0
  %77 = load %struct.Curl_tree*, %struct.Curl_tree** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i8, i8* %6, align 1
  call void @splayprint(%struct.Curl_tree* %77, i32 %79, i8 signext %80)
  br label %81

81:                                               ; preds = %74, %12
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
