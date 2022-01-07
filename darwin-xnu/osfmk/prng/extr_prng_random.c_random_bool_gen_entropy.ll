; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_random_bool_gen_entropy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_random_bool_gen_entropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bool_gen = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @random_bool_gen_entropy(%struct.bool_gen* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.bool_gen*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bool_gen* %0, %struct.bool_gen** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %10 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %9, i32 0, i32 2
  %11 = call i32 @simple_lock(i32* %10)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %115, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %118

16:                                               ; preds = %12
  %17 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %18 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 5
  %23 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %24 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %27, %22
  store i32 %28, i32* %26, align 4
  %29 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %30 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 7
  %35 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %36 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %39, %34
  store i32 %40, i32* %38, align 4
  %41 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %42 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 22
  %47 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %48 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %51, %46
  store i32 %52, i32* %50, align 4
  %53 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %54 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %59 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %57, %62
  %64 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %65 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %63, %66
  store i32 %67, i32* %8, align 4
  %68 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %69 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %74 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %81 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, 2147483647
  %84 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %85 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  store i32 %83, i32* %87, align 4
  %88 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %89 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1411392427
  store i32 %93, i32* %91, align 4
  %94 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %95 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %100 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %98, %103
  %105 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %106 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %104, %109
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  br label %115

115:                                              ; preds = %16
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %12

118:                                              ; preds = %12
  %119 = load %struct.bool_gen*, %struct.bool_gen** %4, align 8
  %120 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %119, i32 0, i32 2
  %121 = call i32 @simple_unlock(i32* %120)
  ret void
}

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
