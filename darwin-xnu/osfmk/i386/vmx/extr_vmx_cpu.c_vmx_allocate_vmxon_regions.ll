; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/vmx/extr_vmx_cpu.c_vmx_allocate_vmxon_regions.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/vmx/extr_vmx_cpu.c_vmx_allocate_vmxon_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }

@real_ncpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"vmx_allocate_vmxon_regions: unable to allocate VMXON region\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vmx_allocate_vmxon_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_allocate_vmxon_regions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %28, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @real_ncpus, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %31

7:                                                ; preds = %3
  %8 = load i32, i32* %1, align 4
  %9 = call %struct.TYPE_6__* @cpu_datap(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %2, align 8
  %11 = call i32* (...) @vmx_pcalloc()
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32* %11, i32** %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* null, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %7
  %19 = call i32 @panic(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %7
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %1, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %3

31:                                               ; preds = %3
  ret void
}

declare dso_local %struct.TYPE_6__* @cpu_datap(i32) #1

declare dso_local i32* @vmx_pcalloc(...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
