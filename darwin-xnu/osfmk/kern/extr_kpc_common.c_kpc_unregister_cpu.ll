; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_unregister_cpu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_unregister_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_data = type { i32*, i32*, i32** }

@COUNTERBUF_SIZE_PER_CPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kpc_unregister_cpu(%struct.cpu_data* %0) #0 {
  %2 = alloca %struct.cpu_data*, align 8
  store %struct.cpu_data* %0, %struct.cpu_data** %2, align 8
  %3 = load %struct.cpu_data*, %struct.cpu_data** %2, align 8
  %4 = call i32 @assert(%struct.cpu_data* %3)
  %5 = load %struct.cpu_data*, %struct.cpu_data** %2, align 8
  %6 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %5, i32 0, i32 2
  %7 = load i32**, i32*** %6, align 8
  %8 = getelementptr inbounds i32*, i32** %7, i64 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.cpu_data*, %struct.cpu_data** %2, align 8
  %13 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %12, i32 0, i32 2
  %14 = load i32**, i32*** %13, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @COUNTERBUF_SIZE_PER_CPU, align 4
  %18 = call i32 @kfree(i32* %16, i32 %17)
  %19 = load %struct.cpu_data*, %struct.cpu_data** %2, align 8
  %20 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %19, i32 0, i32 2
  %21 = load i32**, i32*** %20, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %11, %1
  %24 = load %struct.cpu_data*, %struct.cpu_data** %2, align 8
  %25 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %24, i32 0, i32 2
  %26 = load i32**, i32*** %25, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load %struct.cpu_data*, %struct.cpu_data** %2, align 8
  %32 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %31, i32 0, i32 2
  %33 = load i32**, i32*** %32, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @COUNTERBUF_SIZE_PER_CPU, align 4
  %37 = call i32 @kfree(i32* %35, i32 %36)
  %38 = load %struct.cpu_data*, %struct.cpu_data** %2, align 8
  %39 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %38, i32 0, i32 2
  %40 = load i32**, i32*** %39, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %30, %23
  %43 = load %struct.cpu_data*, %struct.cpu_data** %2, align 8
  %44 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.cpu_data*, %struct.cpu_data** %2, align 8
  %49 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @COUNTERBUF_SIZE_PER_CPU, align 4
  %52 = call i32 @kfree(i32* %50, i32 %51)
  %53 = load %struct.cpu_data*, %struct.cpu_data** %2, align 8
  %54 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %47, %42
  %56 = load %struct.cpu_data*, %struct.cpu_data** %2, align 8
  %57 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.cpu_data*, %struct.cpu_data** %2, align 8
  %62 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @COUNTERBUF_SIZE_PER_CPU, align 4
  %65 = call i32 @kfree(i32* %63, i32 %64)
  %66 = load %struct.cpu_data*, %struct.cpu_data** %2, align 8
  %67 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %60, %55
  ret void
}

declare dso_local i32 @assert(%struct.cpu_data*) #1

declare dso_local i32 @kfree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
