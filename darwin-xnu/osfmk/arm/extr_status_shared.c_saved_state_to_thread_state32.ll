; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_status_shared.c_saved_state_to_thread_state32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_status_shared.c_saved_state_to_thread_state32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saved_state_to_thread_state32(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @is_saved_state32(i32* %6)
  %8 = call i32 @assert(i32 %7)
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @get_saved_state_lr(i32* %9)
  %11 = trunc i64 %10 to i32
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @get_saved_state_sp(i32* %14)
  %16 = trunc i64 %15 to i32
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @get_saved_state_pc(i32* %19)
  %21 = trunc i64 %20 to i32
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @get_saved_state_cpsr(i32* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %42, %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 13
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @get_saved_state_reg(i32* %32, i32 %33)
  %35 = trunc i64 %34 to i32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %28

45:                                               ; preds = %28
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_saved_state32(i32*) #1

declare dso_local i64 @get_saved_state_lr(i32*) #1

declare dso_local i64 @get_saved_state_sp(i32*) #1

declare dso_local i64 @get_saved_state_pc(i32*) #1

declare dso_local i32 @get_saved_state_cpsr(i32*) #1

declare dso_local i64 @get_saved_state_reg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
