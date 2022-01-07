; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.kevent64_args = type { i32, i32, i32, i32, i32, i32, i64 }

@KEVENT_FLAG_USER = common dso_local global i32 0, align 4
@KEVENT_FLAG_LEGACY64 = common dso_local global i32 0, align 4
@kevent_continue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kevent64(%struct.proc* %0, %struct.kevent64_args* %1, i32* %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.kevent64_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.kevent64_args* %1, %struct.kevent64_args** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.kevent64_args*, %struct.kevent64_args** %5, align 8
  %9 = getelementptr inbounds %struct.kevent64_args, %struct.kevent64_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @KEVENT_FLAG_USER, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @KEVENT_FLAG_LEGACY64, align 4
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load %struct.proc*, %struct.proc** %4, align 8
  %17 = load %struct.kevent64_args*, %struct.kevent64_args** %5, align 8
  %18 = getelementptr inbounds %struct.kevent64_args, %struct.kevent64_args* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.kevent64_args*, %struct.kevent64_args** %5, align 8
  %22 = getelementptr inbounds %struct.kevent64_args, %struct.kevent64_args* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kevent64_args*, %struct.kevent64_args** %5, align 8
  %25 = getelementptr inbounds %struct.kevent64_args, %struct.kevent64_args* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.kevent64_args*, %struct.kevent64_args** %5, align 8
  %28 = getelementptr inbounds %struct.kevent64_args, %struct.kevent64_args* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.kevent64_args*, %struct.kevent64_args** %5, align 8
  %31 = getelementptr inbounds %struct.kevent64_args, %struct.kevent64_args* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.kevent64_args*, %struct.kevent64_args** %5, align 8
  %35 = getelementptr inbounds %struct.kevent64_args, %struct.kevent64_args* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @kevent_continue, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @kevent_internal(%struct.proc* %16, i32 %20, i32* null, i32 %23, i32 %26, i32 %29, i32 %32, i64 0, i64 0, i32 %33, i32 %36, i32 %37, i32* %38)
  ret i32 %39
}

declare dso_local i32 @kevent_internal(%struct.proc*, i32, i32*, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
