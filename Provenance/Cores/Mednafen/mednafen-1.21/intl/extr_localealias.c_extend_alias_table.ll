; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_localealias.c_extend_alias_table.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_localealias.c_extend_alias_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_map = type { i32 }

@maxmap = common dso_local global i32 0, align 4
@map = common dso_local global %struct.alias_map* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @extend_alias_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extend_alias_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.alias_map*, align 8
  %4 = load i32, i32* @maxmap, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @maxmap, align 4
  %9 = mul nsw i32 2, %8
  br label %10

10:                                               ; preds = %7, %6
  %11 = phi i32 [ 100, %6 ], [ %9, %7 ]
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %2, align 8
  %13 = load %struct.alias_map*, %struct.alias_map** @map, align 8
  %14 = load i64, i64* %2, align 8
  %15 = mul i64 %14, 4
  %16 = call i64 @realloc(%struct.alias_map* %13, i64 %15)
  %17 = inttoptr i64 %16 to %struct.alias_map*
  store %struct.alias_map* %17, %struct.alias_map** %3, align 8
  %18 = load %struct.alias_map*, %struct.alias_map** %3, align 8
  %19 = icmp eq %struct.alias_map* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  store i32 -1, i32* %1, align 4
  br label %25

21:                                               ; preds = %10
  %22 = load %struct.alias_map*, %struct.alias_map** %3, align 8
  store %struct.alias_map* %22, %struct.alias_map** @map, align 8
  %23 = load i64, i64* %2, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* @maxmap, align 4
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %21, %20
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i64 @realloc(%struct.alias_map*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
