; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_lex.c_trigraph.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_lex.c_trigraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trigraph(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = icmp uge i8* %9, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = call i64 @fillbuf(%struct.TYPE_4__* %15)
  %17 = load i64, i64* @EOF, align 8
  %18 = icmp ne i64 %16, %17
  br label %19

19:                                               ; preds = %14, %5
  %20 = phi i1 [ false, %5 ], [ %18, %14 ]
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  br label %5

22:                                               ; preds = %19
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 63
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %84

31:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  switch i32 %37, label %47 [
    i32 61, label %38
    i32 40, label %39
    i32 47, label %40
    i32 41, label %41
    i32 39, label %42
    i32 60, label %43
    i32 33, label %44
    i32 62, label %45
    i32 45, label %46
  ]

38:                                               ; preds = %31
  store i32 35, i32* %4, align 4
  br label %47

39:                                               ; preds = %31
  store i32 91, i32* %4, align 4
  br label %47

40:                                               ; preds = %31
  store i32 92, i32* %4, align 4
  br label %47

41:                                               ; preds = %31
  store i32 93, i32* %4, align 4
  br label %47

42:                                               ; preds = %31
  store i32 94, i32* %4, align 4
  br label %47

43:                                               ; preds = %31
  store i32 123, i32* %4, align 4
  br label %47

44:                                               ; preds = %31
  store i32 124, i32* %4, align 4
  br label %47

45:                                               ; preds = %31
  store i32 125, i32* %4, align 4
  br label %47

46:                                               ; preds = %31
  store i32 126, i32* %4, align 4
  br label %47

47:                                               ; preds = %31, %46, %45, %44, %43, %42, %41, %40, %39, %38
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %82

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = trunc i32 %51 to i8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8 %52, i8* %55, align 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = ptrtoint i8* %68 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = add nsw i64 %74, 2
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memmove(i32* %60, i32* %65, i32 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 -2
  store i8* %81, i8** %79, align 8
  br label %82

82:                                               ; preds = %50, %47
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %30
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @fillbuf(%struct.TYPE_4__*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
