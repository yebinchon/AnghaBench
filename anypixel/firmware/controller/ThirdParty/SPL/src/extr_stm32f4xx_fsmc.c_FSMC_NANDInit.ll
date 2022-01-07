; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_fsmc.c_FSMC_NANDInit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_fsmc.c_FSMC_NANDInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }

@PCR_MEMORYTYPE_NAND = common dso_local global i32 0, align 4
@FSMC_Bank2_NAND = common dso_local global i64 0, align 8
@FSMC_Bank2 = common dso_local global %struct.TYPE_11__* null, align 8
@FSMC_Bank3 = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FSMC_NANDInit(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @IS_FSMC_NAND_BANK(i64 %8)
  %10 = call i32 @assert_param(i32 %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @IS_FSMC_WAIT_FEATURE(i64 %13)
  %15 = call i32 @assert_param(i32 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @IS_FSMC_MEMORY_WIDTH(i32 %18)
  %20 = call i32 @assert_param(i32 %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IS_FSMC_ECC_STATE(i32 %23)
  %25 = call i32 @assert_param(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @IS_FSMC_ECCPAGE_SIZE(i32 %28)
  %30 = call i32 @assert_param(i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IS_FSMC_TCLR_TIME(i32 %33)
  %35 = call i32 @assert_param(i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @IS_FSMC_TAR_TIME(i32 %38)
  %40 = call i32 @assert_param(i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 7
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @IS_FSMC_SETUP_TIME(i64 %45)
  %47 = call i32 @assert_param(i32 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 7
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @IS_FSMC_WAIT_TIME(i32 %52)
  %54 = call i32 @assert_param(i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 7
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @IS_FSMC_HOLD_TIME(i32 %59)
  %61 = call i32 @assert_param(i32 %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 7
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @IS_FSMC_HIZ_TIME(i32 %66)
  %68 = call i32 @assert_param(i32 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 6
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @IS_FSMC_SETUP_TIME(i64 %73)
  %75 = call i32 @assert_param(i32 %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 6
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @IS_FSMC_WAIT_TIME(i32 %80)
  %82 = call i32 @assert_param(i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 6
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @IS_FSMC_HOLD_TIME(i32 %87)
  %89 = call i32 @assert_param(i32 %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 6
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @IS_FSMC_HIZ_TIME(i32 %94)
  %96 = call i32 @assert_param(i32 %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 8
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* @PCR_MEMORYTYPE_NAND, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %102, %105
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %106, %109
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %110, %113
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 9
  %119 = or i32 %114, %118
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 %122, 13
  %124 = or i32 %119, %123
  store i32 %124, i32* %3, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 7
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 7
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = shl i32 %135, 8
  %137 = or i32 %130, %136
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 7
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 16
  %144 = or i32 %137, %143
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 7
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = shl i32 %149, 24
  %151 = or i32 %144, %150
  store i32 %151, i32* %4, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 6
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 6
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = shl i32 %162, 8
  %164 = or i32 %157, %163
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 6
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 16
  %171 = or i32 %164, %170
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 6
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = shl i32 %176, 24
  %178 = or i32 %171, %177
  store i32 %178, i32* %5, align 4
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @FSMC_Bank2_NAND, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %1
  %185 = load i32, i32* %3, align 4
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** @FSMC_Bank2, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* %4, align 4
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** @FSMC_Bank2, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* %5, align 4
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** @FSMC_Bank2, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 4
  br label %204

194:                                              ; preds = %1
  %195 = load i32, i32* %3, align 4
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** @FSMC_Bank3, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %4, align 4
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** @FSMC_Bank3, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* %5, align 4
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** @FSMC_Bank3, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 4
  br label %204

204:                                              ; preds = %194, %184
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_FSMC_NAND_BANK(i64) #1

declare dso_local i32 @IS_FSMC_WAIT_FEATURE(i64) #1

declare dso_local i32 @IS_FSMC_MEMORY_WIDTH(i32) #1

declare dso_local i32 @IS_FSMC_ECC_STATE(i32) #1

declare dso_local i32 @IS_FSMC_ECCPAGE_SIZE(i32) #1

declare dso_local i32 @IS_FSMC_TCLR_TIME(i32) #1

declare dso_local i32 @IS_FSMC_TAR_TIME(i32) #1

declare dso_local i32 @IS_FSMC_SETUP_TIME(i64) #1

declare dso_local i32 @IS_FSMC_WAIT_TIME(i32) #1

declare dso_local i32 @IS_FSMC_HOLD_TIME(i32) #1

declare dso_local i32 @IS_FSMC_HIZ_TIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
