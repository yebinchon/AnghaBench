; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_fopen.c_write_callback.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_fopen.c_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"callback buffer grow failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_callback(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = mul i64 %15, %14
  store i64 %16, i64* %6, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %19, %22
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = sub i64 %34, %35
  %37 = add i64 %33, %36
  %38 = call i8* @realloc(i8* %30, i64 %37)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %27
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %44 = load i64, i64* %10, align 8
  store i64 %44, i64* %6, align 8
  br label %56

45:                                               ; preds = %27
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %10, align 8
  %48 = sub i64 %46, %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %45, %41
  br label %57

57:                                               ; preds = %56, %4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @memcpy(i8* %64, i8* %65, i64 %66)
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load i64, i64* %6, align 8
  ret i64 %73
}

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
