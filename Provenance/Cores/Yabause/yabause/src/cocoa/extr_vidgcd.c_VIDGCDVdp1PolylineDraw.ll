; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp1PolylineDraw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp1PolylineDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@cmd = common dso_local global i32 0, align 4
@Vdp1Regs = common dso_local global %struct.TYPE_2__* null, align 8
@Vdp1Ram = common dso_local global i32 0, align 4
@gouraudA = common dso_local global i32 0, align 4
@gouraudB = common dso_local global i32 0, align 4
@gouraudC = common dso_local global i32 0, align 4
@gouraudD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDGCDVdp1PolylineDraw(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store double 0.000000e+00, double* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @Vdp1Ram, align 4
  %17 = call i32 @Vdp1ReadCommand(i32* @cmd, i64 %15, i32 %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @Vdp1Ram, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 12
  %27 = call i64 @T1ReadWord(i32 %22, i64 %26)
  %28 = trunc i64 %27 to i32
  %29 = add nsw i32 %21, %28
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %29, i32* %30, align 16
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @Vdp1Ram, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 14
  %40 = call i64 @T1ReadWord(i32 %35, i64 %39)
  %41 = trunc i64 %40 to i32
  %42 = add nsw i32 %34, %41
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %42, i32* %43, align 16
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @Vdp1Ram, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 16
  %53 = call i64 @T1ReadWord(i32 %48, i64 %52)
  %54 = trunc i64 %53 to i32
  %55 = add nsw i32 %47, %54
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @Vdp1Ram, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 18
  %66 = call i64 @T1ReadWord(i32 %61, i64 %65)
  %67 = trunc i64 %66 to i32
  %68 = add nsw i32 %60, %67
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* @Vdp1Ram, align 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 20
  %79 = call i64 @T1ReadWord(i32 %74, i64 %78)
  %80 = trunc i64 %79 to i32
  %81 = add nsw i32 %73, %80
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %81, i32* %82, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* @Vdp1Ram, align 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 22
  %92 = call i64 @T1ReadWord(i32 %87, i64 %91)
  %93 = trunc i64 %92 to i32
  %94 = add nsw i32 %86, %93
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %94, i32* %95, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* @Vdp1Ram, align 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 24
  %105 = call i64 @T1ReadWord(i32 %100, i64 %104)
  %106 = trunc i64 %105 to i32
  %107 = add nsw i32 %99, %106
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %107, i32* %108, align 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* @Vdp1Ram, align 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 26
  %118 = call i64 @T1ReadWord(i32 %113, i64 %117)
  %119 = trunc i64 %118 to i32
  %120 = add nsw i32 %112, %119
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %120, i32* %121, align 4
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %123 = load i32, i32* %122, align 16
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %125 = load i32, i32* %124, align 16
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @getlinelength(i32 %123, i32 %125, i32 %127, i32 %129)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @gouraudA, align 4
  %133 = load i32, i32* @gouraudB, align 4
  %134 = call i32 @gouraudLineSetup(double* %9, double* %10, double* %11, i32 %131, i32 %132, i32 %133)
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %136 = load i32, i32* %135, align 16
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %138 = load i32, i32* %137, align 16
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = load double, double* %9, align 8
  %144 = load double, double* %10, align 8
  %145 = load double, double* %11, align 8
  %146 = call i32 @DrawLine(i32 %136, i32 %138, i32 %140, i32 %142, i32 0, i32 0, double %143, double %144, double %145)
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @getlinelength(i32 %148, i32 %150, i32 %152, i32 %154)
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @gouraudB, align 4
  %158 = load i32, i32* @gouraudC, align 4
  %159 = call i32 @gouraudLineSetup(double* %9, double* %10, double* %11, i32 %156, i32 %157, i32 %158)
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %165 = load i32, i32* %164, align 8
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %167 = load i32, i32* %166, align 8
  %168 = load double, double* %9, align 8
  %169 = load double, double* %10, align 8
  %170 = load double, double* %11, align 8
  %171 = call i32 @DrawLine(i32 %161, i32 %163, i32 %165, i32 %167, i32 0, i32 0, double %168, double %169, double %170)
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @getlinelength(i32 %173, i32 %175, i32 %177, i32 %179)
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* @gouraudD, align 4
  %183 = load i32, i32* @gouraudC, align 4
  %184 = call i32 @gouraudLineSetup(double* %9, double* %10, double* %11, i32 %181, i32 %182, i32 %183)
  %185 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %190 = load i32, i32* %189, align 8
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %192 = load i32, i32* %191, align 8
  %193 = load double, double* %9, align 8
  %194 = load double, double* %10, align 8
  %195 = load double, double* %11, align 8
  %196 = call i32 @DrawLine(i32 %186, i32 %188, i32 %190, i32 %192, i32 0, i32 0, double %193, double %194, double %195)
  %197 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %202 = load i32, i32* %201, align 16
  %203 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %204 = load i32, i32* %203, align 16
  %205 = call i32 @getlinelength(i32 %198, i32 %200, i32 %202, i32 %204)
  store i32 %205, i32* %12, align 4
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* @gouraudA, align 4
  %208 = load i32, i32* @gouraudD, align 4
  %209 = call i32 @gouraudLineSetup(double* %9, double* %10, double* %11, i32 %206, i32 %207, i32 %208)
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %211 = load i32, i32* %210, align 16
  %212 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %213 = load i32, i32* %212, align 16
  %214 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %217 = load i32, i32* %216, align 4
  %218 = load double, double* %9, align 8
  %219 = load double, double* %10, align 8
  %220 = load double, double* %11, align 8
  %221 = call i32 @DrawLine(i32 %211, i32 %213, i32 %215, i32 %217, i32 0, i32 0, double %218, double %219, double %220)
  ret void
}

declare dso_local i32 @Vdp1ReadCommand(i32*, i64, i32) #1

declare dso_local i64 @T1ReadWord(i32, i64) #1

declare dso_local i32 @getlinelength(i32, i32, i32, i32) #1

declare dso_local i32 @gouraudLineSetup(double*, double*, double*, i32, i32, i32) #1

declare dso_local i32 @DrawLine(i32, i32, i32, i32, i32, i32, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
