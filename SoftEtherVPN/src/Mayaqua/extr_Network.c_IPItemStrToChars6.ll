; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_IPItemStrToChars6.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_IPItemStrToChars6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IPItemStrToChars6(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [5 x i8], align 1
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %93

11:                                               ; preds = %2
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %13 = call i32 @Zero(i8* %12, i32 5)
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @StrLen(i8* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %72 [
    i32 0, label %17
    i32 1, label %22
    i32 2, label %30
    i32 3, label %41
    i32 4, label %55
  ]

17:                                               ; preds = %11
  %18 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 3
  store i8 48, i8* %18, align 1
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2
  store i8 48, i8* %19, align 1
  %20 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1
  store i8 48, i8* %20, align 1
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  store i8 48, i8* %21, align 1
  br label %72

22:                                               ; preds = %11
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2
  store i8 48, i8* %23, align 1
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1
  store i8 48, i8* %24, align 1
  %25 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  store i8 48, i8* %25, align 1
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 3
  store i8 %28, i8* %29, align 1
  br label %72

30:                                               ; preds = %11
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1
  store i8 48, i8* %31, align 1
  %32 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  store i8 48, i8* %32, align 1
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2
  store i8 %35, i8* %36, align 1
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 3
  store i8 %39, i8* %40, align 1
  br label %72

41:                                               ; preds = %11
  %42 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  store i8 48, i8* %42, align 1
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1
  store i8 %45, i8* %46, align 1
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2
  store i8 %49, i8* %50, align 1
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 3
  store i8 %53, i8* %54, align 1
  br label %72

55:                                               ; preds = %11
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  store i8 %58, i8* %59, align 1
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1
  store i8 %62, i8* %63, align 1
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2
  store i8 %66, i8* %67, align 1
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 3
  %70 = load i8, i8* %69, align 1
  %71 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 3
  store i8 %70, i8* %71, align 1
  br label %72

72:                                               ; preds = %11, %55, %41, %30, %22, %17
  %73 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %74 = call %struct.TYPE_4__* @StrToBin(i8* %73)
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %6, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %3, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %3, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %92 = call i32 @FreeBuf(%struct.TYPE_4__* %91)
  br label %93

93:                                               ; preds = %72, %10
  ret void
}

declare dso_local i32 @Zero(i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local %struct.TYPE_4__* @StrToBin(i8*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
