; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_asdl.c_asdl_function.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_asdl.c_asdl_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@interfaces = common dso_local global i32 0, align 4
@CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i32**, i32)* @asdl_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asdl_function(i32* %0, i32** %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = call i32 @Seq_new(i32 0)
  store i32 %14, i32* %9, align 4
  %15 = call i32 @Seq_new(i32 0)
  store i32 %15, i32* %11, align 4
  %16 = call i32 @Seq_new(i32 0)
  store i32 %16, i32* %12, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @dopending(i32* %17)
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %42, %4
  %20 = load i32**, i32*** %6, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %19
  %27 = load i32**, i32*** %6, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @asdl_local(i32* %31)
  %33 = load i32, i32* %12, align 4
  %34 = load i32**, i32*** %6, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @symboluid(i32* %38)
  %40 = call i32 @to_generic_int(i32 %39)
  %41 = call i32 @Seq_addhi(i32 %33, i32 %40)
  br label %42

42:                                               ; preds = %26
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  br label %19

45:                                               ; preds = %19
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %69, %45
  %47 = load i32**, i32*** %7, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %46
  %54 = load i32**, i32*** %7, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @asdl_local(i32* %58)
  %60 = load i32, i32* %11, align 4
  %61 = load i32**, i32*** %7, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @symboluid(i32* %65)
  %67 = call i32 @to_generic_int(i32 %66)
  %68 = call i32 @Seq_addhi(i32 %60, i32 %67)
  br label %69

69:                                               ; preds = %53
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %46

72:                                               ; preds = %46
  %73 = load i32, i32* @interfaces, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* @interfaces, align 4
  %75 = load i32**, i32*** %6, align 8
  %76 = load i32**, i32*** %7, align 8
  %77 = call i32 @gencode(i32** %75, i32** %76)
  %78 = load i32, i32* @CODE, align 4
  %79 = call i32 @asdl_segment(i32 %78)
  %80 = call i32 (...) @emitcode()
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* @interfaces, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @symboluid(i32* %82)
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @rcc_Function(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = call i32 @put(i32 %88)
  ret void
}

declare dso_local i32 @Seq_new(i32) #1

declare dso_local i32 @dopending(i32*) #1

declare dso_local i32 @asdl_local(i32*) #1

declare dso_local i32 @Seq_addhi(i32, i32) #1

declare dso_local i32 @to_generic_int(i32) #1

declare dso_local i32 @symboluid(i32*) #1

declare dso_local i32 @gencode(i32**, i32**) #1

declare dso_local i32 @asdl_segment(i32) #1

declare dso_local i32 @emitcode(...) #1

declare dso_local i32 @put(i32) #1

declare dso_local i32 @rcc_Function(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
