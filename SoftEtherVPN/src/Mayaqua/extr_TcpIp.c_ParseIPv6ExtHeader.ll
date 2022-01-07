; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseIPv6ExtHeader.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseIPv6ExtHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@IPV6_HEADER_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseIPv6ExtHeader(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @IPV6_HEADER_NONE, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %4
  store i32 0, i32* %5, align 4
  br label %128

21:                                               ; preds = %17
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %126
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 8
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %106 [
    i32 129, label %32
    i32 131, label %32
    i32 128, label %32
    i32 130, label %82
  ]

32:                                               ; preds = %30, %30, %30
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %128

36:                                               ; preds = %32
  %37 = load i32*, i32** %8, align 8
  %38 = bitcast i32* %37 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %11, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = mul nsw i32 %42, 8
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %128

48:                                               ; preds = %36
  %49 = load i32, i32* %7, align 4
  switch i32 %49, label %74 [
    i32 129, label %50
    i32 131, label %58
    i32 128, label %66
  ]

50:                                               ; preds = %48
  %51 = load i32*, i32** %8, align 8
  %52 = bitcast i32* %51 to %struct.TYPE_4__*
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 10
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %54, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %74

58:                                               ; preds = %48
  %59 = load i32*, i32** %8, align 8
  %60 = bitcast i32* %59 to %struct.TYPE_4__*
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 9
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %62, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  br label %74

66:                                               ; preds = %48
  %67 = load i32*, i32** %8, align 8
  %68 = bitcast i32* %67 to %struct.TYPE_4__*
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 8
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %70, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %48, %66, %58, %50
  %75 = load i32, i32* %12, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %8, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %126

82:                                               ; preds = %30
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp ult i64 %84, 4
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %128

87:                                               ; preds = %82
  %88 = load i32*, i32** %8, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 7
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 7
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @IPV6_GET_FRAGMENT_OFFSET(i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %87
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  store i32* %101, i32** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = sub i64 %103, 4
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %9, align 4
  br label %126

106:                                              ; preds = %30
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @IPV6_HEADER_NONE, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i32*, i32** %8, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 6
  store i32* %111, i32** %113, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  br label %122

117:                                              ; preds = %106
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 6
  store i32* null, i32** %119, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 4
  store i32 0, i32* %121, align 8
  br label %122

122:                                              ; preds = %117, %110
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  store i32 1, i32* %5, align 4
  br label %128

126:                                              ; preds = %99, %74
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %7, align 4
  br label %24

128:                                              ; preds = %122, %86, %47, %35, %20
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @IPV6_GET_FRAGMENT_OFFSET(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
