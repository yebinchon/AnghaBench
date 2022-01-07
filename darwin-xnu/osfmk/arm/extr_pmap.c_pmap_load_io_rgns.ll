; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_load_io_rgns.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_load_io_rgns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_io_rgns = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"/defaults\00", align 1
@kSuccess = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"pmap-io-ranges\00", align 1
@io_attr_table = common dso_local global i32* null, align 8
@cmp_io_rgns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pmap_load_io_rgns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_load_io_rgns() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* null, i8** %3, align 8
  %7 = load i64, i64* @num_io_rgns, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %51

10:                                               ; preds = %0
  %11 = call i32 @DTLookupEntry(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %1)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @kSuccess, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @DTGetProperty(i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %3, i32* %5)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @kSuccess, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i8*, i8** %3, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %2, align 8
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %43, %10
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = udiv i64 %30, 4
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** @io_attr_table, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %26

46:                                               ; preds = %26
  %47 = load i32*, i32** @io_attr_table, align 8
  %48 = load i64, i64* @num_io_rgns, align 8
  %49 = load i32, i32* @cmp_io_rgns, align 4
  %50 = call i32 @qsort(i32* %47, i64 %48, i32 4, i32 %49)
  br label %51

51:                                               ; preds = %46, %9
  ret void
}

declare dso_local i32 @DTLookupEntry(i32*, i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DTGetProperty(i32, i8*, i8**, i32*) #1

declare dso_local i32 @qsort(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
