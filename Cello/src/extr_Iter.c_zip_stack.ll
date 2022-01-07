; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Iter.c_zip_stack.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Iter.c_zip_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Zip = type { %struct.Tuple*, i32 }
%struct.Tuple = type { i32* }

@_ = common dso_local global i32 0, align 4
@Terminal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Zip* @zip_stack(%struct.Zip* %0) #0 {
  %2 = alloca %struct.Zip*, align 8
  %3 = alloca %struct.Zip*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.Tuple*, align 8
  %6 = alloca i64, align 8
  store %struct.Zip* %0, %struct.Zip** %2, align 8
  %7 = load %struct.Zip*, %struct.Zip** %2, align 8
  store %struct.Zip* %7, %struct.Zip** %3, align 8
  %8 = load %struct.Zip*, %struct.Zip** %3, align 8
  %9 = getelementptr inbounds %struct.Zip, %struct.Zip* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @len(i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.Zip*, %struct.Zip** %3, align 8
  %13 = getelementptr inbounds %struct.Zip, %struct.Zip* %12, i32 0, i32 0
  %14 = load %struct.Tuple*, %struct.Tuple** %13, align 8
  store %struct.Tuple* %14, %struct.Tuple** %5, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %26, %1
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i32, i32* @_, align 4
  %21 = load %struct.Tuple*, %struct.Tuple** %5, align 8
  %22 = getelementptr inbounds %struct.Tuple, %struct.Tuple* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 %20, i32* %25, align 4
  br label %26

26:                                               ; preds = %19
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %6, align 8
  br label %15

29:                                               ; preds = %15
  %30 = load i32, i32* @Terminal, align 4
  %31 = load %struct.Tuple*, %struct.Tuple** %5, align 8
  %32 = getelementptr inbounds %struct.Tuple, %struct.Tuple* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 %30, i32* %35, align 4
  %36 = load %struct.Zip*, %struct.Zip** %3, align 8
  ret %struct.Zip* %36
}

declare dso_local i64 @len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
