; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_JsonArrayReplaceStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_JsonArrayReplaceStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSON_RET_ERROR = common dso_local global i64 0, align 8
@JSON_RET_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @JsonArrayReplaceStr(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call i32* @JsonNewStr(i8* %9)
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* @JSON_RET_ERROR, align 8
  store i64 %14, i64* %4, align 8
  br label %28

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i64 @JsonArrayReplace(i32* %16, i64 %17, i32* %18)
  %20 = load i64, i64* @JSON_RET_ERROR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @JsonFree(i32* %23)
  %25 = load i64, i64* @JSON_RET_ERROR, align 8
  store i64 %25, i64* %4, align 8
  br label %28

26:                                               ; preds = %15
  %27 = load i64, i64* @JSON_RET_OK, align 8
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %26, %22, %13
  %29 = load i64, i64* %4, align 8
  ret i64 %29
}

declare dso_local i32* @JsonNewStr(i8*) #1

declare dso_local i64 @JsonArrayReplace(i32*, i64, i32*) #1

declare dso_local i32 @JsonFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
