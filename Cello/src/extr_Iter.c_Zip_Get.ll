; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Iter.c_Zip_Get.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Iter.c_Zip_Get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Zip = type { i32*, %struct.Zip*, %struct.Zip* }
%struct.Tuple = type { i32*, %struct.Tuple*, %struct.Tuple* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Zip* (%struct.Zip*, %struct.Zip*)* @Zip_Get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Zip* @Zip_Get(%struct.Zip* %0, %struct.Zip* %1) #0 {
  %3 = alloca %struct.Zip*, align 8
  %4 = alloca %struct.Zip*, align 8
  %5 = alloca %struct.Zip*, align 8
  %6 = alloca %struct.Tuple*, align 8
  %7 = alloca %struct.Tuple*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.Zip* %0, %struct.Zip** %3, align 8
  store %struct.Zip* %1, %struct.Zip** %4, align 8
  %10 = load %struct.Zip*, %struct.Zip** %3, align 8
  store %struct.Zip* %10, %struct.Zip** %5, align 8
  %11 = load %struct.Zip*, %struct.Zip** %5, align 8
  %12 = getelementptr inbounds %struct.Zip, %struct.Zip* %11, i32 0, i32 2
  %13 = load %struct.Zip*, %struct.Zip** %12, align 8
  %14 = bitcast %struct.Zip* %13 to %struct.Tuple*
  store %struct.Tuple* %14, %struct.Tuple** %6, align 8
  %15 = load %struct.Zip*, %struct.Zip** %5, align 8
  %16 = getelementptr inbounds %struct.Zip, %struct.Zip* %15, i32 0, i32 1
  %17 = load %struct.Zip*, %struct.Zip** %16, align 8
  %18 = bitcast %struct.Zip* %17 to %struct.Tuple*
  store %struct.Tuple* %18, %struct.Tuple** %7, align 8
  %19 = load %struct.Tuple*, %struct.Tuple** %7, align 8
  %20 = bitcast %struct.Tuple* %19 to %struct.Zip*
  %21 = call i64 @len(%struct.Zip* %20)
  store i64 %21, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %40, %2
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load %struct.Tuple*, %struct.Tuple** %7, align 8
  %28 = getelementptr inbounds %struct.Tuple, %struct.Tuple* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.Zip*, %struct.Zip** %4, align 8
  %34 = call i32 @get(i32 %32, %struct.Zip* %33)
  %35 = load %struct.Tuple*, %struct.Tuple** %6, align 8
  %36 = getelementptr inbounds %struct.Tuple, %struct.Tuple* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %34, i32* %39, align 4
  br label %40

40:                                               ; preds = %26
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %9, align 8
  br label %22

43:                                               ; preds = %22
  %44 = load %struct.Tuple*, %struct.Tuple** %6, align 8
  %45 = bitcast %struct.Tuple* %44 to %struct.Zip*
  ret %struct.Zip* %45
}

declare dso_local i64 @len(%struct.Zip*) #1

declare dso_local i32 @get(i32, %struct.Zip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
