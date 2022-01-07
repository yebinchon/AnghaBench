; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Iter.c_Zip_New.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Iter.c_Zip_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Zip = type { i8*, i8* }

@Tuple = common dso_local global i32 0, align 4
@_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Zip*, %struct.Zip*)* @Zip_New to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Zip_New(%struct.Zip* %0, %struct.Zip* %1) #0 {
  %3 = alloca %struct.Zip*, align 8
  %4 = alloca %struct.Zip*, align 8
  %5 = alloca %struct.Zip*, align 8
  %6 = alloca i64, align 8
  store %struct.Zip* %0, %struct.Zip** %3, align 8
  store %struct.Zip* %1, %struct.Zip** %4, align 8
  %7 = load %struct.Zip*, %struct.Zip** %3, align 8
  store %struct.Zip* %7, %struct.Zip** %5, align 8
  %8 = load i32, i32* @Tuple, align 4
  %9 = call i8* @new(i32 %8)
  %10 = load %struct.Zip*, %struct.Zip** %5, align 8
  %11 = getelementptr inbounds %struct.Zip, %struct.Zip* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @Tuple, align 4
  %13 = call i8* @new(i32 %12)
  %14 = load %struct.Zip*, %struct.Zip** %5, align 8
  %15 = getelementptr inbounds %struct.Zip, %struct.Zip* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.Zip*, %struct.Zip** %5, align 8
  %17 = getelementptr inbounds %struct.Zip, %struct.Zip* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.Zip*, %struct.Zip** %4, align 8
  %20 = call i32 @assign(i8* %18, %struct.Zip* %19)
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %32, %2
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.Zip*, %struct.Zip** %4, align 8
  %24 = call i64 @len(%struct.Zip* %23)
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.Zip*, %struct.Zip** %5, align 8
  %28 = getelementptr inbounds %struct.Zip, %struct.Zip* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @_, align 4
  %31 = call i32 @push(i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %21

35:                                               ; preds = %21
  ret void
}

declare dso_local i8* @new(i32) #1

declare dso_local i32 @assign(i8*, %struct.Zip*) #1

declare dso_local i64 @len(%struct.Zip*) #1

declare dso_local i32 @push(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
