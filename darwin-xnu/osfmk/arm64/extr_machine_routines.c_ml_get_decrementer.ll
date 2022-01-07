; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_machine_routines.c_ml_get_decrementer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_machine_routines.c_ml_get_decrementer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ml_get_decrementer() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call %struct.TYPE_3__* (...) @getCpuDatap()
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %1, align 8
  %5 = call i64 (...) @ml_get_interrupts_enabled()
  %6 = load i64, i64* @FALSE, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i64 ()*
  %19 = call i64 %18()
  store i64 %19, i64* %2, align 8
  br label %28

20:                                               ; preds = %0
  %21 = call i64 asm sideeffect "mrs $0, CNTP_TVAL_EL0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %2, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  br label %28

28:                                               ; preds = %20, %14
  %29 = load i64, i64* %2, align 8
  ret i64 %29
}

declare dso_local %struct.TYPE_3__* @getCpuDatap(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 741}
