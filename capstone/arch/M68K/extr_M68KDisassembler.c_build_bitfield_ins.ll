; ModuleID = '/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_build_bitfield_ins.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_build_bitfield_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i64, i32 }
%struct.TYPE_11__ = type { i32, i8*, i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }

@g_5bit_data_table = common dso_local global i64* null, align 8
@M68K_AM_REG_DIRECT_DATA = common dso_local global i32 0, align 4
@M68K_REG_D0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, i32)* @build_bitfield_ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_bitfield_ins(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_14__* @build_init_op(%struct.TYPE_12__* %13, i32 %14, i32 1, i32 0)
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %11, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = call i32 @read_imm_16(%struct.TYPE_12__* %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i64 0
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %9, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i64 1
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %10, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i64 @BIT_B(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load i32, i32* %12, align 4
  %31 = ashr i32 %30, 6
  %32 = and i32 %31, 7
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %7, align 8
  br label %41

35:                                               ; preds = %3
  %36 = load i32, i32* %12, align 4
  %37 = ashr i32 %36, 6
  %38 = and i32 %37, 31
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %7, align 8
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @BIT_5(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %12, align 4
  %47 = and i32 %46, 7
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %8, align 8
  br label %58

50:                                               ; preds = %41
  %51 = load i64*, i64** @g_5bit_data_table, align 8
  %52 = load i32, i32* %12, align 4
  %53 = and i32 %52, 31
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %8, align 8
  br label %58

58:                                               ; preds = %50, %45
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store i32 2, i32* %63, align 8
  %64 = load i32, i32* @M68K_AM_REG_DIRECT_DATA, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* @M68K_REG_D0, align 8
  %68 = load i32, i32* %12, align 4
  %69 = ashr i32 %68, 12
  %70 = and i32 %69, 7
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %67, %71
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %61, %58
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @get_ea_mode_op(%struct.TYPE_12__* %76, %struct.TYPE_13__* %77, i32 %80, i32 1)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  store i8* %85, i8** %88, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  store i8* %89, i8** %92, align 8
  ret void
}

declare dso_local %struct.TYPE_14__* @build_init_op(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @read_imm_16(%struct.TYPE_12__*) #1

declare dso_local i64 @BIT_B(i32) #1

declare dso_local i64 @BIT_5(i32) #1

declare dso_local i32 @get_ea_mode_op(%struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
