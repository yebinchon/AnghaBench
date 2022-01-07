; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_JsonArrayAddBool.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_JsonArrayAddBool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSON_RET_ERROR = common dso_local global i64 0, align 8
@JSON_RET_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @JsonArrayAddBool(i32* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32* @JsonNewBool(i32 %7)
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* @JSON_RET_ERROR, align 8
  store i64 %12, i64* %3, align 8
  br label %25

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @JsonArrayAdd(i32* %14, i32* %15)
  %17 = load i64, i64* @JSON_RET_ERROR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @JsonFree(i32* %20)
  %22 = load i64, i64* @JSON_RET_ERROR, align 8
  store i64 %22, i64* %3, align 8
  br label %25

23:                                               ; preds = %13
  %24 = load i64, i64* @JSON_RET_OK, align 8
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %23, %19, %11
  %26 = load i64, i64* %3, align 8
  ret i64 %26
}

declare dso_local i32* @JsonNewBool(i32) #1

declare dso_local i64 @JsonArrayAdd(i32*, i32*) #1

declare dso_local i32 @JsonFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
