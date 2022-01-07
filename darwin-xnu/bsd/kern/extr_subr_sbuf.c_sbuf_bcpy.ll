; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_sbuf.c_sbuf_bcpy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_sbuf.c_sbuf_bcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbuf_bcpy(%struct.sbuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.sbuf* %0, %struct.sbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %8 = call i32 @assert_sbuf_integrity(%struct.sbuf* %7)
  %9 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %10 = call i32 @assert_sbuf_state(%struct.sbuf* %9, i32 0)
  %11 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %12 = call i32 @sbuf_clear(%struct.sbuf* %11)
  %13 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @sbuf_bcat(%struct.sbuf* %13, i8* %14, i64 %15)
  ret i32 %16
}

declare dso_local i32 @assert_sbuf_integrity(%struct.sbuf*) #1

declare dso_local i32 @assert_sbuf_state(%struct.sbuf*, i32) #1

declare dso_local i32 @sbuf_clear(%struct.sbuf*) #1

declare dso_local i32 @sbuf_bcat(%struct.sbuf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
