; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_ff_v360_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_ff_v360_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@remap1_8bit_line_c = common dso_local global i32 0, align 4
@remap1_16bit_line_c = common dso_local global i32 0, align 4
@remap2_8bit_line_c = common dso_local global i32 0, align 4
@remap2_16bit_line_c = common dso_local global i32 0, align 4
@remap4_8bit_line_c = common dso_local global i32 0, align 4
@remap4_16bit_line_c = common dso_local global i32 0, align 4
@ARCH_X86 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_v360_init(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %41 [
    i32 128, label %8
    i32 130, label %19
    i32 131, label %30
    i32 129, label %30
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 8
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @remap1_8bit_line_c, align 4
  br label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @remap1_16bit_line_c, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %41

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @remap2_8bit_line_c, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @remap2_16bit_line_c, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %41

30:                                               ; preds = %2, %2
  %31 = load i32, i32* %4, align 4
  %32 = icmp sle i32 %31, 8
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @remap4_8bit_line_c, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @remap4_16bit_line_c, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %2, %37, %26, %15
  %42 = load i64, i64* @ARCH_X86, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @ff_v360_init_x86(%struct.TYPE_4__* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %41
  ret void
}

declare dso_local i32 @ff_v360_init_x86(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
