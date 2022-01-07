; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpuid.c_cpuid_set_cpufamily.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpuid.c_cpuid_set_cpufamily.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@CPUFAMILY_UNKNOWN = common dso_local global i32 0, align 4
@CPUFAMILY_INTEL_PENRYN = common dso_local global i32 0, align 4
@CPUFAMILY_INTEL_NEHALEM = common dso_local global i32 0, align 4
@CPUFAMILY_INTEL_WESTMERE = common dso_local global i32 0, align 4
@CPUFAMILY_INTEL_SANDYBRIDGE = common dso_local global i32 0, align 4
@CPUFAMILY_INTEL_IVYBRIDGE = common dso_local global i32 0, align 4
@CPUFAMILY_INTEL_HASWELL = common dso_local global i32 0, align 4
@CPUFAMILY_INTEL_BROADWELL = common dso_local global i32 0, align 4
@CPUFAMILY_INTEL_SKYLAKE = common dso_local global i32 0, align 4
@CPUFAMILY_INTEL_KABYLAKE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cpuid_set_cpufamily(%p) returning 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @cpuid_set_cpufamily to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuid_set_cpufamily(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load i32, i32* @CPUFAMILY_UNKNOWN, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %31 [
    i32 6, label %8
  ]

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %30 [
    i32 23, label %12
    i32 135, label %14
    i32 144, label %14
    i32 146, label %14
    i32 134, label %14
    i32 145, label %16
    i32 129, label %16
    i32 128, label %16
    i32 133, label %18
    i32 138, label %18
    i32 140, label %20
    i32 139, label %20
    i32 143, label %22
    i32 142, label %22
    i32 141, label %22
    i32 147, label %22
    i32 149, label %24
    i32 148, label %24
    i32 132, label %26
    i32 131, label %26
    i32 130, label %26
    i32 137, label %28
    i32 136, label %28
  ]

12:                                               ; preds = %8
  %13 = load i32, i32* @CPUFAMILY_INTEL_PENRYN, align 4
  store i32 %13, i32* %3, align 4
  br label %30

14:                                               ; preds = %8, %8, %8, %8
  %15 = load i32, i32* @CPUFAMILY_INTEL_NEHALEM, align 4
  store i32 %15, i32* %3, align 4
  br label %30

16:                                               ; preds = %8, %8, %8
  %17 = load i32, i32* @CPUFAMILY_INTEL_WESTMERE, align 4
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %8, %8
  %19 = load i32, i32* @CPUFAMILY_INTEL_SANDYBRIDGE, align 4
  store i32 %19, i32* %3, align 4
  br label %30

20:                                               ; preds = %8, %8
  %21 = load i32, i32* @CPUFAMILY_INTEL_IVYBRIDGE, align 4
  store i32 %21, i32* %3, align 4
  br label %30

22:                                               ; preds = %8, %8, %8, %8
  %23 = load i32, i32* @CPUFAMILY_INTEL_HASWELL, align 4
  store i32 %23, i32* %3, align 4
  br label %30

24:                                               ; preds = %8, %8
  %25 = load i32, i32* @CPUFAMILY_INTEL_BROADWELL, align 4
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %8, %8, %8
  %27 = load i32, i32* @CPUFAMILY_INTEL_SKYLAKE, align 4
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; preds = %8, %8
  %29 = load i32, i32* @CPUFAMILY_INTEL_KABYLAKE, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %8, %28, %26, %24, %22, %20, %18, %16, %14, %12
  br label %31

31:                                               ; preds = %1, %30
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @DBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %35, i32 %36)
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @DBG(i8*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
