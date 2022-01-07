; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/string/extr_memset.c__libkernel_memset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/string/extr_memset.c__libkernel_memset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wsize = common dso_local global i32 0, align 4
@VAL = common dso_local global i8* null, align 8
@RETURN = common dso_local global i32 0, align 4
@wmask = common dso_local global i64 0, align 8
@WIDEVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define hidden i8* @_libkernel_memset(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* @wsize, align 4
  %15 = mul nsw i32 3, %14
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %22, %18
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i8*, i8** @VAL, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load i64*, i64** %10, align 8
  %26 = getelementptr inbounds i64, i64* %25, i32 1
  store i64* %26, i64** %10, align 8
  store i64 %24, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, -1
  store i64 %28, i64* %7, align 8
  br label %19

29:                                               ; preds = %19
  %30 = load i32, i32* @RETURN, align 4
  br label %31

31:                                               ; preds = %29, %3
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i64, i64* %9, align 8
  %37 = shl i64 %36, 8
  %38 = load i64, i64* %9, align 8
  %39 = or i64 %37, %38
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i64*, i64** %10, align 8
  %42 = ptrtoint i64* %41 to i64
  %43 = load i64, i64* @wmask, align 8
  %44 = and i64 %42, %43
  store i64 %44, i64* %8, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load i32, i32* @wsize, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %48, %49
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %7, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %59, %46
  %55 = load i8*, i8** @VAL, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load i64*, i64** %10, align 8
  %58 = getelementptr inbounds i64, i64* %57, i32 1
  store i64* %58, i64** %10, align 8
  store i64 %56, i64* %57, align 8
  br label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %54, label %63

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %40
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* @wsize, align 4
  %67 = sext i32 %66 to i64
  %68 = udiv i64 %65, %67
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %76, %64
  %70 = load i64, i64* @WIDEVAL, align 8
  %71 = load i64*, i64** %10, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* @wsize, align 4
  %73 = load i64*, i64** %10, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64* %75, i64** %10, align 8
  br label %76

76:                                               ; preds = %69
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %69, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @wmask, align 8
  %83 = and i64 %81, %82
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %92, %86
  %88 = load i8*, i8** @VAL, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = load i64*, i64** %10, align 8
  %91 = getelementptr inbounds i64, i64* %90, i32 1
  store i64* %91, i64** %10, align 8
  store i64 %89, i64* %90, align 8
  br label %92

92:                                               ; preds = %87
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* %8, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %87, label %96

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96, %80
  %98 = load i32, i32* @RETURN, align 4
  %99 = load i8*, i8** %4, align 8
  ret i8* %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
