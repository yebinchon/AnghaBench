; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_rem.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_rem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_rem = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, %struct.arg_rem*, i32*, i32*, i64 }

@.str = private unnamed_addr constant [22 x i8] c"arg_rem() returns %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arg_rem* @arg_rem(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.arg_rem*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i64 @malloc(i32 88)
  %7 = inttoptr i64 %6 to %struct.arg_rem*
  store %struct.arg_rem* %7, %struct.arg_rem** %5, align 8
  %8 = load %struct.arg_rem*, %struct.arg_rem** %5, align 8
  %9 = icmp ne %struct.arg_rem* %8, null
  br i1 %9, label %10, label %50

10:                                               ; preds = %2
  %11 = load %struct.arg_rem*, %struct.arg_rem** %5, align 8
  %12 = getelementptr inbounds %struct.arg_rem, %struct.arg_rem* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 11
  store i64 0, i64* %13, align 8
  %14 = load %struct.arg_rem*, %struct.arg_rem** %5, align 8
  %15 = getelementptr inbounds %struct.arg_rem, %struct.arg_rem* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 10
  store i32* null, i32** %16, align 8
  %17 = load %struct.arg_rem*, %struct.arg_rem** %5, align 8
  %18 = getelementptr inbounds %struct.arg_rem, %struct.arg_rem* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 9
  store i32* null, i32** %19, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.arg_rem*, %struct.arg_rem** %5, align 8
  %22 = getelementptr inbounds %struct.arg_rem, %struct.arg_rem* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.arg_rem*, %struct.arg_rem** %5, align 8
  %26 = getelementptr inbounds %struct.arg_rem, %struct.arg_rem* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load %struct.arg_rem*, %struct.arg_rem** %5, align 8
  %29 = getelementptr inbounds %struct.arg_rem, %struct.arg_rem* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 1, i32* %30, align 8
  %31 = load %struct.arg_rem*, %struct.arg_rem** %5, align 8
  %32 = getelementptr inbounds %struct.arg_rem, %struct.arg_rem* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 1, i32* %33, align 4
  %34 = load %struct.arg_rem*, %struct.arg_rem** %5, align 8
  %35 = load %struct.arg_rem*, %struct.arg_rem** %5, align 8
  %36 = getelementptr inbounds %struct.arg_rem, %struct.arg_rem* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 8
  store %struct.arg_rem* %34, %struct.arg_rem** %37, align 8
  %38 = load %struct.arg_rem*, %struct.arg_rem** %5, align 8
  %39 = getelementptr inbounds %struct.arg_rem, %struct.arg_rem* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 7
  store i32* null, i32** %40, align 8
  %41 = load %struct.arg_rem*, %struct.arg_rem** %5, align 8
  %42 = getelementptr inbounds %struct.arg_rem, %struct.arg_rem* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 6
  store i32* null, i32** %43, align 8
  %44 = load %struct.arg_rem*, %struct.arg_rem** %5, align 8
  %45 = getelementptr inbounds %struct.arg_rem, %struct.arg_rem* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  store i32* null, i32** %46, align 8
  %47 = load %struct.arg_rem*, %struct.arg_rem** %5, align 8
  %48 = getelementptr inbounds %struct.arg_rem, %struct.arg_rem* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %10, %2
  %51 = load %struct.arg_rem*, %struct.arg_rem** %5, align 8
  %52 = bitcast %struct.arg_rem* %51 to i8*
  %53 = call i32 @ARG_TRACE(i8* %52)
  %54 = load %struct.arg_rem*, %struct.arg_rem** %5, align 8
  ret %struct.arg_rem* %54
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ARG_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
