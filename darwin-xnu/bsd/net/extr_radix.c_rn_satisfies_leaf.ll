; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_radix.c_rn_satisfies_leaf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_radix.c_rn_satisfies_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i8*, i8* }

@rn_ones = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.radix_node*, i32, i32*, i8*)* @rn_satisfies_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rn_satisfies_leaf(i8* %0, %struct.radix_node* %1, i32 %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.radix_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.radix_node* %1, %struct.radix_node** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %12, align 8
  %18 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %19 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %13, align 8
  %21 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %22 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %14, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %13, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @min(i32 %26, i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = load i8*, i8** %14, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i8*, i8** @rn_ones, align 8
  store i8* %34, i8** %14, align 8
  br label %41

35:                                               ; preds = %5
  %36 = load i32, i32* %16, align 4
  %37 = load i8*, i8** %14, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @min(i32 %36, i32 %39)
  store i32 %40, i32* %16, align 4
  br label %41

41:                                               ; preds = %35, %33
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8* %45, i8** %15, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i8*, i8** %14, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %14, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %13, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %13, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %12, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %12, align 8
  br label %58

58:                                               ; preds = %77, %41
  %59 = load i8*, i8** %12, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = icmp ult i8* %59, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  %63 = load i8*, i8** %12, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8*, i8** %13, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = xor i32 %65, %68
  %70 = load i8*, i8** %14, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %89

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76
  %78 = load i8*, i8** %12, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %12, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %13, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %14, align 8
  br label %58

84:                                               ; preds = %58
  %85 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @RN_MATCHF(%struct.radix_node* %85, i32* %86, i8* %87)
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %84, %75
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @RN_MATCHF(%struct.radix_node*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
