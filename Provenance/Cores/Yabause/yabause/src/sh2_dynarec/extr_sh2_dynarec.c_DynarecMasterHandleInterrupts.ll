; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_DynarecMasterHandleInterrupts.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_DynarecMasterHandleInterrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@MSH2 = common dso_local global %struct.TYPE_4__* null, align 8
@master_reg = common dso_local global i32* null, align 8
@SR = common dso_local global i64 0, align 8
@master_pc = common dso_local global i32 0, align 4
@VBR = common dso_local global i64 0, align 8
@master_ip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DynarecMasterHandleInterrupts() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MSH2, align 8
  %2 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MSH2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = sub nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** @master_reg, align 8
  %13 = load i64, i64* @SR, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 4
  %17 = and i32 %16, 15
  %18 = icmp sgt i32 %11, %17
  br i1 %18, label %19, label %91

19:                                               ; preds = %0
  %20 = load i32*, i32** @master_reg, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 15
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 4
  store i32 %23, i32* %21, align 4
  %24 = load i32*, i32** @master_reg, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 15
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @master_reg, align 8
  %28 = load i64, i64* @SR, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @MappedMemoryWriteLong(i32 %26, i32 %30)
  %32 = load i32*, i32** @master_reg, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 15
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 4
  store i32 %35, i32* %33, align 4
  %36 = load i32*, i32** @master_reg, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 15
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @master_pc, align 4
  %40 = call i32 @MappedMemoryWriteLong(i32 %38, i32 %39)
  %41 = load i32*, i32** @master_reg, align 8
  %42 = load i64, i64* @SR, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, -241
  store i32 %45, i32* %43, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MSH2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MSH2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 4
  %58 = load i32*, i32** @master_reg, align 8
  %59 = load i64, i64* @SR, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load i32*, i32** @master_reg, align 8
  %64 = load i64, i64* @VBR, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MSH2, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MSH2, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 2
  %79 = add nsw i32 %66, %78
  %80 = call i32 @MappedMemoryReadLong(i32 %79)
  store i32 %80, i32* @master_pc, align 4
  %81 = load i32, i32* @master_pc, align 4
  %82 = call i32 @get_addr_ht(i32 %81)
  store i32 %82, i32* @master_ip, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MSH2, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MSH2, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MSH2, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %19, %0
  ret void
}

declare dso_local i32 @MappedMemoryWriteLong(i32, i32) #1

declare dso_local i32 @MappedMemoryReadLong(i32) #1

declare dso_local i32 @get_addr_ht(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
