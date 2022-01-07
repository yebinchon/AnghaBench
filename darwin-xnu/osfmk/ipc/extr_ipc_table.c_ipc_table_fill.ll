; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_table.c_ipc_table_fill.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_table.c_ipc_table_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@PAGE_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32)* @ipc_table_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipc_table_fill(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = mul i32 %14, %15
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %17

17:                                               ; preds = %45, %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @PAGE_MAX_SIZE, align 4
  %24 = icmp ult i32 %22, %23
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ]
  br i1 %26, label %27, label %48

27:                                               ; preds = %25
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = udiv i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i8* %36, i8** %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %31, %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %17

48:                                               ; preds = %25
  %49 = load i32, i32* @PAGE_MAX_SIZE, align 4
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %96, %48
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %97

54:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %82, %54
  %56 = load i32, i32* %13, align 4
  %57 = icmp ult i32 %56, 15
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ult i32 %59, %60
  br label %62

62:                                               ; preds = %58, %55
  %63 = phi i1 [ false, %55 ], [ %61, %58 ]
  br i1 %63, label %64, label %88

64:                                               ; preds = %62
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp uge i32 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %8, align 4
  %71 = udiv i32 %69, %70
  %72 = zext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i8* %73, i8** %78, align 8
  %79 = load i32, i32* %9, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %68, %64
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %13, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = add i32 %86, %85
  store i32 %87, i32* %11, align 4
  br label %55

88:                                               ; preds = %62
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @PAGE_MAX_SIZE, align 4
  %91 = shl i32 %90, 3
  %92 = icmp ult i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* %12, align 4
  %95 = shl i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %93, %88
  br label %50

97:                                               ; preds = %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
