; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_CopyAttributeOutText.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_CopyAttributeOutText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*)* @CopyAttributeOutText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CopyAttributeOutText(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8 0, i8* %7, align 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %8, align 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @pg_server_to_any(i8* %19, i32 %21, i32 %24)
  store i8* %25, i8** %5, align 8
  br label %28

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %5, align 8
  br label %28

28:                                               ; preds = %26, %18
  %29 = load i8*, i8** %5, align 8
  store i8* %29, i8** %6, align 8
  br label %30

30:                                               ; preds = %93, %55, %28
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %7, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %94

35:                                               ; preds = %30
  %36 = load i8, i8* %7, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp slt i32 %37, 32
  br i1 %38, label %39, label %70

39:                                               ; preds = %35
  %40 = load i8, i8* %7, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %48 [
    i32 8, label %42
    i32 12, label %43
    i32 10, label %44
    i32 13, label %45
    i32 9, label %46
    i32 11, label %47
  ]

42:                                               ; preds = %39
  store i8 98, i8* %7, align 1
  br label %58

43:                                               ; preds = %39
  store i8 102, i8* %7, align 1
  br label %58

44:                                               ; preds = %39
  store i8 110, i8* %7, align 1
  br label %58

45:                                               ; preds = %39
  store i8 114, i8* %7, align 1
  br label %58

46:                                               ; preds = %39
  store i8 116, i8* %7, align 1
  br label %58

47:                                               ; preds = %39
  store i8 118, i8* %7, align 1
  br label %58

48:                                               ; preds = %39
  %49 = load i8, i8* %7, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* %8, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %58

55:                                               ; preds = %48
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %5, align 8
  br label %30

58:                                               ; preds = %54, %47, %46, %45, %44, %43, %42
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @CopyFlushOutput(%struct.TYPE_5__* %59, i8* %60, i8* %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = call i32 @CopySendChar(%struct.TYPE_5__* %63, i8 signext 92)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = load i8, i8* %7, align 1
  %67 = call i32 @CopySendChar(%struct.TYPE_5__* %65, i8 signext %66)
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  store i8* %69, i8** %6, align 8
  br label %93

70:                                               ; preds = %35
  %71 = load i8, i8* %7, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 92
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load i8, i8* %7, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* %8, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %74, %70
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @CopyFlushOutput(%struct.TYPE_5__* %81, i8* %82, i8* %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = call i32 @CopySendChar(%struct.TYPE_5__* %85, i8 signext 92)
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %5, align 8
  store i8* %87, i8** %6, align 8
  br label %92

89:                                               ; preds = %74
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %5, align 8
  br label %92

92:                                               ; preds = %89, %80
  br label %93

93:                                               ; preds = %92, %58
  br label %30

94:                                               ; preds = %30
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @CopyFlushOutput(%struct.TYPE_5__* %95, i8* %96, i8* %97)
  ret void
}

declare dso_local i8* @pg_server_to_any(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CopyFlushOutput(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32 @CopySendChar(%struct.TYPE_5__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
