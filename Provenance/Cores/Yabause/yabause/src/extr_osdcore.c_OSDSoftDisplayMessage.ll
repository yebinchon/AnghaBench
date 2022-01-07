; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_osdcore.c_OSDSoftDisplayMessage.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_osdcore.c_OSDSoftDisplayMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@font = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OSDSoftDisplayMessage(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %119

18:                                               ; preds = %4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %25 [
    i32 128, label %22
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %23, 48
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %18, %22
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %114, %25
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %119

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sge i32 %36, 47
  br i1 %37, label %38, label %114

38:                                               ; preds = %33
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = mul nsw i32 %41, 10
  store i32 %42, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %110, %38
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 10
  br i1 %45, label %46, label %113

46:                                               ; preds = %43
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %106, %46
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 9
  br i1 %49, label %50, label %109

50:                                               ; preds = %47
  %51 = load i8**, i8*** @font, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %51, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 46
  br i1 %63, label %64, label %77

64:                                               ; preds = %50
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 %67, 8
  %69 = add nsw i32 %68, 20
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %72, %73
  %75 = add nsw i32 %74, 20
  %76 = call i32 @TitanWriteColor(i32* %65, i32 %66, i32 %71, i32 %75, i32 -16777216)
  br label %105

77:                                               ; preds = %50
  %78 = load i8**, i8*** @font, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %78, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 35
  br i1 %90, label %91, label %104

91:                                               ; preds = %77
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %9, align 4
  %95 = mul nsw i32 %94, 8
  %96 = add nsw i32 %95, 20
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %99, %100
  %102 = add nsw i32 %101, 20
  %103 = call i32 @TitanWriteColor(i32* %92, i32 %93, i32 %98, i32 %102, i32 -1)
  br label %104

104:                                              ; preds = %91, %77
  br label %105

105:                                              ; preds = %104, %64
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %47

109:                                              ; preds = %47
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %43

113:                                              ; preds = %43
  br label %114

114:                                              ; preds = %113, %33
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %10, align 8
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %29

119:                                              ; preds = %17, %29
  ret void
}

declare dso_local i32 @TitanWriteColor(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
