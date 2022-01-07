; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_register_cpu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_register_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_data = type { i32*, i32*, i32** }

@COUNTERBUF_SIZE_PER_CPU = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kpc_register_cpu(%struct.cpu_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpu_data*, align 8
  store %struct.cpu_data* %0, %struct.cpu_data** %3, align 8
  %4 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %5 = call i32 @assert(%struct.cpu_data* %4)
  %6 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %7 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %6, i32 0, i32 2
  %8 = load i32**, i32*** %7, align 8
  %9 = getelementptr inbounds i32*, i32** %8, i64 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.cpu_data*
  %15 = call i32 @assert(%struct.cpu_data* %14)
  %16 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %17 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %16, i32 0, i32 2
  %18 = load i32**, i32*** %17, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.cpu_data*
  %25 = call i32 @assert(%struct.cpu_data* %24)
  %26 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %27 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.cpu_data*
  %33 = call i32 @assert(%struct.cpu_data* %32)
  %34 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %35 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct.cpu_data*
  %41 = call i32 @assert(%struct.cpu_data* %40)
  %42 = load i32, i32* @COUNTERBUF_SIZE_PER_CPU, align 4
  %43 = call i8* @kalloc(i32 %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %46 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %45, i32 0, i32 2
  %47 = load i32**, i32*** %46, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  store i32* %44, i32** %48, align 8
  %49 = icmp eq i32* %44, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %1
  br label %103

51:                                               ; preds = %1
  %52 = load i32, i32* @COUNTERBUF_SIZE_PER_CPU, align 4
  %53 = call i8* @kalloc(i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %56 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %55, i32 0, i32 2
  %57 = load i32**, i32*** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 1
  store i32* %54, i32** %58, align 8
  %59 = icmp eq i32* %54, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %103

61:                                               ; preds = %51
  %62 = load i32, i32* @COUNTERBUF_SIZE_PER_CPU, align 4
  %63 = call i8* @kalloc(i32 %62)
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %66 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = icmp eq i32* %64, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %103

69:                                               ; preds = %61
  %70 = load i32, i32* @COUNTERBUF_SIZE_PER_CPU, align 4
  %71 = call i8* @kalloc(i32 %70)
  %72 = bitcast i8* %71 to i32*
  %73 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %74 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %73, i32 0, i32 0
  store i32* %72, i32** %74, align 8
  %75 = icmp eq i32* %72, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %103

77:                                               ; preds = %69
  %78 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %79 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %78, i32 0, i32 2
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @COUNTERBUF_SIZE_PER_CPU, align 4
  %84 = call i32 @memset(i32* %82, i32 0, i32 %83)
  %85 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %86 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %85, i32 0, i32 2
  %87 = load i32**, i32*** %86, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* @COUNTERBUF_SIZE_PER_CPU, align 4
  %91 = call i32 @memset(i32* %89, i32 0, i32 %90)
  %92 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %93 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* @COUNTERBUF_SIZE_PER_CPU, align 4
  %96 = call i32 @memset(i32* %94, i32 0, i32 %95)
  %97 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %98 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @COUNTERBUF_SIZE_PER_CPU, align 4
  %101 = call i32 @memset(i32* %99, i32 0, i32 %100)
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %2, align 4
  br label %107

103:                                              ; preds = %76, %68, %60, %50
  %104 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %105 = call i32 @kpc_unregister_cpu(%struct.cpu_data* %104)
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %103, %77
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @assert(%struct.cpu_data*) #1

declare dso_local i8* @kalloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kpc_unregister_cpu(%struct.cpu_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
