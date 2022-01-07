; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp_desc.c_cpu_desc_load.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp_desc.c_cpu_desc_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@CPU_DESC_LOAD_ENTRY = common dso_local global i32 0, align 4
@CPU_DESC_LOAD_GS_BASE = common dso_local global i32 0, align 4
@MSR_IA32_GS_BASE = common dso_local global i32 0, align 4
@CPU_DESC_LOAD_KERNEL_GS_BASE = common dso_local global i32 0, align 4
@MSR_IA32_KERNEL_GS_BASE = common dso_local global i32 0, align 4
@ACC_TSS_BUSY = common dso_local global i32 0, align 4
@KERNEL_TSS = common dso_local global i32 0, align 4
@GDTSZ = common dso_local global i32 0, align 4
@CPU_DESC_LOAD_GDT = common dso_local global i32 0, align 4
@CPU_DESC_LOAD_IDT = common dso_local global i32 0, align 4
@CPU_DESC_LOAD_LDT = common dso_local global i32 0, align 4
@KERNEL_LDT = common dso_local global i32 0, align 4
@CPU_DESC_LOAD_TSS = common dso_local global i32 0, align 4
@CPU_DESC_LOAD_EXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_desc_load(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %4 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %3, align 8
  %6 = load i32, i32* @CPU_DESC_LOAD_ENTRY, align 4
  %7 = call i32 @postcode(i32 %6)
  %8 = load i32, i32* @CPU_DESC_LOAD_GS_BASE, align 4
  %9 = call i32 @postcode(i32 %8)
  %10 = load i32, i32* @MSR_IA32_GS_BASE, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = ptrtoint %struct.TYPE_14__* %11 to i64
  %13 = call i32 @wrmsr64(i32 %10, i64 %12)
  %14 = load i32, i32* @CPU_DESC_LOAD_KERNEL_GS_BASE, align 4
  %15 = call i32 @postcode(i32 %14)
  %16 = load i32, i32* @MSR_IA32_KERNEL_GS_BASE, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %18 = ptrtoint %struct.TYPE_14__* %17 to i64
  %19 = call i32 @wrmsr64(i32 %16, i64 %18)
  %20 = load i32, i32* @ACC_TSS_BUSY, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* @KERNEL_TSS, align 4
  %23 = call %struct.TYPE_15__* @gdt_desc_p(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %21
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @GDTSZ, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = sub i64 %29, 1
  %31 = trunc i64 %30 to i32
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 4096, %44
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load i32, i32* @CPU_DESC_LOAD_GDT, align 4
  %57 = call i32 @postcode(i32 %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = bitcast %struct.TYPE_11__* %59 to i64*
  %61 = call i32 @lgdt(i64* %60)
  %62 = load i32, i32* @CPU_DESC_LOAD_IDT, align 4
  %63 = call i32 @postcode(i32 %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = bitcast %struct.TYPE_12__* %65 to i64*
  %67 = call i32 @lidt(i64* %66)
  %68 = load i32, i32* @CPU_DESC_LOAD_LDT, align 4
  %69 = call i32 @postcode(i32 %68)
  %70 = load i32, i32* @KERNEL_LDT, align 4
  %71 = call i32 @lldt(i32 %70)
  %72 = load i32, i32* @CPU_DESC_LOAD_TSS, align 4
  %73 = call i32 @postcode(i32 %72)
  %74 = load i32, i32* @KERNEL_TSS, align 4
  %75 = call i32 @set_tr(i32 %74)
  %76 = load i32, i32* @CPU_DESC_LOAD_EXIT, align 4
  %77 = call i32 @postcode(i32 %76)
  ret void
}

declare dso_local i32 @postcode(i32) #1

declare dso_local i32 @wrmsr64(i32, i64) #1

declare dso_local %struct.TYPE_15__* @gdt_desc_p(i32) #1

declare dso_local i32 @lgdt(i64*) #1

declare dso_local i32 @lidt(i64*) #1

declare dso_local i32 @lldt(i32) #1

declare dso_local i32 @set_tr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
