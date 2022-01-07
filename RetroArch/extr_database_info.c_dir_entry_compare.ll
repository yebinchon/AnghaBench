; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_database_info.c_dir_entry_compare.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_database_info.c_dir_entry_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list_elem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @dir_entry_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_entry_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.string_list_elem*, align 8
  %6 = alloca %struct.string_list_elem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.string_list_elem*
  store %struct.string_list_elem* %10, %struct.string_list_elem** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.string_list_elem*
  store %struct.string_list_elem* %12, %struct.string_list_elem** %6, align 8
  %13 = load %struct.string_list_elem*, %struct.string_list_elem** %5, align 8
  %14 = getelementptr inbounds %struct.string_list_elem, %struct.string_list_elem* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @type_is_prioritized(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.string_list_elem*, %struct.string_list_elem** %6, align 8
  %18 = getelementptr inbounds %struct.string_list_elem, %struct.string_list_elem* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @type_is_prioritized(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %21, %22
  ret i32 %23
}

declare dso_local i32 @type_is_prioritized(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
