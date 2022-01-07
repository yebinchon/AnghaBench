; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_difo_cacheable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_difo_cacheable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@DIFV_SCOPE_GLOBAL = common dso_local global i64 0, align 8
@DIF_OP_LDSB = common dso_local global i64 0, align 8
@DIF_OP_LDX = common dso_local global i64 0, align 8
@DIF_OP_ULDSB = common dso_local global i64 0, align 8
@DIF_OP_ULDX = common dso_local global i64 0, align 8
@DIF_OP_RLDSB = common dso_local global i64 0, align 8
@DIF_OP_RLDX = common dso_local global i64 0, align 8
@DIF_OP_LDGA = common dso_local global i64 0, align 8
@DIF_OP_STTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @dtrace_difo_cacheable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_difo_cacheable(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = icmp eq %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %91

10:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %36, %10
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %5, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DIFV_SCOPE_GLOBAL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %36

29:                                               ; preds = %17
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %34 [
    i32 132, label %33
    i32 130, label %33
    i32 129, label %33
    i32 131, label %33
    i32 128, label %33
  ]

33:                                               ; preds = %29, %29, %29, %29, %29
  br label %35

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %91

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %4, align 8
  br label %11

39:                                               ; preds = %11
  store i64 0, i64* %4, align 8
  br label %40

40:                                               ; preds = %87, %39
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %90

46:                                               ; preds = %40
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @DIF_INSTR_OP(i32 %52)
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @DIF_OP_LDSB, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @DIF_OP_LDX, align 8
  %60 = icmp ule i64 %58, %59
  br i1 %60, label %85, label %61

61:                                               ; preds = %57, %46
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @DIF_OP_ULDSB, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @DIF_OP_ULDX, align 8
  %68 = icmp ule i64 %66, %67
  br i1 %68, label %85, label %69

69:                                               ; preds = %65, %61
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @DIF_OP_RLDSB, align 8
  %72 = icmp uge i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @DIF_OP_RLDX, align 8
  %76 = icmp ule i64 %74, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %73, %69
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @DIF_OP_LDGA, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @DIF_OP_STTS, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %77, %73, %65, %57
  store i32 0, i32* %2, align 4
  br label %91

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %4, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %4, align 8
  br label %40

90:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %85, %34, %9
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @DIF_INSTR_OP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
