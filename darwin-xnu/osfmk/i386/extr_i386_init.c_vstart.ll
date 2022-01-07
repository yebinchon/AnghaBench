; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_init.c_vstart.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_init.c_vstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@VSTART_ENTRY = common dso_local global i32 0, align 4
@VSTART_IDT_INIT = common dso_local global i32 0, align 4
@kernelBootArgs = common dso_local global %struct.TYPE_10__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@physfree = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"revision      0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"version       0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"command line  %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"memory map    0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"memory map sz 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"kaddr         0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"ksize         0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"physfree      %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"bootargs: %p, &ksize: %p &kaddr: %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"SMBIOS mem sz 0x%llx\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"i386_init(0x%lx) kernelBootArgs=%p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@PE_INIT_PLATFORM_D = common dso_local global i32 0, align 4
@VSTART_IDLE_PTS_INIT = common dso_local global i32 0, align 4
@first_avail = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@VSTART_CPU_DESC_INIT = common dso_local global i32 0, align 4
@VSTART_CPU_MODE_INIT = common dso_local global i32 0, align 4
@IdlePML4 = common dso_local global i8* null, align 8
@lapic_to_cpu = common dso_local global i32* null, align 8
@ID = common dso_local global i32 0, align 4
@LAPIC_ID_SHIFT = common dso_local global i64 0, align 8
@LAPIC_ID_MASK = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [39 x i8] c"CPU: %d, GSBASE initial value: 0x%llx\0A\00", align 1
@MSR_IA32_GS_BASE = common dso_local global i32 0, align 4
@VSTART_EXIT = common dso_local global i32 0, align 4
@i386_init = common dso_local global i64 0, align 8
@i386_init_slave = common dso_local global i64 0, align 8

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @vstart(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp eq i64 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @VSTART_ENTRY, align 4
  %11 = call i32 @postcode(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %105

14:                                               ; preds = %1
  %15 = call i32 (...) @vstart_idt_init()
  %16 = load i32, i32* @VSTART_IDT_INIT, align 4
  %17 = call i32 @postcode(i32 %16)
  %18 = load i64, i64* %2, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** @kernelBootArgs, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernelBootArgs, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernelBootArgs, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = add nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = sub nsw i32 %31, 1
  %33 = xor i32 %32, -1
  %34 = and i32 %30, %33
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** @physfree, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernelBootArgs, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernelBootArgs, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernelBootArgs, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernelBootArgs, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernelBootArgs, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernelBootArgs, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernelBootArgs, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %63)
  %65 = load i8*, i8** @physfree, align 8
  %66 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernelBootArgs, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernelBootArgs, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernelBootArgs, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_10__* %67, i32* %69, i32* %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernelBootArgs, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %75)
  %77 = load i64, i64* %2, align 8
  %78 = call i64 @ml_static_ptovirt(i64 %77)
  %79 = inttoptr i64 %78 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** @kernelBootArgs, align 8
  %80 = load i64, i64* %2, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernelBootArgs, align 8
  %82 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i64 %80, %struct.TYPE_10__* %81)
  %83 = load i32, i32* @FALSE, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernelBootArgs, align 8
  %85 = call i32 @PE_init_platform(i32 %83, %struct.TYPE_10__* %84)
  %86 = load i32, i32* @PE_INIT_PLATFORM_D, align 4
  %87 = call i32 @postcode(i32 %86)
  %88 = call i32 (...) @Idle_PTs_init()
  %89 = load i32, i32* @VSTART_IDLE_PTS_INIT, align 4
  %90 = call i32 @postcode(i32 %89)
  %91 = load i8*, i8** @physfree, align 8
  %92 = call i64 @ID_MAP_VTOP(i8* %91)
  store i64 %92, i64* @first_avail, align 8
  %93 = load i32, i32* @TRUE, align 4
  %94 = call i32 @cpu_data_alloc(i32 %93)
  %95 = call %struct.TYPE_11__* @cpu_datap(i32 0)
  %96 = call i32 @cpu_desc_init(%struct.TYPE_11__* %95)
  %97 = load i32, i32* @VSTART_CPU_DESC_INIT, align 4
  %98 = call i32 @postcode(i32 %97)
  %99 = call %struct.TYPE_11__* @cpu_datap(i32 0)
  %100 = call i32 @cpu_desc_load(%struct.TYPE_11__* %99)
  %101 = load i32, i32* @VSTART_CPU_MODE_INIT, align 4
  %102 = call i32 @postcode(i32 %101)
  %103 = call %struct.TYPE_11__* @cpu_datap(i32 0)
  %104 = call i32 @cpu_syscall_init(%struct.TYPE_11__* %103)
  br label %125

105:                                              ; preds = %1
  %106 = load i8*, i8** @IdlePML4, align 8
  %107 = call i64 @ID_MAP_VTOP(i8* %106)
  %108 = call i32 @set_cr3_raw(i64 %107)
  %109 = load i32*, i32** @lapic_to_cpu, align 8
  %110 = load i32, i32* @ID, align 4
  %111 = call i64 @LAPIC_READ(i32 %110)
  %112 = load i64, i64* @LAPIC_ID_SHIFT, align 8
  %113 = lshr i64 %111, %112
  %114 = load i64, i64* @LAPIC_ID_MASK, align 8
  %115 = and i64 %113, %114
  %116 = getelementptr inbounds i32, i32* %109, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @MSR_IA32_GS_BASE, align 4
  %120 = call %struct.TYPE_10__* @rdmsr64(i32 %119)
  %121 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %118, %struct.TYPE_10__* %120)
  %122 = load i32, i32* %4, align 4
  %123 = call %struct.TYPE_11__* @cpu_datap(i32 %122)
  %124 = call i32 @cpu_desc_load(%struct.TYPE_11__* %123)
  br label %125

125:                                              ; preds = %105, %14
  %126 = load i32, i32* @VSTART_EXIT, align 4
  %127 = call i32 @postcode(i32 %126)
  %128 = load i32, i32* %3, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i64, i64* @i386_init, align 8
  br label %134

132:                                              ; preds = %125
  %133 = load i64, i64* @i386_init_slave, align 8
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i64 [ %131, %130 ], [ %133, %132 ]
  %136 = load i32, i32* %4, align 4
  %137 = call %struct.TYPE_11__* @cpu_datap(i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @x86_init_wrapper(i64 %135, i32 %139)
  unreachable
}

declare dso_local i32 @postcode(i32) #1

declare dso_local i32 @vstart_idt_init(...) #1

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i64 @ml_static_ptovirt(i64) #1

declare dso_local i32 @PE_init_platform(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @Idle_PTs_init(...) #1

declare dso_local i64 @ID_MAP_VTOP(i8*) #1

declare dso_local i32 @cpu_data_alloc(i32) #1

declare dso_local i32 @cpu_desc_init(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @cpu_datap(i32) #1

declare dso_local i32 @cpu_desc_load(%struct.TYPE_11__*) #1

declare dso_local i32 @cpu_syscall_init(%struct.TYPE_11__*) #1

declare dso_local i32 @set_cr3_raw(i64) #1

declare dso_local i64 @LAPIC_READ(i32) #1

declare dso_local %struct.TYPE_10__* @rdmsr64(i32) #1

declare dso_local i32 @x86_init_wrapper(i64, i32) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
