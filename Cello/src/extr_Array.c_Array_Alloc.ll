; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Array.c_Array_Alloc.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Array.c_Array_Alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Array = type { i32, i64 }
%struct.Header = type { i32 }

@AllocData = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Array*, i64)* @Array_Alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Array_Alloc(%struct.Array* %0, i64 %1) #0 {
  %3 = alloca %struct.Array*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.Header*, align 8
  store %struct.Array* %0, %struct.Array** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.Array*, %struct.Array** %3, align 8
  %7 = getelementptr inbounds %struct.Array, %struct.Array* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = load %struct.Array*, %struct.Array** %3, align 8
  %11 = call i64 @Array_Step(%struct.Array* %10)
  %12 = load i64, i64* %4, align 8
  %13 = mul i64 %11, %12
  %14 = getelementptr inbounds i8, i8* %9, i64 %13
  %15 = load %struct.Array*, %struct.Array** %3, align 8
  %16 = call i64 @Array_Step(%struct.Array* %15)
  %17 = call i32 @memset(i8* %14, i32 0, i64 %16)
  %18 = load %struct.Array*, %struct.Array** %3, align 8
  %19 = getelementptr inbounds %struct.Array, %struct.Array* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.Array*, %struct.Array** %3, align 8
  %23 = call i64 @Array_Step(%struct.Array* %22)
  %24 = load i64, i64* %4, align 8
  %25 = mul i64 %23, %24
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = bitcast i8* %26 to %struct.Header*
  store %struct.Header* %27, %struct.Header** %5, align 8
  %28 = load %struct.Header*, %struct.Header** %5, align 8
  %29 = load %struct.Array*, %struct.Array** %3, align 8
  %30 = getelementptr inbounds %struct.Array, %struct.Array* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AllocData, align 4
  %33 = call i32 @header_init(%struct.Header* %28, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @Array_Step(%struct.Array*) #1

declare dso_local i32 @header_init(%struct.Header*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
