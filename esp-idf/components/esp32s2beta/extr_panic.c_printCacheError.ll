; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_panic.c_printCacheError.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_panic.c_printCacheError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DPORT_CACHE_DBG_STATUS0_REG = common dso_local global i32 0, align 4
@DPORT_CACHE_DBG_STATUS1_REG = common dso_local global i32 0, align 4
@DPORT_PRO_ICACHE_MEM_SYNC0_REG = common dso_local global i32 0, align 4
@DPORT_PRO_ICACHE_MEM_SYNC1_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Icache sync parameter configuration error, the error address and size is 0x\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"(0x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c")\0D\0A\00", align 1
@DPORT_PRO_ICACHE_PRELOAD_ADDR_REG = common dso_local global i32 0, align 4
@DPORT_PRO_ICACHE_PRELOAD_SIZE_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [79 x i8] c"Icache preload parameter configuration error, the error address and size is 0x\00", align 1
@DPORT_PRO_ICACHE_REJECT_VADDR_REG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"Icache reject error occurred while accessing the address 0x\00", align 1
@DPORT_PRO_CACHE_MMU_ERROR_CONTENT_REG = common dso_local global i32 0, align 4
@DPORT_MMU_INVALID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c" (invalid mmu entry)\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@DPORT_PRO_DCACHE_MEM_SYNC0_REG = common dso_local global i32 0, align 4
@DPORT_PRO_DCACHE_MEM_SYNC1_REG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [76 x i8] c"Dcache sync parameter configuration error, the error address and size is 0x\00", align 1
@DPORT_PRO_DCACHE_PRELOAD_ADDR_REG = common dso_local global i32 0, align 4
@DPORT_PRO_DCACHE_PRELOAD_SIZE_REG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [79 x i8] c"Dcache preload parameter configuration error, the error address and size is 0x\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"Write back error occurred while dcache tries to write back to flash\0D\0A\00", align 1
@DPORT_PRO_DCACHE_REJECT_VADDR_REG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [60 x i8] c"Dcache reject error occurred while accessing the address 0x\00", align 1
@DPORT_PRO_CACHE_MMU_ERROR_VADDR_REG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [62 x i8] c"MMU entry fault error occurred while accessing the address 0x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @printCacheError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printCacheError() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* @DPORT_CACHE_DBG_STATUS0_REG, align 4
  %6 = call i32 @REG_READ(i32 %5)
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @DPORT_CACHE_DBG_STATUS1_REG, align 4
  %9 = call i32 @REG_READ(i32 %8)
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 %9, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %124, %0
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %127

14:                                               ; preds = %11
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = and i32 %16, %18
  switch i32 %19, label %59 [
    i32 129, label %20
    i32 130, label %32
    i32 131, label %44
  ]

20:                                               ; preds = %14
  %21 = load i32, i32* @DPORT_PRO_ICACHE_MEM_SYNC0_REG, align 4
  %22 = call i32 @REG_READ(i32 %21)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @DPORT_PRO_ICACHE_MEM_SYNC1_REG, align 4
  %24 = call i32 @REG_READ(i32 %23)
  store i32 %24, i32* %2, align 4
  %25 = call i32 @panicPutStr(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @panicPutHex(i32 %26)
  %28 = call i32 @panicPutStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @panicPutHex(i32 %29)
  %31 = call i32 @panicPutStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %60

32:                                               ; preds = %14
  %33 = load i32, i32* @DPORT_PRO_ICACHE_PRELOAD_ADDR_REG, align 4
  %34 = call i32 @REG_READ(i32 %33)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* @DPORT_PRO_ICACHE_PRELOAD_SIZE_REG, align 4
  %36 = call i32 @REG_READ(i32 %35)
  store i32 %36, i32* %2, align 4
  %37 = call i32 @panicPutStr(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @panicPutHex(i32 %38)
  %40 = call i32 @panicPutStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @panicPutHex(i32 %41)
  %43 = call i32 @panicPutStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %60

44:                                               ; preds = %14
  %45 = load i32, i32* @DPORT_PRO_ICACHE_REJECT_VADDR_REG, align 4
  %46 = call i32 @REG_READ(i32 %45)
  store i32 %46, i32* %1, align 4
  %47 = call i32 @panicPutStr(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @panicPutHex(i32 %48)
  %50 = load i32, i32* @DPORT_PRO_CACHE_MMU_ERROR_CONTENT_REG, align 4
  %51 = call i32 @REG_READ(i32 %50)
  %52 = load i32, i32* @DPORT_MMU_INVALID, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = call i32 @panicPutStr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %44
  %58 = call i32 @panicPutStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %60

59:                                               ; preds = %14
  br label %60

60:                                               ; preds = %59, %57, %32, %20
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @BIT(i32 %63)
  %65 = and i32 %62, %64
  switch i32 %65, label %122 [
    i32 132, label %66
    i32 133, label %78
    i32 134, label %90
    i32 135, label %92
    i32 128, label %107
  ]

66:                                               ; preds = %60
  %67 = load i32, i32* @DPORT_PRO_DCACHE_MEM_SYNC0_REG, align 4
  %68 = call i32 @REG_READ(i32 %67)
  store i32 %68, i32* %1, align 4
  %69 = load i32, i32* @DPORT_PRO_DCACHE_MEM_SYNC1_REG, align 4
  %70 = call i32 @REG_READ(i32 %69)
  store i32 %70, i32* %2, align 4
  %71 = call i32 @panicPutStr(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i64 0, i64 0))
  %72 = load i32, i32* %1, align 4
  %73 = call i32 @panicPutHex(i32 %72)
  %74 = call i32 @panicPutStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @panicPutHex(i32 %75)
  %77 = call i32 @panicPutStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %123

78:                                               ; preds = %60
  %79 = load i32, i32* @DPORT_PRO_DCACHE_PRELOAD_ADDR_REG, align 4
  %80 = call i32 @REG_READ(i32 %79)
  store i32 %80, i32* %1, align 4
  %81 = load i32, i32* @DPORT_PRO_DCACHE_PRELOAD_SIZE_REG, align 4
  %82 = call i32 @REG_READ(i32 %81)
  store i32 %82, i32* %2, align 4
  %83 = call i32 @panicPutStr(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.8, i64 0, i64 0))
  %84 = load i32, i32* %1, align 4
  %85 = call i32 @panicPutHex(i32 %84)
  %86 = call i32 @panicPutStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* %2, align 4
  %88 = call i32 @panicPutHex(i32 %87)
  %89 = call i32 @panicPutStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %123

90:                                               ; preds = %60
  %91 = call i32 @panicPutStr(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i64 0, i64 0))
  br label %123

92:                                               ; preds = %60
  %93 = load i32, i32* @DPORT_PRO_DCACHE_REJECT_VADDR_REG, align 4
  %94 = call i32 @REG_READ(i32 %93)
  store i32 %94, i32* %1, align 4
  %95 = call i32 @panicPutStr(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0))
  %96 = load i32, i32* %1, align 4
  %97 = call i32 @panicPutHex(i32 %96)
  %98 = load i32, i32* @DPORT_PRO_CACHE_MMU_ERROR_CONTENT_REG, align 4
  %99 = call i32 @REG_READ(i32 %98)
  %100 = load i32, i32* @DPORT_MMU_INVALID, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %92
  %104 = call i32 @panicPutStr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %92
  %106 = call i32 @panicPutStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %123

107:                                              ; preds = %60
  %108 = load i32, i32* @DPORT_PRO_CACHE_MMU_ERROR_VADDR_REG, align 4
  %109 = call i32 @REG_READ(i32 %108)
  store i32 %109, i32* %1, align 4
  %110 = call i32 @panicPutStr(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0))
  %111 = load i32, i32* %1, align 4
  %112 = call i32 @panicPutHex(i32 %111)
  %113 = load i32, i32* @DPORT_PRO_CACHE_MMU_ERROR_CONTENT_REG, align 4
  %114 = call i32 @REG_READ(i32 %113)
  %115 = load i32, i32* @DPORT_MMU_INVALID, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = call i32 @panicPutStr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %107
  %121 = call i32 @panicPutStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %123

122:                                              ; preds = %60
  br label %123

123:                                              ; preds = %122, %120, %105, %90, %78, %66
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %11

127:                                              ; preds = %11
  %128 = call i32 @panicPutStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @panicPutStr(i8*) #1

declare dso_local i32 @panicPutHex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
