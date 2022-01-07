; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Thread.c_Thread_Assign.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Thread.c_Thread_Assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Thread = type { i64, i32 }

@Thread = common dso_local global i32 0, align 4
@Table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Thread*, %struct.Thread*)* @Thread_Assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Thread_Assign(%struct.Thread* %0, %struct.Thread* %1) #0 {
  %3 = alloca %struct.Thread*, align 8
  %4 = alloca %struct.Thread*, align 8
  %5 = alloca %struct.Thread*, align 8
  %6 = alloca %struct.Thread*, align 8
  store %struct.Thread* %0, %struct.Thread** %3, align 8
  store %struct.Thread* %1, %struct.Thread** %4, align 8
  %7 = load %struct.Thread*, %struct.Thread** %3, align 8
  store %struct.Thread* %7, %struct.Thread** %5, align 8
  %8 = load %struct.Thread*, %struct.Thread** %4, align 8
  %9 = load i32, i32* @Thread, align 4
  %10 = call %struct.Thread* @cast(%struct.Thread* %8, i32 %9)
  store %struct.Thread* %10, %struct.Thread** %6, align 8
  %11 = load %struct.Thread*, %struct.Thread** %6, align 8
  %12 = getelementptr inbounds %struct.Thread, %struct.Thread* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.Thread*, %struct.Thread** %5, align 8
  %15 = getelementptr inbounds %struct.Thread, %struct.Thread* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.Thread*, %struct.Thread** %5, align 8
  %17 = getelementptr inbounds %struct.Thread, %struct.Thread* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.Thread*, %struct.Thread** %5, align 8
  %22 = getelementptr inbounds %struct.Thread, %struct.Thread* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @Table, align 4
  %26 = call i64 @alloc_raw(i32 %25)
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i64 [ %23, %20 ], [ %26, %24 ]
  %29 = load %struct.Thread*, %struct.Thread** %5, align 8
  %30 = getelementptr inbounds %struct.Thread, %struct.Thread* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.Thread*, %struct.Thread** %5, align 8
  %32 = getelementptr inbounds %struct.Thread, %struct.Thread* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.Thread*, %struct.Thread** %6, align 8
  %35 = getelementptr inbounds %struct.Thread, %struct.Thread* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @assign(i64 %33, i64 %36)
  ret void
}

declare dso_local %struct.Thread* @cast(%struct.Thread*, i32) #1

declare dso_local i64 @alloc_raw(i32) #1

declare dso_local i32 @assign(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
