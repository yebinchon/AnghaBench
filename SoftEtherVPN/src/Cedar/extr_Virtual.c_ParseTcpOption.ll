; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_ParseTcpOption.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_ParseTcpOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ParseTcpOption(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [128 x i32], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  br label %118

22:                                               ; preds = %18
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = call i32 @Zero(%struct.TYPE_4__* %23, i32 8)
  br label %25

25:                                               ; preds = %117, %42, %22
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %118

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %118

36:                                               ; preds = %29
  %37 = load i32*, i32** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %8, align 8
  br label %25

45:                                               ; preds = %36
  %46 = load i32*, i32** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %118

57:                                               ; preds = %45
  %58 = load i32*, i32** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp ule i64 %63, 1
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = load i64, i64* %9, align 8
  %67 = icmp ugt i64 %66, 512
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %57
  br label %118

69:                                               ; preds = %65
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp uge i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %118

76:                                               ; preds = %69
  %77 = load i64, i64* %9, align 8
  %78 = sub i64 %77, 2
  store i64 %78, i64* %9, align 8
  %79 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 0
  %80 = load i32*, i32** %7, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @Copy(i32* %79, i32* %82, i64 %83)
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %8, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %6, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %76
  br label %118

92:                                               ; preds = %76
  %93 = load i64, i64* %10, align 8
  switch i64 %93, label %115 [
    i64 2, label %94
    i64 3, label %105
  ]

94:                                               ; preds = %92
  %95 = load i64, i64* %9, align 8
  %96 = icmp eq i64 %95, 2
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 0
  store i32* %98, i32** %12, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @Endian16(i32 %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %97, %94
  br label %115

105:                                              ; preds = %92
  %106 = load i64, i64* %9, align 8
  %107 = icmp eq i64 %106, 1
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 0
  store i32* %109, i32** %13, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %108, %105
  br label %115

115:                                              ; preds = %92, %114, %104
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  br label %25

118:                                              ; preds = %21, %35, %56, %68, %75, %91, %25
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @Copy(i32*, i32*, i64) #1

declare dso_local i32 @Endian16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
