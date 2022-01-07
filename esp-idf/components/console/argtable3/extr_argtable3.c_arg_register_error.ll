; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_register_error.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_register_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_end = type { i64, i32*, i8**, %struct.TYPE_2__, %struct.arg_end** }
%struct.TYPE_2__ = type { i64 }

@ARG_ELIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arg_end*, i8*, i32, i8*)* @arg_register_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arg_register_error(%struct.arg_end* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.arg_end*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.arg_end* %0, %struct.arg_end** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %10 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %13 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %20 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %23 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 %18, i32* %25, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to %struct.arg_end*
  %28 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %29 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %28, i32 0, i32 4
  %30 = load %struct.arg_end**, %struct.arg_end*** %29, align 8
  %31 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %32 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.arg_end*, %struct.arg_end** %30, i64 %33
  store %struct.arg_end* %27, %struct.arg_end** %34, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %37 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %36, i32 0, i32 2
  %38 = load i8**, i8*** %37, align 8
  %39 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %40 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  store i8* %35, i8** %42, align 8
  %43 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %44 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %44, align 8
  br label %77

47:                                               ; preds = %4
  %48 = load i32, i32* @ARG_ELIMIT, align 4
  %49 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %50 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %53 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  store i32 %48, i32* %57, align 4
  %58 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %59 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %60 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %59, i32 0, i32 4
  %61 = load %struct.arg_end**, %struct.arg_end*** %60, align 8
  %62 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %63 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %65, 1
  %67 = getelementptr inbounds %struct.arg_end*, %struct.arg_end** %61, i64 %66
  store %struct.arg_end* %58, %struct.arg_end** %67, align 8
  %68 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %69 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %68, i32 0, i32 2
  %70 = load i8**, i8*** %69, align 8
  %71 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %72 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, 1
  %76 = getelementptr inbounds i8*, i8** %70, i64 %75
  store i8* null, i8** %76, align 8
  br label %77

77:                                               ; preds = %47, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
