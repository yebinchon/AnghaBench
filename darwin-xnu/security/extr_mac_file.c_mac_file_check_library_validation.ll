; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_file.c_mac_file_check_library_validation.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_file.c_mac_file_check_library_validation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.fileglob = type { i32 }

@file_check_library_validation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_file_check_library_validation(%struct.proc* %0, %struct.fileglob* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.fileglob*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %6, align 8
  store %struct.fileglob* %1, %struct.fileglob** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = load i32, i32* @file_check_library_validation, align 4
  %13 = load %struct.proc*, %struct.proc** %6, align 8
  %14 = load %struct.fileglob*, %struct.fileglob** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @MAC_CHECK(i32 %12, %struct.proc* %13, %struct.fileglob* %14, i32 %15, i32 %16, i64 %17)
  %19 = load i32, i32* %11, align 4
  ret i32 %19
}

declare dso_local i32 @MAC_CHECK(i32, %struct.proc*, %struct.fileglob*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
