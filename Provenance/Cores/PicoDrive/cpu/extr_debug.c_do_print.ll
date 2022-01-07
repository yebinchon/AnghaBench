; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/extr_debug.c_do_print.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/extr_debug.c_do_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }
%struct.pdb_cpu = type { i64, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32*, i32, i32, i64, i32, i32 }

@EL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"cpu %d (%s)\00", align 1
@PDBCT_SH2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"PC,SR %08x,     %03x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"R%d,%2d %08x,%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"gb,vb %08x,%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"IRQs/mask:        %02x/%02x\0A\00", align 1
@Pico32x = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"cycles %d/%d (%d)\0A\00", align 1
@CMDRET_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pdb_cpu*, i8*)* @do_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_print(%struct.pdb_cpu* %0, i8* %1) #0 {
  %3 = alloca %struct.pdb_cpu*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store %struct.pdb_cpu* %0, %struct.pdb_cpu** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @EL_STATUS, align 4
  %8 = load %struct.pdb_cpu*, %struct.pdb_cpu** %3, align 8
  %9 = getelementptr inbounds %struct.pdb_cpu, %struct.pdb_cpu* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.pdb_cpu*, %struct.pdb_cpu** %3, align 8
  %12 = getelementptr inbounds %struct.pdb_cpu, %struct.pdb_cpu* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @elprintf(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.pdb_cpu*, %struct.pdb_cpu** %3, align 8
  %16 = getelementptr inbounds %struct.pdb_cpu, %struct.pdb_cpu* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PDBCT_SH2, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %90

20:                                               ; preds = %2
  %21 = load %struct.pdb_cpu*, %struct.pdb_cpu** %3, align 8
  %22 = getelementptr inbounds %struct.pdb_cpu, %struct.pdb_cpu* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %5, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 1023
  %31 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %55, %20
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %58

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %38, i32 %45, i32 %53)
  br label %55

55:                                               ; preds = %35
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %32

58:                                               ; preds = %32
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 1), align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32 %77)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 12
  %89 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %81, i32 %84, i32 %88)
  br label %90

90:                                               ; preds = %58, %2
  %91 = load i32, i32* @CMDRET_DONE, align 4
  ret i32 %91
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
