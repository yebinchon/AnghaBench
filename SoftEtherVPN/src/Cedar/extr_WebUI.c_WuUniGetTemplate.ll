; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_WebUI.c_WuUniGetTemplate.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_WebUI.c_WuUniGetTemplate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITE = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i32] [i32 37, i32 115, i32 37, i32 115, i32 37, i32 115, i32 0], align 4
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64**, i64*, i64*, i32)* @WuUniGetTemplate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @WuUniGetTemplate(i64** %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i64** %0, i64*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i64**, i64*** %6, align 8
  %19 = icmp eq i64** %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %4
  %21 = load i64**, i64*** %6, align 8
  %22 = load i64*, i64** %21, align 8
  %23 = icmp eq i64* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load i64*, i64** %7, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i64*, i64** %8, align 8
  %29 = icmp eq i64* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %20, %4
  store i64* null, i64** %5, align 8
  br label %105

31:                                               ; preds = %27
  %32 = load i64**, i64*** %6, align 8
  %33 = load i64*, i64** %32, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = call i64 @UniSearchStr(i64* %33, i64* %34, i64 0)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @INFINITE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i64* null, i64** %5, align 8
  br label %105

40:                                               ; preds = %31
  %41 = load i64*, i64** %7, align 8
  %42 = call i64 @UniStrLen(i64* %41)
  %43 = load i64, i64* %10, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %10, align 8
  %45 = load i64**, i64*** %6, align 8
  %46 = load i64*, i64** %45, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i64 @UniSearchStr(i64* %46, i64* %47, i64 %48)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @INFINITE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  store i64* null, i64** %5, align 8
  br label %105

54:                                               ; preds = %40
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %10, align 8
  %57 = sub nsw i64 %55, %56
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %12, align 8
  %59 = add nsw i64 %58, 1
  %60 = mul i64 %59, 8
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i64 @Malloc(i64 %61)
  %63 = inttoptr i64 %62 to i64*
  store i64* %63, i64** %15, align 8
  store i64 0, i64* %14, align 8
  br label %64

64:                                               ; preds = %79, %54
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load i64**, i64*** %6, align 8
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %14, align 8
  %73 = add nsw i64 %71, %72
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %15, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  store i64 %75, i64* %78, align 8
  br label %79

79:                                               ; preds = %68
  %80 = load i64, i64* %14, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %14, align 8
  br label %64

82:                                               ; preds = %64
  %83 = load i64*, i64** %15, align 8
  %84 = load i64, i64* %14, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %82
  %89 = load i32, i32* @MAX_SIZE, align 4
  %90 = mul nsw i32 %89, 10
  %91 = zext i32 %90 to i64
  %92 = call i8* @llvm.stacksave()
  store i8* %92, i8** %16, align 8
  %93 = alloca i64, i64 %91, align 16
  store i64 %91, i64* %17, align 8
  %94 = mul nuw i64 8, %91
  %95 = trunc i64 %94 to i32
  %96 = load i64*, i64** %7, align 8
  %97 = load i64*, i64** %15, align 8
  %98 = load i64*, i64** %8, align 8
  %99 = call i32 @UniFormat(i64* %93, i32 %95, i8* bitcast ([7 x i32]* @.str to i8*), i64* %96, i64* %97, i64* %98)
  %100 = load i64**, i64*** %6, align 8
  %101 = call i32 @WuUniReplace(i64** %100, i64* %93, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  %102 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %102)
  br label %103

103:                                              ; preds = %88, %82
  %104 = load i64*, i64** %15, align 8
  store i64* %104, i64** %5, align 8
  br label %105

105:                                              ; preds = %103, %53, %39, %30
  %106 = load i64*, i64** %5, align 8
  ret i64* %106
}

declare dso_local i64 @UniSearchStr(i64*, i64*, i64) #1

declare dso_local i64 @UniStrLen(i64*) #1

declare dso_local i64 @Malloc(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UniFormat(i64*, i32, i8*, i64*, i64*, i64*) #1

declare dso_local i32 @WuUniReplace(i64**, i64*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
