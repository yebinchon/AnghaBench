; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_id.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.kevent_id_args = type { i32, i64, i32, i32, i32, i32, i32, i64 }

@KEVENT_FLAG_USER = common dso_local global i32 0, align 4
@KEVENT_FLAG_DYNAMIC_KQUEUE = common dso_local global i32 0, align 4
@kevent_continue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kevent_id(%struct.proc* %0, %struct.kevent_id_args* %1, i32* %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.kevent_id_args*, align 8
  %6 = alloca i32*, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.kevent_id_args* %1, %struct.kevent_id_args** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @KEVENT_FLAG_USER, align 4
  %8 = load %struct.kevent_id_args*, %struct.kevent_id_args** %5, align 8
  %9 = getelementptr inbounds %struct.kevent_id_args, %struct.kevent_id_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.proc*, %struct.proc** %4, align 8
  %13 = load %struct.kevent_id_args*, %struct.kevent_id_args** %5, align 8
  %14 = getelementptr inbounds %struct.kevent_id_args, %struct.kevent_id_args* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.kevent_id_args*, %struct.kevent_id_args** %5, align 8
  %18 = getelementptr inbounds %struct.kevent_id_args, %struct.kevent_id_args* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.kevent_id_args*, %struct.kevent_id_args** %5, align 8
  %21 = getelementptr inbounds %struct.kevent_id_args, %struct.kevent_id_args* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kevent_id_args*, %struct.kevent_id_args** %5, align 8
  %24 = getelementptr inbounds %struct.kevent_id_args, %struct.kevent_id_args* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.kevent_id_args*, %struct.kevent_id_args** %5, align 8
  %27 = getelementptr inbounds %struct.kevent_id_args, %struct.kevent_id_args* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.kevent_id_args*, %struct.kevent_id_args** %5, align 8
  %30 = getelementptr inbounds %struct.kevent_id_args, %struct.kevent_id_args* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.kevent_id_args*, %struct.kevent_id_args** %5, align 8
  %33 = getelementptr inbounds %struct.kevent_id_args, %struct.kevent_id_args* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.kevent_id_args*, %struct.kevent_id_args** %5, align 8
  %37 = getelementptr inbounds %struct.kevent_id_args, %struct.kevent_id_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @KEVENT_FLAG_DYNAMIC_KQUEUE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @kevent_continue, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @kevent_internal(%struct.proc* %12, i32 %16, i32* null, i32 %19, i32 %22, i32 %25, i32 %28, i32 %31, i32 %35, i32 %40, i64 0, i32 %41, i32* %42)
  ret i32 %43
}

declare dso_local i32 @kevent_internal(%struct.proc*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
