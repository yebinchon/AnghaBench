; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngunknown.c_get_valid.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngunknown.c_get_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i32 }
%struct.TYPE_6__ = type { i32 }

@PNG_INFO_tEXt = common dso_local global i64 0, align 8
@PNG_INFO_zTXt = common dso_local global i64 0, align 8
@PNG_INFO_iTXt = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s(%s): unknown text compression %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32)* @get_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_valid(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @png_get_valid(i32 %10, i32 %11, i64 -1)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @png_get_text(i32 %15, i32 %16, %struct.TYPE_6__** %6, i32* null)
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %56, %2
  %19 = load i64, i64* %7, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %18
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %40 [
    i32 -1, label %28
    i32 0, label %32
    i32 1, label %36
    i32 2, label %36
  ]

28:                                               ; preds = %21
  %29 = load i64, i64* @PNG_INFO_tEXt, align 8
  %30 = load i64, i64* %5, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %5, align 8
  br label %56

32:                                               ; preds = %21
  %33 = load i64, i64* @PNG_INFO_zTXt, align 8
  %34 = load i64, i64* %5, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %5, align 8
  br label %56

36:                                               ; preds = %21, %21
  %37 = load i64, i64* @PNG_INFO_iTXt, align 8
  %38 = load i64, i64* %5, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %5, align 8
  br label %56

40:                                               ; preds = %21
  %41 = load i32, i32* @stderr, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %47, i32 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = call i32 @display_exit(%struct.TYPE_7__* %54)
  br label %56

56:                                               ; preds = %40, %36, %32, %28
  br label %18

57:                                               ; preds = %18
  %58 = load i64, i64* %5, align 8
  ret i64 %58
}

declare dso_local i64 @png_get_valid(i32, i32, i64) #1

declare dso_local i64 @png_get_text(i32, i32, %struct.TYPE_6__**, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @display_exit(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
