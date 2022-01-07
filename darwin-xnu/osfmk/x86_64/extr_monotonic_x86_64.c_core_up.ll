; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_monotonic_x86_64.c_core_up.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_monotonic_x86_64.c_core_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.mt_cpu }
%struct.mt_cpu = type { i32* }

@mt_core_supported = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@MT_CORE_NFIXED = common dso_local global i32 0, align 4
@FIXED_CTR_CTRL = common dso_local global i32 0, align 4
@FIXED_CTR_CTRL_INIT = common dso_local global i32 0, align 4
@FIXED_CTR_CTRL_ENABLE = common dso_local global i32 0, align 4
@GLOBAL_CTRL = common dso_local global i32 0, align 4
@GLOBAL_CTRL_FIXED_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @core_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @core_up(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.mt_cpu*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load i32, i32* @mt_core_supported, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %42

8:                                                ; preds = %1
  %9 = call i64 (...) @ml_get_interrupts_enabled()
  %10 = load i64, i64* @FALSE, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.mt_cpu* %15, %struct.mt_cpu** %3, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %30, %8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MT_CORE_NFIXED, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.mt_cpu*, %struct.mt_cpu** %3, align 8
  %23 = getelementptr inbounds %struct.mt_cpu, %struct.mt_cpu* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mt_core_set_snap(i32 %21, i32 %28)
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %16

33:                                               ; preds = %16
  %34 = load i32, i32* @FIXED_CTR_CTRL, align 4
  %35 = load i32, i32* @FIXED_CTR_CTRL_INIT, align 4
  %36 = load i32, i32* @FIXED_CTR_CTRL_ENABLE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @wrmsr64(i32 %34, i32 %37)
  %39 = load i32, i32* @GLOBAL_CTRL, align 4
  %40 = load i32, i32* @GLOBAL_CTRL_FIXED_EN, align 4
  %41 = call i32 @wrmsr64(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %33, %7
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @mt_core_set_snap(i32, i32) #1

declare dso_local i32 @wrmsr64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
