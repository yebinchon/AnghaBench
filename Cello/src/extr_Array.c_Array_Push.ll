; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Array.c_Array_Push.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Array.c_Array_Push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Array = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Array*, %struct.Array*)* @Array_Push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Array_Push(%struct.Array* %0, %struct.Array* %1) #0 {
  %3 = alloca %struct.Array*, align 8
  %4 = alloca %struct.Array*, align 8
  %5 = alloca %struct.Array*, align 8
  store %struct.Array* %0, %struct.Array** %3, align 8
  store %struct.Array* %1, %struct.Array** %4, align 8
  %6 = load %struct.Array*, %struct.Array** %3, align 8
  store %struct.Array* %6, %struct.Array** %5, align 8
  %7 = load %struct.Array*, %struct.Array** %5, align 8
  %8 = getelementptr inbounds %struct.Array, %struct.Array* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = load %struct.Array*, %struct.Array** %5, align 8
  %12 = call i32 @Array_Reserve_More(%struct.Array* %11)
  %13 = load %struct.Array*, %struct.Array** %5, align 8
  %14 = load %struct.Array*, %struct.Array** %5, align 8
  %15 = getelementptr inbounds %struct.Array, %struct.Array* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %16, 1
  %18 = call i32 @Array_Alloc(%struct.Array* %13, i64 %17)
  %19 = load %struct.Array*, %struct.Array** %5, align 8
  %20 = load %struct.Array*, %struct.Array** %5, align 8
  %21 = getelementptr inbounds %struct.Array, %struct.Array* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call i32 @Array_Item(%struct.Array* %19, i64 %23)
  %25 = load %struct.Array*, %struct.Array** %4, align 8
  %26 = call i32 @assign(i32 %24, %struct.Array* %25)
  ret void
}

declare dso_local i32 @Array_Reserve_More(%struct.Array*) #1

declare dso_local i32 @Array_Alloc(%struct.Array*, i64) #1

declare dso_local i32 @assign(i32, %struct.Array*) #1

declare dso_local i32 @Array_Item(%struct.Array*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
