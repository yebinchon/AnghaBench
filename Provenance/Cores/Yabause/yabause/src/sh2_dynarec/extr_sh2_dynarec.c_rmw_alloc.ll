; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_rmw_alloc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_rmw_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i32 }

@addrmode = common dso_local global i64* null, align 8
@GBRIND = common dso_local global i64 0, align 8
@GBR = common dso_local global i32 0, align 4
@rs2 = common dso_local global i32* null, align 8
@rs3 = common dso_local global i32* null, align 8
@REGIND = common dso_local global i64 0, align 8
@rs1 = common dso_local global i32* null, align 8
@rt1 = common dso_local global i64* null, align 8
@TBIT = common dso_local global i64 0, align 8
@SR = common dso_local global i32 0, align 4
@MOREG = common dso_local global i32 0, align 4
@minimum_free_regs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rmw_alloc(%struct.regstat* %0, i32 %1) #0 {
  %3 = alloca %struct.regstat*, align 8
  %4 = alloca i32, align 4
  store %struct.regstat* %0, %struct.regstat** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64*, i64** @addrmode, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i64, i64* %5, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @GBRIND, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %53

12:                                               ; preds = %2
  %13 = load %struct.regstat*, %struct.regstat** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @GBR, align 4
  %16 = call i32 @alloc_reg(%struct.regstat* %13, i32 %14, i32 %15)
  %17 = load %struct.regstat*, %struct.regstat** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @alloc_reg(%struct.regstat* %17, i32 %18, i32 0)
  %20 = load %struct.regstat*, %struct.regstat** %3, align 8
  %21 = load i32*, i32** @rs2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @is_const(%struct.regstat* %20, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %12
  %29 = load %struct.regstat*, %struct.regstat** %3, align 8
  %30 = load i32*, i32** @rs3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @is_const(%struct.regstat* %29, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %28, %12
  %38 = load %struct.regstat*, %struct.regstat** %3, align 8
  %39 = load i32*, i32** @rs2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clear_const(%struct.regstat* %38, i32 %43)
  %45 = load %struct.regstat*, %struct.regstat** %3, align 8
  %46 = load i32*, i32** @rs3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clear_const(%struct.regstat* %45, i32 %50)
  br label %52

52:                                               ; preds = %37, %28
  br label %53

53:                                               ; preds = %52, %2
  %54 = load i64*, i64** @addrmode, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @REGIND, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %53
  %62 = load i32*, i32** @rs1, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i64 @needed_again(i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load %struct.regstat*, %struct.regstat** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32*, i32** @rs1, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @alloc_reg(%struct.regstat* %71, i32 %72, i32 %77)
  br label %79

79:                                               ; preds = %70, %61, %53
  %80 = load i64*, i64** @rt1, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TBIT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load %struct.regstat*, %struct.regstat** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @SR, align 4
  %91 = call i32 @alloc_reg(%struct.regstat* %88, i32 %89, i32 %90)
  %92 = load %struct.regstat*, %struct.regstat** %3, align 8
  %93 = load i32, i32* @SR, align 4
  %94 = call i32 @dirty_reg(%struct.regstat* %92, i32 %93)
  br label %95

95:                                               ; preds = %87, %79
  %96 = load %struct.regstat*, %struct.regstat** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @MOREG, align 4
  %99 = call i32 @alloc_reg(%struct.regstat* %96, i32 %97, i32 %98)
  %100 = load %struct.regstat*, %struct.regstat** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @alloc_reg_temp(%struct.regstat* %100, i32 %101, i32 -1)
  %103 = load i32*, i32** @minimum_free_regs, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 1, i32* %106, align 4
  ret void
}

declare dso_local i32 @alloc_reg(%struct.regstat*, i32, i32) #1

declare dso_local i32 @is_const(%struct.regstat*, i32) #1

declare dso_local i32 @clear_const(%struct.regstat*, i32) #1

declare dso_local i64 @needed_again(i32, i32) #1

declare dso_local i32 @dirty_reg(%struct.regstat*, i32) #1

declare dso_local i32 @alloc_reg_temp(%struct.regstat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
