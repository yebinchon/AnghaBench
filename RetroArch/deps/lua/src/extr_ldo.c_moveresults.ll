; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_ldo.c_moveresults.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_ldo.c_moveresults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@luaO_nilobject = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i8*, i32, i32)* @moveresults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moveresults(%struct.TYPE_4__* %0, i32* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  switch i32 %14, label %52 [
    i32 0, label %15
    i32 1, label %16
    i32 128, label %26
  ]

15:                                               ; preds = %5
  br label %111

16:                                               ; preds = %5
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32*, i32** @luaO_nilobject, align 8
  store i32* %20, i32** %8, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @setobjs2s(%struct.TYPE_4__* %22, i8* %23, i32* %24)
  br label %111

26:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr i8, i8* %33, i64 %35
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @setobjs2s(%struct.TYPE_4__* %32, i8* %36, i32* %40)
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %27

45:                                               ; preds = %27
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr i8, i8* %46, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  store i32 0, i32* %6, align 4
  br label %118

52:                                               ; preds = %5
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %72, %56
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %63, i64 %65
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @setobjs2s(%struct.TYPE_4__* %62, i8* %66, i32* %70)
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %57

75:                                               ; preds = %57
  br label %110

76:                                               ; preds = %52
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %92, %76
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr i8, i8* %83, i64 %85
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i32 @setobjs2s(%struct.TYPE_4__* %82, i8* %86, i32* %90)
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %77

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %106, %95
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i8*, i8** %9, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr i8, i8* %101, i64 %103
  %105 = call i32 @setnilvalue(i8* %104)
  br label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %96

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %109, %75
  br label %111

111:                                              ; preds = %110, %21, %15
  %112 = load i8*, i8** %9, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr i8, i8* %112, i64 %114
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  store i32 1, i32* %6, align 4
  br label %118

118:                                              ; preds = %111, %45
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @setobjs2s(%struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i32 @setnilvalue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
