; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_fsmc.c_FSMC_PCCARDInit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_fsmc.c_FSMC_PCCARDInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }

@FSMC_MemoryDataWidth_16b = common dso_local global i32 0, align 4
@FSMC_Bank4 = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FSMC_PCCARDInit(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @IS_FSMC_WAIT_FEATURE(i64 %5)
  %7 = call i32 @assert_param(i32 %6)
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @IS_FSMC_TCLR_TIME(i32 %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @IS_FSMC_TAR_TIME(i32 %15)
  %17 = call i32 @assert_param(i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @IS_FSMC_SETUP_TIME(i64 %22)
  %24 = call i32 @assert_param(i32 %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @IS_FSMC_WAIT_TIME(i32 %29)
  %31 = call i32 @assert_param(i32 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @IS_FSMC_HOLD_TIME(i32 %36)
  %38 = call i32 @assert_param(i32 %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @IS_FSMC_HIZ_TIME(i32 %43)
  %45 = call i32 @assert_param(i32 %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @IS_FSMC_SETUP_TIME(i64 %50)
  %52 = call i32 @assert_param(i32 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @IS_FSMC_WAIT_TIME(i32 %57)
  %59 = call i32 @assert_param(i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @IS_FSMC_HOLD_TIME(i32 %64)
  %66 = call i32 @assert_param(i32 %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @IS_FSMC_HIZ_TIME(i32 %71)
  %73 = call i32 @assert_param(i32 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @IS_FSMC_SETUP_TIME(i64 %78)
  %80 = call i32 @assert_param(i32 %79)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @IS_FSMC_WAIT_TIME(i32 %85)
  %87 = call i32 @assert_param(i32 %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @IS_FSMC_HOLD_TIME(i32 %92)
  %94 = call i32 @assert_param(i32 %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @IS_FSMC_HIZ_TIME(i32 %99)
  %101 = call i32 @assert_param(i32 %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* @FSMC_MemoryDataWidth_16b, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = shl i32 %110, 9
  %112 = or i32 %107, %111
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 13
  %117 = or i32 %112, %116
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** @FSMC_Bank4, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = shl i32 %130, 8
  %132 = or i32 %125, %131
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 16
  %139 = or i32 %132, %138
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = shl i32 %144, 24
  %146 = or i32 %139, %145
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** @FSMC_Bank4, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = shl i32 %159, 8
  %161 = or i32 %154, %160
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 16
  %168 = or i32 %161, %167
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = shl i32 %173, 24
  %175 = or i32 %168, %174
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** @FSMC_Bank4, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 4
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = shl i32 %188, 8
  %190 = or i32 %183, %189
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = shl i32 %195, 16
  %197 = or i32 %190, %196
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = shl i32 %202, 24
  %204 = or i32 %197, %203
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** @FSMC_Bank4, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 3
  store i32 %204, i32* %206, align 4
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_FSMC_WAIT_FEATURE(i64) #1

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
