; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_usimple_lock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_usimple_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@LockTimeOut = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"simple lock deadlock detection - l=%p, cpu=%d, ret=%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usimple_lock(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = call i32 @OBTAIN_PC(i32 %4, %struct.TYPE_7__* %5)
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @usld_lock_pre(%struct.TYPE_7__* %7, i32 %8)
  %10 = call i32 @USLDBG(i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* @LockTimeOut, align 4
  %14 = call i32 @hw_lock_to(i32* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = call i32 (...) @cpu_number()
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__** %2, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @usld_lock_post(%struct.TYPE_7__* %21, i32 %22)
  %24 = call i32 @USLDBG(i32 %23)
  ret void
}

declare dso_local i32 @OBTAIN_PC(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @USLDBG(i32) #1

declare dso_local i32 @usld_lock_pre(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @hw_lock_to(i32*, i32) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_7__**, i32, i32) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @usld_lock_post(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
