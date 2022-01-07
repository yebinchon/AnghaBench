; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Array.c_Array_Iter_Next.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Array.c_Array_Iter_Next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Array = type { i64 }

@Terminal = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @Array_Iter_Next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Array_Iter_Next(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.Array*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.Array*
  store %struct.Array* %8, %struct.Array** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.Array*, %struct.Array** %6, align 8
  %11 = load %struct.Array*, %struct.Array** %6, align 8
  %12 = getelementptr inbounds %struct.Array, %struct.Array* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %13, 1
  %15 = call i64 @Array_Item(%struct.Array* %10, i64 %14)
  %16 = icmp sge i64 %9, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @Terminal, align 8
  store i64 %18, i64* %3, align 8
  br label %27

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.Array*, %struct.Array** %6, align 8
  %23 = call i32 @Array_Step(%struct.Array* %22)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %19, %17
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i64 @Array_Item(%struct.Array*, i64) #1

declare dso_local i32 @Array_Step(%struct.Array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
