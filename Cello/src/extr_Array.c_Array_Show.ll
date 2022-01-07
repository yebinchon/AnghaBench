; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Array.c_Array_Show.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Array.c_Array_Show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Array = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"<'Array' At 0x%p [\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%$\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Array*, %struct.Array*, i32)* @Array_Show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Array_Show(%struct.Array* %0, %struct.Array* %1, i32 %2) #0 {
  %4 = alloca %struct.Array*, align 8
  %5 = alloca %struct.Array*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Array*, align 8
  %8 = alloca i64, align 8
  store %struct.Array* %0, %struct.Array** %4, align 8
  store %struct.Array* %1, %struct.Array** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.Array*, %struct.Array** %4, align 8
  store %struct.Array* %9, %struct.Array** %7, align 8
  %10 = load %struct.Array*, %struct.Array** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.Array*, %struct.Array** %4, align 8
  %13 = call i32 (%struct.Array*, i32, i8*, ...) @print_to(%struct.Array* %10, i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.Array* %12)
  store i32 %13, i32* %6, align 4
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %38, %3
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.Array*, %struct.Array** %7, align 8
  %17 = getelementptr inbounds %struct.Array, %struct.Array* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = load %struct.Array*, %struct.Array** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.Array*, %struct.Array** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @Array_Item(%struct.Array* %23, i64 %24)
  %26 = call i32 (%struct.Array*, i32, i8*, ...) @print_to(%struct.Array* %21, i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.Array*, %struct.Array** %7, align 8
  %29 = getelementptr inbounds %struct.Array, %struct.Array* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %30, 1
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load %struct.Array*, %struct.Array** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (%struct.Array*, i32, i8*, ...) @print_to(%struct.Array* %34, i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %20
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %14

41:                                               ; preds = %14
  %42 = load %struct.Array*, %struct.Array** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (%struct.Array*, i32, i8*, ...) @print_to(%struct.Array* %42, i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  ret i32 %44
}

declare dso_local i32 @print_to(%struct.Array*, i32, i8*, ...) #1

declare dso_local i32 @Array_Item(%struct.Array*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
