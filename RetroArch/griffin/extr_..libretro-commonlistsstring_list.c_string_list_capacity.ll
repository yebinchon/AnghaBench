; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonlistsstring_list.c_string_list_capacity.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonlistsstring_list.c_string_list_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i64, %struct.string_list_elem* }
%struct.string_list_elem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list*, i64)* @string_list_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_list_capacity(%struct.string_list* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.string_list_elem*, align 8
  store %struct.string_list* %0, %struct.string_list** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.string_list*, %struct.string_list** %4, align 8
  %8 = getelementptr inbounds %struct.string_list, %struct.string_list* %7, i32 0, i32 1
  %9 = load %struct.string_list_elem*, %struct.string_list_elem** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = mul i64 %10, 4
  %12 = call i64 @realloc(%struct.string_list_elem* %9, i64 %11)
  %13 = inttoptr i64 %12 to %struct.string_list_elem*
  store %struct.string_list_elem* %13, %struct.string_list_elem** %6, align 8
  %14 = load %struct.string_list_elem*, %struct.string_list_elem** %6, align 8
  %15 = icmp ne %struct.string_list_elem* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.string_list*, %struct.string_list** %4, align 8
  %20 = getelementptr inbounds %struct.string_list, %struct.string_list* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ugt i64 %18, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.string_list_elem*, %struct.string_list_elem** %6, align 8
  %25 = load %struct.string_list*, %struct.string_list** %4, align 8
  %26 = getelementptr inbounds %struct.string_list, %struct.string_list* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.string_list_elem, %struct.string_list_elem* %24, i64 %27
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.string_list*, %struct.string_list** %4, align 8
  %31 = getelementptr inbounds %struct.string_list, %struct.string_list* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %29, %32
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(%struct.string_list_elem* %28, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %23, %17
  %38 = load %struct.string_list_elem*, %struct.string_list_elem** %6, align 8
  %39 = load %struct.string_list*, %struct.string_list** %4, align 8
  %40 = getelementptr inbounds %struct.string_list, %struct.string_list* %39, i32 0, i32 1
  store %struct.string_list_elem* %38, %struct.string_list_elem** %40, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.string_list*, %struct.string_list** %4, align 8
  %43 = getelementptr inbounds %struct.string_list, %struct.string_list* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %37, %16
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @realloc(%struct.string_list_elem*, i64) #1

declare dso_local i32 @memset(%struct.string_list_elem*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
