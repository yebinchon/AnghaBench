; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_end.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_end = type { i32*, i8**, i8**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i32*, i32*, i32*, %struct.arg_end*, i32*, i32*, i32*, i32*, i32 }

@ARG_TERMINATOR = common dso_local global i32 0, align 4
@arg_end_resetfn = common dso_local global i64 0, align 8
@arg_end_errorfn = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"arg_end(%d) returns %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arg_end* @arg_end(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.arg_end*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = add i64 112, %7
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 8
  %12 = add i64 %8, %11
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = add i64 %12, %15
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @malloc(i64 %17)
  %19 = inttoptr i64 %18 to %struct.arg_end*
  store %struct.arg_end* %19, %struct.arg_end** %4, align 8
  %20 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %21 = icmp ne %struct.arg_end* %20, null
  br i1 %21, label %22, label %88

22:                                               ; preds = %1
  %23 = load i32, i32* @ARG_TERMINATOR, align 4
  %24 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %25 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 11
  store i32 %23, i32* %26, align 8
  %27 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %28 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 10
  store i32* null, i32** %29, align 8
  %30 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %31 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 9
  store i32* null, i32** %32, align 8
  %33 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %34 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 8
  store i32* null, i32** %35, align 8
  %36 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %37 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 7
  store i32* null, i32** %38, align 8
  %39 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %40 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* %2, align 4
  %43 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %44 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %47 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %48 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 6
  store %struct.arg_end* %46, %struct.arg_end** %49, align 8
  %50 = load i64, i64* @arg_end_resetfn, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %53 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  store i32* %51, i32** %54, align 8
  %55 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %56 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  store i32* null, i32** %57, align 8
  %58 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %59 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  store i32* null, i32** %60, align 8
  %61 = load i64, i64* @arg_end_errorfn, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %64 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32* %62, i32** %65, align 8
  %66 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %67 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %66, i64 1
  %68 = bitcast %struct.arg_end* %67 to i32*
  %69 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %70 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  %71 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %72 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = bitcast i32* %76 to i8**
  %78 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %79 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %78, i32 0, i32 1
  store i8** %77, i8*** %79, align 8
  %80 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %81 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %87 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %86, i32 0, i32 2
  store i8** %85, i8*** %87, align 8
  br label %88

88:                                               ; preds = %22, %1
  %89 = load i32, i32* %2, align 4
  %90 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  %91 = bitcast %struct.arg_end* %90 to i8*
  %92 = call i32 @ARG_TRACE(i8* %91)
  %93 = load %struct.arg_end*, %struct.arg_end** %4, align 8
  ret %struct.arg_end* %93
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @ARG_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
