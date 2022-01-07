; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_makepng.c_add_iTXt.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_makepng.c_add_iTXt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@add_iTXt.what = internal global [5 x i8] c"iTXt\00", align 1
@insert_iTXt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32*)* @add_iTXt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_iTXt(i8* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [5 x i32*], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32* @strstash(i8* %10)
  %12 = getelementptr inbounds [5 x i32*], [5 x i32*]* %9, i64 0, i64 0
  store i32* %11, i32** %12, align 16
  %13 = load i8*, i8** %6, align 8
  %14 = call i32* @strstash(i8* %13)
  %15 = getelementptr inbounds [5 x i32*], [5 x i32*]* %9, i64 0, i64 1
  store i32* %14, i32** %15, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32* @strstash(i8* %16)
  %18 = getelementptr inbounds [5 x i32*], [5 x i32*]* %9, i64 0, i64 2
  store i32* %17, i32** %18, align 16
  %19 = load i32*, i32** %8, align 8
  %20 = call i32* @strstash_list(i32* %19)
  %21 = getelementptr inbounds [5 x i32*], [5 x i32*]* %9, i64 0, i64 3
  store i32* %20, i32** %21, align 8
  %22 = getelementptr inbounds [5 x i32*], [5 x i32*]* %9, i64 0, i64 4
  store i32* null, i32** %22, align 16
  %23 = load i32, i32* @insert_iTXt, align 4
  %24 = getelementptr inbounds [5 x i32*], [5 x i32*]* %9, i64 0, i64 0
  %25 = call i32* @make_insert(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @add_iTXt.what, i64 0, i64 0), i32 %23, i32 4, i32** %24)
  ret i32* %25
}

declare dso_local i32* @strstash(i8*) #1

declare dso_local i32* @strstash_list(i32*) #1

declare dso_local i32* @make_insert(i8*, i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
