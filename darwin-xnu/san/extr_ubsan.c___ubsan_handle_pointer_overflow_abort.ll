; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_ubsan.c___ubsan_handle_pointer_overflow_abort.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_ubsan.c___ubsan_handle_pointer_overflow_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsan_ptroverflow_desc = type { i32 }
%struct.ubsan_violation = type { i32*, %struct.ubsan_ptroverflow_desc*, i32, i32, i32 }

@UBSAN_POINTER_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ubsan_handle_pointer_overflow_abort(%struct.ubsan_ptroverflow_desc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ubsan_ptroverflow_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubsan_violation, align 8
  store %struct.ubsan_ptroverflow_desc* %0, %struct.ubsan_ptroverflow_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %7, i32 0, i32 0
  %9 = load i32, i32* @UBSAN_POINTER_OVERFLOW, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %7, i32 0, i32 1
  %13 = load %struct.ubsan_ptroverflow_desc*, %struct.ubsan_ptroverflow_desc** %4, align 8
  store %struct.ubsan_ptroverflow_desc* %13, %struct.ubsan_ptroverflow_desc** %12, align 8
  %14 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %7, i32 0, i32 2
  %15 = load %struct.ubsan_ptroverflow_desc*, %struct.ubsan_ptroverflow_desc** %4, align 8
  %16 = getelementptr inbounds %struct.ubsan_ptroverflow_desc, %struct.ubsan_ptroverflow_desc* %15, i32 0, i32 0
  %17 = ptrtoint i32* %16 to i32
  store i32 %17, i32* %14, align 8
  %18 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %7, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %7, i32 0, i32 4
  store i32 0, i32* %19, align 8
  %20 = call i32 @ubsan_handle(%struct.ubsan_violation* %7, i32 1)
  ret void
}

declare dso_local i32 @ubsan_handle(%struct.ubsan_violation*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
