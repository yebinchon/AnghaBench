; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetGPFifo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetGPFifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gxfifo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@_gpfifo = common dso_local global i32 0, align 4
@GX_DISABLE = common dso_local global i32 0, align 4
@_gxgpfifoready = common dso_local global i32 0, align 4
@_cpgplinked = common dso_local global i32 0, align 4
@GX_FALSE = common dso_local global i32 0, align 4
@_cpReg = common dso_local global i32* null, align 8
@GX_ENABLE = common dso_local global i32 0, align 4
@GX_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetGPFifo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.__gxfifo*, align 8
  %5 = alloca %struct.__gxfifo*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32* %6 to %struct.__gxfifo*
  store %struct.__gxfifo* %7, %struct.__gxfifo** %4, align 8
  store %struct.__gxfifo* bitcast (i32* @_gpfifo to %struct.__gxfifo*), %struct.__gxfifo** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @_CPU_ISR_Disable(i32 %8)
  %10 = call i32 (...) @__GX_FifoReadDisable()
  %11 = load i32, i32* @GX_DISABLE, align 4
  %12 = load i32, i32* @GX_DISABLE, align 4
  %13 = call i32 @__GX_WriteFifoIntEnable(i32 %11, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %1
  store i32 0, i32* @_gxgpfifoready, align 4
  store i32 0, i32* @_cpgplinked, align 4
  %17 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %18 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %20 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @GX_FALSE, align 4
  %22 = call i32 @__GX_FifoLink(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @_CPU_ISR_Restore(i32 %23)
  br label %196

25:                                               ; preds = %1
  %26 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %27 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %30 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 4
  %31 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %32 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %35 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %37 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %40 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 4
  %41 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %42 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %45 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %47 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %50 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %52 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %55 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %57 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %60 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %62 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %65 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %67 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %70 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 4
  %71 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %72 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %75 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %77 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  store i32 1, i32* @_gxgpfifoready, align 4
  %78 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %79 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i32 %80)
  %82 = call i32 @_SHIFTL(i32 %81, i32 0, i32 16)
  %83 = load i32*, i32** @_cpReg, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 16
  store i32 %82, i32* %84, align 4
  %85 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %86 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i32 %87)
  %89 = call i32 @_SHIFTR(i32 %88, i32 16, i32 16)
  %90 = load i32*, i32** @_cpReg, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 17
  store i32 %89, i32* %91, align 4
  %92 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %93 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i32 %94)
  %96 = call i32 @_SHIFTL(i32 %95, i32 0, i32 16)
  %97 = load i32*, i32** @_cpReg, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 18
  store i32 %96, i32* %98, align 4
  %99 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %100 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i32 %101)
  %103 = call i32 @_SHIFTR(i32 %102, i32 16, i32 16)
  %104 = load i32*, i32** @_cpReg, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 19
  store i32 %103, i32* %105, align 4
  %106 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %107 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @_SHIFTL(i32 %108, i32 0, i32 16)
  %110 = load i32*, i32** @_cpReg, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 20
  store i32 %109, i32* %111, align 4
  %112 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %113 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @_SHIFTR(i32 %114, i32 16, i32 16)
  %116 = load i32*, i32** @_cpReg, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 21
  store i32 %115, i32* %117, align 4
  %118 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %119 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @_SHIFTL(i32 %120, i32 0, i32 16)
  %122 = load i32*, i32** @_cpReg, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 22
  store i32 %121, i32* %123, align 4
  %124 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %125 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @_SHIFTR(i32 %126, i32 16, i32 16)
  %128 = load i32*, i32** @_cpReg, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 23
  store i32 %127, i32* %129, align 4
  %130 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %131 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @_SHIFTL(i32 %132, i32 0, i32 16)
  %134 = load i32*, i32** @_cpReg, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 24
  store i32 %133, i32* %135, align 4
  %136 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %137 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @_SHIFTR(i32 %138, i32 16, i32 16)
  %140 = load i32*, i32** @_cpReg, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 25
  store i32 %139, i32* %141, align 4
  %142 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %143 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i32 %144)
  %146 = call i32 @_SHIFTL(i32 %145, i32 0, i32 16)
  %147 = load i32*, i32** @_cpReg, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 26
  store i32 %146, i32* %148, align 4
  %149 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %150 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i32 %151)
  %153 = call i32 @_SHIFTR(i32 %152, i32 16, i32 16)
  %154 = load i32*, i32** @_cpReg, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 27
  store i32 %153, i32* %155, align 4
  %156 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %157 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i32 %158)
  %160 = call i32 @_SHIFTL(i32 %159, i32 0, i32 16)
  %161 = load i32*, i32** @_cpReg, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 28
  store i32 %160, i32* %162, align 4
  %163 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %164 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i32 %165)
  %167 = call i32 @_SHIFTR(i32 %166, i32 16, i32 16)
  %168 = load i32*, i32** @_cpReg, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 29
  store i32 %167, i32* %169, align 4
  %170 = call i32 (...) @ppcsync()
  %171 = call i64 (...) @__GX_CPGPLinkCheck()
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %25
  store i32 1, i32* @_cpgplinked, align 4
  %174 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %175 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %174, i32 0, i32 0
  store i32 1, i32* %175, align 4
  %176 = load i32, i32* @GX_ENABLE, align 4
  %177 = load i32, i32* @GX_DISABLE, align 4
  %178 = call i32 @__GX_WriteFifoIntEnable(i32 %176, i32 %177)
  %179 = load i32, i32* @GX_TRUE, align 4
  %180 = call i32 @__GX_FifoLink(i32 %179)
  br label %189

181:                                              ; preds = %25
  store i32 0, i32* @_cpgplinked, align 4
  %182 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %183 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %182, i32 0, i32 0
  store i32 0, i32* %183, align 4
  %184 = load i32, i32* @GX_DISABLE, align 4
  %185 = load i32, i32* @GX_DISABLE, align 4
  %186 = call i32 @__GX_WriteFifoIntEnable(i32 %184, i32 %185)
  %187 = load i32, i32* @GX_FALSE, align 4
  %188 = call i32 @__GX_FifoLink(i32 %187)
  br label %189

189:                                              ; preds = %181, %173
  %190 = load i32, i32* @GX_TRUE, align 4
  %191 = load i32, i32* @GX_TRUE, align 4
  %192 = call i32 @__GX_WriteFifoIntReset(i32 %190, i32 %191)
  %193 = call i32 (...) @__GX_FifoReadEnable()
  %194 = load i32, i32* %3, align 4
  %195 = call i32 @_CPU_ISR_Restore(i32 %194)
  br label %196

196:                                              ; preds = %189, %16
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__GX_FifoReadDisable(...) #1

declare dso_local i32 @__GX_WriteFifoIntEnable(i32, i32) #1

declare dso_local i32 @__GX_FifoLink(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @MEM_VIRTUAL_TO_PHYSICAL(i32) #1

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

declare dso_local i32 @ppcsync(...) #1

declare dso_local i64 @__GX_CPGPLinkCheck(...) #1

declare dso_local i32 @__GX_WriteFifoIntReset(i32, i32) #1

declare dso_local i32 @__GX_FifoReadEnable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
